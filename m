Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F95A817C8
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 23:44:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEF3410E76C;
	Tue,  8 Apr 2025 21:44:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SjsTDias";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5246C10E774;
 Tue,  8 Apr 2025 21:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744148662; x=1775684662;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=ndOGA9kvjakkIWeijG/lLd38RXHUq1aEhwt6D1CEoGM=;
 b=SjsTDiascxiUTbHu/1XQM3Ay14XYNqYfwnyM3i7lUNe8fqwv2F4a2Zev
 YtjC1r8LUDgq7uM/tUagfx2kNA1iftQVsLlP806iVPUrZWSHvUQPLKaeA
 LBvWRELjtNg5EZCqE1bzmUv2+iVVjiWbC2bXR/qoqV7N1bOkg9jhcmVBM
 Vh6gxMk1Q++3DVfULZcqMXL0ZUM394IgieYFf1VQd/nKXN5o/oePLIj4g
 5u8ZGB4M00d0HGRdXzeElAI06D6PLpU6IqepKlxK5Ew8g8BNK4B55GOhf
 SnLApz6DA9FKZuB32n23JwTQ5+ow8WBOxPsPZ4FviZxiu1F7P+gvzvTdC w==;
X-CSE-ConnectionGUID: HuAf7DuvTkK8YzD2JOkfIA==
X-CSE-MsgGUID: LNpnxMpqTweiLwAYdmPkVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44746781"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="44746781"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:44:22 -0700
X-CSE-ConnectionGUID: uEPACcojQoCzaOZwtXpWNg==
X-CSE-MsgGUID: taafNk1+RECfNQuMarb/Iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="128381247"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:44:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 8 Apr 2025 14:44:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 14:44:21 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:44:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qslZwDyS1yB6QIsX1iCr9+zuDGr4GsMKHOEifyaurB/y/43WVEYUoL3gsTC0IA3ZKwKH2mrBIUXSwj5KQmlOX6wL5FU5G8nWZhBeqXLEYodjfrmF/09lQ8U4ozxmp7qwjdl22iTWClk7tT6aEYzIxPtgQLRQSia8VrrWOKZ201uvKEyRAN1uy7eGJVSfRMwU1qlX7g7kBXAWvO3npSHetIaCTTzwtV9tKoJjRTt1dYh4JddfU9Ch8Wf6aYVNTYG/Sm/5JEhjvuqAUcw/mNipOB4pldaRvOw8ey4YCR9Xt0hhiju82JQv3hBW+eDDSk2kPLla8V0BX0TZetfumqKxcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=apqyVXvNOQyXYxFiiGu/NQ+r/+ubm7a/awy3/PyhA/Y=;
 b=lCkGXpteTmd22sGVw77P9MtlRLDeyFO4mtKL8x7C1MhkwM09cZp9hFDzGe4+Ba23EXontZPDlV4PxByrYtQIBsK895czACkcNwSb88VHNUYqF9AmK2NgoppoeRuXY31na14tKK6vgh2UasaVi5UGb/oMfe+vOgloVKeRrNMmTNcgV2l3WYXHSTobbFPcjW//OGrrX9tyYcm0HtesIO88NixZCQCMwTITk2xk3bsQWSAz1ivr++OdBTRWebuvnfHtMlVeZH2H0wrdlSnBkCNNfgI0YM4weaXYohRfSaXHhYPza7g+FYH6bpvCigzmHl8GY2DG9UGC0KLNSUBZjcY59w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4562.namprd11.prod.outlook.com (2603:10b6:5:2a8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.20; Tue, 8 Apr
 2025 21:43:47 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 21:43:47 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 05/10] drm/i915/display: Factor out intel_display_{min,
 max}_pipe_bpp()
Date: Wed, 9 Apr 2025 00:43:35 +0300
Message-ID: <20250408214342.1953197-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250408214342.1953197-1-imre.deak@intel.com>
References: <20250408214342.1953197-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0060.eurprd04.prod.outlook.com
 (2603:10a6:10:234::35) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4562:EE_
