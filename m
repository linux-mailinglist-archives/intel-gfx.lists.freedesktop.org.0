Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC638A75024
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 19:09:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C59010EA82;
	Fri, 28 Mar 2025 18:09:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l8Cw0omO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3156910EAA3
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Mar 2025 18:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743185347; x=1774721347;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=wHN2bqI+ium1DXjjIL5U/O6vBxQK1P/eC1xSs6JQM+s=;
 b=l8Cw0omODpHDkbJv5Q6mdkTk03RNo0juM1gLWMYyW0EhuKuAP8MaSxNG
 5sHI/N8GUSWvyTSUIckPOdEtXqkbN9kHAdOT9pVRLHkKa0E0jl7DaOhKV
 ZkCt3pXPwFeKNkhiQ2kd1ltr3nDEJ67kMcwHYJhP6n+53Dqedz2HzAXAD
 OUtYBl2X7FLPjpHZlmLy0c1Vgak6UcT8KD0pu9fIseU94a+wi9I/C0hLM
 miwuvy386HOXQM0Wen0oLKTakmP8bPavRvGqV4ULucbUVSkHmiqFKUMeJ
 IwRTa9cX0k2hTgUgVpR+LPO2oqmNrdBzYY27ygpIDWM+lYpdQnonDQdzO Q==;
X-CSE-ConnectionGUID: ZbNVxVfuRfisJ2XWdYInzA==
X-CSE-MsgGUID: j5G2nuVWRCOs8DomcI19kQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11387"; a="48429519"
X-IronPort-AV: E=Sophos;i="6.14,284,1736841600"; d="scan'208";a="48429519"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 11:09:05 -0700
X-CSE-ConnectionGUID: DGBfVc6JQB+MKFnUHf6aMg==
X-CSE-MsgGUID: uWtHCqtjSTS76Kga0v4uPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,284,1736841600"; d="scan'208";a="126431431"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2025 11:09:06 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 28 Mar 2025 11:09:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 28 Mar 2025 11:09:05 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Mar 2025 11:09:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vZtQ7UnOZvaWlxJ1TNik2Wl/iYjz7KraAhzei+aagJJYtpQz+DVSMC4S98HL0M7y626Klf7pwJd9USfqauai9icPYAH/iXwToUaazKyemUsHgIpJQsXcn/v/C5VE0RBjVN6oJywxMMnK6CVbgatZhzSnw1k/fNB2j59GuzNtbZqxKZlxfd3G6dlkfGzkVMYUV+jbre+Oo8zxx7AYFvF1DbB+/MmOQqE83oE5VCINJTVE5Hm7lNzS9Yqzvwywiu0Ks1sPUGKAKNpw+3rk0MJHsX44dcDa0qMg5lgNINbcv0kmLWtSXWcw81AhiaY3zjM7+vAcMdrAdAf6s7XVw2ZDAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fk5UF1Dze4aeZ3odATA7+0k0fGSMW3AHfPFIqy09bmI=;
 b=LQcHDy05Yuz9nWMDStr8OXR/C7wNTyTdBVV3Ud6iuThPFUOBTzGIQnSDfDMgaEICfcjXCLoOSjVigu4sX86paKvzXM8dSoyNXxIj/mw509W6PJTo317fNmqyG1a648oPOHswh6qJQYrM+/MhYbH/+qrHKxuovXtZ/MASgSfcoO4L5H46QrVtzEx6TUMDM/XMslIyIWAvWdEzS6c6vMMeokFdMgG825cINntU2ROwi81Tofihy0OWdWaq8kYjMbBGdh+Kkjz4yUAjUS2ohlCYy2TEjSD9hSo4ZsSOOdz/CetLqxU6IG6E/tiQW/1M+JQg3+qyBlQ8OKcIQwid5WOZFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DS0PR11MB6470.namprd11.prod.outlook.com (2603:10b6:8:c2::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.44; Fri, 28 Mar 2025 18:08:32 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%4]) with mapi id 15.20.8534.043; Fri, 28 Mar 2025
 18:08:32 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Stephen Rothwell
 <sfr@canb.auug.org.au>, Imre Deak <imre.deak@intel.com>
