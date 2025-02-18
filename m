Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B722DA3901B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 02:02:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D272D10E329;
	Tue, 18 Feb 2025 01:02:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lzsL3Nho";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C5C710E2DA;
 Tue, 18 Feb 2025 01:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739840558; x=1771376558;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=aQLaZEsTGKa7A802Rp8rFTMCgj+BB5j3191q0+22uiY=;
 b=lzsL3Nho0zzvSDJj9rOjEjMfZ0LxnxW1XJbyOhNCJvQIoRnTsB1FACZM
 huCEifxb8oxxnB+5rB/OuGMeKV3zKsOitC6PV9vAq/zGkRQ4BziZOzwxG
 pfT73lOxaOAmphPMuaw6c2427bXo6C8ulyMHoOhr32BnvnnRN/Fn/Ag4U
 LW9jqfvSlnVN+wodDpYgaATK+rx650uKh6HbubGSMkHSPXJXotmhzv1sc
 YkNooDg4Ubc+Y4KSFj+MDmLFb1O6+fZZ+h1HUnHD1OeBvZ9H7pREXjymC
 dhriDyRQGEaxuD90m4kRESZKf4yNv8LIToLkIv/oz8278VrsFluYIHF2m Q==;
X-CSE-ConnectionGUID: yXqfj+DyQ3qPX7FThB7KtQ==
X-CSE-MsgGUID: S3mJJ7/MRKiwdXwLZTys2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="40647195"
X-IronPort-AV: E=Sophos;i="6.13,294,1732608000"; d="scan'208";a="40647195"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 17:02:38 -0800
X-CSE-ConnectionGUID: VC22BZ6rQ+O24eRlbds+nQ==
X-CSE-MsgGUID: nHQXBLRwQOWMlTVu4wuM4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119458343"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 17:02:37 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 17 Feb 2025 17:02:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 17 Feb 2025 17:02:36 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 17 Feb 2025 17:02:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lqyeDFQP/QbwUVsKA2da57Ffqwfll2ye4QLcsxOMUNrNblIevlJp+gds22RSXRAEgDSPceo4tcmsJShsupCsJlj/cDKpMNzjKLqBiuWRsszUFGKZLuR6mCk1DAoBKbYN8xx2vHM97WABu1XuGUoVG69qq+9PYOCwkoihSH8egWC7wYr9HShpGeQ+TiPxe/9F2RMeMCz2zGw7RCh8Vcb3leezwvKaY+pxfjGvBPDPh7VPJTSu2oB5wB/S2Vib9dMx4XkFfTjKTk0jbqx91JqB3wSlrYcP1DmCv1Z79nbKGAeDNwLd7hW4DsmmTPNfHvDcW/2MSQIdZQSvW4yxaYKjOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0XAu05UhlmJzQn8XoREkYzoRfzesOQY2RihJ1j3eAOY=;
 b=MkbQnjuzssWOXStx3hhNWp5UybEE1iuOq+MWIOjile1IbQqnAargW1imZ79b6mXi0PY6DjXkgh3hvH/KSIshBkqKI0PpZI8keweh0X10wIkH79uwv4Nr5ONgFOqIKgpgeY2Y5pfTReu6ygVAWpiwoQo9K6bBcCR0LvYM714vtsnnqd0qn0+w4Tzk17Q7ZUYlP9lsUZlZPCp2aFiWbAzHMh6gS8kAinJ1yyEYwJPFX34F3G20/qiQCDHAL8h2Egf50Q7wglryVKBU5WXznMNOiHhO1eVATZf9KomRX0MJKBZGyWrmQ5qp6me91HrruycVStkaokxOzsR2Sn/ea5gPtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by IA1PR11MB6075.namprd11.prod.outlook.com (2603:10b6:208:3d5::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.17; Tue, 18 Feb
 2025 01:02:32 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8422.015; Tue, 18 Feb 2025
 01:02:32 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 2/2] drm/i915/display: Convert intel_pch towards intel_display
