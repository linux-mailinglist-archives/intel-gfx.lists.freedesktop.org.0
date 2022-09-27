Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3CC5EC139
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 13:26:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AC7A10E285;
	Tue, 27 Sep 2022 11:26:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DB0F10E285
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 11:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664277975; x=1695813975;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=l5lGh0RK0tD8sPiXbVZKp7Z81YdM1Qb7shN+UTzTDpQ=;
 b=U2xynAOtwcZY9V1bmkDCXqI6gNupzPbkdkAc23nvzAbq5xiUGPoyYSHP
 VI8zTzT8/6VOlYnS2fVGNddVPcrrKCIPpmSHO7NBtqEPRAb7NU/xhFVBO
 GZLoyvaXn2bygaJ3b9LTwKQ9Pwm1UdzXHm6TjOkZGZS/zDRhLyV0GHGqc
 DaRAHtBc5UcMrmNWkjTbvakWagQ5gOXwwHJ176tHLAIYsCRQDUvQWfuzP
 YoEAoWPh+VMcLPUUvpQBPmeWL9cb+CNhgoAPn2fW+zRq/biEQoeM36lj7
 ZqHsOgHF5P5EAP+rJ8duwTS2+WBqfAYWV8dpsmkdhNDTAbOSQN3hThp4a A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="288441274"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="288441274"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 04:26:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="689959570"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="689959570"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 27 Sep 2022 04:26:14 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 04:26:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 04:26:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 04:26:13 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 04:26:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bv/QpwPliXATeOQXTGT8BU2VgKjAdKDRWrdLIfIWvFPCi2c5OnqRQ8Turu8ExjPWsAKKaT0vyc65Akb/viNqN6/Bjb9BrYvFnRkJZbclYLJD14N85z0M4XfnbAI+Z1Xzg9EldL/4lxGzX/6lTK1zQ3cl3fpdkHRHKbNIbYav4Q4cH3ZO4Wc03bNNZa7xlshKST/evMDSWZYpV6HjrOK30L4cYwX45M5pK2y9q6we2DDSBnA1pQ+W5cH3eP50OHoXdbV+JGiEHf5ofNZsafu3L24x5b5mZwAX2au5xhBTHmpaLowiM772WuxTGtLRIz4iUFtvjiDT73s8TlZeNki3FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3/OaMVIZj+JvFxkP7J68o5FXfVFuJN7I4uL/Kf5FN5U=;
 b=OEkf6NIPZzb5qOESuao9WiPbchxKDiDj5i4bfTy3/5Bu8CM2WUCDLZDa90R9zsrBW1s8BJmvbKukxOseBIcMB7tEfzu9gp6mD5aCiVr2lNntM67/VhTU3IJl7GU5cAmFaRUVWCl0rdH6ojackR9ll/+5YwJbCFzVb9M4KhkqBgK1ynqYMnLtChaZN4DoR1D0eMkEH5/VAELWkJqiPV51g9wiYC4gE7JCsFPJ30oTgsMHWD2fPOoUfpgn91SHRJnD+ziLxZbQhM3bJGKhgT59tjejuhxTCiZG4gCyzFJ+tsc0yi1DN245hVk6LcqazNYkDWnK9juThtorbCt5pL8h+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 SN7PR11MB6797.namprd11.prod.outlook.com (2603:10b6:806:263::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.25; Tue, 27 Sep 2022 11:26:11 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5654.026; Tue, 27 Sep 2022
 11:26:11 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 27 Sep 2022 16:55:43 +0530
Message-ID: <20220927112547.328078-3-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220927112547.328078-1-balasubramani.vivekanandan@intel.com>
References: <20220927112547.328078-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN3PR01CA0187.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::10) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|SN7PR11MB6797:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d152a80-ca3d-4318-7d86-08daa07b1447
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JkM4HFm7DNnKQNML3ASQqwXc4UvGVZ9ESxz3DnhtLZZt+h2QI3nudJ5ckJiCxzMHflBWRoPo6+Rm9GF7aAagV/c/GPxFYb7l2/gfasExy8H/qVpjaPdAPqdqKV3FPh+BUvJ47kt15R2+ugL3gABtvYlgfgsJf8US0DOL1bp6dYWD5aDb+TqaDhElxnUEbBotDhOvdrmlOLB6kmHzMHu2w4a/fqK4Mjv3S4swNeCDqlzN1xjRy7yH3U1TK1697LD7WRjmYybf5oJOU+SdlL+CN90u2yummpSRxIIiu45TY64dTmDhWwF5+Bb5Hbu7kwbup5UeYTDhLhjCFeTFfFLGn+aYrvd1RtbgxsJJsJ3xyTEnnEdres5eKqCVAg+uUx4Cw5UO1IAzF4s34kC1KUT+nIrrbKeDZdyI64V/YEQUrEDlF7b1bH33wXJPutk2MXdQdeqR99AGSErclxJ2k+MP5ZGKHalCtUvUstxaiuOcKcDFQeyDimCQl+utaV66DKggfljbDSBZrjJmvTmtSJTHDLCRcWJuz2VK4s00P6bxxK+df3PtEqGeg0LU8QYW9wg6BprGzl3lcaIQ1ncDBuS/GniZ8mdibNtA9HlYBj26ONH0p2DPnKP67ngCj+g3pUZJJsAlasDRqiilJ3BlNs9Prf9q2BMuvqFNe5v2SDKzM1zuxWFVYmOJFV3JfQHuERCEZWbe1jtedTLMqCMkXih8PA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(39860400002)(366004)(396003)(346002)(451199015)(41300700001)(2906002)(44832011)(36756003)(5660300002)(8936002)(66476007)(38100700002)(4326008)(66946007)(54906003)(8676002)(478600001)(316002)(66556008)(6486002)(6916009)(6666004)(86362001)(2616005)(1076003)(186003)(82960400001)(6506007)(83380400001)(6512007)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XTBDz3dXmIfAA5m8Yoj5CZRnqhfUM9/cxWA/V72H3G1KpwVYvpa5HbTMNZ4I?=
 =?us-ascii?Q?J7Nb/0emf6/9pAo5165xOcPPMgmF9cVT1gz3Itd6bRwJ6XaOr5Bm2rd1GMut?=
 =?us-ascii?Q?v2pHZkpTlXKQc9STB9lhZIm/YQx3Cdr7HPSsfl9oqXtYeyCnl7/p27RVjMQ4?=
 =?us-ascii?Q?nvDp0y52VApg2hDYOFeddy/xkfiFdj9kf89FCjTUhEJd/w8EYCGy9Jb/7OUv?=
 =?us-ascii?Q?NVs5/JVy/XFJUts7Af8Vt1tIZBezuuT9BckBp6jiojj4tuTvuetUAX7JBVtK?=
 =?us-ascii?Q?EWxuB3SpYIu8gqL+ep1XySKNVyTQvJ0Q4CAL9jsxQVB+fed8WOxyr3mUjYvr?=
 =?us-ascii?Q?dCvs4aVa+E+uWZtVVEfbEgSYmrKWLf3/7beI8kxD2l1XqVNdxWcc772g1NGX?=
 =?us-ascii?Q?LOJYRvlxtt9mjw610lVeken6Zrp8xr6UyHFYd7oOydrI+BxsEuO3jDfUZl3K?=
 =?us-ascii?Q?YjLnLgqxolavDtQnPgKbs6SK7idqxxEE2+AKdCmFnMFI6g30fHYz7XKZiNKT?=
 =?us-ascii?Q?Xgmll2iyPm2ybhXQqOoTJeCAK4Rm73g0BUtzSfcRRrVuuV98j3yBchnIpDjn?=
 =?us-ascii?Q?rxpNePYyzJcY6rBiftiEHQ4z/uvZ1dbKSYsmhBdQhU2x2L6l2CYqE3CNzV1L?=
 =?us-ascii?Q?8945R26LTEoY8i+nWRssekRRah/PW4gbB/DA68xp3qNHvUDg5b2zaBfREUm8?=
 =?us-ascii?Q?vQNBZmktTM524p/Z1Wb91A9V0jcsOb5AcPhq0mUVJ40LFZkuPmaPuv9wi6Bn?=
 =?us-ascii?Q?c/A1BfJprd+RzhXk/hrkFfJESqsj5UgjQLxpNIZKeHHEmFNqFzu83SjQj2x8?=
 =?us-ascii?Q?WxP8LFEi6waXEEpSWpapKoR3NwLivGJJwc4UmuW0EZDmcAT6n3Iqwy2JkvVt?=
 =?us-ascii?Q?dx/Te4UmYHvhnhSfU0XGtZAlBjYcT3VKSFlvL1/a9bsFQsGZYpd6hrms3Gjk?=
 =?us-ascii?Q?LTszkKnFaZCOVijrdYaCkHwl4IzLf9M8xEesZ6z3p7X7wZNZuk7+8qU2DodJ?=
 =?us-ascii?Q?RZlEMXm73yqan7ty3yFQJV6KlyWo8evy7y+io2r2XXnmrEnGXDoJIURtXn0T?=
 =?us-ascii?Q?EDldJ+WQcTiS2PU+gKC5424mV0uiSBZ9zV71234tp45bgMPTqbTo1xqrePlk?=
 =?us-ascii?Q?Tj5A1tToiAHu0quTLpv5hUy+9MMYWywTTI6ao9KgHbm9rKo8Eqo9r3LThkCV?=
 =?us-ascii?Q?LG1A5N+Q4QjQPBuRSLNL11OywXv50B/v6M0Ez5Wmrqe40Iyxokwx+rZ0xeYW?=
 =?us-ascii?Q?/Y4zzm2Z2qVaEvrxCo1L+UCihwqS9sOFsMfmz/F/o8cOXnpV+RMbfbj8qqiw?=
 =?us-ascii?Q?CSijeWith9PlmxYWDPMzAUPc9ztaUHHrRpVPyRKDEBDXjygAcz/LpXmxUzup?=
 =?us-ascii?Q?wt10X+WuNrUl4hh2wQJS0hNcwmHbWy7oOEa9GHNsHDobk5zz5SulEoxm4SvT?=
 =?us-ascii?Q?nv410ZDxvPRqqIKfN8w+nAPxtHW5WyNat+w6AKEjnZR1YomspiJuM8Zwa2mS?=
 =?us-ascii?Q?f9gd3VyBU/DR7ffxMFJbhtaYFjazawl5y7mlk1+l8w9Xcv017J0c1o0gymgp?=
 =?us-ascii?Q?5Ce96gsrs5yB0p2xWiq9i30EyW+8VwDsUKXbnxoPP9FAwplvje9GmGPjCFC/?=
 =?us-ascii?Q?Zs4WBPEmtppY6w6RMsruBq0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d152a80-ca3d-4318-7d86-08daa07b1447
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2022 11:26:10.9247 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ha29X3dAhKS9NHd5l5yUrWs1jckL0vpht8YOi1B9aj0MKXAy7geSd1/GrgYkb8veMDmLC2W9YJ/v+ZxEgF3hYU0EgFdkgyerbll1TNPtG4+Lb++wV5d/b20uuo5l9Ta/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6797
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v3 2/6] drm/i915/display: Define the DDI port
 indices inside device info
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