X-MS-Office365-Filtering-Correlation-Id: 55d7ee8c-9039-4074-0010-08dd76e670e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SEo/2NHmUU5Bp6nRhsa450sgAbLQ0JDGYO/JRW/t+ijc6JjO8oiCBCEEWvHg?=
 =?us-ascii?Q?VOOqjCWey7Bn6NtHlY0x2YMEK4aJChjB2FdMlpsglbrkyS3WZotcOgrxIEcS?=
 =?us-ascii?Q?LOAbBHlymCs1gRTsV+Pq/zyl3Y3ACWE2zDs7Oetn7nMHMlzkzVh3OJ07zU+X?=
 =?us-ascii?Q?IRuAI7ohCJbgUAXf/igxY4SWXq1n5kC7cIGKyA1iodzYF2JLdUTdXPlzFgDt?=
 =?us-ascii?Q?9mzONqdtQh17JE/9+PLpcb2OFPV/6kQ9emUuWtwa37PWgEsuMUvmWhy/DR0q?=
 =?us-ascii?Q?zgmFycof+ltpteuPf5GIzxcXsp3H1t6P4Amx1IbBF8QvzZZSLd1lQKHOeDvZ?=
 =?us-ascii?Q?CUg9ifj0Wp04swe2rqLpBmUCstEwzrHiXSc9j4Ztw/vvCZOYbPUv/DsmOdoF?=
 =?us-ascii?Q?lF7QQc05lw6Q6zpJUz/XoK88fP6ue2VuSqYR+QNfYRI+PSCmGaqWjRo11LFZ?=
 =?us-ascii?Q?EemOksMLlapC4ADnqFW0XSEODWIDgTrEcBD7dKIburpEiEwjB3Hk4Ka+n7UZ?=
 =?us-ascii?Q?6kTtyAx8CIUhx4Uvn94e7uqmCuSuGRXSHHS0NoovIdft6t0erVeS7ZlfC3Qc?=
 =?us-ascii?Q?QgQBNxNfjM/mfeMPHVNQhJaHn194PBTJRDiIf0lr1KtLlT5LOzIoRWZE5+IS?=
 =?us-ascii?Q?tVd1Y5F53nabiLTE9yqgNZ0LXT8LFxtQV877JKRo6CnDqnjGBwbHNo7BdtlV?=
 =?us-ascii?Q?i2/A10WZ5mJZIjPKxpfnC2keuodZGSHGRTNOtE0B/J+se0rEQmnMHIobmlEr?=
 =?us-ascii?Q?pBG6zcoX789BW+G1u8X+2dhujks0WDlGTIwm+0CbE2D+25QGYc7Cbw8N1gO9?=
 =?us-ascii?Q?7jLBcI7Gf2f4zCvzxRmYY6PGD1EzFja5Xm/IuD80kAy78w4H2UaF4REPZ4lx?=
 =?us-ascii?Q?UQEllP5AViTvyhbD+T8kTN1/IP5OjiC1dnQ6uJPCULDB5qSyycDn1mNLYaWg?=
 =?us-ascii?Q?KVXp9QIAuAihd3AMrpeXp1sh9wzSjoDXzzeFMXtoZAM3ml3hd4mezIvVqHQf?=
 =?us-ascii?Q?DJK/EMd+cdV/FI0UFlnxtKJXa7MEzKRjYaPu3ATMQw6N7w4CLXn+4GZXXyxM?=
 =?us-ascii?Q?rFwj+BIyeIDrpDRcoMCDMemsWPDOB9ufiiakpJ7X2uFm0xOqy2+UDbIHB36l?=
 =?us-ascii?Q?HSdJ6tfotyLOmRYkkuZGJ4DDeG0vFxYxvYRwhs0QG0roG93vnXK+YC12aYfq?=
 =?us-ascii?Q?leqyowI3Xa5jQDA5BwsDs2pxJnMXQ4KzwirRlQYdUzsWbbLN99utM3zxzbN8?=
 =?us-ascii?Q?VLHh/tPMIve4HB44aCWtFXfIyzJ1UiWXiHcdpNsNet7SefhT5PTr3IsilwVw?=
 =?us-ascii?Q?hs8Brg5MCFTo5qjnZUVPSLuIOm5fIz7Rb7NmiF/vqZu60iUZ/p8QdbTt9Z6l?=
 =?us-ascii?Q?SUlhPgLiQTj2vU5TOxV0+AqGm3bC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TU7UxNqe5KaykD5N0lZJkGGGSBhjuGb0wcO5btEFvGWJndfqp+FhoE4ufHg3?=
 =?us-ascii?Q?SZcSU+CcN6aOFR9JlbviMMU9dsXhJzErznGXRNh5rEsTPOdVAZ/AciUHz8+T?=
 =?us-ascii?Q?M5D35iIChcFtzCZUaSf3WGejPHK58MvrPHPWPfAQZ5e6P1j7yg1OI6a+7mt0?=
 =?us-ascii?Q?zlqATb5gfAxbxoJdUe22mL88EZ+W17FDTVpxBWqPg3aEZscGUslFsvZvSozr?=
 =?us-ascii?Q?40RcvS5Cd4YarbbyfkrZP3+jVjTzM3IoIowamIiAb0fS5Wn4/wYR1ghqAxWI?=
 =?us-ascii?Q?2csYQm9D4v6TwGYiWrsZNaCBOtl2pzPTRd2ELcfvaIf8fzZYHLVc3b7vJ2gS?=
 =?us-ascii?Q?Reh/FPfPhwFprP4scpj/shJVryi4QBpniyg3ShaNwSSBp3+PWF8MLfNpMrxM?=
 =?us-ascii?Q?8UL3pBEY930509bLqcJFyJTn8r6r9X9t3nuH0dTQalWTncsE71qYuyd13KFu?=
 =?us-ascii?Q?LYd/1xWQ0yKxBP6dEkE3bfOA8J9LIaRnU4kAhkIlNWHl2Z6u3gzHqwiUNk2D?=
 =?us-ascii?Q?bO1QZkwarzP/WEE9AXTaHCiQD+67RaavQrmfH59BRiNA/62hd+Jt/M+gornE?=
 =?us-ascii?Q?LeyotFVw82e7B3ifpLDoMCZR90paFfDfgE5CL7UfHydO7O92JgJM2lv0vKMo?=
 =?us-ascii?Q?6UIR815FXlGxeVMLYVxwv3PbN83f5fQyQoh+Dj69QYvy2mzHUMEK7T7CRkMN?=
 =?us-ascii?Q?JdRpB3K9PTE37Evvp7/g+PbowNwg89RZbxCZrfLTkkQgS2RB+LUD+/cXgyPj?=
 =?us-ascii?Q?H05pWD6f82n8VSWmHV9AiOJYQ7jcoiKsNIzYWzfMT7OaBsvCwrXNR0DlPpjw?=
 =?us-ascii?Q?0iTbbP9/+CD6+RToqU9CdbHBItlnAyN3Jn79onMZgOQRo6cj/FKVhfyFAVTg?=
 =?us-ascii?Q?vK2A314gDQuSnPSCDKoqJnlFj14dK7QuefBNeXloZmOKJXmxHjHD5NyhhG+H?=
 =?us-ascii?Q?SSL7NO0YGE8PdU+MBvtLUzWm+kNtFXuS9eaH9LWjs4gm9S0/rUOz8iH3+1be?=
 =?us-ascii?Q?kPbwyVy0KRXgnzn8/o/iAW1MpWWKPoY9pfFbSJBZmb5vrAtJWv0gRGtEGb4A?=
 =?us-ascii?Q?JPzoY1+T7VL0Jo23GZgc2bg/eiwy7iksyNdNurhZGAU2HeJTY336966ANd7u?=
 =?us-ascii?Q?WcGyzTZxoXd3taAcslCdN1e7BH3SpiUBLKsryGwcE/ofrvcXhxiPYp2TVXzd?=
 =?us-ascii?Q?DRTJ/xZmYxuVH4d2KhOwUoi2t1uf68tkR/LyJ7t9HSP/r67mWsL6Lz037G1/?=
 =?us-ascii?Q?DwPh4ys9I2Phxs0Vojfu3zyw5kqa3Sd8JMsl2S5fUIi6j8t3JhDdzk25go0O?=
 =?us-ascii?Q?XtqfAbq6pNvpjQGEMx6IgCL5a/8k7hTceTb/CSUVuG359Wy1e7bioF1COEJY?=
 =?us-ascii?Q?EG/ZePmv0C6pDBa0km/dQfGlNrYhsoEQt/5nukAlGBLU3yTHZ6yQGJ7kt1Al?=
 =?us-ascii?Q?LWODhBdxw8SqcL6HCS/41W4GuGfvkwb2+9/MYzLGIr8Kxg0WIqDAc5U72FO2?=
 =?us-ascii?Q?VKCuzx+xEwdpYL0OcU77bCn1Y7MPcDaF7zS08LNGTerlaCew2mMr+qFfb66Y?=
 =?us-ascii?Q?vdTS+jFiSdisaxSxWU0Zybt8oT4kofDK0kpYYBiS?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55d7ee8c-9039-4074-0010-08dd76e670e6
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:43:46.9203 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dGvAAteWA4T0FHM5/qtD9hPuSi1E2SKuZi0fLnqFtdizUUMUTMQpwbE07uWjcUyZU9nvwH/KMrK5TzK8svj9nA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4562
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