Date: Mon, 17 Feb 2025 20:02:22 -0500
Message-ID: <20250218010224.761209-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250218010224.761209-1-rodrigo.vivi@intel.com>
References: <20250218010224.761209-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4P221CA0022.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::27) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|IA1PR11MB6075:EE_
X-MS-Office365-Filtering-Correlation-Id: 706f4108-2c73-4ff8-1a2b-08dd4fb7eca3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?abpeNcj0KX6cjlX4UJgvnCttuffNWtyW6i2vfSm89rB+ZZiKJ4+Tb3DiYcE9?=
 =?us-ascii?Q?pu4jUwwE7KSl2q82B9QlBzaLjMkNEbmigsVt8iaaLLe9lq+nFMUD23Of1gHj?=
 =?us-ascii?Q?DLKEKiTUbebgfULjp5dqzzDVsfGwzb2c7CHi3flFc48jmjM+1OmQR+WYNLmy?=
 =?us-ascii?Q?XDHzSPuMy85mHB/nhBr0t6WQdmcARYe9Wn+dsJ4lQ9I8abr27QMHS8lu3vlj?=
 =?us-ascii?Q?H41E4xPpdmwQ55RbRI3RcMvng9YGN9Ud6eiBuf1x3x2GTP4FpqR8pDKY4MqE?=
 =?us-ascii?Q?96qM0Lk4zU4ZWqiequUVpRMqRtwU6qOVtPpBD5n81D027eBOXn6XPBwZqRPd?=
 =?us-ascii?Q?pL9eDr+D4aS+bVwQh6T6TXdU4Le6uRSr5ohlXSJTmGF+eaM3C/NE6X/aiQbt?=
 =?us-ascii?Q?jT651z3PzNF0O8A5Dg3JnjNj+dMM8DVlBibECedutB9soioDP/3tWb0Hbfzj?=
 =?us-ascii?Q?WTvVasgerOGBH+mPzaMCYrUhs1LBrWqfQr/3YuI6jQMx435pSoD8WnTAJjYx?=
 =?us-ascii?Q?qEXM+th7hWrzv8aJyYE3+ZWfhkSKmih0Q8HLFUcNUU1b99hPmLCJ//3Yvtds?=
 =?us-ascii?Q?0jdFqKFuTILHWnmsgZ0v7ON8VIvPSkdxznoifYvSjqsaeuF7fecPdKAxEzIq?=
 =?us-ascii?Q?7FRCwrCJY0HQWsdAxeVij82nbJilrILTwLn1fE8nwJZAntYcEjaNmeD8d0/r?=
 =?us-ascii?Q?JkxyRuC5DkiwM7J8m3+M0lvwRByXJQkVGAif/33TlPLkGEvFBKcoEGCWvKvz?=
 =?us-ascii?Q?wlubmt3HQssKYKM8DhuFOXXYf+FLmfUFmn21hYXdkVQQidG85AkpKDcRHN55?=
 =?us-ascii?Q?EIhjZ3emJWaVzPwcjL3RI9k5wHn6D/oIFyZDKlteBw9as1zMTB9JFdty+L/X?=
 =?us-ascii?Q?sc3PHxd9+IQOriqo6RiWgOqao6hT+fj998ducZZXNpYWAKGIKyhSthbg2RmB?=
 =?us-ascii?Q?/VPqd/HCjCl+PFu/fVCkdrnaxOeEBXa+jG8RmLNsEr1UcglqZqtizFKPp6K8?=
 =?us-ascii?Q?p6t8+DNhv8M6i1eiwpW69uTP382bbntVTNJJoEpT7qGtbZwE0Q7IcRXM3XSc?=
 =?us-ascii?Q?uHhLbrynuCpX3FlASLTesMwCmEsrJaN28GQzE6U5tN+48inkoLYCb2JR1YKP?=
 =?us-ascii?Q?9HI+jdcUN6VW67q23EP/mfqrKm5ucxUyikI2Wo4ioU9w8/m83Z1LuamjpKYN?=
 =?us-ascii?Q?fXsfTWeae7NsOsI99rRvG8imzDPUpjaHwHWfi7GPYQZbbbGkxnP0zxvdyh1a?=
 =?us-ascii?Q?EVj6aAf4Cm7oezEoYaxls2SIPWCb7lA5NVEf3zIEHwCqraqNvqQjlhQOHXSe?=
 =?us-ascii?Q?vGcumGhjQpmmyXjgvU2fo1ezzB+JaJjSWbac5m7+YL73lJjg9AfJD4GzuFW8?=
 =?us-ascii?Q?DeqtArHKY2ny02Q3kRATt1dM416w?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+NaU5s1tRzAetWp+cElbeIHAL8ARLURNaUvDj2RNhTiqtmRBjomwtr6XxExV?=
 =?us-ascii?Q?7OEQUMpR8K5D3NG9qgdycA1KFPzWyCmq3wYOuuZyHAtzCHsNIXSBVx+wh4NE?=
 =?us-ascii?Q?Z/lqToX0BSk0c04JeB3eBgoTi8gBqwEWFOtX9HtDSVKtrtgybPRZ/3/i3Ss2?=
 =?us-ascii?Q?HO6CNmIAnN7uAHzSHFXb/2qRweaeur1E3AYYdPPsI1JTsjKrlcQTjOB4WV0m?=
 =?us-ascii?Q?s5QRhnB0/BTXHklgPYE8IuO4G94TlhdMjm1fN7g7XKx6VEMUaOyoJo812r8c?=
 =?us-ascii?Q?2+o1ssSjyxIzva390rfC6bpgB8fM9tgc973TD/FOjmiOdmuCW0yCHjzwC5IZ?=
 =?us-ascii?Q?/9mXMapoQ/fRXa6xFoSXJPsakcTFVgnvNdyaE0yPyfXtl0FXe2LGDObl0Epi?=
 =?us-ascii?Q?fFJsxw1WXUR54HCguvAidKjZePNJlpoUl1JvhEF96JDeJYBPHbcJBlnXKQMw?=
 =?us-ascii?Q?s2FJ/c6FtpcSBII6wmwSibPM3FU7kq7gAYhLoaH1mOOy7J8+YFQaRKN3pq0X?=
 =?us-ascii?Q?RSNcSJgAt3LgUE1M/13r26Yz8UFJ7ehAR0SrSVnwVIkAqecUnHSkM28IwD61?=
 =?us-ascii?Q?gRW4FSQpl0mmDJOOu7MBMShO8xCExdtFHi91iKpbh1a16ZxZpPuIWdsZGDU+?=
 =?us-ascii?Q?w+TqC1vhy6djOKfVBKFYRqNXhi2fvyjiGnwa8Ds2Kd1O8KlqCl0oOpPFmHu5?=
 =?us-ascii?Q?NAvwsxl1JXezPXJyfimKMobM/9JryI2kYZP5Wr0w961qlsUtckwxCLQtjEzQ?=
 =?us-ascii?Q?Jw/LYDeyDuQ0zrPYQtEsDI+xHProJRHjFJ21rvOwE90jHkFp710jrfxxWC+I?=
 =?us-ascii?Q?mniclIQBlr+2dOf68HZ4j6T0ATNjYB0Zbqn5sNzV5EIPg4I8sJVwkAquC3VR?=
 =?us-ascii?Q?RgwEv0VnjD2vnP7XQ0oMgC7eaYJZtU4XyEI1/C/ap18nCAGSzHb2WSpBx0hV?=
 =?us-ascii?Q?PBLwKj9Pbg8P8Gau8D1k5bN80RnX9RXDWpWLcel8sca+yWenaFDN5W4lCsv5?=
 =?us-ascii?Q?ie3vIeFUlvAn4gx5N8VPm8agjHEwubs1H/aHne6UF05zjSNcSAkAgP3b8jfV?=
 =?us-ascii?Q?VB2g/XsRFoqSihg1cAhxao5ZXvr3GvMs6f2LbTln7xAgrefJZ1kEk64eioFs?=
 =?us-ascii?Q?8GtsBNywYGiU+/Fi+OpwcOIEgD7VnIWTOf/Lwskn4imRAubMljzumY+mMqSN?=
 =?us-ascii?Q?5PIwnCBcaRwHTGR05EW7bjl+9N+q67/injD2Wzf62J0wtC+pr9mL+SB0AwU+?=
 =?us-ascii?Q?/+v7Islu+JiJA3HHRKWUjm2NP4wqoJXDDEDbLvrSa1moH9+q6GiOgjuuDgBv?=
 =?us-ascii?Q?3fdbQPJQJ6dCPtgFQQ52Pvgab49o7+sswE3hMJz8HoS+MPO5ePeQaf9omgoM?=
 =?us-ascii?Q?tKCqbg+AAbKAB4Zpy4/xhL//XMz46qR09ySgP1gxror90JvqxzXR+OU5dJ8Z?=
 =?us-ascii?Q?BEdD9ubzctlcWlLHfST/bRBDs9NS1Myb20PM2i2IICsKq8sx0djcVBPJIpJp?=
 =?us-ascii?Q?wK+10GYkR62bUJUFw9yXZ7VgB93oBucFUSoRFkJRy0cHIebKqOLF09/RfwaE?=
 =?us-ascii?Q?M2+9wKtCwvsGbD6e3MW+eBX7bnYZH88eyzeHTIRWACZGyJkhOdBOcqcsXu2G?=
 =?us-ascii?Q?OA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 706f4108-2c73-4ff8-1a2b-08dd4fb7eca3
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2025 01:02:32.6594 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Td9wdDszEaK+wmswZFlwo52sETwTqACW4480ZLBeRVpRb3ae40BWagOTNz2qRugQtFKGkHjjTLggtsU3ZMGvUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6075
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

