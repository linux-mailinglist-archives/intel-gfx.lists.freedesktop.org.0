Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FB9984C48
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:43:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86B0810E217;
	Tue, 24 Sep 2024 20:43:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YpB0z7Xl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CA9A10E175;
 Tue, 24 Sep 2024 20:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210583; x=1758746583;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=5TKCzzGEjJp6YTGU0HI7gI7BkRCiKrdoxbvu4bBM3Yg=;
 b=YpB0z7XlYDmOhi3igkx6gHkXBZyZPXhFwy2k7NUnIabxXwJ2Q2EuWrGL
 BU+NoSYmTw889Ty4Uq+b6pTjCTuP0MliHfUK6nfmuDDK2TQXPRgYil706
 5QiTTtBZWTAPbj0FEu9gaX913UR7TvOpChR+u5I840DUAWnyQlGdpOf75
 Z/tWXaQhaF34hF1hWL/VbOfHDZU6L4b9EBrnZXujjYn5XPEqpCqWG/uGt
 aIfnbmj9mdJirUMzpqM5DN4wd76MATrRSfc+yCPJjoDavB12YyiklyhjI
 3HzSoQK043C5WAULHAYgsOJa/UDIAxDOgLI63TzgiQkDrnV6ExgbbO7JP w==;
X-CSE-ConnectionGUID: HiWxGeiDSaeJiTBE8PvaRw==
X-CSE-MsgGUID: CFKA3tiYSQiby6jBrnEzFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26099173"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="26099173"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:42:56 -0700
X-CSE-ConnectionGUID: E4cnOq5LSyS1Mghhb9HUig==
X-CSE-MsgGUID: Rd2/XhTkSVGrIbhrH2q6hQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76469583"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:42:52 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:42:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hRrrP6uk1KVkL8xKpl8CFPE6VDziPgt1MsPWYbTnsIEKEIhGWRn3PBYQ3YGaKXywOf/qZXrvDiNsAxhQ7rPOpLRo8pXgASf5PI0dS/XxWxfDId1KX/ooOTYKzp9jUdtg1+AhvRXmcCfavUdMwfnl4tw3BBbK9u1vmv4DkR+w46DLEXBpW/Vd4gJf7FNI5swhv/6r6RUf+ddzjS/uDdlegaUt3IYr7aq8nd4HVnJC5gY5c4SWGBiVANh8jyI7D9c+imOv4dNuwtpScAuU809CQB1RGcbzHl9GpbyHP99tkRWvbxSk4V4JKkP5lcEcrT8oYp3pmUTt2zwDWINDCNrsBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0hjJTP/YTaNgCrBnEIpKq5ElmIiPB3ktse3hYsMz5nI=;
 b=xJYY8hOdZKqP4dgtNzAQjT4+OZymhrGilkNuQHz+Eadme5uK3MqyuARlfPeA1saCLnCjvFVsw7oJWkmVVFwrfz0Q63dWMtn2+vxFdJcvwF59i5QZGLyuPz/8fO1CH5I7rxvdvYsIIVD8NsJiW4proz5G8Wyl2qcjI0TKb6+kU77duKflK+ggJfQjJYY4dfp2pcqGV7qEJAz/KNNwUlaLfdrkeaKTbHWn7bmjUmvTxWHoxYGiuXkNl09XiBESQORCozJmWwjxXaslgPOFeYISmib+WJ8G6SAC5j62btY8ug6QJfgjxLJSHnYyP9ndyNs1+8ZGNNNHyCjoNS/QGLTU3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 20:42:46 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:42:46 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 06/31] drm/xe: Use i915-display shutdown sequence directly