Prior to display version 12, platforms had DDI ports A,B,C,D,E,F
represented by enums PORT_A,PORT_B...PORT_F. The DDI register offsets of
the ports was in the same order as the ports. So the port enums
were directly used as index to calculate the register offset of the
ports.
Starting in display version 12, TypeC ports were introduced in the
platforms. These were defined as new enums PORT_TC1,PORT_TC2... The
later generation platforms had DDI register offests of TypeC and
non-TypeC ports interleaved and the existing port enums didn't match the
order of the DDI register offests. So the enums could no more be used as
index to calculate the register offest.
This led to the creation of new platform specific enums for the ports
like PORT_D_XELPD, PORT_E_XELPD to match the index of the ports in those
platforms and additional code to handle the special enums.

So we want to make the port enums not tied to DDI register offset and
use the index from somewhere else to calculate the register offsets.
The index of the DDI ports in the platform is now defined as part of
device info. This patch just adds the indices to the device info. Later
patches in the series use that index for offset calculation.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c          | 46 ++++++++++++++++++++++--
 drivers/gpu/drm/i915/intel_device_info.h |  1 +
 2 files changed, 44 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index cace897e1db1..e7eb7c0ea7fd 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -130,6 +130,42 @@
 		[PIPE_D] = TGL_CURSOR_D_OFFSET, \
 	}
 