Factor out helpers that can be used in a follow-up change to query the
minimum and maximum pipe bpp supported by the HW.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_display.h |  3 +++
 drivers/gpu/drm/i915/display/intel_dp.c      |  2 +-
 3 files changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 16fd7c00ba010..621cc581cf51a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4317,6 +4317,22 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
 	return 0;
 }
 
+int intel_display_min_pipe_bpp(void)
+{
+	return 6 * 3;
+}
+
+int intel_display_max_pipe_bpp(struct intel_display *display)
+{
+	if (display->platform.g4x || display->platform.valleyview ||
+	    display->platform.cherryview)
+		return 10*3;
+	else if (DISPLAY_VER(display) >= 5)
+		return 12*3;
+	else
+		return 8*3;
+}
+
 static int
 compute_baseline_pipe_bpp(struct intel_atomic_state *state,
 			  struct intel_crtc *crtc)
@@ -4326,17 +4342,9 @@ compute_baseline_pipe_bpp(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_connector *connector;
 	struct drm_connector_state *connector_state;
-	int bpp, i;
+	int i;
 
-	if (display->platform.g4x || display->platform.valleyview ||
-	    display->platform.cherryview)
-		bpp = 10*3;
-	else if (DISPLAY_VER(display) >= 5)
-		bpp = 12*3;
-	else
-		bpp = 8*3;
-
-	crtc_state->pipe_bpp = bpp;
+	crtc_state->pipe_bpp = intel_display_max_pipe_bpp(display);
 
 	/* Clamp display bpp to connector max bpp */
 	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 3b54a62c290af..b6610e9175a7a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -524,6 +524,9 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state);
 bool intel_crtc_vrr_disabling(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc);
 
+int intel_display_min_pipe_bpp(void);
+int intel_display_max_pipe_bpp(struct intel_display *display);
+
 /* modesetting */
 int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
 				      const char *reason, u8 pipe_mask);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3cf8d6510bf90..881852390bb81 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1199,7 +1199,7 @@ intel_dp_output_format(struct intel_connector *connector,
 int intel_dp_min_bpp(enum intel_output_format output_format)
 {
 	if (output_format == INTEL_OUTPUT_FORMAT_RGB)
-		return 6 * 3;
+		return intel_display_min_pipe_bpp();
 	else
 		return 8 * 3;
 }
-- 
2.44.2