Subject: [PATCH] drm/i915/display: Fix htmldocs build
Date: Fri, 28 Mar 2025 14:08:29 -0400
Message-ID: <20250328180829.25892-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.49.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW3PR05CA0027.namprd05.prod.outlook.com
 (2603:10b6:303:2b::32) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DS0PR11MB6470:EE_
X-MS-Office365-Filtering-Correlation-Id: bad4eecf-5cf0-4382-f20c-08dd6e238cb5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Gx3ak3S8B97vmGegNQLIsDIZYIZkWr7Uub6ec2x1yu0nGZI1IdeU0Q1e8/SG?=
 =?us-ascii?Q?kNOE1fmBCcDS27F9E7hhwkNXvcyI34MGmyh13Cjmk9RgsWgvEAP9Cu1z66yG?=
 =?us-ascii?Q?4jzxLLudxKa4M/+GyRndP58qMVHHWnG5Y3Eg4tonAgoSt2+DT3RBX1lLwMLF?=
 =?us-ascii?Q?g1z9pnVPd4QcmPqizR7C6bc0Jyok7CVH8Y3j/0U6rRIQni2kLA5DxTO3sC3h?=
 =?us-ascii?Q?47orEbIm67jrEsx0nwU9h0GN/oxITkM53zD9/pi17dc2E08zh/16eKTVsvsx?=
 =?us-ascii?Q?4yjK9fefsEfBRHnqy8he5vKmd//Xey8K0lrKBqX2sKW8jUEvYVbth8kEk4OG?=
 =?us-ascii?Q?ZWzcOfHAl6vXbjiL66oV2FsdGllNZxgH7gwUrWHupevI0UA8fgEASD+S1muK?=
 =?us-ascii?Q?Wn862tSqPKDHvIE7DNKmFDxQlTK2yuUgPVear6YV8L6145Nat1JDXmQ28mCb?=
 =?us-ascii?Q?4jU3SwXmFMjjPBIfQr4ZOkUPNbJ56bTM8UfCLls5zRYQ8F3CNcDPM/5SpSYR?=
 =?us-ascii?Q?fQTu3fbUpo2JgMLNNDuoW3tKcAPJvaeB9ilB0XP4L51D4t3nGya8W//UFePt?=
 =?us-ascii?Q?YcYJSXQrYI07U8UUgMLfgdIOIzNQA8aMosq7wOhB8wl6oTLQOenHvbpdZUpK?=
 =?us-ascii?Q?+CVqqmNp74EPUim+XLr1mW4s67wvS6IcP0m+ivWkp8D4YDxGNpJ7hZujD60S?=
 =?us-ascii?Q?8DoorhBZtgf39/XQkDuIDzqDY+567fWyYYmgJSp8mZPHrJ4wRZ7sEszvDKl3?=
 =?us-ascii?Q?9SHNpADeYE01rCsLL+tokHS+PnDce+xxDV4No+weCt/KWE8Ao2fHex426er2?=
 =?us-ascii?Q?UjphjEjpQvFXXsuWFVcDoDKsZuFCo0ioZ9KpbReErjy64ncEhMO+pEUVs7DH?=
 =?us-ascii?Q?BPyn6FTkEXQcH0UHCC9+DmmSZTv9UT4Fh/ihLHHrxk8jUS6Ic4j3DC+/1hgS?=
 =?us-ascii?Q?/IvZk506WAkljaKPeEqueVOdq/BQIhg4/Clzwr2GcftpvKgfo7dXUA5QkSYk?=
 =?us-ascii?Q?py4wbnpPs/6xut9nmiYgMmnVIC5OFIxlTBslsmehggBtwAvMws7QobQT9SKw?=
 =?us-ascii?Q?srrGMzh39+nGrJDGXkD/7YKSnu9rhMlt5yU0MJCT4Xu3KFV/yof1yxw5a7kk?=
 =?us-ascii?Q?NA6SAYYWd/aFpGFcScb29JUCblhPHmUb1GUhVvLYv5K+71SK/P9wXifVHuTo?=
 =?us-ascii?Q?hro+ey6u4FAQNTpB7REUUCyDUr3VKbo/y4Zt2rjbuvuCQk0b6uB9sUoZLECf?=
 =?us-ascii?Q?GI/NTahtHGAQW0oxR7q02v/j1+lqKiId6fOXuGCFQ9WvO+HBydtivZUTFO1o?=
 =?us-ascii?Q?RDXsedKI3e85AeIz7owXvlcY1UDaM5m7odG2YEF1LjdBrw+LFf//HUYINt/N?=
 =?us-ascii?Q?zUN9lAPU377/yaD7UNPbYPxm7ACk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?teeacjV46dkbyzfwRoZ2nhYNgUaAD+V9IHT+dvNPgdXcDkfGOF/lM6VQaLHV?=
 =?us-ascii?Q?Rvsd55WUAqnORxHIb0Z3vKlfemOuIs9vhM/s7Jz8hZpa5D9HLzuaN3Ibuh9V?=
 =?us-ascii?Q?NvXZhZkHSKfVPCsimdEZO/uCCPxpDiroKJJDIhrFkYxRftZGyfSrXGtAkBWg?=
 =?us-ascii?Q?kDlCGhtIbjwrrW3rmSaridBrlQANwWrIUARL1O/qADNGTTfCDawFwDa+Iw10?=
 =?us-ascii?Q?XJXnZ5xFzkEa8yci3bL9YX/ka9rfzm2CjfjMeWyh8stie7ZARITrrJo2HaoF?=
 =?us-ascii?Q?JedOQxVwpGRKQur2MlVZsoRJ0jRugNjNrDy3fMVN9V7MiiGSfTWJnq1RtE1S?=
 =?us-ascii?Q?c2grnUUmk/q+C8g5/GEY/zTILpK8UOc8wZhFZOTHhWthTggjJHIqvilIpd8n?=
 =?us-ascii?Q?qN7IbW389IDxORfqXTRwZAPHctYxKUsUOwpqfmwXSwedvrFqGi3vuKC12CZf?=
 =?us-ascii?Q?ZGYoPLE5fy0mwX/E97kDEqtJkpvvE9eY6E5HFT4YmQJJvEz0zOrsGZyf49QI?=
 =?us-ascii?Q?Fx41KvVRNHmXSzFdFm611UfM88Mx3Xv4CkR7fau8hklQ3mDQp+ascTPzBufh?=
 =?us-ascii?Q?ioCjH1tsqyRh1BCDeC5V+PyIjn4N8YVkDrpo2kEIx1eWuXF89PKprECToDNM?=
 =?us-ascii?Q?x8953RW8qxxB2ZbAno5274jyA5fHe0aUaWVPdJqHctTmcyMXGORj+xcvGYHP?=
 =?us-ascii?Q?QopmbWWD+XzHme/zAyvlPdEAjdZVia5iPywsHd5OEJsl76WOZraVtB9fleiX?=
 =?us-ascii?Q?xIwFrgf3TnE7iR2ctA8aXBPRq6P/SsDPSKXAt2duv9j4fg+C+lFYwniWr4AX?=
 =?us-ascii?Q?oXb2WxJ0efoLN6VFKEgXmatZhKke16J0WOpmMbwGX9eMK3DrUA5FIqt43fsG?=
 =?us-ascii?Q?/K0ao7K2g8XGqgJ9vhG1/Q+agKRANVaiKFQg/2PCq+SLZKRqugoGanwrGbfw?=
 =?us-ascii?Q?8e6yV0y+b49mBgGStjIkrUAqxswjGQxphtIv3jZtiGM0FspSydVNEGJeO9Ta?=
 =?us-ascii?Q?oQPk8eirbOeyLt+t9EscOaMoWkrnIG4pV6v1erRbqhPziiu2OXIpxYRy7G7W?=
 =?us-ascii?Q?GJ3I+dEJsyn4kw4RfpD7Q73z20+q4bWOO57SQkwNKnyJRr4L6u0JukX3FGBu?=
 =?us-ascii?Q?N25jqla13dTFl8vPe8dybyJusBGixoonIfIbJNuAasLUvEolAghiovTQWznB?=
 =?us-ascii?Q?Q0acdbQlGBjsx0FmobiJ4VTNjtxYUSrV6JxvdaySRsWMmFzyGxMndoOr2GUF?=
 =?us-ascii?Q?52PuO94s4OUHlYafeQZHwuj03/cAiEIgYut7aOOXkPN73BOQV+ieLEa1zAb0?=
 =?us-ascii?Q?/MKc8c69H8FGo5BRFZpXyT7YHHR6gryLhhl/SgPyYP2rv+BZsHXYL3kGlmGH?=
 =?us-ascii?Q?TDA7eVp18XxVCMtt0kNB5e5eBM/zMGFLq4Td6Ftl6N4Z43nm+5ukzms5wVIZ?=
 =?us-ascii?Q?tPm3kvYxpUfqLUDkpg58KsgYsa2Xa//HMtvSONIYgpmg7Xy7uF0l1Vs3irF7?=
 =?us-ascii?Q?fltRM9y6fV/mTKeswqG40MMngbdnxOPO6B+RGLXjRWgVG/zfH/voPj4tsXfd?=
 =?us-ascii?Q?uEGOI3pwhQ1t3NiStl4EpKSHL/aA6NRaIreUu5ajb68IYdN/L8JQzaaQcH9b?=
 =?us-ascii?Q?+g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bad4eecf-5cf0-4382-f20c-08dd6e238cb5
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2025 18:08:32.2179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2+c/RFc8xkA0fV4Zc9Z+2IYKoikvxjhyaw4hIqabgkD3uU0YFJ2h2aOdS+UAMGKzp4uavcMePcbO/EAxAj09ZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6470
X-OriginatorOrg: intel.com
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fixes a wrong documentation block indentation:

