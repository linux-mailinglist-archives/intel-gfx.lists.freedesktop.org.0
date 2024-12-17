Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DDC9F566B
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 19:38:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14064890BB;
	Tue, 17 Dec 2024 18:38:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fYCqBtSG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5686C10E321
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2024 18:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734460711; x=1765996711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=uDwoKR/ZJqUoRxjBEQj6NpDetLGbvlWFjT0i5URrfbw=;
 b=fYCqBtSG3hLvxFLKiA/QMXEP4IwNTATrzlefrlwnTavnPazSeLGVFRaJ
 6PTQccMEFvzdBx3F4+fhyHwixCkBZyCj5SuXbPDm+zWt6wNXKjbqN7zQm
 lxMK7IE1k9JbQ4vX/BKSazhv7c6tIru+Vw24Yb0Ly1K29Q5JNh7Aul8DQ
 Gsc4+hXGMQLDuCzRjYebJ1024f9TVaOfK+szgO3cpL8ZuwRWaFhJStw8p
 wBvxm+AFX+V3DDlX3doeNrdfyNLcVuBAGfCeGvBaiPnY4cTieDPO4MXFg
 vuQTFGZGfu88FUE1IwCJu2NLVHJNPxCiN5JkXMo29U69XW9foAOCv5+Zs A==;
