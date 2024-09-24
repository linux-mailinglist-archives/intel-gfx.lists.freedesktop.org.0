Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A83CE984C46
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:42:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51A2D10E74D;
	Tue, 24 Sep 2024 20:42:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XjpbJcen";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D09A210E175;
 Tue, 24 Sep 2024 20:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210570; x=1758746570;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=UYgetFNsXBNFpPkxA/sCbk1LcZfIqICGFkOxEDbDxMo=;
 b=XjpbJcenplo3u8XOkr1rCQLM4MZ+BUR3UJbdtcWBV4OuAzFebkykgw+n
 sIVdPIPHK4toOoX8wkjebuPJwaR7rNMsOyG5J9j+oJsAPemqflhMEiZwh
 hSwBHstfG5lQ8FMKMpGbYs71s9mW5pRbgn3/3ZKz7WtOjnfOvo1flcwLy
 SXjuntNPxC5iCpDuYmMNYKbIgx5lVnx0+OlFYWI2P7LCduzk7gklvU8s3
 U/FuAdb2v/NmKXb/SwGtJRtjJLoSQe+ZQCRzyJpojRa4T4cg/f93J3VzY
 VlN+V1o5L+YQJLHrg2Mu13jlKpawsM5Wj3Kp33GCBgV/BiHw5w+sn0BWG Q==;
X-CSE-ConnectionGUID: yIIcw/maRZmzSOlB5m8nBQ==
X-CSE-MsgGUID: 4gc5Uh00ST2MorwJEX+y/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26182572"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="26182572"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:42:50 -0700
X-CSE-ConnectionGUID: +tkdM31bRQC3Z4N60/hE8A==
X-CSE-MsgGUID: Q7/6opW5RcKNnAuaSTt9PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76337761"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:42:50 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:48 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:42:48 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eK0VTV0wHqFzmiucNK9X72IvNV/KHJJpcjP/xfDMICNvtdQ/7Qbe44pWOCEPOJkkbwYahuvwDI3h8LBt7NkYu6JH+Ny21bKT25tbQO7P5Wl9OZFGjShzHFWPXPYvJm5GYT4GieQKepIOgoGdoDtpTqBTni1cZfm3UYTiZcszKwjkiNBlEZBZwWEaCf/t1jJiL4BwVAFjPrLdcbGKYE17kGlaUMiXbcAjwLf6lLKbTLlyCVRdSu9PrZypGpIlD8zjT31QG80Joud4tzAJH9EXlTGDb/1l6VBfkDt0cWnBy7Sh9bbfo2YRfjtJT6AtVrRxwzi6oTcdlM6JzdZ+SdO/fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lVzUP/okr/FuTggDcF352Ux4F6Lsjay7ccmyaOL7Aa8=;
 b=l7YpvK0epFPbV1zCNgfn9Mfggwqfk3u9pwCdcbmq/VmI0ole/9qJTUyD0J7QxjsNn6MtDbaYn/Uv1hkiHW7ykiZqd92zIvMHvt37uMJPXInNiHz8TYdpKK5pcseHohkoam+il7ol7VbWgkV6BianHFXSiWdprx4mDrhFfgbFqnZ1bxN10rIpFC5CFHmQcfOC7mfsia97/jWAMA88ZTkL3cRiCo5s/8LRfv1P1XkB3CakGKE1s7oJwPhxjqzCrX44XQ+iRu+a8aVSDMcDzR0ZZzcAlCG9EJTXbDt9TzGtz9DwyIr7zMb6D5OyO8m47F7WEGQKRoo0t14URFiClQMcJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 20:42:44 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:42:43 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, "Maarten
 Lankhort" <maarten.lankhorst@linux.intel.com>
Subject: [PATCH 05/31] drm/xe: At shutdown disable commit helpers instead of
 flushing