Now that intel_pch lives under display, let's begin its
conversion towards struct intel_display.

Move the pch_type to inside intel_display and convert the
callers.

While doing it, sort intel_display_core.h include list
alphabetically.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |   6 +-
 drivers/gpu/drm/i915/display/intel_pch.c      | 242 +++++++++---------
 drivers/gpu/drm/i915/display/intel_pch.h      |  40 +--
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |   3 -
 drivers/gpu/drm/xe/display/xe_display.c       |   2 +-
 drivers/gpu/drm/xe/xe_device_types.h          |   1 -
 7 files changed, 155 insertions(+), 141 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 554870d2494b..2e288a5e390a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -21,12 +21,13 @@
 #include "intel_display_limits.h"
 #include "intel_display_params.h"
 #include "intel_display_power.h"
+#include "intel_dmc_wl.h"
 #include "intel_dpll_mgr.h"
 #include "intel_fbc.h"
 #include "intel_global_state.h"
 #include "intel_gmbus.h"
 #include "intel_opregion.h"
-#include "intel_dmc_wl.h"
+#include "intel_pch.h"
 #include "intel_wm_types.h"
 
 struct task_struct;
@@ -287,6 +288,9 @@ struct intel_display {
 	/* Platform (and subplatform, if any) identification */
 	struct intel_display_platforms platform;
 
+	/* Intel PCH: where the south display engine lives */
+	enum intel_pch pch_type;
+
 	/* Display functions */
 	struct {
 		/* Top level crtc-ish functions */
diff --git a/drivers/gpu/drm/i915/display/intel_pch.c b/drivers/gpu/drm/i915/display/intel_pch.c
index 37766e40fd1c..e63480dd01fe 100644
--- a/drivers/gpu/drm/i915/display/intel_pch.c
+++ b/drivers/gpu/drm/i915/display/intel_pch.c
@@ -39,139 +39,150 @@
 
 /* Map PCH device id to PCH type, or PCH_NONE if unknown. */
 static enum intel_pch
-intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
+intel_pch_type(const struct intel_display *display, unsigned short id)
 {
 	switch (id) {
 	case INTEL_PCH_IBX_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Ibex Peak PCH\n");
-		drm_WARN_ON(&dev_priv->drm, GRAPHICS_VER(dev_priv) != 5);
+		drm_dbg_kms(display->drm, "Found Ibex Peak PCH\n");
+		drm_WARN_ON(display->drm, DISPLAY_VER(display) != 5);
 		return PCH_IBX;
 	case INTEL_PCH_CPT_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found CougarPoint PCH\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    GRAPHICS_VER(dev_priv) != 6 && !IS_IVYBRIDGE(dev_priv));
+		drm_dbg_kms(display->drm, "Found CougarPoint PCH\n");
+		drm_WARN_ON(display->drm,
+			    DISPLAY_VER(display) != 6 &&
+			    !display->platform.ivybridge);
 		return PCH_CPT;
 	case INTEL_PCH_PPT_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found PantherPoint PCH\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    GRAPHICS_VER(dev_priv) != 6 && !IS_IVYBRIDGE(dev_priv));
+		drm_dbg_kms(display->drm, "Found PantherPoint PCH\n");
+		drm_WARN_ON(display->drm,
+			    DISPLAY_VER(display) != 6 &&
+			    !display->platform.ivybridge);
 		/* PPT is CPT compatible */
 		return PCH_CPT;
 	case INTEL_PCH_LPT_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found LynxPoint PCH\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
-		drm_WARN_ON(&dev_priv->drm,
-			    IS_HASWELL_ULT(dev_priv) || IS_BROADWELL_ULT(dev_priv));
+		drm_dbg_kms(display->drm, "Found LynxPoint PCH\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.haswell &&
+			    !display->platform.broadwell);
+		drm_WARN_ON(display->drm,
+			    display->platform.haswell_ult ||
+			    display->platform.broadwell_ult);
 		return PCH_LPT_H;
 	case INTEL_PCH_LPT_LP_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found LynxPoint LP PCH\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_HASWELL_ULT(dev_priv) && !IS_BROADWELL_ULT(dev_priv));
+		drm_dbg_kms(display->drm, "Found LynxPoint LP PCH\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.haswell &&
+			    !display->platform.broadwell);
+		drm_WARN_ON(display->drm,
+			    !display->platform.haswell_ult &&
+			    !display->platform.broadwell_ult);
 		return PCH_LPT_LP;
 	case INTEL_PCH_WPT_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found WildcatPoint PCH\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
-		drm_WARN_ON(&dev_priv->drm,
-			    IS_HASWELL_ULT(dev_priv) || IS_BROADWELL_ULT(dev_priv));
+		drm_dbg_kms(display->drm, "Found WildcatPoint PCH\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.haswell &&
+			    !display->platform.broadwell);
+		drm_WARN_ON(display->drm,
+			    display->platform.haswell_ult ||
+			    display->platform.broadwell_ult);
 		/* WPT is LPT compatible */
 		return PCH_LPT_H;
 	case INTEL_PCH_WPT_LP_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found WildcatPoint LP PCH\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_HASWELL_ULT(dev_priv) && !IS_BROADWELL_ULT(dev_priv));
