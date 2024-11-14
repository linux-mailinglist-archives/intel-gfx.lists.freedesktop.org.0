Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 521819CD5A4
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 03:53:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76D7D10E389;
	Fri, 15 Nov 2024 02:53:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jSWMc3wa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C15B310E2C4;
 Fri, 15 Nov 2024 02:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731639212; x=1763175212;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=6p5z7mBfSXwDxO+xTa20zMJjZvEhbNssFnqmVcocnaA=;
 b=jSWMc3waVgb1cTfH/1Q5fvC6nkE3XY9ng7WDv2S9HIbklwOGMum/xfWr
 6psGgiZ67ZoZaDuJxTOPfBLRCgL3Fb9MGff/896K6t/KIgwjxwUdfsEnf
 UroW97HY98MtJ7Uio3DevK/+lBhqA3wUKtLRLlTzoAjoFK96Vxc4RZ8SN
 emKIlcDt5JDE+JEvMgh12rfrf+rRVSDGiNf/AIXHT3HO4FOFRE4Y7SLbI
 lL9JI+7OIqEgfL2Su8psZNN+dbMZnJ2esBmhxEb70faiMG7A0C0tIqp33
 MwtDtX+EZiwRSiuRpnkF8B9UJMBazd81Qmi1FSA353aW2duV1IbERSgvv Q==;
