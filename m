Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D19AE9820
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9768B10E878;
	Thu, 26 Jun 2025 08:21:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YOtpizDJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26F1D10E87E;
 Thu, 26 Jun 2025 08:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926102; x=1782462102;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=nv3Dzb+GiBoDxK0whd2Xwx9KDie1MhRI+nATaIGZuOM=;
 b=YOtpizDJp5g+jOdkXBeeYNRwG9NgEnGEVvlLne7MFl9MLrWv3A5oD3dQ
 5d39LTCHSfKANS7RZzUMDgrkZoU2b2zU24Td7eVuFznejX/JiSFb944Bp
 kPD2QNdb5rO9ybDMUwabISt08Nhh23O9KQGUTRH7EV7ncDjluGPfvlTvk
 WlAdBrf48bokHlY6jB46C5T4xNTXKmUV+OOtY2m72CXzc+6cTidH9QFRM
 ehssF7mIcuJ90OYZ0qLfpbtEP7peAHWSarO8waPNMKzrT4D4spGR/m/8w
 A9Rep90fdvLTmMkr0SqtQBNL9u1K1eKWLxTegkmXw2LrYoNwrc9zpWaKm g==;
X-CSE-ConnectionGUID: oB08r7o7RKicP1TaV1m7Ag==
X-CSE-MsgGUID: 51zOxf3EQg+qM0WuqqhKGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="53309713"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="53309713"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:41 -0700
X-CSE-ConnectionGUID: fJMVKNJMRx6V967m27826w==
X-CSE-MsgGUID: b23Z25V0RzC/7YyUDZpVHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="156836078"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:41 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:40 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.78)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P+uYP5295oUVcI6/m3BUqXP25q++3FC+aEqIX+ktE6pRCu2ztC65BbsZh95UNbyTlMYmW60Ugfv88KXdTSpwNnmaWf43ji9FYZB1hVjmUoo9cuHN86oGFT7RDl34W8VIAE6uB9Ur3Fwsy/GJeaAjxvs8hKbExzQCuU/mgiRt+zN22jmWH/3QMPeIhYn4KYO0139Cf1preO4LeCpDE2u1nXIlP4ByRWq08fTCfdCy9P9ILVRbyejTSvm034d5Uqr89ODfYnSUAxp/x2zb3Yg6eUZXOebcmWgdFkpIVvYhJeOGyIqkQjxh0RmPqEbxKbN3zAMzkjAQHRm1v2vuqYmGpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7UgtzWvTYnXLGhkdpjQbeIACr9PmNFJr9vn37c97SQU=;
 b=L/gdT4LCj34EIS4l9TL/9WXfv5mqfBwmtQt83PQ3sE5pXVKEB18OJhXJyVgGOjfHRYhmkv3FfjsCUQwrhNUg0iNjIxZ5KUW1JUXWe9frpQGEljtkz3kBRjjhTfLk3oYrBxrs1D25ed/eHWkw4+rxhNMa6q6Wz2CrYuC0gdGDTEtSe9FVAJHTLZL2h7JPMRedOK3Ek0xtpyvWGKqCq1pvk78rQqjzaKQabkBuLJ7lx+PHlHp7+49hLH/INXYhyiwtWlpgF60s1Rwu0nDoLc1jrHHtrsFYFgTH6h/nc2+XYoDmsUzyJDBbqyLY9IyepZjwC2LDxJsLh3AOUhw8PelK2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8EC896901.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::844) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 26 Jun
 2025 08:21:25 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:25 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 17/20] drm/i915/dp: Check SST link status while handling link
 service IRQs