+		drm_dbg_kms(display->drm, "Found WildcatPoint LP PCH\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.haswell &&
+			    !display->platform.broadwell);
+		drm_WARN_ON(display->drm,
+			    !display->platform.haswell_ult &&
+			    !display->platform.broadwell_ult);
 		/* WPT is LPT compatible */
 		return PCH_LPT_LP;
 	case INTEL_PCH_SPT_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found SunrisePoint PCH\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_SKYLAKE(dev_priv) && !IS_KABYLAKE(dev_priv));
+		drm_dbg_kms(display->drm, "Found SunrisePoint PCH\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.skylake &&
+			    !display->platform.kabylake);
 		return PCH_SPT;
 	case INTEL_PCH_SPT_LP_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found SunrisePoint LP PCH\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_SKYLAKE(dev_priv) &&
-			    !IS_KABYLAKE(dev_priv) &&
-			    !IS_COFFEELAKE(dev_priv) &&
-			    !IS_COMETLAKE(dev_priv));
+		drm_dbg_kms(display->drm, "Found SunrisePoint LP PCH\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.skylake &&
+			    !display->platform.kabylake &&
+			    !display->platform.coffeelake &&
+			    !display->platform.cometlake);
 		return PCH_SPT;
 	case INTEL_PCH_KBP_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Kaby Lake PCH (KBP)\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_SKYLAKE(dev_priv) &&