Date: Tue, 24 Sep 2024 16:35:27 -0400
Message-ID: <20240924204222.246862-7-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW3PR05CA0028.namprd05.prod.outlook.com
 (2603:10b6:303:2b::33) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c7b9ae4-3bf5-427b-5be5-08dcdcd97269
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Kr/ikDr2zcQbapSEj+12Hw4kd32jwxNVAPz/3M0yllX5sPppyFyD2dRG8iH5?=
 =?us-ascii?Q?ww/bcP519y7nb69NmvH028scfB1YZKhSN7M7x38WJw6fhvfdbE4rt3Y0clXK?=
 =?us-ascii?Q?cuQV5z0tFgAK/2000KDWQhssSw9dshp2ZqPFOcCc0xCWwHmOs7ObkVebXAqt?=
 =?us-ascii?Q?Qk9pbcgCOcRZ/jXK1WTK/4bYG+h5ArQXO+Bc3nedboLQ2n/fUK8XQWruczyB?=
 =?us-ascii?Q?tQWcRGTlGJG9aBZFP+8WQM3jh3JJ8th4fRbv3GiOXQNTXczqGNkt4m0yD9cj?=
 =?us-ascii?Q?Zcv3haEkwRp6O7GYst3S4e8/+iznLrALsQFLmjDxniXH8a0zKJPdgNB9a/BM?=
 =?us-ascii?Q?0j6xXmkaaPlTkjlxemv/hj50wG9VPXxeYf4eKzwqr6nWuq114nh1JuyX7aip?=
 =?us-ascii?Q?ZBjx+VizmNnLG8H/70TAS2tQ/mBXtgk3qqOTVnuM+GwcSrCujRMFo/uW3QC4?=
 =?us-ascii?Q?B+tjxLqbmEOu70p8eGi79owUfxCqxkkUCZ/R2TO4qItU79Upf1A9Px0LG+Gs?=
 =?us-ascii?Q?JqYYX/r1S/jPqHQkRawfr4NNBgIEnO1BJhfFqez4AoT/EuiQNlVS00Dxh9RA?=
 =?us-ascii?Q?CFeeYZzgSskKHXGh7wa8mfUuQah7PzALOkTgWGrfcRhMa0ZPDhSnY9HYiSjY?=
 =?us-ascii?Q?3Hi6Duk/gZIUXNTOo8Q/IB+wE+9VLdHULyde7D4W0bYcrQ4ZqPELMbuEiz/E?=
 =?us-ascii?Q?VFD4mb2sRF0+tnTYPGcy12LFE9Z+lCs/uhL3IJPMddftllHXFuS1PjTL63qv?=
 =?us-ascii?Q?V1aJkeVNZO8XJmwtvWIZwZ+VG+qC5cZBChOTlCHdFTWiruPuRYVXi+l19FVM?=
 =?us-ascii?Q?SlKa+BBLsB6Y5p1tTFsHHzWitZ9gvg/XsMuPvG7eDoH1OrZozCTCTJSIHRTI?=
 =?us-ascii?Q?wC9bv6AN9JJL0ePo85r6sCy0T7XVeSKL08OIL6OnD1NLe0OZpfbDSfkYV6c1?=
 =?us-ascii?Q?YaC56S8vh8TNZPE4a627UcUPYHlUbLvz5zRvmlgL0RUkeWnQGGo5PxIcnk+t?=
 =?us-ascii?Q?bxcdt9mGrLVQ/q2+a8Id6pAJR9Y5n69lF5vHpCjT14p7g1mKPUcR9GyAz13u?=
 =?us-ascii?Q?m6i1OdJAlHNVegJZnDqj9GdH7iHLZeaTe7xBb5ipBwQIuNXHAeNDmLFwQk4X?=
 =?us-ascii?Q?vDDGX6sJF5wDVoHJtgvDh6dWt6BQTAHs9bjrhdqtynf3qTC9K4syChHqZJ7O?=
 =?us-ascii?Q?yFHZcnpi5rpenk1NsbBTDkpDnm1fKuBJ5t5tg4egenYKCNgZmRxbUK/HwPtg?=
 =?us-ascii?Q?crXp7qCYyYnMMENtFOqonf6pAMLDcPhGJ93qNi3wLg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?d64qme6B0MaCcp+yWs/mvdT6od/C34iLrP0mlhlcvmFJSQoJOFjQtFZf2fpI?=
 =?us-ascii?Q?sFEc9ux2bwZPDg3/Dggy9/k0sIVU6UfHuChUSVdP7fuxUL7SpAH0/ULCYGGI?=
 =?us-ascii?Q?KIpUGbT458MuHWK1x6JjoNCmw2t8nU/nwW5K1ex0qRqlQZufTJPRaCKWJjp7?=
 =?us-ascii?Q?OZin1hRax0S12Q/SsW35TdX8Ey4XdzPDViPeRSuK3Cx/0Fgi18W3mPPzAmeF?=
 =?us-ascii?Q?Cv5nV/vyBJP0VHc4n233ib0XsBEtIruRxM9rTUxITqwiCgpiwBUAI/WQejwr?=
 =?us-ascii?Q?0Ska+NCWQGH/3EbyiozKx12COFzkIvRATPZdIiJy3ihIvKzD98n4SLG1W13M?=
 =?us-ascii?Q?3XFZ4fpRYN2yAQtCWNDHemImFukeiei2kvMwUT+SCMLL8gL+xZMDs6MNsGTP?=
 =?us-ascii?Q?tgBm0plJtIP9gbviw8GDQDLqqSRZFgJjPBa69Iuf23RLn1HaOoT6jpQjBSb/?=
 =?us-ascii?Q?9K6mlrUDivZ0dFFgTYlw5V9vrQWIcehBLmYQF7mykY+BMc9XuZMWHnqC+bcM?=
 =?us-ascii?Q?Q4O3O0yB/LNqebTAFzGFVcYcbe/Eeh5ZQ15zoVHk2jtUGkby8oNbN7hrTPAK?=
 =?us-ascii?Q?Tki66UsDosGr22N1ZSkLRZzuUrqHD8VW/p3cBUf05CQVuTQfTHS9eR8PfcKW?=
 =?us-ascii?Q?DzD+PR3azJEdGIPd5kH0ONnytKuC9NGk73TGwNdTNWvU1rDEOcky0ke42KDe?=
 =?us-ascii?Q?KgLpxgHbIsxTMJjR9FJY66LWff4J0cJT6LWyLunSfMfXsBL5e57OW1wNRwVu?=
 =?us-ascii?Q?ABEuPbm7nwUi68WQ+hFgiH73MOFpyQBUoXzkgHiNb3HtBYXO14WSSWzxvrMT?=
 =?us-ascii?Q?PoFxny6sygYZN35916yRmNLZLE9WlKWqnxdgViuyHQAjocqIz1V1CShxugbQ?=
 =?us-ascii?Q?lFZE6m7L6WZEpYNE70rvQ7SqbYmzQCNyq8ZrzdjHreOKI+MsEGEdZSsoCufG?=
 =?us-ascii?Q?iUgdO4k0doRaoJ6x5WVX4JzYzl0Qc5bNxkJkuBJhvUYHuryCDgSBqI9xUz+p?=
 =?us-ascii?Q?AdhAjrup/U4T22RWlvmK1QjEL+QikeZtIUx03q5VbMw5ZEt9UKvwEpMz9x4w?=
 =?us-ascii?Q?6rT1KsaJ5iN0JMePnIlALL7Y4P4RXqiH5IgLB0iZn0D/slx9X+qOvAS5m1aJ?=
 =?us-ascii?Q?LkDeUL6a/3U8ApMRZ1OGmAB2WjJZT3Izk+KQGeEXkWJefu1pDW5urDXijWNf?=
 =?us-ascii?Q?Qk/Q1dkicaCKANfWGNHX1wpeeV5T/B4rcfW8FXbBKZBDZerIAEf1ypEmcfUf?=
 =?us-ascii?Q?L+h7710V5FJBB2tp4U5o+teALqyXU/pRW7jllQzmtg39pMkqzVjicSyUkchw?=
 =?us-ascii?Q?ANNFUQdZRMA8Y1uCUESJ6Xs8Gxyo+jU3kLFWpNSwZUXiU4Q8pvqMixxQNF5V?=
 =?us-ascii?Q?ttE6PFwUEJcC6BCje9HFeB/dX6JiTpGSSmxCo5UEpDOW22S+VQwgvSagkE2d?=
 =?us-ascii?Q?nS3fu7bcKOGZjTQuUHkoWNb0IzL/YjFzq2pZBYIvV3+/F/xK6fD75PGe6fNG?=
 =?us-ascii?Q?rkYii2poHyccbB5E8/E/YlFJwFX8QLoFQoZUQ4Lyrg8jpcgVnIBMIDCSTYlS?=
 =?us-ascii?Q?CY3sg1Qjomfdy4/r+wqoPSShviqrEXJnaz18R+soBtfLsH3CEPyzamJCcJE8?=
 =?us-ascii?Q?yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c7b9ae4-3bf5-427b-5be5-08dcdcd97269
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:42:46.8498 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UF5khZMP45Z0Sh21MPTN3SKxMivuyv325D1Lon2kiYwMb8YexGvaDVkAsOELohe419F8F2pXHsy1aw/ddQj29w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4965
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