X-CSE-ConnectionGUID: rDah+H9nQU2/2a8ZSEAYDQ==
X-CSE-MsgGUID: w2iZa7/ZTZiaTDKgl9hjMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11289"; a="35050351"
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="35050351"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 10:38:31 -0800
X-CSE-ConnectionGUID: WOY5ei/KTRuq7tgQNXSvLQ==
X-CSE-MsgGUID: o3XrSnlFRNS4sXYRcXrEJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="97652189"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Dec 2024 10:38:30 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 17 Dec 2024 10:38:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 17 Dec 2024 10:38:29 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 17 Dec 2024 10:38:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=htF02XA+mIDXBhnfIT+yMwrsfLYuZRtrmtTD9ff6cpBYEFcO6cOwDyv0BCH0vzNJG5POsBV6fBE8CuwFKLSLbN/77yIPwQ6wA4c2S1y6uNBHrh9jlDXpBzO5dz2WgI+56GqJjj3FGKHzFAVTSiYSE5bY4XYr/xXme1UbbzDT/Y1ijc++vxK64+ja683uMuJqdw01WE0CBG98K7F2Dk3+62FRQXNfhnrPmcC2QyaBgye0KMDwmKWnP80x6H+DbalMAWQ9eRUhcocBE/jbhBcp2uFpaTiA6ylUyPsUeqwjTL8Ba9Alhkq2SSxWbdwZJYmm5t+UtuuwfSzgVDa/XhrMpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mMvsvQS9jQiwsClVPv2CigIsJexUM/cNv4/ti0Q72gw=;
 b=cfCFDtHgNszZMT1e3Go26fY70G7h0+5gC+9317dVKdogvNfQ3o7e5Kgk7QDYU3zK9vWsu4LNtC8Zm6k9vYLvMM67YrmCY35SVig0VboP7i76ChhO4WcZtdTYzp2myNbd3hcmCD07jtMNmeoQ1W1qHX4Xfk1bm0gKYyP262oE6jpVijnE16uTwcVT8pqbwZUSowpKf6s4kp+yXbrzBCK8KwsgSevOaEE8CjFUJhOEzEjFeIy+fGs7cepVjK7JtJVzZsBSs2iY7zP61A3MUMf3chwcNdT6LcfiXjdReN9tUm8jBBemOPAtQwCvg2SFbD8ySkSilAYl/Xf6K1ln4wePpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by PH7PR11MB5818.namprd11.prod.outlook.com (2603:10b6:510:132::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Tue, 17 Dec
 2024 18:38:26 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8251.015; Tue, 17 Dec 2024
 18:38:26 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Vinay Belgaumkar
 <vinay.belgaumkar@intel.com>
Subject: [PATCH] drm/i915/guc/slpc: Print more SLPC debug status information
Date: Tue, 17 Dec 2024 13:38:23 -0500
Message-ID: <20241217183823.1648800-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241216204404.1621540-3-rodrigo.vivi@intel.com>
References: <20241216204404.1621540-3-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0208.namprd04.prod.outlook.com
 (2603:10b6:303:86::33) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|PH7PR11MB5818:EE_
X-MS-Office365-Filtering-Correlation-Id: 4526d2c9-dbfe-47fc-976b-08dd1ec9fe65
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?yd4ToSf8T4VESHfypRsLISeMdNFaA26/B/VcP0ZfyyMSaetLQmqUVtRsy/7e?=
 =?us-ascii?Q?U0dTFBtRnyzFo+4ooqwbr409bKCwxrphTPZHRJ8XRad0Bx5bmZOx4HnzBNf6?=
 =?us-ascii?Q?hNHurrtkFET8UfdRT7bJIxe8Ut5vggQkgnHiv2PvuaRhlFu0cViLMoLtvMfR?=
 =?us-ascii?Q?SsCymPBy7RE05QIXEWnOhqMSju2/PfuOVdB76/nCjjqmKELi0BAMyLOpbz58?=
 =?us-ascii?Q?xr4q0Mvoalmz2GSXA6TYB9zTRN7UI9L4oTpmoCMJEA0N+x1OIR0OAxHWxNXA?=
 =?us-ascii?Q?zUxOR8rsPELQy+Ya/8fmV3m+M3KcsZ7QdYFhfLOWzLg/XUL1z07h29deqSKV?=
 =?us-ascii?Q?7zVERgmF36/IcwpPJRzAALMeLE+T6nSwDv0GqaxVXy2i5vDrT+vOnnW9ss2s?=
 =?us-ascii?Q?7Z6rxuBwlBhuGPy2LkrBWVG2wCTla2OfBwDqWQtqXL/mX1zAwqwwV2Zb28pT?=
 =?us-ascii?Q?FuanddLGMh2YYyij5JW16VvvXityx9wnkZIMo+MLh7+edoNZzj/sDD5/ekuy?=
 =?us-ascii?Q?BLr7z9Ce2Tu5Nlt8jxcw0iBXvIpuqNDx1qfaATemPOqtwvx1OLlfcJWjsFTY?=
 =?us-ascii?Q?oVGQXqEvsJDGbiYYHPPfQImW8FA921HRt1/dir7eT9kfBgiV4LKVXeRBTiue?=
 =?us-ascii?Q?1vNVJEAGqC+nMb5KxK0UHrIBMiYeSgHqZS+WXYMdVwlk4psA+6pCHmcfPs94?=
 =?us-ascii?Q?AjWxRjrhRAcVvaRn1maLfQ3a0neFS5Uj1BFBW/G6GF1yW86f39pXHgm/r0AF?=
 =?us-ascii?Q?tTwZ6qkqzvOl9PWVa92gs9/rehgPCVtfPM85HFQ+CWCI1hZ9A0d65Ty1xI4h?=
 =?us-ascii?Q?nVnTye3JNexm57OhHsMLWabmsJ3VyAUXhnV4xZv/GTa04AgjldxrHQYGLSe8?=
 =?us-ascii?Q?er+9jZuY/lMqtVD1cEOmpToXpqtUGD3F0TP9UQynzAnFX3CsKKI0+oWkaFao?=
 =?us-ascii?Q?/7YdKBG3aFAJaE74jYhVeiYeJJDLfSzAsraBk+X8VxJqoeh+0xgtosrRaHBW?=
 =?us-ascii?Q?0BjQf9DRHkkgAHAZa7PKqpeyXV8barIFc2PbEZBt26X5Qd0ndPwMJj2xrspq?=
 =?us-ascii?Q?Bo74XL7ycADX/ecVIc+/aEI9JBRRBlJyaQ8yOk2oBG7ISCeHgI5MP0VVOaVk?=
 =?us-ascii?Q?KQkK7JSAPSpb53dEhFmTqm/gx2L9oFQR+rvGB9TiIHN2xutWaetYrpwt1AhJ?=
 =?us-ascii?Q?hNr22kEy036mpEbDkoOa7XELL1TtFLs1lkQ7OtLz224EAsPkTrS9DjNV80Lx?=
 =?us-ascii?Q?vaCeKryE/aV3CdM8gFS1p8G8pifeHQIBBklQSU5oKjqD+dQoSthPMZtNXjpI?=
 =?us-ascii?Q?wViwOCeL9yXv6AC6pU2+ox4+hteeiDJSD4BLkThfMfJlO8C4ZNUIiwa8u9BR?=
 =?us-ascii?Q?1BT3NgCHe8Y0wTq74yYZNhAshRcV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EPU6eUzNSDtWtfykP3bizWOHlWBX1B703y6IhcJ0zflm9i/aUCPVNu13oCL/?=
 =?us-ascii?Q?PtdHNCijNmhtJK9ix8cPoNxzxf3iDd1wUhEM/ee1tMCqklEto6tFDxe/5qW+?=
 =?us-ascii?Q?n5WCAGkw90npnJd/chNoOmaoaIiHU5IUU6UgZPwF9kpNOTnDzIg601TDJIvp?=
 =?us-ascii?Q?ZHviro8JAL/Fc3WFVcpwDUaAb0sk1uEKsMHpjSGX6AgtGRoMWLhxZGA4IOmX?=
 =?us-ascii?Q?B7TSDh6auJyHmQsTCKcw0felV/HZnXOd1V+zLcIgApegNAzCpuDgMuhlP+NB?=
 =?us-ascii?Q?sveWDlEPOAi9gOoMi/b46BigMGTyroGSAE6y5rjOjdf2LhngXEkO7Qnb76hW?=
 =?us-ascii?Q?FoxlUxgcMoOOjFZDjn3ZtiHpN9yE+JwMir+hFjKmSVa+iDZ3cXDgb06qF624?=
 =?us-ascii?Q?0uuemiMZwkRd0CfvrI4Vzf/IyffoTVTEzZFjFnnI1UzUXus/QbvF4+QktUA/?=
 =?us-ascii?Q?hHGcIPh0YTIDH0Dx1FSsNLAquMHTSqJunJKdhKQpwQspGNBkgzWhZYm2VhuB?=
 =?us-ascii?Q?FIaqrdMt9sUc/XtISxXCJgt/DYIQpiyZZZVHDQGnefxBfpShedeTLGuub7qU?=
 =?us-ascii?Q?02SGlEBS+ZCCl63b3HCe6SPrwAm+HSmGgXtD22QkNeaKP9oU74KT0hIy1AXp?=
 =?us-ascii?Q?CqESNzAJMSOcPD/H2tT12KokHl9uNrJB/ssk2iE9PTjvgPgqDZSzG1hv4LLf?=
 =?us-ascii?Q?kDSRJsUUzuc64YufdV+128vCMW58EWdoNwr/yPejQdkEpTcgl01wg23S02wr?=
 =?us-ascii?Q?SyucvvQR35CvatFByHu+7fiAOviAgzkHXeQBGyPcTzvQe1o/JSIhRPyDlH2u?=
 =?us-ascii?Q?ziLL8FJiD9H0SWOXNYF1MmLzVCkficZuClWz2oSOZQZPTAJaUBYz2/5Ca3M4?=
 =?us-ascii?Q?JODDqjE2hLOkuQAFTvP3KFi7mACaJMZywWDchpUidhl5AxvlxJtXwlIItLP+?=
 =?us-ascii?Q?L/Ca4UH2GTa7fqYFc9UlQ0YDpcoATbEAjEoq7iqFkR1r8srGbuRQKPbh6Kot?=
 =?us-ascii?Q?0iQbKEHCgAYukbBEVZiGqayMVR1h9hRJbmf7M3yP1vxN30aFKtevRP7nHcvc?=
 =?us-ascii?Q?iefLIYF8h76oZ34zsAiCoLsYaFkSo21TLfrhAfOG4UzJjNpko2tIce9p6YuZ?=
 =?us-ascii?Q?YFTEo86jROBlU0Al3D+gsJfZlYkr2GR1HTSLtRJ4w1MNbsRbRezpE1BL84hZ?=
 =?us-ascii?Q?OMGlZwP6XJoXxLVDYAqfpBAE/6lQ1/1a7SnWjVIpef/UNhctlNipKscR5fw4?=
 =?us-ascii?Q?qKKLxVAaXz412p0X+H7DHgY9DDkrVgXqPVu5CW6dePd1esKbWvpH2j78sWRt?=
 =?us-ascii?Q?z99NNFq7jaFcSsW/5ezLGWAU9l5GhH0fLDSc1IW4iGTFpaebo+V89slOBAXi?=
 =?us-ascii?Q?Fc329ZSXWmm4QRFtsFThIzZQN12D+SFGVsN8basEi9k/vMTdtdR87jv26emv?=
 =?us-ascii?Q?KiOfiP3j7F9Ey+dN7aFP++UdVDdbxaVb+q9xU5MAsBsFTmlxn9vyK2uQH3/3?=
 =?us-ascii?Q?GWcJUoYKtbvxhHkLygow3doL+XxqNRGwuWfwX1Y9REvQP56vPOLx1fmaCqYU?=
 =?us-ascii?Q?wmzS2S1rJ5LEUws+2vbHzuLdCzaZiW69UTBUNZA0S1W9Ue93XKI+CtobC50x?=
 =?us-ascii?Q?eQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4526d2c9-dbfe-47fc-976b-08dd1ec9fe65
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Dec 2024 18:38:26.4449 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IEXHVWLhHTiyWauFCTZEtrHWT/TFbHkcvSgMPvmyI++QGib7rEyBeFFnuELjS2ERqbJAo+ZGf1uDnDKirqSVyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5818
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

Let's peak on the Balancer and DCC status, now that we
are using the default strategies.

v2: fix identation

Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 722da8a7f852..7a9a79fb46fb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -774,6 +774,23 @@ int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p
 			drm_printf(p, "\tSLPC state: %s\n", slpc_get_state_string(slpc));
 			drm_printf(p, "\tGTPERF task active: %s\n",
 				   str_yes_no(slpc_tasks->status & SLPC_GTPERF_TASK_ENABLED));
+			drm_printf(p, "\tDCC enabled: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_DCC_TASK_ENABLED));
+			drm_printf(p, "\tDCC in: %s\n",
+				   str_yes_no(slpc_tasks->status & SLPC_IN_DCC));
+			drm_printf(p, "\tBalancer enabled: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_BALANCER_ENABLED));
+			drm_printf(p, "\tIBC enabled: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_IBC_TASK_ENABLED));
+			drm_printf(p, "\tBalancer IA LMT enabled: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_BALANCER_IA_LMT_ENABLED));
+			drm_printf(p, "\tBalancer IA LMT active: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_BALANCER_IA_LMT_ACTIVE));
 			drm_printf(p, "\tMax freq: %u MHz\n",
 				   slpc_decode_max_freq(slpc));
 			drm_printf(p, "\tMin freq: %u MHz\n",
-- 
2.47.1

