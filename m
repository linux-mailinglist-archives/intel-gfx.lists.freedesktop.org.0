Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC85C8FCA4
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A6E210E89D;
	Thu, 27 Nov 2025 17:52:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D5kzL/mZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E59810E898;
 Thu, 27 Nov 2025 17:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265923; x=1795801923;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=6LfHEv8yx3ttuE0BlGnKkI07bwZPZ/y8smp3Y7stDi4=;
 b=D5kzL/mZB8ZleXsXWIlvZJdrIHwy5WJ5gduDLgIDh/Vvh5zVdPOB/fOR
 1bohn+gPghCv/gqvYqYXjJsTeuHV7SFx2eeApHoLOrkexNvzL2AeKCf7N
 iIvcm9jM1C/2AFgzuRtO5ujdtsEs5mGX9IfxPj95iAi4xPk6k7ax7+XLm
 HUymxGCVj6OfjzqXLoN2JdEdNH+Wv3o8imIK7h836SNbwmFqyPon/osqk
 pCWI/88bPcZ8bcjrlDy8Q64giK36eEpkNJJSytNf5l/Ckrcqt5YLSUuxw
 O+KoLnJ8MpAjNieAdUKCMnGsZuAjYoZKDMnSfN8EX5HfjFQzUfT4jChIn g==;
X-CSE-ConnectionGUID: zKonP4m7RpeZrjcPbJ+efQ==
X-CSE-MsgGUID: OLqwmeHDT9umlbmDysG6NQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77003034"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77003034"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:03 -0800
X-CSE-ConnectionGUID: 4cDm0VTcSkKYvBAwQgDhHA==
X-CSE-MsgGUID: 91MnXGHuQDK+wuniXd8fqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453697"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:03 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:02 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:02 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CacTXNQ+L/1B5cTs4I7OlvGd2mQeU4P/DJ5qMCkT4NDJ6mEDIxJcPMAuYv+Pc5YGyBMXaTuOoxJ6WMQsfZJUGgjJCWEgxi08diyi+Zpa7PHaT6FFAtF1xNKyJQiS9NogBKe4zS8XjygolcM4IqqJqxb72D7EeJsu7jr6HcB37FieQweNMXtNd59llkL5kAe74swQ2I7JcuyEhbPRW8pu/oCTefTosrSgXuforjnCwH1eHzNdoHMqf8INYk4ecE5WFthYnM6Cm/d6tH9FE8H5KFnzmY/pe2exb5Bg/oPJGykqhQf7YpM+92XqMfLQwMlaQ0vwnksgubHZjMJPsM4vDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JE1XFOcV+nyGKwMjeTzArmADOGQQmPgAKqMbQxPNO7g=;
 b=sLlLfPiIakk1AatTGL3n2gFwCxH8DyT0PFq9it35iLBoEzlewaCA7tUPCtbiQdDSObKHSIvtp0zILAuMF/ZVoW5FQWJ6axG+d5jhjKGsxNUu9AM4qg+CP5PPOZ7UavnWzMJcdVER9ufGm4m0F02Y1zUBW8Nhi1//3aRgkei2OxHEsmNMaUiFkXjxMsXBfPA1fANpCQR7/MofKPEJkouYNjYmY+X0BqTpUiFB7pdaSEJ7kzCymqWij4LjWgtwdSgeUpjdzL/STKuP0Yj9SI3uDvoN1WSnUmt4MV3cQ01A6g93GDz4BYlixxIKC82A49Sib7RQ+mCevKwv9PYQoqN0Dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8550.namprd11.prod.outlook.com (2603:10b6:510:30c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Thu, 27 Nov
 2025 17:51:59 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:59 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 33/50] drm/i915/dp: Unify computing compressed BPP for DP-SST
 and eDP