Date: Tue, 24 Sep 2024 16:35:26 -0400
Message-ID: <20240924204222.246862-6-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0034.namprd03.prod.outlook.com
 (2603:10b6:303:8e::9) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: e0068f92-a6fb-4346-df2d-08dcdcd970ad
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1wcBrNbOyEeh2UHnyjYvfBHX0U3sz9Gpm9LuSwNEVgA9A3kuhTaWt7aHMCPq?=
 =?us-ascii?Q?SVyNHxRdQtCS4/j5NUPcdEGM7h9eJcIg8YHoh/u1ZuzV5ThHgd7h7cQDdqT8?=
 =?us-ascii?Q?58YGG5z8s8i9zxa8XDeEn17M/W0PLrM4vZf5ybNu4uV9jTZzugRBTz+2Rjbp?=
 =?us-ascii?Q?xbtaGB2jCI/yWP/TGFx8+IjD2eUle07LE4VUJIuY/u39S5wcmPDlJZz8BhS3?=
 =?us-ascii?Q?fuiGO1hwctFVm0HjHoqsyIZh1uiC0+GqatpezQpqjZjsqg9M+XdOIItG5Xtt?=
 =?us-ascii?Q?GK95Jm2dFKqCmxe1qXjrv24PhdT1++RPlQSBcrCg4Q4tNohS4xo99EU/3FiW?=
 =?us-ascii?Q?sdR6+VUOesX0qMkHbkj4+icrN5gkaERFHM6+AZ4CpvSusNiKW2+n9fmJEj8F?=
 =?us-ascii?Q?Hxw/80GJltB0Mlaeca9c3py6uyB+nJfLV7Tg1q1ODqUfHl3gHw7O4G4fPNkg?=
 =?us-ascii?Q?IOObzgwDswm+VnU7i4BvnHEI1SuS3JgXSjhkz3k+2ghhF5T65X37skRFA2ls?=
 =?us-ascii?Q?gSCtKpLg6cwJDa7F7UUHcHPbCh6LH5dPSd5HxnhWfU/15h1BL3dsm/+97wfN?=
 =?us-ascii?Q?UxFln9g6GbIfIv3oM4uHphFJ4OuRFVQiVHlbxtYtl2IcKu+OXxjgraQLARDW?=
 =?us-ascii?Q?kDcxapYX+kabNSepYKl+TEdewj9d6FAPqaXD4808vnkvFTzPm+o1nGM/m3wA?=
 =?us-ascii?Q?agYQoJnzBCGOj2W7/o9mXG7sSBjQrnXbjAnvbevBEVI4Dhkvf7g1D1TOxyxx?=
 =?us-ascii?Q?yRXdNOFzcTrgfovNqT8yM7e+2UQGkAgZ7YzJwGCga5+jJhFl2TwZ2pir41ff?=
 =?us-ascii?Q?gp5LeMuemEVWuvxV7aynm15uvf9j1EOkhYa96AzAVeIuzOSHSwxzJSweU7kY?=
 =?us-ascii?Q?h5uutN1hQtqj2WXwyUbQPRh9dwfhOfPi7N2CxLgzCdCVFvm3E1TM5hnTBWcF?=
 =?us-ascii?Q?j4Oh3HnnA0GHX4ZBvWYfsBdMx3hQsYAlgvYBLS7ieg7urztVH5BhS1D7IrES?=
 =?us-ascii?Q?UZis7HbQky+NJyLdKyGgkXG7VuBU8NYZG+c2CwzkW9ibqCZS9ruaWVQhTs5u?=
 =?us-ascii?Q?3ghJze04HSEAntWsqy7UC9zvD8adlr0ZHvYxmXPLb+TUc0PTQPWyw1mlM033?=
 =?us-ascii?Q?VZXeMBWHxZU8tjfJeTEd37yRsQvgQWGaFmdFfEqmED2HqyRRHsWBGpqEI3YK?=
 =?us-ascii?Q?0GFR1oXNkNh2cpRDkFUpk18Qn6ZxbP1zmeErVtgjoW3jCLcX+cNPrbwGsvWV?=
 =?us-ascii?Q?rdbKwpEZ0xk2QmMAZPcKnMMAl3uGwxKghnSI0nKGaw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AWoTv0/pcAB1Zn4wITGEUcqS14Ksmsc9HABKZCntmMSZX1Cwe72qNlJM2r+p?=
 =?us-ascii?Q?pATsX2TnvFoCVawVbfBT9cmcVHipe1gpUjlfmdmfsTjmiDW4qNlEmX3KR0AV?=
 =?us-ascii?Q?oih7GCSrXY7nOTAKCniMreKvRGWJMAHju/j9upVevxURuShGBKomsCfx9FK+?=
 =?us-ascii?Q?5Bhm650sdSmovgDdj+BYrAKqgoUfbMJRuXM2moo8iDkcu/gVFKKui27EZJPV?=
 =?us-ascii?Q?V4ehosxOcVkU4Czobkt8E+0ZMOgMlYzHnPk+O2JUbz/PegRhkG+zVlaSMB+w?=
 =?us-ascii?Q?Kz97HR+v/5inHqZ5myc+2NU9bV8ImAnwR2zRAw3r+85SvcJSN8yM0IDWeMMG?=
 =?us-ascii?Q?5pKgbMquKofmB7gWxAaGSe7L3uzGyASv8atD8iXlFAzQV6H/aSuK1GqwK1ne?=
 =?us-ascii?Q?lAhwCfVX0c8j4AwMEUBOmGJEwSdRn+GxkqIv85qTu5A89GY9fgxg41Ptdrlx?=
 =?us-ascii?Q?Zezev+Bh7zu8xzAz7ALZLBuJi090nYs/J4Pu1MWudaHre5LzMe6Orml0sW+C?=
 =?us-ascii?Q?+oK7B/E5z0uCNT3c31otkhpG2wzcv0scV7TPubCYI4rsGwI3uihPtFsCo3g7?=
 =?us-ascii?Q?JlzzTeC/ecR/QnASnwNj7Xyw91Dq5o7oFz+E8fe3kXqu1zZk5oPDkV9x92Yn?=
 =?us-ascii?Q?/KUjUQFZhbunch2/X1Y8dZWrEPELTJReBrNC94Au5lHU4izF/AGtel3Oc8ti?=
 =?us-ascii?Q?QnExviI/wE9zPSfFCi7JExSY/MwE9Y5IimA/NQdJotLWH2Fx40CECpSGPnxH?=
 =?us-ascii?Q?tTRS1IX81Mtet73YqGEoLH3wXE1//LGTF7BL4FfVrJBzes/dASsl5dCy1p9x?=
 =?us-ascii?Q?8rbJBl+SbjxHfcL+COcWW8sFKv8CD5ud4WBJAzJ7do3N8pKokDL/rb6RNRoC?=
 =?us-ascii?Q?a4g9lAeL65uumtajgLwNdgoJ5zulRd//xnPg4jfulhT8jEa7x0+6FBZM5mHm?=
 =?us-ascii?Q?7BnvzrCQxkoiTLPP3FqdjfAeX5yNP7z5ZqfSsF5wMvbqoD3zkXn7RGJLNaMy?=
 =?us-ascii?Q?fWW8grhfITHsrXddftcJXA3Fx2GUHja8TXPNPOU4LEc1tAtrUt/j0hMxQVxb?=
 =?us-ascii?Q?9Pn/5Jfo5Fd3WsXr5LA1zYMA03VK1APWaOOiB4eNW1aLgjnDZPnKbYLMWqaH?=
 =?us-ascii?Q?l5eAO98DpPNmn03xqW36wBtig7rj9jJ/QVNKUMe/G2ryIlJG/JLmzeq/r1Ad?=
 =?us-ascii?Q?JpywyN2s3u5aVC8f20s9gOA+fJ4e/ajfcK2shBd2pe2gJtUPEyAUQ1/+wrFo?=
 =?us-ascii?Q?7Dk2r/yEZFO3eI+kWHpNauVBH9qaiG8m1YNQCaMKUXCQNGhUNj35D+A/kP4D?=
 =?us-ascii?Q?PjsJG5HnDSAcML4BitiNPEqRv/+LY1gmP1uSMnL8igsMUTIMJHLDnhETM0oC?=
 =?us-ascii?Q?X+0dRtqCSYTj7EUK0k7BDIz+Tgj4t8Q7jSA+Id3xhtImiT9NUuC0CsxxNVqg?=
 =?us-ascii?Q?hl38iJpU+bmq5DdVqSF9c0ST7HyA2TTy2eRkVsHWZHipVo4isp1fjfaX141r?=
 =?us-ascii?Q?hl7PXGuuWwHWc4ppizg7VODQMozVl9Exk9jBrDdcGWfNgWcvyDMw5k8m0eSe?=
 =?us-ascii?Q?WGsanHQHitU87EYWSVWf5LdAnf/675gPXb+ki79tUwZCihwZPUmxTBG6A9LS?=
 =?us-ascii?Q?LQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e0068f92-a6fb-4346-df2d-08dcdcd970ad
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:42:43.8226 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SzYU8aG0Ivk/eGxoM9Cm2vTflmXg9WMrHZEngiM2B2S8f3lHADqiz5BYXxtnz7So7LRSmdnrX8haAQ76ahwSHQ==
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

This aligns with the current i915 display sequence.

Cc: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 5cbee5040e91..0237d458078b 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -10,6 +10,7 @@
 
 #include <drm/drm_drv.h>
 #include <drm/drm_managed.h>
+#include <drm/drm_atomic_helper.h>
 #include <drm/drm_probe_helper.h>
 #include <uapi/drm/xe_drm.h>
 
@@ -364,10 +365,10 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 	if (has_display(xe)) {
 		drm_kms_helper_poll_disable(&xe->drm);
 		intel_display_driver_disable_user_access(xe);
-		intel_display_driver_suspend(xe);
+
+		drm_atomic_helper_shutdown(&xe->drm);
 	}
 
-	xe_display_flush_cleanup_work(xe);
 	intel_dp_mst_suspend(xe);
 	intel_hpd_cancel_work(xe);
 
-- 
2.46.0