Documentation/gpu/i915:141: ./drivers/gpu/drm/i915/display/intel_hotplug.c:1080: ERROR: Unexpected indentation.
Documentation/gpu/i915:141: ./drivers/gpu/drm/i915/display/intel_hotplug.c:1082: WARNING: Block quote ends without a blank line; unexpected unindent.

Fixes: 0d77a3e0ea90 ("drm/i915/hpd: Add support for blocking the IRQ handling on an HPD pin")
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Closes: https://lore.kernel.org/intel-gfx/20250312232506.47451f83@canb.auug.org.au/
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index dce9cde03d70..0f5068d2389b 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -1075,15 +1075,15 @@ static bool unblock_hpd_pin(struct intel_display *display, enum hpd_pin pin)
  * Blocks the handling of HPD IRQs on the HPD pin of @encoder.
  *
  * On return:
- * - It's guaranteed that the blocked encoders' HPD pulse handler
- *   (via intel_digital_port::hpd_pulse()) is not running.
- * - The hotplug event handling (via intel_encoder::hotplug()) of an
- *   HPD IRQ pending at the time this function is called may be still
- *   running.
- * - Detection on the encoder's connector (via
- *   drm_connector_helper_funcs::detect_ctx(),
- *   drm_connector_funcs::detect()) remains allowed, for instance as part of
- *   userspace connector probing, or DRM core's connector polling.
+ *  - It's guaranteed that the blocked encoders' HPD pulse handler
+ *    (via intel_digital_port::hpd_pulse()) is not running.
+ *  - The hotplug event handling (via intel_encoder::hotplug()) of an
+ *    HPD IRQ pending at the time this function is called may be still
+ *    running.
+ *  - Detection on the encoder's connector (via
+ *    drm_connector_helper_funcs::detect_ctx(),
+ *    drm_connector_funcs::detect()) remains allowed, for instance as part of
+ *    userspace connector probing, or DRM core's connector polling.
  *
  * The call must be followed by calling intel_hpd_unblock(), or
  * intel_hpd_clear_and_unblock().
-- 
2.49.0