Date: Thu, 27 Nov 2025 19:50:06 +0200
Message-ID: <20251127175023.1522538-34-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB8550:EE_
X-MS-Office365-Filtering-Correlation-Id: c55692c5-30df-4dbb-969a-08de2ddd9985
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?CMWYBKhv4m0eddDVHygtDTBMJ/kM9WAqZFh9shoX3KFqJ4b3jvou0weHS26k?=
 =?us-ascii?Q?DDqiT7GLX9VCF88TkyZqAhy+saHyl0IbhjEyrow7SB9HQki1BVDQVdihmnLo?=
 =?us-ascii?Q?9U9+GhDqprHDzVSF8AcW0urw4MEo8Ebwj9+rJj2xzOWpqQI/H8hRnSgbkUbB?=
 =?us-ascii?Q?C5t6LdC+Q/fYy3anZ4DpPyZksmAvg6OZvD41Ucj35fNYcDPaGWErXeaksgI6?=
 =?us-ascii?Q?x0VekGNmoyj4Qyg1DNRN4RP89StpZ3BDJM43DWdcie+P4NwUQx7Kdf9UboFe?=
 =?us-ascii?Q?0PwkzdUY59b9V3ANF1c3fMrsT37XimJ99egNdLq707muKnKAdx4bGwpRDP2J?=
 =?us-ascii?Q?lyU/vOVtgkiSGDT2LWr8I3ZS6tI6CJ3RJM0P6rU20f89R1KO3bAjnmohJERL?=
 =?us-ascii?Q?EOSOAvAu+kKIob3MJFBKvzz51uHGqjmyK/1Qfej2C7OTkwXbKaNQIPv33bVR?=
 =?us-ascii?Q?MrBQ8gCBCnfgLSQ3A8uAisZ7AZdS0YOO2L/LHVOMgSW9nR79jUSNRZcXTnhS?=
 =?us-ascii?Q?uFZlSdrfYcSsyk2RBo2YI3MoAkj7vUm1HeoITsxCKW+CS0jPHt0Ogjj5wgtf?=
 =?us-ascii?Q?7WPqzRTcYxiom4Bhmjt9I9bvhBKGb+yTRGxUKguN3QNyJPXs8wQ5Wdqx4aBf?=
 =?us-ascii?Q?CxAUPz8vQMe8oyghxBTeSkNi6y5FQfvhYMVSdMQhMC9STgEWPYdpNrpDgvsq?=
 =?us-ascii?Q?LQvChfgp7etfg8ckwfpsleyqIfbILooB7I5e1MbNvSOs3/JEbaGBF3HDZo6p?=
 =?us-ascii?Q?0X5RsNoj3DqMciIml5SmXo2U5AcXNbHceml45AEu/imdhStP6IvUUc7GONvT?=
 =?us-ascii?Q?u09TczMmoOXC5BCVBat6DVhS1vTEI8JUJnS0mOrI2hdxElQV6RIbOxdlgEBr?=
 =?us-ascii?Q?XyIX0j7tmCYkHx4U89VSRwZslo1iX029o6sjPARgcL9yuVK591SmFOnAvqDP?=
 =?us-ascii?Q?JfXQwOqXArtY3AJZIfOxT3QNQ3PTTA/68lHKQ0YMUPrlsxNOj0kK4xt3J8BM?=
 =?us-ascii?Q?d1+1a9EQEXm7dLwITBEvqw8kGib5MG1q1cPaD2ag7HCEWDk0ipmRVEYHvfpc?=
 =?us-ascii?Q?ylbiYU3cDw/RlLzZ0/lj5yIPCUi2UnkfJt4c2wxFVknOiLzMLYTX4kxkUjHC?=
 =?us-ascii?Q?fig8Bojfwgdij3FYKUXsZ1n+fr6dKUZbeQXMMmwa7tsPZdg4S8KmCusTRPcv?=
 =?us-ascii?Q?0Oov0WHeAE45zzCE6NMQfO1Pbt2xp+4PSPR3RXIjt20Kap8vf5DUimJSP6Ah?=
 =?us-ascii?Q?mA7WW8slV+a3pXA0IkZGeMaKS5oMtrZPkQQWUo1Y2Qdcdnqv9vsaLSMaJDSU?=
 =?us-ascii?Q?s0wVZw8+0DjGSu7H+Iv21Z3qWJ5ykkGD2D7bDL6SLNNekK9NX2FbNbWsLADu?=
 =?us-ascii?Q?08EP9Bk4+25Vts1fts3ODHth5U9OIBypzQAiEzJ4E2v6lo5tuRT5ZBMckMI2?=
 =?us-ascii?Q?9kLE18RAqyjqnlm+kMZw+DKnZj6jsCcN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?i2FZ1NSStDMoPLyVTYbBAroamhzY3ihA8QNf9/lgMWdfTC5T77XT69bj9fmH?=
 =?us-ascii?Q?rQjbGcbQfzCD/2t8OpUVDMRaWTYOfWqYgTLba3nlWOHqUBX5y6kCMG0JXplH?=
 =?us-ascii?Q?2MdTevuSyZhzU/HhOIAh6QLhCcUVglI0ch62uHN1P7AXjcn6lBgtCnYRtY9l?=
 =?us-ascii?Q?EP4xpNcTwAVV2sDgH3MGw9GpRlqyhkuSsmg3nfE98p+flfsN/VqnjqehM3SC?=
 =?us-ascii?Q?yGuoDk2QZCBAWIlex2+Ri+Xu+q35uGIzm3RLeOefjQK+aB1+D5pZa/AbVIL6?=
 =?us-ascii?Q?TtGCM8tRB8nLiPpdcRCd5ESktx6bvB76n+Z+sSFWyQTNTkvZlNuVgD9gXOYO?=
 =?us-ascii?Q?bxpF4LqDBgIhApJ9GogfOsgo/13S3nXTibIV52dvjdwuIuwRJzq3mOuKgrhT?=
 =?us-ascii?Q?fJHNo/g3+ymXOPXgTEkIVnQQtaxRZuMqNF0KCAE846W+x7/7w0yuW/X0S5Nt?=
 =?us-ascii?Q?DVaVXR686JwLUrO7GKbjrlJFLkHLmUk6323u7zOrqf0P9ULLs4GoFcm8Tdw2?=
 =?us-ascii?Q?oDYADSpj77eFEndmjo4rFIyDofjqQ77F9yQDu7btOv/GJ2kYDkjBYrglMliC?=
 =?us-ascii?Q?AevFLtsgEaTSXJTn6UwU3/HzEt0YMPRNsl11ZxswTQoDuz5fNPfAqvLX90Ck?=
 =?us-ascii?Q?rdQVoA1E/XV0cc33zdRMaq8KB+e9+ANqH5nT9CWtIMHjSe+Mqi2kBCFJVLOK?=
 =?us-ascii?Q?6VNF6pRHMCsEZcHE1AoLdjmyPEYD+GD8sGtEhcl6xyq7y35+By8dJLn+pIqX?=
 =?us-ascii?Q?ColJc1eU6GVT3xg5ejINWYYWjxw7HFIXX0a4pV1+KSYOH9C4fVcBW9Aav9qi?=
 =?us-ascii?Q?2GP4GLBrmgA76Z17FBQ+4zyAMba/10wAoDtrN1Mooek5PmBBLHUYpeVBT4l4?=
 =?us-ascii?Q?aFHmUH0mpUZ8Yymoe+Y+J9R7Mcy+k5cs4Rb1c9YTytJ0JdH6Vh/C+hK6LTop?=
 =?us-ascii?Q?jPwYq5/puJ616QywvQFeCYPZfabRfEMGbIh5lY/GCcirhFiEwtDGD8kzJlEe?=
 =?us-ascii?Q?ySvkDT2F+kdmdjkwpqGqZS/dh9vGLyXicB7M+IPflaDwuyMZGAegOW6nH9G3?=
 =?us-ascii?Q?AfkTAeai/sPfPY+R0GhD/DullUDW29+Cs5VUAcqHc9jku9h8d3jolxMmT5vf?=
 =?us-ascii?Q?RxE4/oq0YiYI5MxMr4TUAWoO7pGL2E3scjO5GMQ0qFTOzMFO1lkGawnvwsKX?=
 =?us-ascii?Q?sr/fa9AdbexCzemXPgQNj6GUs5nPuayyh746dAWCijAdTI7o0hKlDbfxHbhh?=
 =?us-ascii?Q?vR5M2uCehs/8lAKcJPAADIyo/3dCt6Y7xtmz0ZpGkyBd+9cMzSM6dl1go66Z?=
 =?us-ascii?Q?uf4Denu5CWmvFr3jV284+nZ+qLHB+kJl0MFUV5u1v4IiQsRHEOLqsJCHBXhw?=
 =?us-ascii?Q?/1CjelaBOOoat1uYAzbmw17oauDr3BmxjG+I8aIPKhvckozhebqkFLlg2DQp?=
 =?us-ascii?Q?W3Xi/Pmae9N2qbzit+yBiD+Ahhw5mt367SOv9CawDPu+CxJOeQEjVGC5MtHV?=
 =?us-ascii?Q?s4tPe2EhPmuCZvLzwi856vnC5//wKqm13gvBRVfXWdADJ2i0+YGpmdmlN35+?=
 =?us-ascii?Q?BayloLVkq0EMCRgxtNbdHTrqgZ7wmSoZzTzeyO9/oBQbh0JUmwRiqqk79vyD?=
 =?us-ascii?Q?BLf+/bKkdpwC3OO1JOkoj3PbM6PuZb98BgTPp8TOibG6?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c55692c5-30df-4dbb-969a-08de2ddd9985
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:32.1139 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bGoGDy3/dsteId+yggSmYiRbpCZhYB4PB3WIieDBLpL5M5QvYRqC/2ANckWXWVCFkY5eCHE47g3qaci/6IRSjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8550
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