Start the xe-i915-display reconciliation by using the same
shutdown sequences.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 46 +++++++------------------
 drivers/gpu/drm/xe/display/xe_display.h |  5 +--
 drivers/gpu/drm/xe/xe_device.c          |  4 ++-
 3 files changed, 19 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 0237d458078b..b5a2a09e7a71 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -10,7 +10,6 @@
 
 #include <drm/drm_drv.h>
 #include <drm/drm_managed.h>
-#include <drm/drm_atomic_helper.h>
 #include <drm/drm_probe_helper.h>
 #include <uapi/drm/xe_drm.h>
 
@@ -355,32 +354,26 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 void xe_display_pm_shutdown(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
-
 	if (!xe->info.probe_display)
 		return;
 
-	intel_power_domains_disable(xe);
-	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
-	if (has_display(xe)) {
-		drm_kms_helper_poll_disable(&xe->drm);
-		intel_display_driver_disable_user_access(xe);
-
-		drm_atomic_helper_shutdown(&xe->drm);
-	}
-
-	intel_dp_mst_suspend(xe);
-	intel_hpd_cancel_work(xe);
+	intel_display_driver_shutdown(xe);
+}
 
-	if (has_display(xe))
-		intel_display_driver_suspend_access(xe);
+void xe_display_pm_shutdown_noirq(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
 
-	intel_encoder_suspend_all(display);
-	intel_encoder_shutdown_all(display);
+	intel_display_driver_shutdown_noirq(xe);
+}
 