X-CSE-ConnectionGUID: UOK2B4IEQyu4bNRpGj1qVw==
X-CSE-MsgGUID: 2eyRFc10TO2cAGqv2w0bVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="31773436"
X-IronPort-AV: E=Sophos;i="6.12,155,1728975600"; d="scan'208";a="31773436"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 12:23:27 -0800
X-CSE-ConnectionGUID: kgshjgD2QFCFE53dg87DTA==
X-CSE-MsgGUID: N449JEYHSiCLx6WgoQjvfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="89091292"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 12:23:28 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 12:23:26 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 12:23:26 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 12:23:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v7Ys3ZOVzt7EYc2WS8elKL0tBxx2amqlfDcABEj1+nIZ4IJ/Zw+KmLs8HGaah7awwqWNenUq97YFMuJehErEARx3Q9o5eGJC62iZ1qYUcFaErR207rmGaMJIPE6vY4tqYfJcdBvnA+dzb6wrsgy5oVuAFWOZ2PFjTtdc5VOi1GeYHgz+BN6Z6m72kBz5OIrHQf36a7+FvvwckukK1BY/Z4EuL3m1gC1xiaB3/lN2/LuwFtkZpyRIRR7eiw2SIsFTTa8St25h6t2Wk9FVqCxvpuyCsGf1msInuvoUrGAjYMgxW59jn6BfNxT65nVoOX/AdcJkjezRSiFMP0BwyM3u/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YxE2/+YC/OjN38uXDIL3T4DFB//TAhI5AVGCdQKc7JY=;
 b=VErMiRWQwNZMGjn7DXztsyrG4icPzV+9wlnttfnphv3oIKrmpS1pmOk4/yj2QHbNqS9SiEgExoT30HEedxlUNvOCkgeKdrcRCZgPJy0lpSdta+cHEZ74qwN7OQrgxb7GiuJGIq2WcwCiAqKxPPj2xDCPxxncJDtdn8ctcU6eS+Aw6k6HoXgHK6RJYC1bwa2XpzM8pbRAclhCVy51ZnpNFLrwaE7WPrzS9HHc620W/pWWJhOpl+M4EnCfUIeodqgasFCIRMiUs29qrm90Kg7uBams9Q0hO7I3WyfaQgIufzpV/H9DET0k/QsIiacWQVf1oZNvBz2ujsdd8bXW5mejaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MW5PR11MB5859.namprd11.prod.outlook.com (2603:10b6:303:19e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Thu, 14 Nov
 2024 20:23:03 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Thu, 14 Nov 2024
 20:23:03 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [PATCH 3/3] drm/xe: Use i915-display shutdown sequence directly
Date: Thu, 14 Nov 2024 15:22:52 -0500
Message-ID: <20241114202252.239652-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241114202252.239652-1-rodrigo.vivi@intel.com>
References: <20241114202252.239652-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4P223CA0023.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::28) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MW5PR11MB5859:EE_
X-MS-Office365-Filtering-Correlation-Id: 5463d087-59fc-46ce-2819-08dd04ea2371
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oRAkO5cjbKtJdoQEAi9uStK2MDVvMQcYUgFCHLcdm0nh5Vs3mPy5kuLDWSnD?=
 =?us-ascii?Q?jd4aRXqKULdcNkt5X80Jm5ncn5SHLdVbnQr1d06zL5i9KaQndNC7ZkneHtB7?=
 =?us-ascii?Q?RErEcXO/3f9q5GDNB/d4ZpGpCap3iz8kmU17BQJk5NFQl9rcFOKztXAzsJ+B?=
 =?us-ascii?Q?YGVWGwwblnAJuOlVj3pewQ7Y1yoXhWPOyS624RemdOrpnmtKxhdSDUYxzXzn?=
 =?us-ascii?Q?1FyVOyOSEhthsTwtxocv7/bZ/1tGCpVgWxOevPZIrJax5A0jDQ2wRr/nbuFG?=
 =?us-ascii?Q?Gm+EUhaXsNxydoBzFh1031GdtkwyLYy53AuTIIyU1QqBsDMRm55/9IWw9MGe?=
 =?us-ascii?Q?4HWKDnvndy82wA27iLtLQ6STD4e5oTC4YtWT3Xb0ZASqAhB+jwmYbJHGG7pr?=
 =?us-ascii?Q?h1D4SH1bR6jRAiluc+Wuwr2XKRLtlYKsZ/7/kiAGi5KCd+JUmXMIMpCzDFXw?=
 =?us-ascii?Q?bHh7xIYg2qFQcGDQc0N5KkKZAbjIz76i1xcuTmTg0NCpuriLDr8JowSDYt3l?=
 =?us-ascii?Q?1d/zjJueirMD2kKv5lNBkyAxsZcMpam8bAzujM/nNbUBCLz3FyiMkHdaYMip?=
 =?us-ascii?Q?8Etcv7ZiXzQGSWEcp1A1hDMURtEhjXt2igHNye1WzqJLuQrQtInmpSulnu/a?=
 =?us-ascii?Q?ewYG6S+kDYiofICJxiMZK9RjB/i1ofXN/jPAmUZCB5yTTDHneisN7WROxJZ6?=
 =?us-ascii?Q?p7XzDUj/mwjbwenGfCEZyK5n+15MOPxCfsnXHx0uw9jpkQrzRf4pZVo2as6/?=
 =?us-ascii?Q?9o/wQoYXb6r8NG0E4uHQc2tDlkI/hop0niHwmrJvekixYqMHaPOHsMnX5D0y?=
 =?us-ascii?Q?EBlmfPXQywT8YJeLAl55DxszFTc66R+1uTMGkBBuxSfra0CsuNj+yuYrQgv3?=
 =?us-ascii?Q?KoLf0l9wbJOiztppZUbTXmm/fldZTotLpX68q7tJjGVK1yAnAGfVsrFb5UyZ?=
 =?us-ascii?Q?yGcdGHYCOpWpOPQ+/j3BFYOLZTwrPfRFq4dviqUFGBu7szTDRAKikBoQ3r56?=
 =?us-ascii?Q?0PxLpo6oYSASr89ZNODQEdk8Scksimg2Ve9LyWvzwQVowtKquoJf1hSAt9rH?=
 =?us-ascii?Q?/xy8T4E+MYS3ftiRgdZfbh7Y306d/5YydUGhTWaEIUc4ujZTeELw9skGUzEC?=
 =?us-ascii?Q?9ZbXWqC+0nw+eTe2vuwLDFGFqgcHx5GPK+zXLTFATt9J+fUvbKECXspVsjXQ?=
 =?us-ascii?Q?C2aZa4TBZgKpVoQiFw9i9o9YnVcWaS28DUv7tr23ov6O/VH/sf7TgkteU2M5?=
 =?us-ascii?Q?qxEWisXrW9qG3fPyIWyMCp4oSv+I9EaeMDsMfWLD1ydTvQXdptT12ILFJsLa?=
 =?us-ascii?Q?JT0fER8X7PiCadV2DLLwF17v?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?soLm7HaPxlJemZkGK4zeuDFDGvn4thKEBAgZBi/EitSiQVzLmBESZjGARrOX?=
 =?us-ascii?Q?/+fk0trYvnOdjUjzMZLZDcAYV4D0PJue6jOQt2RhliTHLhbGBAn+aVinS6Vg?=
 =?us-ascii?Q?dDTOcKTsBVsXbO1HyOYwOgZbjcexDLf7bzaiyOFM3L7DL8HzHCgNRG7dEdlv?=
 =?us-ascii?Q?4XedULTWJLgRBntSPLEINFcaXOaHZp45P9c12XMr9olQ2CFv8OpSDBTz/mqv?=
 =?us-ascii?Q?RwzSasA6C+Y4spfTYfSwkd5l0aaQxp9NUwel9+WH3Lag8xXIRfrx+dlMjwl6?=
 =?us-ascii?Q?Yh2n34UaWPKXMe7AwsQ3tcAiqpEseuPX4dfDz4XuyX9ow3BPzydEsb4Gfemf?=
 =?us-ascii?Q?TDSFKwm3dzi/CQDukgHHiCiVA4CxLhCFqQpoPRYgn4OKUbif/kyENvjb8awx?=
 =?us-ascii?Q?95HX/4/YMU5Z7AudWz5TOUf8tMYYO8qCpxyETn3Y7bvZjOEoJTZtHocPYfjC?=
 =?us-ascii?Q?IipbrJDc+YnDm5ed0CnoofDNobFflGZ0OkCg2kKP9sG7GHkOMDeUqW8TNuy0?=
 =?us-ascii?Q?dHi3SgzJylDg/XKJCre69037DbYvOuOJPD4HbRawKKcCbUqltR3DtkXtf0bZ?=
 =?us-ascii?Q?qpdggIP3aBbDE0+VTg+f9g3+9Ccrd9qzzZ39lsGywDBIoSGEPcRVK7wjV49n?=
 =?us-ascii?Q?QgKQWzBEFVCPZtw5I2NZKYZg4Oiq9gDEZFt0OcBE0QMZJh9zCnVozWGB6zXz?=
 =?us-ascii?Q?qP20ZcRfvebcjJR28E97damXM3tuWJ2uc3WSyCSt4il4Ezhdag7puOwA36J4?=
 =?us-ascii?Q?vHH/AP6s6nRewNiz2eClwuPclnvS2I4HZkSGUgSX6R85W5k+q95oluvqETi+?=
 =?us-ascii?Q?OUdW3TxkpmdEoiL7LUrEghDUv8zOOKzU/ELvqovAUtyAHOEYyJYLMKgFSxz/?=
 =?us-ascii?Q?aem85iEWWAtcPlTssTswohxP+IkgZGnRNjFlp5CcpLXUEEw5Lt2+U2MaFJu7?=
 =?us-ascii?Q?FBOcF/iv4fXd9+itXwhxWDX40CKRN55IC4VwzcKHpw6a0mAUlJJxRL0oV8Yo?=
 =?us-ascii?Q?yku5HXdcFPmDnxlMtAZPjvbrooNvH8hJCSjoL90N0xOtz1q/cHg9kBuniH7s?=
 =?us-ascii?Q?x/miax3wO+kM61PiJ8ViMwmKJmAz4D9GLhjX59bd4UaUGLI95dZh70KB84Wd?=
 =?us-ascii?Q?fxdBKt3dEKX8jwOWFB00JvhBR2d/iifhlc5azVYbB5+rhqwXuuQMDmkYnag4?=
 =?us-ascii?Q?G0fymizwDrm+dl5W+G7pmZZAryRE5IQaPdw89hRCCUZfrUb3LdOSqQpdb03Y?=
 =?us-ascii?Q?7Y1y0lk4HxQA/m+63tOP9oBLPEOAYzl1fQF4RkYr9Cku4EMU+VJjmj+/m1vl?=
 =?us-ascii?Q?HnweLrq4Szc3FP9YprtVsDu7FD78A526f7WNKnSIUnoY22OdZilIhGam3427?=
 =?us-ascii?Q?MEQV9qTVrSzEFzLpcEpFt3WLnzjqZcSTv3XtKc656lBm6gAnG8tbR5Pe8uN6?=
 =?us-ascii?Q?UHXTGnpeBjWTOuMTr4J2Hb8z92gHdKxk4ZrY2Zs+9NjLd6W7XCWqlBRPRUMS?=
 =?us-ascii?Q?nmPu+7mcRtl3uGIWPVmXhiOBWPxIX2r+NFLW3IysTJYVfxEeZqu9/m4W0YuP?=
 =?us-ascii?Q?h7G8++5m6/qDLMBKJtw1ORvJRG5HiVDv/zKzoBhoh/uRH1XERJWY6Uy9mshA?=
 =?us-ascii?Q?1g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5463d087-59fc-46ce-2819-08dd04ea2371
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2024 20:23:03.4140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TG+x1E6b1senreQte4DoNa0ak2sGijCPX1pk54ZKymsyg9GIRN3SDMOOrXytUkPtFLSA/2FKvOLMNlD7KUGpUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5859
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

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 46 +++++++------------------
 drivers/gpu/drm/xe/display/xe_display.h |  5 +--
 drivers/gpu/drm/xe/xe_device.c          |  4 ++-
 3 files changed, 19 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 4759c3cf5915..29676652bc54 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -10,7 +10,6 @@
 
 #include <drm/drm_drv.h>
 #include <drm/drm_managed.h>
-#include <drm/drm_atomic_helper.h>
 #include <drm/drm_probe_helper.h>
 #include <uapi/drm/xe_drm.h>
 
@@ -357,32 +356,26 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
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
@@ -408,19 +401,6 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
 	intel_display_power_suspend_late(xe, s2idle);
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
index 0e2dd691bdae..f4ae8e11ac53 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -819,10 +819,12 @@ void xe_device_shutdown(struct xe_device *xe)
 
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
2.47.0