Date: Thu, 26 Jun 2025 11:20:50 +0300
Message-ID: <20250626082053.219514-18-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250626082053.219514-1-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P302CA0020.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPF8EC896901:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c9050dd-e25e-4b0d-8df0-08ddb48a70cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?XPst+qhkNSWltqxggVpvGOeC6z8JP3uW/NP9LpV24WvfPQ5NXLXtqtojsBIJ?=
 =?us-ascii?Q?Gq7E9Fml80RAQigSGAuht342WTrp4H7+jiOHsaRqkrETgZAD1htqp5TSYffx?=
 =?us-ascii?Q?y4nT1Ki1VLLJLfOG/RR5KIx1gZtkP0zf+Gt6EOioeldYRKCS1T1tcDCAQAph?=
 =?us-ascii?Q?xT/n178CvpzXU0CuJisGpwSxbZVT2u46T3tM/CrClXE4Lv0xQ//dqW8QWZlg?=
 =?us-ascii?Q?dSslTZGshsRlPQxIjankm0ImIe6wTx/PjXgDf3kAIsoVQViGUDNlX8iYl56n?=
 =?us-ascii?Q?ZdfoVPe89I/2VYPOsm0/wdc+RfDIH1R+RNC0HtU+DmQ+luBY+udjBTfW/hVa?=
 =?us-ascii?Q?U7sLxA3kFoT17k42apCuKY1KKPyjSupsoGaCmwLhVg/OBwXPCub0nl4teUgT?=
 =?us-ascii?Q?CZtOWuyImlKOY5tUzjT81+gwdxzBs/gXR0X3C/2ualeWyWFTXIXSK4YvCevZ?=
 =?us-ascii?Q?Gy3qkPv64NWrEwIXxMeXs+6Q+AZC2rSoqiET91QcrZIADgkjsExnXF0Zzy1P?=
 =?us-ascii?Q?2UWFaOL7xDyIZgKydhlE30ocnUqC7Zelj53M72LOyKXbPIbbyuYMVLH6vpxr?=
 =?us-ascii?Q?Qugu/Maa6ztvMDmV2CYVhfp/s7iJj2H/fBTtSNX0/T+xtRZvBpRwiag55xnU?=
 =?us-ascii?Q?A06dAF4rMvussyUo7zJ83/cCQzcaFRhyeZQbKxLqLkJbS6HIKxUbwp2bff3/?=
 =?us-ascii?Q?97OgkpoSrIkG42j/TH/HQwtm3NH9LQ6QZfLNZGyyY96EmDE5UJ8Mm8rw99f2?=
 =?us-ascii?Q?I5kkbavBwYvHBNf7XVRGc9fI/Ykpn4ww1tKnRNYgEQzlJ5eZTa2w1UNLnhpC?=
 =?us-ascii?Q?iQ61SOehTd0w0xQxNa8FwNmUdJVxXh1foizceaodQ2spLzFRrdRMP8PzEM2a?=
 =?us-ascii?Q?X6ED6c93O5XXD+RF6FFp6OJi400Y4ZQV/0+Iss7QA5IrxUf3+RF9ip+/O9b5?=
 =?us-ascii?Q?9B89uKGMwEdOCPuwEt6TeexcrqOlCe6e9rZsNUdMgsPNcbm5OisL657eeXR7?=
 =?us-ascii?Q?M5I1NrW7AP+vZVrAVFhv/L6XLUJDL8ztjyh7W6Ip9RMA+mIc1JvgfIHhaz+N?=
 =?us-ascii?Q?0tAWixLXKDIfqnQokvNdLULhoCH6XpEvHifP5sZEVkJXqmQKcGeXH0NXdu5W?=
 =?us-ascii?Q?RpHWwX2+hr5KtKuXJvWwVRA0Ee+HCWTuL4mohx/JZn2aG9ailW/t0J+DhK2Z?=
 =?us-ascii?Q?JY19x0y5/noOBfhSdmUTOHarCVMYAAvv5zs065RzDFCzdN6ko+53AuX/3/1p?=
 =?us-ascii?Q?rhlcpuxOXC3Z2Kw50FwviR9iO0XJ6OdI+zoNmBSW4eEaC9x8ZhwqvhOvKolC?=
 =?us-ascii?Q?rRAqpD87Wx4P+tkAOi4y991PmqI/5JUfR+e9yGsdaWWPQF3ziWJWdk7W+Gv+?=
 =?us-ascii?Q?BbK4ZyN1QxpoNzcL03TqkgPxHDEv7ZfpYycfC+fHPfoDCIMwCE8ryfxawWZv?=
 =?us-ascii?Q?Dz5UXIWy5r0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+rpKG4QMO2T1GbIzWUzE6TStskW9QVZA0oMiu4S/Pldy3myHG1VV8GcXYhwV?=
 =?us-ascii?Q?tLsoawLI98xDNLEzFkpOjvENIBejwlKjH9fmoss10U3isoNzK+NogJ9eh8tL?=
 =?us-ascii?Q?vGRVjuLVH0tp1fxDgMJcmFAq1nnYI/sQLFoUeA4Uh0NukrBI8L7twcFdwgtq?=
 =?us-ascii?Q?21QRs8eeppZlCQ1i6L6LVZWJPBO13kiSUrp87qP9+6WLDcHjbg83LhZwBLRc?=
 =?us-ascii?Q?h5aufOYfr1MXyZvrUjlawOSellltgsXSvtBdra2cRGMOKSfrQ+AkCKL7hBeO?=
 =?us-ascii?Q?uyCnF0ctm1pfNbNbosFN8IpNx/Z++PD+ngsZqG8HXWpbzsyoVTRTXXj0lrek?=
 =?us-ascii?Q?aQ8bbXRnTyPlr2AzNcl6BEIWKf0nFnMbpf1So/b2llusEPsXDf7meCrMcOPJ?=
 =?us-ascii?Q?cL/IH3dMK0Wz2QqfygagJE92nIyqKaIf7GZ2qxhkl9iYzX7ee0xWCtxvjEN2?=
 =?us-ascii?Q?RUHbNuxzKM1bFcEBFM3cPhxLzm99GLcWVFr4tXoG9g5a3klAMXagN5u0T0XX?=
 =?us-ascii?Q?a8mJDT4WQMZA+7Ltr28grCCCkntY4jhawF9ib4QbjZv4A1Xg0MyKI1a9VwDa?=
 =?us-ascii?Q?GvUf6JiataYVtj/8CidwzWWWYIAFtSvLaBSDN6/UiOKp17AyHZPy7mPgc6zS?=
 =?us-ascii?Q?KbWYURujazQJmi4pxLMaMMKsa+LeBHPo0BMJNc2M52EvRyOquRlyX2rwyEXA?=
 =?us-ascii?Q?xrlUy/RWPwEAwFKaLuMjmlZMIJ+qXcoYY/dRoj/wS6pzcTCZ+3ShG5jqapli?=
 =?us-ascii?Q?hbJyeJUL9zxOa0ZpZ7YTU69CF2az/599FEX2m9CnvgCxFc+R0cbgMFHCnbBl?=
 =?us-ascii?Q?mdtoVcrQAJz/nf5pSvWO5G2gIT3E+VLDU/eiiA2MAy0Ie8vLQ6cI1pesNUZH?=
 =?us-ascii?Q?rVR1PCDZ9ZGT9WVeuefVm9YOPEiEK44JhUJ2Lf2QNhD4RxBg83ZiuVlVoWDX?=
 =?us-ascii?Q?J6GrT3Rmx3f7e8Qu+JBMiQZFjpBiJBZsWfRVpssXTBGBx+YxdPA2g0xwiAg9?=
 =?us-ascii?Q?ExegucIOoX8HSUYrTg1hJCiY9Ro4W7Jm1viOPyIgzqNb8af21GWSFu2VkWLe?=
 =?us-ascii?Q?fe9l2X0dqtKiwA36kdsKD48jP6iSqtAyMKxpLpmwoYwDCnYln0G1I3eGPxfG?=
 =?us-ascii?Q?sIFmbPqER3SsJ/ZnFAMtnmO5U3etWwNp3Al6kL59WZwsQZydP7yFKDbRwSOp?=
 =?us-ascii?Q?A2o214ePy2AK2VMfuMEmUcJAVSVmKqdSVu8k9TZMJjvcCeMmbGFE0JH2RcZr?=
 =?us-ascii?Q?j9/HqQY5x4/awLH0CfeIHrj8Il+IT4wGpHSL+ozNBHqr28BgpSTNHsAj2MG3?=
 =?us-ascii?Q?MJoW1j3Q66d8+vlQvdkxFgG79IYCQvbeu13TFzOIkavxK+jyUp9/2oNpEkCW?=
 =?us-ascii?Q?i8uDvcYtt6UzvqfjI4ayD90849a6xduuuLaG1FSUUq6cNMNKNZa50kd6/oaN?=
 =?us-ascii?Q?lkc5L7xzginYKJN5BYqH8uu9XFzjo/7f2pyETDz0pRilgLEjB/fkwT6oe77m?=
 =?us-ascii?Q?oM4smR37QlnpmAXvASCakVB4UeXjlKrW/sA5C1zDbAhcmJju+dU3nV62BC4T?=
 =?us-ascii?Q?VE3ZdeasjQ/TSr/WMm/EaMFercog1NquBo1M5/M7?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c9050dd-e25e-4b0d-8df0-08ddb48a70cf
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:24.9770 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EfQYeKLhds+SHRxZ6iLyS5TuO1l/0YlW3ICCMWmkIYHvHCf+PB5bxVSUDWlPt1xCfynSF4kdVkQkv36Ex5lZpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8EC896901
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