-			    !IS_KABYLAKE(dev_priv) &&
-			    !IS_COFFEELAKE(dev_priv) &&
-			    !IS_COMETLAKE(dev_priv));
+		drm_dbg_kms(display->drm, "Found Kaby Lake PCH (KBP)\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.skylake &&
+			    !display->platform.kabylake &&
+			    !display->platform.coffeelake &&
+			    !display->platform.cometlake);
 		/* KBP is SPT compatible */
 		return PCH_SPT;
 	case INTEL_PCH_CNP_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Cannon Lake PCH (CNP)\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_COFFEELAKE(dev_priv) &&
-			    !IS_COMETLAKE(dev_priv));
+		drm_dbg_kms(display->drm, "Found Cannon Lake PCH (CNP)\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.coffeelake &&
+			    !display->platform.cometlake);
 		return PCH_CNP;
 	case INTEL_PCH_CNP_LP_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Found Cannon Lake LP PCH (CNP-LP)\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_COFFEELAKE(dev_priv) &&
-			    !IS_COMETLAKE(dev_priv));
+		drm_WARN_ON(display->drm,
+			    !display->platform.coffeelake &&
+			    !display->platform.cometlake);
 		return PCH_CNP;
 	case INTEL_PCH_CMP_DEVICE_ID_TYPE:
 	case INTEL_PCH_CMP2_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Comet Lake PCH (CMP)\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_COFFEELAKE(dev_priv) &&
-			    !IS_COMETLAKE(dev_priv) &&
-			    !IS_ROCKETLAKE(dev_priv));
+		drm_dbg_kms(display->drm, "Found Comet Lake PCH (CMP)\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.coffeelake &&
+			    !display->platform.cometlake &&
+			    !display->platform.rocketlake);
 		/* CMP is CNP compatible */
 		return PCH_CNP;
 	case INTEL_PCH_CMP_V_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Comet Lake V PCH (CMP-V)\n");
-		drm_WARN_ON(&dev_priv->drm,
-			    !IS_COFFEELAKE(dev_priv) &&
-			    !IS_COMETLAKE(dev_priv));
+		drm_dbg_kms(display->drm, "Found Comet Lake V PCH (CMP-V)\n");
+		drm_WARN_ON(display->drm,
+			    !display->platform.coffeelake &&
+			    !display->platform.cometlake);
 		/* CMP-V is based on KBP, which is SPT compatible */
 		return PCH_SPT;
 	case INTEL_PCH_ICP_DEVICE_ID_TYPE:
 	case INTEL_PCH_ICP2_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Ice Lake PCH\n");
-		drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
+		drm_dbg_kms(display->drm, "Found Ice Lake PCH\n");
+		drm_WARN_ON(display->drm, !display->platform.icelake);
 		return PCH_ICP;
 	case INTEL_PCH_MCC_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Mule Creek Canyon PCH\n");