-	intel_opregion_suspend(display, PCI_D3cold);
+void xe_display_pm_shutdown_noaccel(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
 
-	intel_dmc_suspend(display);
+	intel_display_driver_shutdown_nogem(xe);
 }
 
 void xe_display_pm_runtime_suspend(struct xe_device *xe)
@@ -405,19 +398,6 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
 	intel_display_power_suspend_late(xe);
 }
 
-void xe_display_pm_shutdown_late(struct xe_device *xe)
-{
-	if (!xe->info.probe_display)
-		return;
-
-	/*
-	 * The only requirement is to reboot with display DC states disabled,
-	 * for now leaving all display power wells in the INIT power domain
-	 * enabled.
-	 */
-	intel_power_domains_driver_remove(xe);
-}
-
 void xe_display_pm_resume_early(struct xe_device *xe)
 {
 	if (!xe->info.probe_display)
diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
index 17afa537aee5..a801db19b64f 100644
--- a/drivers/gpu/drm/xe/display/xe_display.h
+++ b/drivers/gpu/drm/xe/display/xe_display.h
@@ -35,9 +35,10 @@ void xe_display_irq_reset(struct xe_device *xe);
 void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt);
 
 void xe_display_pm_suspend(struct xe_device *xe);
-void xe_display_pm_shutdown(struct xe_device *xe);
 void xe_display_pm_suspend_late(struct xe_device *xe);
-void xe_display_pm_shutdown_late(struct xe_device *xe);
+void xe_display_pm_shutdown(struct xe_device *xe);
+void xe_display_pm_shutdown_noirq(struct xe_device *xe);
+void xe_display_pm_shutdown_noaccel(struct xe_device *xe);
 void xe_display_pm_resume_early(struct xe_device *xe);
 void xe_display_pm_resume(struct xe_device *xe);
 void xe_display_pm_runtime_suspend(struct xe_device *xe);
diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index cb5a9fd820cf..7c698b4b265b 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -822,10 +822,12 @@ void xe_device_shutdown(struct xe_device *xe)
 
 		xe_irq_suspend(xe);
 
+		xe_display_pm_shutdown_noirq(xe);
+
 		for_each_gt(gt, xe, id)
 			xe_gt_shutdown(gt);
 
-		xe_display_pm_shutdown_late(xe);
+		xe_display_pm_shutdown_noaccel(xe);
 	} else {
 		/* BOOM! */
 		__xe_driver_flr(xe);
-- 
2.46.0

