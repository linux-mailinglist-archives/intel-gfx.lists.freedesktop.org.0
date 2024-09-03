Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AFC96AC4D
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 00:38:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE2B310E610;
	Tue,  3 Sep 2024 22:38:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aNj5W9bf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A58F010E60E;
 Tue,  3 Sep 2024 22:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725403103; x=1756939103;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=MLnIEou5N1bzifst4SMUrCp/Q/XKR+HKc5DWgUSip6Q=;
 b=aNj5W9bfpbI65+8pIdEq6bTeBoB4sazgqBlg70lXDRz9FaFWLOuRUpKS
 F8HPLUygYp0DEHJucHZkPt76ncoB9Z1RnaRJykdWZrdROjrON6y48imrX
 HbgpTKQ9QWsGfBbAhkGLqeRf8jz6lHzu0Ah9WbJdJvWDlQKcoXIFJ0iXq
 rVlYcxmgYhDawjpCF/CZpoq0MrXGZN0jL4pPM1//BDSNBtJ57cF5MbBO7
 EYSnfZ9aurzFNaz6i5Zdf9jht4UuPOc1YGXi9OybG1925mw41t2UpMIId
 gIXTA9jpw4GkiDso00lPUOr9iG7/E+tLxnK2BnpAzhe2kg750dTRM3+sc Q==;