+#define GEN9_DDI_INDEX \
+	.display.ddi_index = { \
+		[PORT_A] = 0, \
+		[PORT_B] = 1, \
+		[PORT_C] = 2, \
+		[PORT_D] = 3, \
+		[PORT_E] = 4, \
+		[PORT_F] = 5, \
+	}
+
+#define GEN12_DDI_INDEX \
+	.display.ddi_index = { \
+		[PORT_A] = 0, \
+		[PORT_B] = 1, \
+		[PORT_C] = 2, \
+		[PORT_TC1] = 3, \
+		[PORT_TC2] = 4, \
+		[PORT_TC3] = 5, \
+		[PORT_TC4] = 6, \
+		[PORT_TC5] = 7, \
+		[PORT_TC6] = 8, \
+	}
+
+#define XE_LPD_DDI_INDEX \
+	.display.ddi_index = { \
+		[PORT_A] = 0, \
+		[PORT_B] = 1, \
+		[PORT_C] = 2, \
+		[PORT_TC1] = 3, \
+		[PORT_TC2] = 4, \
+		[PORT_TC3] = 5, \
+		[PORT_TC4] = 6, \
+		[PORT_D_XELPD] = 7, \
+		[PORT_E_XELPD] = 8, \
+	}
+
 #define I9XX_COLORS \
 	.display.color = { .gamma_lut_size = 256 }
 #define I965_COLORS \