From: Imre Deak <imre.deak@gmail.com>

Move checking the link status for SST to
intel_dp_handle_link_service_irq(). This is the logical place for the
check which should only happen in response to a LINK_STATUS_CHANGE sink
IRQ. This IRQ is only supported by DPCD revision >= 1.2, so for sinks
with an older DPCD revision the link status is checked in response to
any HPD IRQ. For newer DPCD revisions however the link status check can
be made conditional on LINK_STATUS_CHANGE.

For now keep the current behavior of always forcing a link status check
regardless of LINK_STATUS_CHANGE being set or not.

This also prepares for a follow-up change sharing the link service IRQ
handler for SST and MST (on MST the link status check only happening in
response to a LINK_STATUS_CHANGE IRQ).

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 90f6fe20e4c0d..000c57da92d60 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5481,6 +5481,9 @@ static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_m
 	if (irq_mask & RX_CAP_CHANGED)
 		reprobe_needed = true;
 
+	if (irq_mask & LINK_STATUS_CHANGED)
+		intel_dp_check_link_state(intel_dp);
+
 	if (irq_mask & HDMI_LINK_STATUS_CHANGED)
 		intel_dp_handle_hdmi_link_status_change(intel_dp);
 
@@ -5534,14 +5537,18 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 
 	intel_dp_handle_device_service_irq(intel_dp, esi[1]);
 
+	/*
+	 * Force checking the link status for DPCD_REV < 1.2
+	 * TODO: let the link status check depend on LINK_STATUS_CHANGED
+	 * for DPCD_REV >= 1.2
+	 */
+	esi[3] |= LINK_STATUS_CHANGED;
 	if (intel_dp_handle_link_service_irq(intel_dp, esi[3]))
 		reprobe_needed = true;
 
 	/* Handle CEC interrupts, if any */
 	drm_dp_cec_irq(&intel_dp->aux);
 
-	intel_dp_check_link_state(intel_dp);
-
 	if (READ_ONCE(intel_dp->downstream_port_changed)) {
 		WRITE_ONCE(intel_dp->downstream_port_changed, false);
 		reprobe_needed = true;
-- 
2.44.2

