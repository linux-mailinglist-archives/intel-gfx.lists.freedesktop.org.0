Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B6E9C4608
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 20:40:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0421410E53D;
	Mon, 11 Nov 2024 19:40:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KiNjUeTF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BE2710E53D;
 Mon, 11 Nov 2024 19:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731354022; x=1762890022;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=PoK9SFotnH1aeSJynZ41ox9He3UKzul8s1XMsjC0ICg=;
 b=KiNjUeTFn6qg4LjFKXEBVhnqAxl/vZd170eZNhJ8G5+4J0xvarmkq+2B
 kizqxfOWGiI3wC1y/iu9izaZqDiW3+p26fE86rUE0gXd84twYye1NRGCC
 vF7x7sxN7U2pCsDdz6svBpxJyKFfG20HdYqZNyDxu0JG9Z0DfalFYx/au
 PnUS5q3HxuGdwmQttb6IyvaE5rfoO34t4+4FvsRutkJqV2eeKOOfiD6Yf
 9a0LjFMJJps9yHTepDBiAdjis3t4XTo8NnDyMobCh98DPHdlpHU1lZcjU
 9CHOyECHlAbHuT/qRJl2uxyqYPisKdX2hJB34D8/rw67e1xDo+0EoBdTu A==;
X-CSE-ConnectionGUID: yK1YVRG0SxCm9TA8KnU8FQ==
X-CSE-MsgGUID: jzAmf7+ZTomui2LDDd2vmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53731269"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="53731269"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 11:40:22 -0800
X-CSE-ConnectionGUID: D6hyJPkSTz6WtvFEkHlKcQ==
X-CSE-MsgGUID: NFxsWEAtSOq1d7QGRNLdrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="87023970"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 11:40:23 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 11:40:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 11:40:21 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 11:40:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=smpQPmkce99qE9swCicqgvcQBAPuzXb0ScgshbLDXJ5chbOUj8ZAUN3r0ECDd4G8pQRwddoEBwLtr+x4QdMv07Jx8xbwlYDcWg1MIi4JzLWQ7ZujRF72Wwt2CZ2kbbQQjW8KoKEEsy3sLVIoy7pp+H/q8GizRbz+DQ0HYW3r9Tg1MevzGB1Lyr3qwA76Sw7Hg12pd52JdzbhhAr6GC+TvzBynQe1mrSRtQTPzXBnZ+OM6Cn/PBtSeFmcshyDoFmBScmqPriYAQiK/Wdl/OEBF3bvKYUszKjQjzeOkXzjuNNhP43Qqq680t3rlZRBa4/oORf/OJXs7qyYjAib7btoBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o4vHfhls5FZXclcmtuCLPwpmv4KdIN3bBhvftyFWAs4=;
 b=m0yTnmwHctSZQIZYdI3iuzmn+By54dS10OgHx1jGaw3KIYopVWYsG3lwMV5R/oJCjRuQDde9PBqn81Ftzmh0caFfsIjjZTSgN0SZkpMZru/34nGfKiXQ8gVueWMcIZY0z4HMa57BS7Zsz4+wZUUyxKb+dKFMCUnfH16GV1PkWV7KNOqrCSVROHtCppNKfRGkkhFYDBnORpghFRFdtvU1EuNANyR4+CiW/xJlwT9TZOft2+1yO0D6aquPmvhh7BBwFD/0OfC2zTIXos62goB2eLl4gTJc5W8QfT1mElaFTxTfxrzk6SF1yQW/tIe7HoS+U8LduFOx0eqnoVbhcCUzWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by LV3PR11MB8506.namprd11.prod.outlook.com (2603:10b6:408:1bb::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Mon, 11 Nov
 2024 19:40:18 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Mon, 11 Nov 2024
 19:40:18 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [CI 7/9] drm/{i915,
 xe}: Move power_domains suspend/resume to display_power
Date: Mon, 11 Nov 2024 14:39:40 -0500
Message-ID: <20241111193947.128871-7-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241111193947.128871-1-rodrigo.vivi@intel.com>
References: <20241111193947.128871-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0329.namprd04.prod.outlook.com
 (2603:10b6:303:82::34) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|LV3PR11MB8506:EE_
X-MS-Office365-Filtering-Correlation-Id: 15ef54a2-f337-4bbd-4c3e-08dd0288ac24
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jT3rK36KxHE+P2C4RCsoQsMGxMmTVCZWQTKbzw/kAvDqFBqsqCRg54m8AtmU?=
 =?us-ascii?Q?Zv/zFuWt3OzsHTCZ3Na8caucreSsoQ8ge4wJFD7jI3n1RqQqN8iP6PzmpbJv?=
 =?us-ascii?Q?9Y86YrNr0NeYs2MlP+eJRu34akz9C0zWG5DybZyflQqND7RLWAJbpI3iHT4x?=
 =?us-ascii?Q?3WlDCYomxU/J3Nz/Y2kzp+M41D7kZCR2TG78rjxsoXkiWL/V8qYmaRS8o/vl?=
 =?us-ascii?Q?3QX09qQ09/NCaSmfoADG/2Z2ADaPVz2pLOqoAlNA9WDx5pmgfmL/dk3C4gSZ?=
 =?us-ascii?Q?arqdHQWwupWAOTTQUitZjmDmMmgv91GMapZSX9lxHEiqfyo0A7uJlWRo4GTw?=
 =?us-ascii?Q?qB/VZKQsSTh1maEGc0bE7Ag69qWjMZ2UbaRrg6yuZNi7tBLWoOqF24zWS2za?=
 =?us-ascii?Q?BOePSvd+Ii/rbjY6dP12RcOZMe/iUykJefuCuEnqYb5mNqLC7PqEnugO6WAJ?=
 =?us-ascii?Q?DBCFuVKuEljfP1jHEiRtSfcxqwoBnf6S28hw2cReqNcU+uplt9E+RcVMVsHM?=
 =?us-ascii?Q?ypX10JBScdM3nqIIu/jkNYcVKJh8q060Pa9XkcnKZlvjRIjK1ZwtB7OJ4Pvz?=
 =?us-ascii?Q?BCJtzBWNAwCfQZ516iCfxs2CZYPKKEbGVwNivYk6hGjK93g6vSJeEae28dta?=
 =?us-ascii?Q?0lshLPnI4ns7ziJIZX3b9AS7rHCcaCR3HC8Ddk8lgsTvnhtXTBeMUbT4RM2q?=
 =?us-ascii?Q?l1Q1EXYwxRuFUWb0bbaVpeyS7KBXr1mqjvR3X4/9VR0hmTipXL4EvoArxfLn?=
 =?us-ascii?Q?12D4jUxuEw1EiWK5UHHs6wAy+N/M1cIJEBTzo3wC5iifKVTRg5rhN+/JItLs?=
 =?us-ascii?Q?Tf7kz/7IimQGOBmhaGaCa5lRsSDJKVH0BCONG1rl4V6NvZ9Uy+Cv4oqwWKdR?=
 =?us-ascii?Q?V/jpL+puEvDMYRZ1HrgYkX98dx8Yt1MYmx9Tyl/X3I2qBGbFbKa3EBYACa5q?=
 =?us-ascii?Q?9moIjMd1uG2qZDz+Zz8r+wgM9NM+ddvkDCQC9DwqgO1S9rIcFBaqRCKBgBSR?=
 =?us-ascii?Q?n+JVzn2oxEq45cKPWr2utYUbyaoyX/4LTqPnMnDj0pntSJMsrTha9/r3qJfA?=
 =?us-ascii?Q?krmHM6NtqsnxRxv6Jci79egCdJVQUDRmCHNmfUZwzKd8AWo7nV/kEhs/bp9K?=
 =?us-ascii?Q?QNeBYge0m+cVLt7z9PPjDUJQtUpE9tTphm43gK+9U09sFkIJ4/A9q9y4/LcE?=
 =?us-ascii?Q?zdcAV187+1Hn7qhSL1dmSnOKDd2TlerTSB/nHkvf/hoK59DVJCyzYJJ65hyQ?=
 =?us-ascii?Q?8hc0vKXFROdKWHJ/jw+WP3VPQRHY8Fl7c5FElCTO1DoSrX4Ls5DeJJcIgz11?=
 =?us-ascii?Q?cKEDITAH8vu5iAswWPjqTt6p?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uSr9zoFkJZf1s9vMs1+xPBTwHAsS5/ICX3JcNVHgeATuNr84eXUhYWQvAMr8?=
 =?us-ascii?Q?0+HpZOh7CrVkTaxqtuG8nL/yaXzYlsnp41mGa7USDQyCnP+ccNrVQ8zoF4T2?=
 =?us-ascii?Q?WRbrkkOfUkCYrJmzBSXT7Blp7Iq7XsEGpAd74DXO57USTXVO7+hH+TsJSsNN?=
 =?us-ascii?Q?ksQ0uYTh/QmJJFbHFNl/vt82H5qll4Pk0gVnNbbaH84HjKlRvClRnqryTYlz?=
 =?us-ascii?Q?2VJKUSL4f0Lr0Fof87RgRDMSBS+Dvm6gz2J5q7FeYEp8QrUe2059XFIbrdYp?=
 =?us-ascii?Q?WZUquNQM1CPwmv0PsJdLUKob7MvS1bDd/bOnt9lmeYwMjw5vkeoKOYwOf0xb?=
 =?us-ascii?Q?3IWdF4lV9db/XM8pztk12ux+68vxiVrq3QqCz15/dRavGRl30bqinUC5BO4n?=
 =?us-ascii?Q?q+dZj9fp8VH12XeKfe2/W2FITYtTDfzF3FQi1PpalFit5WVgP9j/IKgbXQaU?=
 =?us-ascii?Q?9wyDABd7laKr6yyTxGgGQOclV8SVBQ01KZMUQzMHElrHTpreD4+HprGlyLAH?=
 =?us-ascii?Q?AbnYp9ywRHL061KRtO5LTB2/Ug26KQ247IZ6Yh7RvvAElHXIErhsWexijVPr?=
 =?us-ascii?Q?NOZ8ez5VbC/KeO46RDbUbPPWCyumrfGVRRonkWaBBm2UgkYlwevvfT7Pqc+5?=
 =?us-ascii?Q?V0CqCxj7u1eTTvoQ60GGbGEt44i4lLTo+6KJulDxgaXO62wkItLkc5y4edmR?=
 =?us-ascii?Q?WBk532Y6DdN/QrgVWPxYdGExW6aCFkBN/fCyhR4j7evus9NaTozFCn7wnuPb?=
 =?us-ascii?Q?ZoQynGN2e9Cjhj75NFD+98M/ijh0s7gFGLX+scYAfZXhBBOkuyC6QXJYqD+5?=
 =?us-ascii?Q?pabfPANiG0lZpK1pktRRhk3GKpWVq6mjSTr8cAxDffhepXwiTAx/8u6ggwwI?=
 =?us-ascii?Q?am0MoUP/K8AIWLaRj5Y0HbCGD9uCBX78YGzTp+ZfFYTDoEA0HDTpZ6S0DEGM?=
 =?us-ascii?Q?zWLVW4F878uhcM8PsD5V9qLpvw7M9yuxXrdZZlmeS7MITPP7lldPVsxfnkYU?=
 =?us-ascii?Q?LqiTq6M2TEf0Ipoy+vtkPy/ZmxLsMRRRyDJY7TG+KTjRmBuq4UzfwIJg1wNC?=
 =?us-ascii?Q?fsS4ELtS9Y/d0tAJp7ljcEZ8sb9uWoJ8opu+pt8udZSPvvk7PAiMh4QX3d2F?=
 =?us-ascii?Q?/OeAKDGlY/4mKjFbLC7FEUfPERIvKu/OuLs5wb+Zj0E+5mBWNDpzOEu+/VAt?=
 =?us-ascii?Q?Yrqf9K3PaNV5fyR5UyrUq5ArRKte3tXnpFKM3MmSWT3nJqqwS4Fe+JwuuooP?=
 =?us-ascii?Q?jSKqPZQO5DcnigI5smkYODP/xChWBIUNebvxaNo1y6FO3XXVxECJkf1zL3My?=
 =?us-ascii?Q?hRyr+NJVwOFPKTfgvKik6Yacd8fbXqnGhLk/V92V4Iea6HlpwNULTomL/qB4?=
 =?us-ascii?Q?EONxtYUt/61KUNixWyi9Y4DFxn0WnhpZlIqT55YRoOgEW5eR1BZ4Lz+b4MnP?=
 =?us-ascii?Q?MFWD/0vI4kh/i+6jXQXGWi82MKf8sUVM4PiFFGjQfuhNn5eGJ3iaw/L0SsB6?=
 =?us-ascii?Q?glVOK0n4cSE+4FsLaw7jx16kv9tcPjkyKc7ppnaWFUPeoC2TKKmz6elhX8cB?=
 =?us-ascii?Q?oWFSGsNothPvGKbuSWNAmVW2wKan6nIJN/eYRAXvO4OstK4o6fnSWWrQKale?=
 =?us-ascii?Q?8w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 15ef54a2-f337-4bbd-4c3e-08dd0288ac24
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2024 19:40:18.5951 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aEUNXy9Yks0JfUt1Zo6509tNi1qTE2kSIGjQ9OT1yvAEfoLxuu3mdOvzvhHTsxxOQhbrc6msdgNFcsEEJ5A2rw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8506
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

Move intel_power_domains_{suspend,resume} to inside
intel_display_power_{suspend_late, resume_early}.

With this also change the VLV suspend failure to call
the intel_display_power_resume_early. In the end, the only
function executed there for VLV is the intel_power_domains_resume.
Besides make the code more consistency give the call that was
immediately before: intel_display_power_suspend_late.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 6 +++++-
 drivers/gpu/drm/i915/display/intel_display_power.h | 2 +-
 drivers/gpu/drm/i915/i915_driver.c                 | 8 ++------
 drivers/gpu/drm/xe/display/xe_display.c            | 7 ++-----
 4 files changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 2766fd9208b0..59dee2dc0552 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2232,10 +2232,12 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 
 #endif
 
-void intel_display_power_suspend_late(struct drm_i915_private *i915)
+void intel_display_power_suspend_late(struct drm_i915_private *i915, bool s2idle)
 {
 	struct intel_display *display = &i915->display;
 
+	intel_power_domains_suspend(i915, s2idle);
+
 	if (DISPLAY_VER(i915) >= 11 || IS_GEMINILAKE(i915) ||
 	    IS_BROXTON(i915)) {
 		bxt_enable_dc9(display);
@@ -2263,6 +2265,8 @@ void intel_display_power_resume_early(struct drm_i915_private *i915)
 	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
 	if (INTEL_PCH_TYPE(i915) >= PCH_CNP && INTEL_PCH_TYPE(i915) < PCH_DG1)
 		intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
+
+	intel_power_domains_resume(i915);
 }
 
 void intel_display_power_suspend(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 3f8f84df4733..688f3b60b5c5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -176,7 +176,7 @@ void intel_power_domains_suspend(struct drm_i915_private *dev_priv, bool s2idle)
 void intel_power_domains_resume(struct drm_i915_private *dev_priv);
 void intel_power_domains_sanitize_state(struct drm_i915_private *dev_priv);
 
-void intel_display_power_suspend_late(struct drm_i915_private *i915);
+void intel_display_power_suspend_late(struct drm_i915_private *i915, bool s2idle);
 void intel_display_power_resume_early(struct drm_i915_private *i915);
 void intel_display_power_suspend(struct drm_i915_private *i915);
 void intel_display_power_resume(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 249586df9d50..dee9c6b9d6e9 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1084,14 +1084,12 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 	for_each_gt(gt, dev_priv, i)
 		intel_uncore_suspend(gt->uncore);
 
-	intel_power_domains_suspend(dev_priv, s2idle);
-
-	intel_display_power_suspend_late(dev_priv);
+	intel_display_power_suspend_late(dev_priv, s2idle);
 
 	ret = vlv_suspend_complete(dev_priv);
 	if (ret) {
 		drm_err(&dev_priv->drm, "Suspend complete failed: %d\n", ret);
-		intel_power_domains_resume(dev_priv);
+		intel_display_power_resume_early(dev_priv);
 
 		goto out;
 	}
@@ -1290,8 +1288,6 @@ static int i915_drm_resume_early(struct drm_device *dev)
 
 	intel_display_power_resume_early(dev_priv);
 
-	intel_power_domains_resume(dev_priv);
-
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return ret;
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index c37fd3ea93fb..737f04f45cd4 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -400,12 +400,11 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
 void xe_display_pm_suspend_late(struct xe_device *xe)
 {
 	bool s2idle = suspend_to_idle();
+
 	if (!xe->info.probe_display)
 		return;
 
-	intel_power_domains_suspend(xe, s2idle);
-
-	intel_display_power_suspend_late(xe);
+	intel_display_power_suspend_late(xe, s2idle);
 }
 
 void xe_display_pm_shutdown_late(struct xe_device *xe)
@@ -427,8 +426,6 @@ void xe_display_pm_resume_early(struct xe_device *xe)
 		return;
 
 	intel_display_power_resume_early(xe);
-
-	intel_power_domains_resume(xe);
 }
 
 static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
-- 
2.47.0