@@ -664,7 +700,8 @@ static const struct intel_device_info chv_info = {
 	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
 	.display.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */ \
-	.display.dbuf.slice_mask = BIT(DBUF_S1)
+	.display.dbuf.slice_mask = BIT(DBUF_S1), \
+	GEN9_DDI_INDEX
 
 #define SKL_PLATFORM \
 	GEN9_FEATURES, \
@@ -732,7 +769,8 @@ static const struct intel_device_info skl_gt4_info = {
 	IVB_CURSOR_OFFSETS, \
 	IVB_COLORS, \
 	GEN9_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	GEN9_DDI_INDEX
 
 static const struct intel_device_info bxt_info = {
 	GEN9_LP_FEATURES,
@@ -886,6 +924,7 @@ static const struct intel_device_info jsl_info = {
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
 	}, \
 	TGL_CURSOR_OFFSETS, \
+	GEN12_DDI_INDEX, \
 	.has_global_mocs = 1, \
 	.has_pxp = 1, \
 	.display.has_dsb = 0 /* FIXME: LUT load is broken with DSB */
@@ -983,7 +1022,8 @@ static const struct intel_device_info adl_s_info = {
 		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,			\
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,			\
 	},									\
-	TGL_CURSOR_OFFSETS
+	TGL_CURSOR_OFFSETS,							\
+	XE_LPD_DDI_INDEX
 
 static const struct intel_device_info adl_p_info = {
 	GEN12_FEATURES,
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index bc87d3156b14..a93f54990a01 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -292,6 +292,7 @@ struct intel_device_info {
 		u32 pipe_offsets[I915_MAX_TRANSCODERS];
 		u32 trans_offsets[I915_MAX_TRANSCODERS];
 		u32 cursor_offsets[I915_MAX_PIPES];
+		u32 ddi_index[I915_MAX_PORTS];
 
 		struct {
 			u32 degamma_lut_size;
-- 
2.34.1