X-CSE-ConnectionGUID: C6AZxcMaSVeDKkYP9cRXVA==
X-CSE-MsgGUID: tczR1z1kRZORQXyyITOYTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="23910665"
X-IronPort-AV: E=Sophos;i="6.10,200,1719903600"; d="scan'208";a="23910665"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 15:38:22 -0700
X-CSE-ConnectionGUID: 3s2lcnOtSwyG9Cla4QDXBA==
X-CSE-MsgGUID: jf54vRCAS2m+TjwBoxmY1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,200,1719903600"; d="scan'208";a="65778451"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Sep 2024 15:38:22 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 15:38:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 15:38:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Sep 2024 15:38:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Sep 2024 15:38:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RVs3zA/21uta0keU9gxrhBRlqXYU7ZgPcKAFO21x8fIcQ7EvbhKlkJFdD/JXeqyRvQExU8hien8R3hm0ySpl7oXlNGSbeAl4frezWNdUYPq5BzOcZ9HcfeO4JG8OBA3xqWgtfbWWi3IyCwCzhPV1JnmECt33R0jnOGJItxJ4uVHZ2eElbrZYoDtZlGLaJV9o6iwPgdUGZJzIoD7Nf+lfJ7QmQWQY2lj5CoV9fc7xglWJeUThAPJP0Q0OWoSAhNUIcFU9ORfxHyxtzpsLx9UdPLK8rRz7/7oqRqaKhTNTluJweW+Q8Nqx2CniIPNXxV+FsjYGOHzEPxW1cMogsb/RcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ItpNrfo/HoKCuimaCwXYYcaH9A1frjPr4SStbhh97lU=;
 b=n/kJZv8NY4CsqyoNuvs1LfxrZ0pDsnp0fOLcagPlaZF3UrRae42SiZcQff40qMTc4T6Q87b0Tsv+60OBshhaS8NnDvnp6WNlzN3QgxyNGSi9clE4+7lqAbJtLgqXq8oqR3CIPIU2voTYceXlJm1zarInoI3FKciKAIs/w7I34r9kBeSd00twk3UpAXJk05cqJG5Y0nrDiRrirt/GRPVR5/LdBbZzapaZJeYZd2TtrUdd34ReQ7o6VOn2CpZijs+BDMqb2mVN4+PjFAr5z3yDUM6Q5jjr9GeWlYmSt4sGTpctVR+O2g/WQCIASZnFl6tDjUD0gZ4RZrjOh/RPYiKAzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB8259.namprd11.prod.outlook.com (2603:10b6:510:1c2::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Tue, 3 Sep
 2024 22:38:18 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 22:38:18 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula
 <jani.nikula@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
Subject: [PATCH 3/4] drm/xe/display: Kill useless has_display
Date: Tue, 3 Sep 2024 18:38:02 -0400
Message-ID: <20240903223803.380711-4-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240903223803.380711-1-rodrigo.vivi@intel.com>
References: <20240903223803.380711-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0229.namprd03.prod.outlook.com
 (2603:10b6:303:b9::24) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB8259:EE_
X-MS-Office365-Filtering-Correlation-Id: ec03aaef-32a6-450f-878c-08dccc691b3d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fAGwzVNj2xIcSFFq4cmB68iY3eF+W02LD+lCjAJuFr3kbK3fuNWX/offmXuR?=
 =?us-ascii?Q?xWwUxRrkxMUlWEt/hjNmOVIUeAdGM/6Jx2HRMdEDs3M1jnkrAO9yvie1iapj?=
 =?us-ascii?Q?z2MHBnNWTPQMQRWYipYmQ3D/DHRit1Ml1kZiRt9OKDIPoafYVAPAvDznNP6h?=
 =?us-ascii?Q?9WE1jZP7apQn9kqkYZZHR0+aXzfMXP75+jaO5JKULthRGZ9pjgWruZjyux3f?=
 =?us-ascii?Q?+ItFtWzaosJEgG6OWEwk4bHr9tZwPQeQrdArwjgyFC144cDlprpfOVgYwn7H?=
 =?us-ascii?Q?LupZiClTh7V2SvxWU1IKzTy/r9RRswurF1mBqt4Vz++zqJynmSHmF4r+3fty?=
 =?us-ascii?Q?XuoIDiYFv9TWCqHkQaPE6vuEVR2e3OiqXLzYysm4ms38eLFX+WwZtVuB2uT3?=
 =?us-ascii?Q?XCsAsDV1F2YbGevztGMp56FI1c/AOSvhms/9DEOtBwCuW5+BGOAPtFWe1ksV?=
 =?us-ascii?Q?LC2FqvweNSaiVDInwqwkBIfwiu5UgtsfG1kao165RccWk39hbjC1Pg6neFhF?=
 =?us-ascii?Q?PcsnCesYXl9nuW/P0YTCf+CnNvtFsYD877w+4+kGIbOxZnpL4Pa1YezyfF5S?=
 =?us-ascii?Q?nT+CZiDNymbSrZHsLL70SUmYrVuRnR2MkjBhIOYuSyU7VY+3cyKDr5UwgrPg?=
 =?us-ascii?Q?sX8+NlCAyBow6DAkJcHYFv7MZf7v3H7FxWaXVUaPXbNkCpqMyNJ4/yXFz3sc?=
 =?us-ascii?Q?fMtVrX9ZrWGUfoV5vDozCpilqI/CYbfav4VFhpxYqlytg8T8z/I+1fQCZLvV?=
 =?us-ascii?Q?e89gKH1bv/IkDXQQMWNI9qpgb7t5xyyJH5TEI7oEhXRilumGYs42wxy3I2Ve?=
 =?us-ascii?Q?SimPO6k2XP1vivrhvI6SQlXWb9YuHU9pACs7jDGl2OG+H0Iso+o2R/1J654K?=
 =?us-ascii?Q?ExJWluDjQ+0S6GgECw9kF5tdpkq1FMSQuLJ7BlGdkHS4cPPyVfsfsx62LtaI?=
 =?us-ascii?Q?xmt8w92BG8MLZG8Ok0Kkte35Z/tSFB/y+0T9VDe27NKpo+8HjKrR23rFIANG?=
 =?us-ascii?Q?Ng+dg+p/rb9R9fjVNXNlvYFdlGKRFidQQtVm0P7rUugnIg1f3l/7n7R2aa7m?=
 =?us-ascii?Q?TVNjsgb2Sj7rupA+gRn0Ib00S07d1odkdn9KGWFaVjbJAb4PhNO9D7Hn2ewm?=
 =?us-ascii?Q?i09FJ/4i09kqTe+axUvWED0iF6c7fOaKds92fx+9Duy9rPGkDgceqKXj2T0T?=
 =?us-ascii?Q?ECx0n2dmdbqr3UNy71P/pvCwy1AaY7llKrerVh5Ct8i0j7v3+Vve9LGxFpqG?=
 =?us-ascii?Q?Iys7c6K6ZRoK9CyVjnhwKihlI5c+3YGLLGvaadWe27Gn+4q7705muAAC/vRc?=
 =?us-ascii?Q?ePtd64XvbjxtTcSw8fKJ18eo4ctehuNO+/gRoTWhCeUnPA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PCXQl4X4qApf5DMeN0wyQjbARCUZLHG+3E5gSPG76KoVcY+mp9KKAG9K5DfS?=
 =?us-ascii?Q?nQwLZkNuDDqVq7P7jMvbJFfykx6jjvm0YCNbCIPGzlI7WdTS4FDXl9Lr4HM6?=
 =?us-ascii?Q?kKG3MW1ljQZwZCEE2Vv33a1zpXdQPJBhk0MTTVRgX5yKaqRIGBoZER3sY4uu?=
 =?us-ascii?Q?pG4kzpV/0Hl1chV1zWHRGue/1GFQEOeoeJsgsXrF73Uv6ckArOxmJ+MphQoZ?=
 =?us-ascii?Q?LlC78UKRkJwwWUy+AIrQ4OBEZOdSW3KWun+tOAv6wKhatbwHEwVCoQYxntfY?=
 =?us-ascii?Q?Ug53eFiFQRjW01H3Zb/NpznTmJr2qqOcG+8vdCjfFmDb9RdzSkGdObC7IqNZ?=
 =?us-ascii?Q?vppKds62OoKK52MadRlM1FiKixra4utN5sWab7mBcS9s5RhARSuKdIzjcE8s?=
 =?us-ascii?Q?lXVJ8o5zoVHkQXZqgqUoCmfYDEFp0YNus1NpOwBUF50G2aKoMP2Q9uN0fejQ?=
 =?us-ascii?Q?9zbF0drjG7e15F8dc68INxkQPNKMKOArPkJPPiOHfT150EIe+vSE6/gCqWrG?=
 =?us-ascii?Q?6GAXn9POsIbtoSU0MPzL76h5hacn5WPt/dzq2oczqbzjK76FX8H+4/9wXfY3?=
 =?us-ascii?Q?e9BMdvOygyo24i4ifDNEzrHa5W07DRtGbaj30kaw8jxpsuCzKKsY0ts36DI2?=
 =?us-ascii?Q?j+CyseYz5HJ7TrG+BPknxnNNsvxxmVWi9BylASzDSgE0BF09or9rbbJHzTgx?=
 =?us-ascii?Q?HkaTDnigMja2aFQyzNMvJRCwvHuK4VoWY1nHCLfvGwNAUNPuJOJIj0fLHN8X?=
 =?us-ascii?Q?64lQuNG6+ohwbuQVp7RKdOYaCLyGRyIv879NWplgg+x7HfglcoVKtVTAU8VD?=
 =?us-ascii?Q?IVqcjWXH8gEAk+vFNfGDQzf6E3M3wCGjW2fF+nkVnBGMqmehTMxer0UXLTXL?=
 =?us-ascii?Q?lmPTTAzLOWuq40lADg07a9KjQxRzjhlSjWOdWY9aKURugBF/zPJ/x9UqHMzQ?=
 =?us-ascii?Q?ffyVQs4LLikxv+n6GnXVATi20ECt/gJsBD0tqSMsshchGR3FulRok86JPX16?=
 =?us-ascii?Q?LlV2raUuced0HS5ElWsjmnV3TaEHxttPp/+kzHbHprpAsIcnknEPvZa1FaPl?=
 =?us-ascii?Q?+D5/US2Z6Lyr6+zfZuYQFZKO6V1q9K+Qa3Lip8XmHnb7vQ4PcvX6ZggwHPnh?=
 =?us-ascii?Q?hXVIxwzVlJgp1iRnG5bSD2Dk1bkb7K4O/HSlrlNjVUyyX6nTNWJ4/arwSFWJ?=
 =?us-ascii?Q?nSTESYle8dh7ZbOb+iDnuBIA9fApu3D0aFSf0TCEeoBHhzWgtWQtKlPEupke?=
 =?us-ascii?Q?0rfttyL6Qj3+sUHD40dYXyEYh+roRrB9ieGFXgrhv17iPVH//MXSYHmqWoD9?=
 =?us-ascii?Q?otkMC1GbacbRRRFlSPVoOLhB13YB1mu2ZicSXAtEGR8q5QPzQUghsK+JNG/o?=
 =?us-ascii?Q?5N/IQR+NqQTyLhC5a2Fk5avsg2oGUXzjyoOlOS5Q3X7qAI7dUqqE0gunKGTH?=
 =?us-ascii?Q?+tt+CQ7HgGVLzcpJk5WSfserMecT6mhS1Uz0LRd8FVqcURJlMOvOTgmfueiW?=
 =?us-ascii?Q?FBfUuigyVA+M85HCPM1xaUCiBkwXZQewFSYhKI85gIn1UA8wPoOhGJxbUgpu?=
 =?us-ascii?Q?1audLopSvhAFXy4CSnNUbD88Quv1jo/wlDE1pp36KukbFgs9KRqvF8Gsp34C?=
 =?us-ascii?Q?LA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ec03aaef-32a6-450f-878c-08dccc691b3d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2024 22:38:18.1935 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +fn2EhFSYaIHwZYX5njuB/kTd1KmOkM6RM5PU7X8FhLOft3k+ULvJ6m4PqLyTrfXUIJPNmVONBl3Nh5wZH/T+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8259
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

When HAS_DISPLAY is false, info.probe_display is set to false.
Hence, all these calls to has_display() are bogus.

With only one place left, use the main macro now and entirely
kill has_display() local helper.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 43 ++++++++-----------------
 1 file changed, 14 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 65331bbbc068..daf9b9baa88a 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -29,13 +29,6 @@
 #include "intel_opregion.h"
 #include "xe_module.h"
 
-/* Xe device functions */
-
-static bool has_display(struct xe_device *xe)
-{
-	return HAS_DISPLAY(&xe->display);
-}
-
 /**
  * xe_display_driver_probe_defer - Detect if we need to wait for other drivers
  *				   early on
@@ -336,8 +329,7 @@ static void xe_display_from_d3cold(struct xe_device *xe)
 
 	intel_dmc_resume(xe);
 
-	if (has_display(xe))
-		drm_mode_config_reset(&xe->drm);
+	drm_mode_config_reset(&xe->drm);
 
 	intel_display_driver_init_hw(xe);
 	intel_hpd_init(xe);
@@ -388,11 +380,10 @@ void xe_display_pm_suspend(struct xe_device *xe)
 	 */
 	intel_power_domains_disable(xe);
 	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
-	if (has_display(xe)) {
-		drm_kms_helper_poll_disable(&xe->drm);
-		intel_display_driver_disable_user_access(xe);
-		intel_display_driver_suspend(xe);
-	}
+
+	drm_kms_helper_poll_disable(&xe->drm);
+	intel_display_driver_disable_user_access(xe);
+	intel_display_driver_suspend(xe);
 
 	xe_display_flush_cleanup_work(xe);
 
@@ -400,10 +391,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 	intel_hpd_cancel_work(xe);
 
-	if (has_display(xe)) {
-		intel_display_driver_suspend_access(xe);
-		intel_encoder_suspend_all(&xe->display);
-	}
+	intel_display_driver_suspend_access(xe);
+	intel_encoder_suspend_all(&xe->display);
 
 	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
 
@@ -440,23 +429,19 @@ void xe_display_pm_resume(struct xe_device *xe)
 
 	intel_dmc_resume(xe);
 
-	if (has_display(xe))
-		drm_mode_config_reset(&xe->drm);
+	drm_mode_config_reset(&xe->drm);
 
 	intel_display_driver_init_hw(xe);
 	intel_hpd_init(xe);
 
-	if (has_display(xe))
-		intel_display_driver_resume_access(xe);
+	intel_display_driver_resume_access(xe);
 
 	/* MST sideband requires HPD interrupts enabled */
 	intel_dp_mst_resume(xe);
-	if (has_display(xe)) {
-		intel_display_driver_resume(xe);
-		drm_kms_helper_poll_enable(&xe->drm);
-		intel_display_driver_enable_user_access(xe);
-		intel_hpd_poll_disable(xe);
-	}
+	intel_display_driver_resume(xe);
+	drm_kms_helper_poll_enable(&xe->drm);
+	intel_display_driver_enable_user_access(xe);
+	intel_hpd_poll_disable(xe);
 
 	intel_opregion_resume(display);
 
@@ -485,7 +470,7 @@ int xe_display_probe(struct xe_device *xe)
 	if (err)
 		return err;
 
-	if (has_display(xe))
+	if (HAS_DISPLAY(&xe->display))
 		return 0;
 
 no_display:
-- 
2.46.0