Move computing the eDP compressed BPP value to the function computing
this for DP, allowing further simplifications later.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a921092e760b5..81240529337bc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2226,6 +2226,14 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 
 	max_bpp_x16 = align_max_compressed_bpp_x16(connector, pipe_config->output_format,
 						   pipe_bpp, max_bpp_x16);
+	if (intel_dp_is_edp(intel_dp)) {
+		pipe_config->port_clock = limits->max_rate;
+		pipe_config->lane_count = limits->max_lane_count;
+
+		pipe_config->dsc.compressed_bpp_x16 = max_bpp_x16;
+
+		return 0;
+	}
 
 	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
 		if (!intel_dp_dsc_valid_compressed_bpp(intel_dp, bpp_x16))
@@ -2318,9 +2326,8 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 					  struct drm_connector_state *conn_state,
 					  const struct link_config_limits *limits)
 {
-	struct intel_connector *connector =
-		to_intel_connector(conn_state->connector);
 	int pipe_bpp, forced_bpp;
+	int ret;
 
 	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
 	if (forced_bpp)
@@ -2328,12 +2335,10 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	else
 		pipe_bpp = limits->pipe.max_bpp;
 
-	pipe_config->port_clock = limits->max_rate;
-	pipe_config->lane_count = limits->max_lane_count;
-
-	pipe_config->dsc.compressed_bpp_x16 =
-		align_max_compressed_bpp_x16(connector, pipe_config->output_format,
-					     pipe_bpp, limits->link.max_bpp_x16);
+	ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
+					 limits, pipe_bpp);
+	if (ret)
+		return -EINVAL;
 
 	pipe_config->pipe_bpp = pipe_bpp;
 
-- 
2.49.1

