-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2025 at 06:13 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: newsportal
--

-- --------------------------------------------------------

--
-- Table structure for table tbladmin
--

CREATE TABLE tbladmin (
  id int(11) NOT NULL,
  AdminUserName varchar(255) DEFAULT NULL,
  AdminPassword varchar(255) DEFAULT NULL,
  AdminEmailId varchar(255) DEFAULT NULL,
  userType int(11) DEFAULT NULL,
  CreationDate timestamp NOT NULL DEFAULT current_timestamp(),
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table tbladmin
--

INSERT INTO tbladmin (id, AdminUserName, AdminPassword, AdminEmailId, userType, CreationDate, UpdationDate) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', 'phpgurukulofficial@gmail.com', 1, '2024-01-09 18:30:00', '2024-01-31 05:42:52'),
(3, 'subadmin', 'f925916e2754e5e03f75dd58a5733251', 'sudamin@gmail.in', 0, '2024-01-09 18:30:00', '2024-01-31 05:43:01'),
(4, 'suadmin2', 'f925916e2754e5e03f75dd58a5733251', 'sbadmin@test.com', 0, '2024-01-09 18:30:00', '2024-01-31 05:43:01');

-- --------------------------------------------------------

--
-- Table structure for table tblcategory
--

CREATE TABLE tblcategory (
  id int(11) NOT NULL,
  CategoryName varchar(200) DEFAULT NULL,
  Description mediumtext DEFAULT NULL,
  PostingDate timestamp NULL DEFAULT current_timestamp(),
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  Is_Active int(1) DEFAULT NULL,
  photo longblob DEFAULT NULL,
  Image varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table tblcategory
--

INSERT INTO tblcategory (id, CategoryName, Description, PostingDate, UpdationDate, Is_Active, photo, Image) VALUES
(15, 'Sports', 'Sports news', '2025-03-27 06:59:05', '2025-03-29 15:35:49', 1, NULL, 'uploads/category_images/360_F_278427683_zeS9ihPAO61QhHqdU1fOaPk2UClfgPcW.jpg'),
(16, 'Scholarships', 'hgdssrgh', '2025-03-28 18:34:57', '2025-03-29 17:43:43', 1, NULL, 'uploads/category_images/sc.jpg'),
(22, 'Academic Announcement', 'related news', '2025-03-29 18:13:00', NULL, 1, NULL, 'uploads/category_images/images.jpg'),
(27, 'Camps', 'related news', '2025-03-30 09:40:50', NULL, 1, NULL, 'uploads/category_images/98ea8945-8bde-4699-a1a3-6a8e49067c8a (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table tblcomments
--

CREATE TABLE tblcomments (
  id int(11) NOT NULL,
  postId int(11) DEFAULT NULL,
  name varchar(120) DEFAULT NULL,
  email varchar(150) DEFAULT NULL,
  comment mediumtext DEFAULT NULL,
  postingDate timestamp NULL DEFAULT current_timestamp(),
  status int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table tblpages
--

CREATE TABLE tblpages (
  id int(11) NOT NULL,
  PageName varchar(200) DEFAULT NULL,
  PageTitle mediumtext DEFAULT NULL,
  Description longtext DEFAULT NULL,
  PostingDate timestamp NULL DEFAULT current_timestamp(),
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table tblpages
--

INSERT INTO tblpages (id, PageName, PageTitle, Description, PostingDate, UpdationDate) VALUES
(1, 'aboutus', 'About News Portal', '<h4><font face=\"Times New Roman\"><font color=\"#ffffff\" style=\"\"><b style=\"\">The <span data-start=\"81\" data-end=\"102\" style=\"\">NHITM News Portal</span> is an exclusive platform dedicated to delivering the latest updates, events, and important announcements from <span data-start=\"213\" data-end=\"275\" style=\"\">New Horizon Institute of Technology and Management (NHITM)</span>.<br></b></font><font color=\"#ffffff\" style=\"\"><b>This portal serves as a bridge between students, faculty, and stakeholders, ensuring they stay informed about the institute’s activities and achievements.<br></b></font><font color=\"#ffffff\" style=\"\"><b>Through this portal, users can explore <span data-start=\"477\" data-end=\"586\">academic updates, student and faculty achievements, placement opportunities, and institutional milestones</span>.<br></b></font><font color=\"#ffffff\" style=\"\"><b>The portal features <span data-start=\"611\" data-end=\"634\">event announcements</span> for seminars, workshops, and cultural or technical fests, along with exclusive <span data-start=\"714\" data-end=\"747\">campus stories and interviews</span> that highlight inspiring journeys within NHITM.<br></b></font><font color=\"#ffffff\" style=\"\"><b>Additionally, the NHITM News Portal keeps students updated with <span data-start=\"863\" data-end=\"894\">notifications and circulars</span> regarding academics and administration, while the <span data-start=\"945\" data-end=\"972\">photo and video gallery</span> captures memorable moments from campus life.<br></b></font><font color=\"#ffffff\" style=\"\"><b>Whether it\'s the <span data-start=\"1038\" data-end=\"1099\">latest news, research breakthroughs, or placement updates</span>, this platform ensures that all essential information is easily accessible.<br></b></font></font><strong data-start=\"1179\" data-end=\"1277\"><font color=\"#ffffff\"><font face=\"Times New Roman\">Stay connected with NHITM through this dynamic news portal and never miss an important update!</font><br></font></strong><strong data-start=\"1179\" data-end=\"1277\"><font color=\"#ffffff\" face=\"Helvetica\">Stay connected with NHITM through this dynamic news portal and never miss an important update!</font></strong></h4><p style=\"text-align: left; margin-left: 25px;\">\r\n\r\n\r\n\r\n\r\n\r\n</p>\r\n', '2024-01-14 18:30:00', '2025-03-30 15:48:09'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp;&nbsp;</b>Anand Nagar, Off Ghodbunder Road, Near Hypercity Mall,&nbsp; Thane (West), Maharashtra – 400615, India</p><p><b>Phone Number : </b>+91 91369 90001 / +91 91369 90002</p><p><b>Email -id : </b>support@nhitmnews.com</p>', '2024-01-15 18:30:00', '2025-03-31 11:15:29');

-- --------------------------------------------------------

--
-- Table structure for table tblposts
--

CREATE TABLE tblposts (
  id int(11) NOT NULL,
  PostTitle longtext DEFAULT NULL,
  CategoryId int(11) DEFAULT NULL,
  SubCategoryId int(11) DEFAULT NULL,
  PostDetails longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PostingDate timestamp NULL DEFAULT current_timestamp(),
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  Is_Active int(1) DEFAULT NULL,
  PostUrl mediumtext DEFAULT NULL,
  PostImage varchar(255) DEFAULT NULL,
  viewCounter int(11) DEFAULT NULL,
  postedBy varchar(255) DEFAULT NULL,
  lastUpdatedBy varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table tblposts
--

INSERT INTO tblposts (id, PostTitle, CategoryId, SubCategoryId, PostDetails, PostingDate, UpdationDate, Is_Active, PostUrl, PostImage, viewCounter, postedBy, lastUpdatedBy) VALUES
(40, 'Latest Update on MAHADBT Scholarship', 16, 35, '<p>Latest Update on MAHADBT Scholarship: Application Deadline Approaching</p><p><br></p><p>The Government of Maharashtra has released the latest update regarding the MAHADBT Scholarship for the academic year 2024-25. Students from New Horizon Institute of Technology and Management (NHITM) and other eligible institutions are encouraged to complete their applications before the deadline.</p><p><br></p><p>Important Details:</p><p><br></p><p>Scholarship Portal: https://mahadbt.maharashtra.gov.in</p><p><br></p><p>Last Date to Apply: March 31, 2025</p><p><br></p><p>Eligibility: Available for students pursuing engineering, management, and other professional courses under various government schemes.</p><p><br></p><p><br></p><p>Steps to Apply:</p><p><br></p><p>✅ Visit the MAHADBT official website</p><p>✅ Login or register with your Aadhaar-linked mobile number</p><p>✅ Fill in the required academic and personal details</p><p>✅ Upload necessary documents (income certificate, previous marksheets, college fee receipt, etc.)</p><p>✅ Submit the application before the deadline</p><p><br></p><p>Students who have already applied should ensure their application is verified by their institution to avoid rejection. NHITM’s scholarship department is available for assistance regarding document submission and application tracking.</p><p><br></p><p>Don’t miss out on this opportunity! Apply before March 31, 2025, to secure financial support for your education.</p>', '2025-03-29 17:54:51', '2025-03-30 12:37:09', 1, 'Latest-Update-on-MAHADBT-Scholarship', 'b64810fde7027715e614449aff1d595f.png', 8, 'Admin', NULL),
(41, 'New Horizon Institute of Technology and Management Prepares for Mumbai University Summer 2025 Exams', 22, 36, '<p>New Horizon Institute of Technology and Management Prepares for Mumbai University Summer 2025 Exams</p><p><br></p><p>Mumbai, March 24, 2025 – The New Horizon Institute of Technology and Management (NHITM) is gearing up for the Mumbai University Summer 2025 Semester Examinations, which are set to begin in April-May 2025. These exams are crucial for students across all engineering and management disciplines as they mark the completion of the current academic semester.</p><p><br></p><p>Key Details of the Summer 2025 Exams:</p><p><br></p><p>Conducting Body: Mumbai University</p><p><br></p><p>Exam Period: Expected from April to June 2025 (Final schedule to be released soon)</p><p><br></p><p>Courses Covered: All undergraduate (B.E./B.Tech.) and postgraduate (M.E./MBA) programs</p><p><br></p><p>Mode of Examination: Likely to be conducted offline (pen-and-paper mode), with some practicals and viva exams scheduled separately</p><p><br></p><p><br></p><p>Exam Timetable and Hall Ticket Details:</p><p><br></p><p>The official exam timetable will be available</p>', '2025-03-29 18:57:15', '2025-03-30 10:24:36', 1, 'New-Horizon-Institute-of-Technology-and-Management-Prepares-for-Mumbai-University-Summer-2025-Exams', 'a33a7388067d0b0376471ecd425251f3.jpg', 2, 'Admin', NULL),
(42, 'Timetable for Internal Assessment-II (Even Semester 2024-25) Announced!', 22, 36, '<p></p><div class=\"pointer-events-none w-px _threadGutter_1y3t0_22 min-h-[max(var(--gutter-min-height,0px),var(--gutter-remaining-height,0px))] md:[--gutter-min-height:2.25rem] group-[[data-stream-active]]/thread:h-[var(--thread-end-gutter-active-height)]\"></div><p></p><div class=\"mt-1.5 flex flex-col text-sm @thread-xl/thread:pt-header-height\"><article class=\"w-full text-token-text-primary\" dir=\"auto\" data-testid=\"conversation-turn-55\" data-scroll-anchor=\"false\"><div class=\"text-base my-auto mx-auto py-5 px-6\"><div class=\"mx-auto flex flex-1 text-base gap-4 md:gap-5 lg:gap-6 md:max-w-3xl lg:max-w-[40rem] xl:max-w-[48rem] group/turn-messages focus-visible:outline-none\" tabindex=\"-1\"><div class=\"group/conversation-turn relative flex w-full min-w-0 flex-col agent-turn @xs/thread:px-0 @sm/thread:px-1.5 @md/thread:px-4\"><div class=\"relative flex-col gap-1 md:gap-3\"><div class=\"flex max-w-full flex-col flex-grow\"><div data-message-author-role=\"assistant\" data-message-id=\"eed83272-caa3-4385-acd3-1e38f121c72a\" dir=\"auto\" class=\"min-h-8 text-message relative flex w-full flex-col items-end gap-2 whitespace-normal break-words text-start [.text-message+&amp;]:mt-5\" data-message-model-slug=\"gpt-4o\"><div class=\"flex w-full flex-col gap-1 empty:hidden first:pt-[3px]\"><div class=\"markdown prose w-full break-words dark:prose-invert light\"><p data-start=\"0\" data-end=\"98\" class=\"\"><strong data-start=\"0\" data-end=\"96\">? NHITM News Alert: Timetable for Internal Assessment-II (Even Semester 2024-25) Announced!</strong></p>\r\n<p data-start=\"100\" data-end=\"269\" class=\"\">? The Internal Assessment-II (IA-II) for the <strong data-start=\"146\" data-end=\"171\">Even Semester 2024-25</strong> is set to commence soon. Students are advised to check their schedules and prepare accordingly.</p>\r\n<p data-start=\"271\" data-end=\"434\" class=\"\">? <strong data-start=\"274\" data-end=\"303\">IA-II Commencement Dates:</strong><br data-start=\"303\" data-end=\"306\">\r\n? <strong data-start=\"309\" data-end=\"326\">April 4, 2025</strong> – <strong data-start=\"329\" data-end=\"387\">First Year (FE), Second Year (SE), and Third Year (TE)</strong><br data-start=\"387\" data-end=\"390\">\r\n? <strong data-start=\"393\" data-end=\"410\">April 7, 2025</strong> – <strong data-start=\"413\" data-end=\"432\">Final Year (BE)</strong></p>\r\n<p data-start=\"436\" data-end=\"640\" class=\"\">All students must adhere to the timetable and ensure timely completion of assessments. Further details, including subject-wise schedules, will be shared via the official NHITM website and notice boards.</p>\r\n<p data-start=\"642\" data-end=\"684\" class=\"\">Stay updated for more announcements! ?✨</p>\r\n<p data-start=\"686\" data-end=\"744\" class=\"\">For any queries, contact the <strong data-start=\"715\" data-end=\"741\">Examination Department</strong>.</p>\r\n<p data-start=\"746\" data-end=\"799\" class=\"\">? <strong data-start=\"749\" data-end=\"770\">NHITM News Portal</strong> – Stay Informed, Stay Ahead!</p></div></div></div></div><div class=\"flex justify-start\"><div class=\"-me-1 -ms-2.5 flex select-none items-center p-1 touch:-me-2 touch:-ms-3.5 -mt-1 duration-[1.5s] focus-within:transition-none hover:transition-none pointer-events-none [mask-image:linear-gradient(to_right,black_33%,transparent_66%)] [mask-position:100%_0%] [mask-size:300%_100%] motion-safe:transition-[mask-position] group-hover/turn-messages:pointer-events-auto group-hover/turn-messages:[mask-position:0_0] group-focus-within/turn-messages:pointer-events-auto group-focus-within/turn-messages:[mask-position:0_0] has-[[data-state=open]]:pointer-events-auto has-[[data-state=open]]:[mask-position:0_0]\"><span class=\"\" data-state=\"closed\"><button type=\"button\" id=\"radix-:r1l7:\" aria-haspopup=\"menu\" aria-expanded=\"false\" data-state=\"closed\" class=\"cursor-pointer h-[30px] rounded-md px-1.5 text-token-text-secondary hover:bg-token-main-surface-secondary touch:px-2.5\" fdprocessedid=\"8ivmi\"><div class=\"flex items-center pb-0\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\" class=\"icon-sm\"><path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M5.29289 9.29289C5.68342 8.90237 6.31658 8.90237 6.70711 9.29289L12 14.5858L17.2929 9.29289C17.6834 8.90237 18.3166 8.90237 18.7071 9.29289C19.0976 9.68342 19.0976 10.3166 18.7071 10.7071L12.7071 16.7071C12.5196 16.8946 12.2652 17 12 17C11.7348 17 11.4804 16.8946 11.2929 16.7071L5.29289 10.7071C4.90237 10.3166 4.90237 9.68342 5.29289 9.29289Z\" fill=\"currentColor\"></path></svg></div></button></span></div></div><div class=\"mt-3 w-full empty:hidden\"><div class=\"text-center\"></div></div></div><div class=\"absolute\"><span class=\"\" data-state=\"closed\"><button class=\"btn relative btn-secondary btn-small shadow-lg\" fdprocessedid=\"trn18\"><div class=\"flex items-center justify-center\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\" class=\"icon-md\"><path d=\"M7.5 13.25C7.98703 13.25 8.45082 13.1505 8.87217 12.9708C8.46129 14.0478 7.62459 15.5792 6.35846 15.76C5.81173 15.8382 5.43183 16.3447 5.50993 16.8914C5.58804 17.4382 6.09457 17.8181 6.6413 17.7399C9.19413 17.3753 10.7256 14.4711 11.169 12.1909C11.4118 10.942 11.3856 9.58095 10.8491 8.44726C10.2424 7.16517 8.92256 6.24402 7.48508 6.25001C5.55895 6.25805 4 7.82196 4 9.74998C4 11.683 5.567 13.25 7.5 13.25Z\" fill=\"currentColor\"></path><path d=\"M16.18 13.25C16.667 13.25 17.1308 13.1505 17.5522 12.9708C17.1413 14.0478 16.3046 15.5792 15.0385 15.76C14.4917 15.8382 14.1118 16.3447 14.1899 16.8914C14.268 17.4382 14.7746 17.8181 15.3213 17.7399C17.8741 17.3753 19.4056 14.4711 19.849 12.1909C20.0918 10.942 20.0656 9.58095 19.5291 8.44726C18.9224 7.16517 17.6026 6.24402 16.1651 6.25001C14.2389 6.25805 12.68 7.82196 12.68 9.74998C12.68 11.683 14.247 13.25 16.18 13.25Z\" fill=\"currentColor\"></path></svg></div></button></span></div></div></div></div></article></div>', '2025-03-29 19:23:29', '2025-03-29 19:35:37', 0, 'Timetable-for-Internal-Assessment-II-(Even-Semester-2024-25)-Announced!', 'ef3f8a5b7079f7ce2726e3d1676f89da.png', 3, 'Admin', 'Admin'),
(43, 'Timetable of second year engineering- Div A', 22, 37, '<p>Timetable of second year engineering- Div A</p>', '2025-03-30 08:12:28', '2025-03-30 08:13:50', 1, 'Timetable-of-second-year-engineering--Div-A', '128ba9605aca50907fd1adeb9cb67147.jpg', 2, 'Admin', NULL),
(44, 'Timetable of second year engineering- Div B', 22, 37, '<p>Timetable of second year engineering- Div B</p>', '2025-03-30 08:13:40', NULL, 1, 'Timetable-of-second-year-engineering--Div-B', '79e192c6ac5b660bb6627be782ec2700.jpg', NULL, 'Admin', NULL),
(45, 'Timetable of Third year engineering', 22, 37, '<p>Timetable of Third year engineering</p>', '2025-03-30 08:17:52', NULL, 1, 'Timetable-of-Third-year-engineering', '9c2ce9c8c26e6c07b51cfe8ede8c08c9.jpg', NULL, 'Admin', NULL),
(46, 'Timetable of Final year engineering', 22, 37, '<p>Timetable of Final year engineering</p>', '2025-03-30 08:19:06', NULL, 1, 'Timetable-of-Final-year-engineering', '51086f5c9127af232061dbb1ee94aef3.jpg', NULL, 'Admin', NULL),
(47, 'NHITM Gears Up for Annual Sports Day 2025', 15, 33, '<p>Mumbai,&nbsp;&nbsp; &nbsp; Jan&nbsp;22, 2025 – The New Horizon Institute of Technology and Management (NHITM) is all set to host its highly anticipated Annual Sports Day 2025 on April 15, 2025. The event promises an action-packed day filled with athletic competitions, team games, and fitness challenges, encouraging students to showcase their talent, teamwork, and competitive spirit.</p><p><br></p><p>Exciting Lineup of Events</p><p>The Sports Day will feature a diverse range of activities, including:</p><p><br></p><p>✅ Track and Field Races: 100m, 200m, Relay, Long Jump</p><p>✅ Team Sports: Cricket, Football, Volleyball, Basketball</p><p>✅ Fun Activities: Tug of War, Sack Race, Relay Challenges</p><p>✅ Indoor Games: Chess, Carrom, Table Tennis</p><p><br></p><p>Trophies, Medals, and Special Guests</p><p>The NHITM sports committee and faculty coordinators are ensuring a well-organized and fair competition, with winners receiving trophies, medals, and certificates. Adding to the excitement, renowned athletes and distinguished alumni are expected to make special appearances, motivating students to push their limits.</p><p><br></p><p>\"Our vision is to promote physical fitness, teamwork, and leadership among students. Sports Day is not just about winning but about learning the values of dedication and perseverance,\" said the college’s sports coordinator.</p><p><br></p><p>Registrations Open Until April 5</p><p>Students eager to participate can register at the sports department by April 5, 2025. Event schedules, rules, and further details will be available on the official NHITM website and notice boards.</p><p><br></p><p>Stay tuned for an unforgettable day of fun, fitness, and friendly competition at NHITM! ??</p>', '2025-03-30 08:32:14', NULL, 1, 'NHITM-Gears-Up-for-Annual-Sports-Day-2025', 'a276b9977735e35ab2c907c39489eb6d.png', NULL, 'Admin', NULL),
(48, 'NSS-NHITM Organizes \"Ek Tiffin Gareebo Ke Naam\" Initiative ', 27, 40, '<p data-start=\"0\" data-end=\"70\" class=\"\"><strong data-start=\"0\" data-end=\"68\">? NSS-NHITM Organizes \"Ek Tiffin Gareebo Ke Naam\" Initiative ?</strong></p><p data-start=\"72\" data-end=\"246\" class=\"\">In a heartwarming act of service, <strong data-start=\"106\" data-end=\"119\">NSS-NHITM</strong> successfully conducted the <strong data-start=\"147\" data-end=\"178\">\"Ek Tiffin Gareebo Ke Naam\"</strong> campaign, dedicated to bringing smiles to the underprivileged. ?</p><p data-start=\"248\" data-end=\"446\" class=\"\">With the enthusiastic participation of our volunteers, fresh, home-cooked meals were prepared and distributed, ensuring that those in need received nourishment along with love and compassion. ??</p><p data-start=\"448\" data-end=\"672\" class=\"\">This initiative was more than just a meal donation—it was a symbol of care, unity, and social responsibility. Each tiffin carried a message of hope, reminding us that <strong data-start=\"615\" data-end=\"666\">small acts of kindness can create a big impact.</strong> ?✨</p><p>\r\n\r\n\r\n\r\n</p><p data-start=\"674\" data-end=\"854\" class=\"\">A huge round of applause to our incredible <strong data-start=\"717\" data-end=\"735\">NSS volunteers</strong> for their dedication and selfless service! Let’s continue working towards a society where no one sleeps hungry. ?❤️</p>', '2025-03-30 10:03:47', '2025-03-30 10:19:46', 1, 'NSS-NHITM-Organizes-\"Ek-Tiffin-Gareebo-Ke-Naam\"-Initiative-', '0c1871502c08ca187ebceff0528a07c7.png', NULL, 'Admin', 'Admin'),
(49, 'NSS-NHITM Successfully Organizes Blood Donation Camp! ', 27, 41, '<p data-start=\"68\" data-end=\"325\" class=\"\">NSS-NHITM successfully conducted a <strong data-start=\"103\" data-end=\"126\">Blood Donation Camp</strong> on <strong data-start=\"130\" data-end=\"151\">February 28, 2025</strong>, with enthusiastic participation from students, faculty, and staff. The initiative aimed to promote the spirit of giving and saving lives through voluntary blood donation.</p><p data-start=\"327\" data-end=\"553\" class=\"\">Medical professionals ensured a smooth and safe donation process, and each donor was appreciated for their selfless contribution. The event highlighted the importance of blood donation in healthcare and emergency situations.</p><p>\r\n\r\n</p><p data-start=\"555\" data-end=\"715\" class=\"\">A big thank you to all the donors and volunteers who made this initiative a success! Let’s continue to <strong data-start=\"658\" data-end=\"683\">give the gift of life</strong> and support this noble cause.</p>', '2025-03-30 10:12:56', '2025-03-30 10:20:08', 1, 'NSS-NHITM-Successfully-Organizes-Blood-Donation-Camp!-', '1e87d26669c2c104fa63b1e2d1d79954.jpg', NULL, 'Admin', 'Admin'),
(50, '? Wet and Dry Waste Awareness Camp Successfully Conducted – 29/09/2023 ??', 27, 39, '<p data-start=\"82\" data-end=\"274\" class=\"\">NSS-NHITM organized a <strong data-start=\"104\" data-end=\"140\">Wet and Dry Waste Awareness Camp</strong> on <strong data-start=\"144\" data-end=\"166\">September 29, 2023</strong>, to educate students and staff about proper waste segregation and sustainable waste management practices.</p><p data-start=\"276\" data-end=\"596\" class=\"\">Volunteers actively engaged in spreading awareness about the importance of separating <strong data-start=\"362\" data-end=\"391\">wet waste (biodegradable)</strong> and <strong data-start=\"396\" data-end=\"429\">dry waste (non-biodegradable)</strong> to promote a cleaner and greener environment. The session included informative demonstrations and discussions on recycling, composting, and reducing landfill waste.</p><p>\r\n\r\n</p><p data-start=\"598\" data-end=\"871\" class=\"\">This initiative aimed to instill responsible waste disposal habits and encourage eco-friendly practices among participants. A heartfelt thanks to all who contributed to making this event a success! Let\'s continue working towards a cleaner and more sustainable future. ?✨</p>', '2025-03-30 10:18:10', '2025-03-30 10:21:07', 0, '?-Wet-and-Dry-Waste-Awareness-Camp-Successfully-Conducted-–-29/09/2023-??', '3aa51d6cf11d70f70744bc65abb203df.jpg', NULL, 'Admin', NULL),
(51, 'Wet and Dry Waste Awareness Camp Successfully Conducted – 29/09/2023', 27, 39, '<p data-start=\"82\" data-end=\"274\" class=\"\">NSS-NHITM organized a <strong data-start=\"104\" data-end=\"140\">Wet and Dry Waste Awareness Camp</strong> on <strong data-start=\"144\" data-end=\"166\">September 29, 2023</strong>, to educate students and staff about proper waste segregation and sustainable waste management practices.</p><p data-start=\"276\" data-end=\"596\" class=\"\">Volunteers actively engaged in spreading awareness about the importance of separating <strong data-start=\"362\" data-end=\"391\">wet waste (biodegradable)</strong> and <strong data-start=\"396\" data-end=\"429\">dry waste (non-biodegradable)</strong> to promote a cleaner and greener environment. The session included informative demonstrations and discussions on recycling, composting, and reducing landfill waste.</p><p>\r\n\r\n</p><p data-start=\"598\" data-end=\"871\" class=\"\">This initiative aimed to instill responsible waste disposal habits and encourage eco-friendly practices among participants. A heartfelt thanks to all who contributed to making this event a success! Let\'s continue working towards a cleaner and more sustainable future. ?✨</p>', '2025-03-30 10:21:38', '2025-03-30 15:24:31', 1, 'Wet-and-Dry-Waste-Awareness-Camp-Successfully-Conducted-–-29/09/2023', '3aa51d6cf11d70f70744bc65abb203df.jpg', 1, 'Admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table tblsubcategory
--

CREATE TABLE tblsubcategory (
  SubCategoryId int(11) NOT NULL,
  CategoryId int(11) DEFAULT NULL,
  Subcategory varchar(255) DEFAULT NULL,
  SubCatDescription mediumtext DEFAULT NULL,
  Image varchar(255) NOT NULL,
  PostingDate timestamp NOT NULL DEFAULT current_timestamp(),
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  Is_Active int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table tblsubcategory
--

INSERT INTO tblsubcategory (SubCategoryId, CategoryId, Subcategory, SubCatDescription, Image, PostingDate, UpdationDate, Is_Active) VALUES
(33, 15, 'Cricket News ?', 'Cricket related News', 'uploads/subcategory_images/th.jpg', '2025-03-29 16:40:21', NULL, 1),
(35, 16, 'Mahadbt', 'mahadbt related news', 'uploads/subcategory_images/download.png', '2025-03-29 17:53:09', NULL, 1),
(36, 22, 'Examination', 'news', 'uploads/subcategory_images/img.png', '2025-03-29 18:16:04', NULL, 1),
(37, 22, 'Timetables', 'news', 'uploads/subcategory_images/tt.jpg', '2025-03-29 19:14:08', NULL, 1),
(39, 27, 'Wet and dry waste ', 'Related image', 'uploads/subcategory_images/26b79dea-c752-4b83-92de-f977e1969334.jpg', '2025-03-30 09:54:17', NULL, 1),
(40, 27, 'Ek tiffin gareebo ke naam ', 'related image', 'uploads/subcategory_images/IMG_20241001_134852 (1).jpg', '2025-03-30 09:58:21', NULL, 1),
(41, 27, 'Blood Donation', 'news', 'uploads/subcategory_images/blood-donation.jpg', '2025-03-30 10:07:41', '2025-03-30 10:24:23', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table tbladmin
--
ALTER TABLE tbladmin
  ADD PRIMARY KEY (id),
  ADD KEY AdminUserName (AdminUserName);

--
-- Indexes for table tblcategory
--
ALTER TABLE tblcategory
  ADD PRIMARY KEY (id);

--
-- Indexes for table tblcomments
--
ALTER TABLE tblcomments
  ADD PRIMARY KEY (id),
  ADD KEY id (id),
  ADD KEY postId (postId);

--
-- Indexes for table tblpages
--
ALTER TABLE tblpages
  ADD PRIMARY KEY (id);

--
-- Indexes for table tblposts
--
ALTER TABLE tblposts
  ADD PRIMARY KEY (id),
  ADD KEY id (id),
  ADD KEY postcatid (CategoryId),
  ADD KEY postsucatid (SubCategoryId),
  ADD KEY subadmin (postedBy);

--
-- Indexes for table tblsubcategory
--
ALTER TABLE tblsubcategory
  ADD PRIMARY KEY (SubCategoryId),
  ADD KEY catid (CategoryId);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table tbladmin
--
ALTER TABLE tbladmin
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table tblcategory
--
ALTER TABLE tblcategory
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table tblcomments
--
ALTER TABLE tblcomments
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table tblpages
--
ALTER TABLE tblpages
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table tblposts
--
ALTER TABLE tblposts
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table tblsubcategory
--
ALTER TABLE tblsubcategory
  MODIFY SubCategoryId int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table tblcomments
--
ALTER TABLE tblcomments
  ADD CONSTRAINT pid FOREIGN KEY (postId) REFERENCES tblposts (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table tblposts
--
ALTER TABLE tblposts
  ADD CONSTRAINT postcatid FOREIGN KEY (CategoryId) REFERENCES tblcategory (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT postsucatid FOREIGN KEY (SubCategoryId) REFERENCES tblsubcategory (SubCategoryId) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT subadmin FOREIGN KEY (postedBy) REFERENCES tbladmin (AdminUserName) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table tblsubcategory
--
ALTER TABLE tblsubcategory
  ADD CONSTRAINT catid FOREIGN KEY (CategoryId) REFERENCES tblcategory (id) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;