-		drm_WARN_ON(&dev_priv->drm, !(IS_JASPERLAKE(dev_priv) ||
-					      IS_ELKHARTLAKE(dev_priv)));
+		drm_dbg_kms(display->drm, "Found Mule Creek Canyon PCH\n");
+		drm_WARN_ON(display->drm, !(display->platform.jasperlake ||
+					    display->platform.elkhartlake));
 		/* MCC is TGP compatible */
 		return PCH_TGP;
 	case INTEL_PCH_TGP_DEVICE_ID_TYPE:
 	case INTEL_PCH_TGP2_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Tiger Lake LP PCH\n");
-		drm_WARN_ON(&dev_priv->drm, !IS_TIGERLAKE(dev_priv) &&
-			    !IS_ROCKETLAKE(dev_priv) &&
-			    !IS_SKYLAKE(dev_priv) &&
-			    !IS_KABYLAKE(dev_priv) &&
-			    !IS_COFFEELAKE(dev_priv) &&
-			    !IS_COMETLAKE(dev_priv));
+		drm_dbg_kms(display->drm, "Found Tiger Lake LP PCH\n");
+		drm_WARN_ON(display->drm, !display->platform.tigerlake &&
+			    !display->platform.rocketlake &&
+			    !display->platform.skylake &&
+			    !display->platform.kabylake &&
+			    !display->platform.coffeelake &&
+			    !display->platform.cometlake);
 		return PCH_TGP;
 	case INTEL_PCH_JSP_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Jasper Lake PCH\n");
-		drm_WARN_ON(&dev_priv->drm, !(IS_JASPERLAKE(dev_priv) ||
-					      IS_ELKHARTLAKE(dev_priv)));
+		drm_dbg_kms(display->drm, "Found Jasper Lake PCH\n");
+		drm_WARN_ON(display->drm, !(display->platform.jasperlake ||
+					    display->platform.elkhartlake));
 		/* JSP is ICP compatible */
 		return PCH_ICP;
 	case INTEL_PCH_ADP_DEVICE_ID_TYPE:
 	case INTEL_PCH_ADP2_DEVICE_ID_TYPE:
 	case INTEL_PCH_ADP3_DEVICE_ID_TYPE:
 	case INTEL_PCH_ADP4_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Alder Lake PCH\n");
-		drm_WARN_ON(&dev_priv->drm, !IS_ALDERLAKE_S(dev_priv) &&
-			    !IS_ALDERLAKE_P(dev_priv));
+		drm_dbg_kms(display->drm, "Found Alder Lake PCH\n");
+		drm_WARN_ON(display->drm, !display->platform.alderlake_s &&
+			    !display->platform.alderlake_p);
 		return PCH_ADP;
 	default:
 		return PCH_NONE;
@@ -189,7 +200,7 @@ static bool intel_is_virt_pch(unsigned short id,
 }
 
 static void
-intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
+intel_virt_detect_pch(const struct intel_display *display,
 		      unsigned short *pch_id, enum intel_pch *pch_type)
 {
 	unsigned short id = 0;
@@ -201,44 +212,45 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
 	 * make an educated guess as to which PCH is really there.
 	 */
 
-	if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
+	if (display->platform.alderlake_s || display->platform.alderlake_p)
 		id = INTEL_PCH_ADP_DEVICE_ID_TYPE;
-	else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
+	else if (display->platform.tigerlake || display->platform.rocketlake)
 		id = INTEL_PCH_TGP_DEVICE_ID_TYPE;
-	else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv))
+	else if (display->platform.jasperlake || display->platform.elkhartlake)
 		id = INTEL_PCH_MCC_DEVICE_ID_TYPE;
-	else if (IS_ICELAKE(dev_priv))
+	else if (display->platform.icelake)
 		id = INTEL_PCH_ICP_DEVICE_ID_TYPE;
-	else if (IS_COFFEELAKE(dev_priv) ||
-		 IS_COMETLAKE(dev_priv))
+	else if (display->platform.coffeelake ||
+		 display->platform.cometlake)
 		id = INTEL_PCH_CNP_DEVICE_ID_TYPE;
-	else if (IS_KABYLAKE(dev_priv) || IS_SKYLAKE(dev_priv))
+	else if (display->platform.kabylake || display->platform.skylake)
 		id = INTEL_PCH_SPT_DEVICE_ID_TYPE;
-	else if (IS_HASWELL_ULT(dev_priv) || IS_BROADWELL_ULT(dev_priv))
+	else if (display->platform.haswell_ult ||
+		 display->platform.broadwell_ult)
 		id = INTEL_PCH_LPT_LP_DEVICE_ID_TYPE;
-	else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
+	else if (display->platform.haswell || display->platform.broadwell)
 		id = INTEL_PCH_LPT_DEVICE_ID_TYPE;
-	else if (GRAPHICS_VER(dev_priv) == 6 || IS_IVYBRIDGE(dev_priv))
+	else if (DISPLAY_VER(display) == 6 || display->platform.ivybridge)
 		id = INTEL_PCH_CPT_DEVICE_ID_TYPE;
-	else if (GRAPHICS_VER(dev_priv) == 5)
+	else if (DISPLAY_VER(display) == 5)
 		id = INTEL_PCH_IBX_DEVICE_ID_TYPE;
 
 	if (id)
-		drm_dbg_kms(&dev_priv->drm, "Assuming PCH ID %04x\n", id);
+		drm_dbg_kms(display->drm, "Assuming PCH ID %04x\n", id);
 	else
-		drm_dbg_kms(&dev_priv->drm, "Assuming no PCH\n");
+		drm_dbg_kms(display->drm, "Assuming no PCH\n");
 
-	*pch_type = intel_pch_type(dev_priv, id);
+	*pch_type = intel_pch_type(display, id);
 
 	/* Sanity check virtual PCH id */
-	if (drm_WARN_ON(&dev_priv->drm,
+	if (drm_WARN_ON(display->drm,
 			id && *pch_type == PCH_NONE))
 		id = 0;
 
 	*pch_id = id;
 }
 
-void intel_detect_pch(struct drm_i915_private *dev_priv)
+void intel_detect_pch(struct intel_display *display)
 {
 	struct pci_dev *pch = NULL;
 	unsigned short id;
@@ -248,21 +260,21 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 	 * South display engine on the same PCI device: just assign the fake
 	 * PCH.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 20) {
-		dev_priv->pch_type = PCH_LNL;
+	if (DISPLAY_VER(display) >= 20) {
+		display->pch_type = PCH_LNL;
 		return;
-	} else if (IS_BATTLEMAGE(dev_priv) || IS_METEORLAKE(dev_priv)) {
+	} else if (display->platform.battlemage || display->platform.meteorlake) {
 		/*
 		 * Both north display and south display are on the SoC die.
 		 * The real PCH (if it even exists) is uninvolved in display.
 		 */
-		dev_priv->pch_type = PCH_MTL;
+		display->pch_type = PCH_MTL;
 		return;
-	} else if (IS_DG2(dev_priv)) {
-		dev_priv->pch_type = PCH_DG2;
+	} else if (display->platform.dg2) {
+		display->pch_type = PCH_DG2;
 		return;
-	} else if (IS_DG1(dev_priv)) {
-		dev_priv->pch_type = PCH_DG1;
+	} else if (display->platform.dg1) {
+		display->pch_type = PCH_DG1;
 		return;
 	}
 
@@ -283,14 +295,14 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 
 		id = pch->device & INTEL_PCH_DEVICE_ID_MASK;
 
-		pch_type = intel_pch_type(dev_priv, id);
+		pch_type = intel_pch_type(display, id);
 		if (pch_type != PCH_NONE) {
-			dev_priv->pch_type = pch_type;
+			display->pch_type = pch_type;
 			break;
 		} else if (intel_is_virt_pch(id, pch->subsystem_vendor,
 					     pch->subsystem_device)) {
-			intel_virt_detect_pch(dev_priv, &id, &pch_type);
-			dev_priv->pch_type = pch_type;
+			intel_virt_detect_pch(display, &id, &pch_type);
+			display->pch_type = pch_type;
 			break;
 		}
 	}
@@ -299,16 +311,16 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 	 * Use PCH_NOP (PCH but no South Display) for PCH platforms without
 	 * display.
 	 */
-	if (pch && !HAS_DISPLAY(dev_priv)) {
-		drm_dbg_kms(&dev_priv->drm,
+	if (pch && !HAS_DISPLAY(display)) {
+		drm_dbg_kms(display->drm,
 			    "Display disabled, reverting to NOP PCH\n");
-		dev_priv->pch_type = PCH_NOP;
+		display->pch_type = PCH_NOP;
 	} else if (!pch) {
-		if (i915_run_as_guest() && HAS_DISPLAY(dev_priv)) {
-			intel_virt_detect_pch(dev_priv, &id, &pch_type);
-			dev_priv->pch_type = pch_type;
+		if (i915_run_as_guest() && HAS_DISPLAY(display)) {
+			intel_virt_detect_pch(display, &id, &pch_type);
+			display->pch_type = pch_type;
 		} else {
-			drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
+			drm_dbg_kms(display->drm, "No PCH found.\n");
 		}
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch.h b/drivers/gpu/drm/i915/display/intel_pch.h
index b9fa2b2f07bc..b2b309a9fe6b 100644
--- a/drivers/gpu/drm/i915/display/intel_pch.h
+++ b/drivers/gpu/drm/i915/display/intel_pch.h
@@ -6,7 +6,9 @@
 #ifndef __INTEL_PCH__
 #define __INTEL_PCH__
 
-struct drm_i915_private;
+#include "intel_display_conversion.h"
+
+struct intel_display;
 
 /*
  * Sorted by south display engine compatibility.
@@ -34,23 +36,23 @@ enum intel_pch {
 	PCH_LNL,
 };
 
-#define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
-#define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
-#define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
-#define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG1)
-#define HAS_PCH_TGP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_TGP)
-#define HAS_PCH_ICP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ICP)
-#define HAS_PCH_CNP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_CNP)
-#define HAS_PCH_SPT(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_SPT)
-#define HAS_PCH_LPT_H(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LPT_H)
-#define HAS_PCH_LPT_LP(dev_priv)		(INTEL_PCH_TYPE(dev_priv) == PCH_LPT_LP)
-#define HAS_PCH_LPT(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LPT_H || \
-						 INTEL_PCH_TYPE(dev_priv) == PCH_LPT_LP)
-#define HAS_PCH_CPT(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_CPT)
-#define HAS_PCH_IBX(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_IBX)
-#define HAS_PCH_NOP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_NOP)
-#define HAS_PCH_SPLIT(dev_priv)			(INTEL_PCH_TYPE(dev_priv) != PCH_NONE)
-
-void intel_detect_pch(struct drm_i915_private *dev_priv);
+#define INTEL_PCH_TYPE(_display)		(__to_intel_display(_display)->pch_type)
+#define HAS_PCH_DG2(display)			(INTEL_PCH_TYPE(display) == PCH_DG2)
+#define HAS_PCH_ADP(display)			(INTEL_PCH_TYPE(display) == PCH_ADP)
+#define HAS_PCH_DG1(display)			(INTEL_PCH_TYPE(display) == PCH_DG1)
+#define HAS_PCH_TGP(display)			(INTEL_PCH_TYPE(display) == PCH_TGP)
+#define HAS_PCH_ICP(display)			(INTEL_PCH_TYPE(display) == PCH_ICP)
+#define HAS_PCH_CNP(display)			(INTEL_PCH_TYPE(display) == PCH_CNP)
+#define HAS_PCH_SPT(display)			(INTEL_PCH_TYPE(display) == PCH_SPT)
+#define HAS_PCH_LPT_H(display)			(INTEL_PCH_TYPE(display) == PCH_LPT_H)
+#define HAS_PCH_LPT_LP(display)			(INTEL_PCH_TYPE(display) == PCH_LPT_LP)
+#define HAS_PCH_LPT(display)			(INTEL_PCH_TYPE(display) == PCH_LPT_H || \
+						 INTEL_PCH_TYPE(display) == PCH_LPT_LP)
+#define HAS_PCH_CPT(display)			(INTEL_PCH_TYPE(display) == PCH_CPT)
+#define HAS_PCH_IBX(display)			(INTEL_PCH_TYPE(display) == PCH_IBX)
+#define HAS_PCH_NOP(display)			(INTEL_PCH_TYPE(display) == PCH_NOP)
+#define HAS_PCH_SPLIT(display)			(INTEL_PCH_TYPE(display) != PCH_NONE)
+
+void intel_detect_pch(struct intel_display *display);
 
 #endif /* __INTEL_PCH__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 91a7748f4492..1388a40954f4 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -263,7 +263,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	i915_gem_init_early(dev_priv);
 
 	/* This must be called before any calls to HAS_PCH_* */
-	intel_detect_pch(dev_priv);
+	intel_detect_pch(display);
 
 	intel_irq_init(dev_priv);
 	intel_display_driver_early_probe(display);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 2a2db0a6859e..aef492510224 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -271,9 +271,6 @@ struct drm_i915_private {
 	/* pm private clock gating functions */
 	const struct drm_i915_clock_gating_funcs *clock_gating_funcs;
 
-	/* PCH chipset type */
-	enum intel_pch pch_type;
-
 	unsigned long gem_quirks;
 
 	struct i915_gem_mm mm;
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index f2064cfb55cf..8f604550d3d4 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -128,7 +128,7 @@ int xe_display_init_early(struct xe_device *xe)
 	spin_lock_init(&xe->uncore.lock);
 
 	/* This must be called before any calls to HAS_PCH_* */
-	intel_detect_pch(xe);
+	intel_detect_pch(display);
 
 	intel_display_driver_early_probe(display);
 
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 2586ffc4909b..c2de3cb29913 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -560,7 +560,6 @@ struct xe_device {
 	 * migrating to the right sub-structs
 	 */
 	struct intel_display display;
-	enum intel_pch pch_type;
 
 	struct dram_info {
 		bool wm_lv_0_adjust_needed;
-- 
2.48.1

