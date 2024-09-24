Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3C7984C49
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:43:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DDDE10E175;
	Tue, 24 Sep 2024 20:43:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AXRQEyZd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60EA610E746;
 Tue, 24 Sep 2024 20:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210589; x=1758746589;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=5/VXjSRm2vSfNiAK4Lp4aAqtby5ziRNh83f2Rj4/tk8=;
 b=AXRQEyZdwA6qvfmdmKNNoeGsEqLdp7ozRBBfADFY2TsUEDmG875wepxE
 ua2p3TL3ftn26Sh4AH7Wg+q0fjT+Jpqe5TYBRTAPDbxAS8CbYgHpKI2Yn
 gKYiqr3JYQ8GLxbGDRGUPzIPxG4qus2zxMAIB8E7HQZyhqzktBu7evAcF
 t9zOnBnj2nqbJGovYG4jFtPdlOk61TPnMc0ZWGzRiO0Tz12uTfyedstzp
 dfwfrIU/nA1TwmcPW5zSAdExmxrBA568ezoRyAcSvyfjOBkMn9q1hMstt
 OpC8qJXDwwmPJPiTZcosM2Za6Zi3pKPtiQppV1C/zW2uJ0UERBs3RSIcd w==;
X-CSE-ConnectionGUID: ytA4cJ+cSCyHsq+Tprd3pA==
X-CSE-MsgGUID: /i2kSO1iTBaYDXChO5UqgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26326099"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="26326099"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:08 -0700
X-CSE-ConnectionGUID: eZiQtPlZSJG1akYk7F8itg==
X-CSE-MsgGUID: XzXEfW70RPST8xu9u/1N/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="109001490"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:08 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:07 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dv4GpOYjYnkeCVuP5ZOPMRw9MSyIEoGKjio8+Geu8trpvaIjl7IhCF5v74qYPCncL91K/WFVj9gf8xFdVy0o5ceNZOZT55gPgaJW+GEGy3DH0DXpNu6f5zAGm2jEUR6oKbY3sQb9ArbWnM5Z1heLvp1d4lY+s7UIuYTyk/p1/cqZVB3FsFQWZ01rBcrHrIruiJfgRK1v4+M0yYTo9Y73npPTKiRY7wtcMtbBxTeL0NuaF3uyf5TgD+gqg2ACwvKIc0wDi0QO7QaY5phESO87Dm8YYJ7GEnEy862iDC0f3CMplI4IHpaSGFwMomKWNT0UKs3LZOALhiXWsIuh5n8egg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ye6BKmDX6r5CRlRbJFIGfmuCwuryxVqFEig0EO5WEHM=;
 b=wZrZLReTiYsrtNmxOW+jydPY+Qq/cAc6uEYiLQPBftloHYirzoJiJECQKHAFqabbXzAUCu0qbmkNTgPxh6axWRU+iWNCF/eLVu8JMdi5oaCzgGOSrY2CeViaRTZ/lSVdavKcpmOAdysZV6ui/s0IjFFoweW7f5uOKA5RzyT8CjsArqhRHIbxRy/tlcfwESv0LfGrf5jaVHRYz9QAS9gRJy+6H97BSgo7ZF7TQlpgEV3cuaUv7RrVQwbuD0UrR5ekGT0XYlcuvusqwDxFOn2KtNJaC1H4rcY8VVhczvRlgXFhUxxKmsSLJhirvzPzhlUjiuJSEsH6yjbahBPE3g+/jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 20:43:05 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:05 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 10/31] drm/xe/display: Spin-off xe_display runtime/d3cold
 sequences
Date: Tue, 24 Sep 2024 16:35:31 -0400
Message-ID: <20240924204222.246862-11-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR02CA0005.namprd02.prod.outlook.com
 (2603:10b6:303:16d::14) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: 1eb6a0b9-09f3-496f-2795-08dcdcd97d80
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YqmqUxDrYuiY9UDVkNzjGbgCHi7Fcfa34LbxZ/9oC+TaI3vyE2YyaNmimgyY?=
 =?us-ascii?Q?Hwhxe4CbWl7q27aD+KeKUcsd2RSqZMksj3jc1/byzRClD0qv7T72lqYaOFKR?=
 =?us-ascii?Q?m9Tmb48HofnsMdtGnU/bZ8BCULiZ1roQRxn5+UpTlJ3QZVbFsnRPi7j+t1cB?=
 =?us-ascii?Q?dJXFFDnAFSRhKs5koITY7BiN411BLDFrim5pXTtohoCjmZoN6gKZmpSvUcig?=
 =?us-ascii?Q?YyMkNESLLxFYqu/H8jijnSNwOLbH4TadMB74emdGz5j7tXxAVkQgh7X/L2sO?=
 =?us-ascii?Q?tajHF8j87e+AmZmAgR2aKLoLcDJjLY4JZkoR16jwP5oluU/kN2XbfIlBDgOS?=
 =?us-ascii?Q?H9eTXjFH5vDSFinygXNa5bqXAUl/RWYaaNg8J9EFw2Kr/CoqW6MxssXIUcNt?=
 =?us-ascii?Q?eQFWsP406rrx1b+/qAkbe402NKTvPeTpazMsXtZgpPtIGIgZWhWAAhj8ATpI?=
 =?us-ascii?Q?sWZ20sqK2A4M+LV5AlL7a6Izy1slQrzdTIV7I0kpkRpalKiI2m2T3Bcb7GKE?=
 =?us-ascii?Q?g1JvJ2RL2r4EHrlTncPPHf6DtnswuCBplsLwBGUFPb1tT1TDGpiq6AhDG5YR?=
 =?us-ascii?Q?tqod711LYZrUeDQLjTJ7wpJpLh5uZdVs0OR1EhaJqY2yRJLbo7IzrXi5onmy?=
 =?us-ascii?Q?N+pwRjL659x5BR7TkIBN5ndxaRAWGnia35LupEiySY3Pe2pNkTIrQe41yOOp?=
 =?us-ascii?Q?0QaMZI4JgskqgNr4CTdY/6LtcgkVltWpfCqoeXKnI7NGH5VPAE60e1ruOwJq?=
 =?us-ascii?Q?5o7TxExewrFV4rtaJZ6Yd2eO/a3Hs6vHlRjr2/kbrtQO/4RRvyKrOBT38ol3?=
 =?us-ascii?Q?ChW5Dk0UV6xWkLKL6duY8qEquq2nHgZ2bI52MWVj11srcqtNSDitGmKzclSD?=
 =?us-ascii?Q?gWlI5l/3b08nSfVwyQyTnfqHW/1zShOx1aZC9oEXse0VKMJFKx6V1426RJaT?=
 =?us-ascii?Q?yTF3aOyUsEgQeaMfi09YyvcpIcG0lf5sSZlVM8B02LijKOwwceNjMoIj7dqk?=
 =?us-ascii?Q?tsRcGm664rThdAgNYbvbMI34I8Z2sT7vFkmEHq/Mk8kDSykmavIZsADbz0jX?=
 =?us-ascii?Q?E4deJuvOd2YiUJGXPIDDcJ+r21mc0sr3t2+GQi+y2FIm+osGjyw/Lyi8wWA0?=
 =?us-ascii?Q?NMWi0srTBGTUIRyuc87hXn7m06NgY7Kn1FDaD4Q8gRT6711H2+eq7xXSp1eH?=
 =?us-ascii?Q?G6pt4qm7s2iM8p3z9+WQJYBucTUHtOJn3/L+y6t0kNaZflIfkdEuN4zivnmf?=
 =?us-ascii?Q?KKnJK+s8MJWNOZWU8s/7GFYyfw3Yl5b9MmU6M0uMzw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AXICXKtgfaTKROPgx/0z9oQjfSSkgOKYlHy0mhtojD78WLHnyUJ5qeb/Ufih?=
 =?us-ascii?Q?vQr8Ii67erlcUAu+Zj+WYVQTPcETAJGdCK6kLrFY5ArCTn+ZBe+j0G3DJ9b6?=
 =?us-ascii?Q?6XZHaecppM5G7Ds/GrJW+qTK8ZD+9mrtlwbpIOrmB+TnUpopYpSUaniUZCOX?=
 =?us-ascii?Q?PvxpkSh9yRyR/hV0Bfg+/qS+kc/EDCS/TVyyTe4QgTmz/T2XB4idN0ioqLrk?=
 =?us-ascii?Q?TojqBpFMNOuXLH05yC9xIdPIW6JlfuLgT2n25dSgS0TMQBYQ/4yqmXRAxxaX?=
 =?us-ascii?Q?WOn0VPr3+8Eu2KHloJxIHv2zwNpDTPdp27NrHBTAd1XuyGc3xFtrk8LOA+m6?=
 =?us-ascii?Q?iGhQG3rd72cNLSdS8YLmqTEHYQ+UHFKskQsbCP1haCmJeL1yGEgb0Z1MepUP?=
 =?us-ascii?Q?JyjC3WgLhO5CPtJPC5FXBFmJLoNllp7tUmGGjjmmFny0WZYD+Lqzp4TK/3/6?=
 =?us-ascii?Q?tAutXqjcWvcTzw1W9/CGH1nePjdoNYowCD493DBOwoYbyU1kyAiRMlQVuRyt?=
 =?us-ascii?Q?UQmBNkIn4ySgKa10EflGgdTxDCdUi3pctpV7zsNYT1dGIj47gTTF/ZDnEamf?=
 =?us-ascii?Q?dhb8ToAdjMB4DhpJQMKsJ0kJFnk3HFQt3PyRPpwVlZWPmGrfJdw4O/pfc32L?=
 =?us-ascii?Q?OWZpHLVqpOyCYeRhagw8t/5eYfNKZNlqDSqGIL1BiXukvz8gfSQkyUDVsc/x?=
 =?us-ascii?Q?toNGj6798HQLm86IBwrZleNMy+EOO28FISEeDEInmbVxm0Lx9uPFeF9nJ+AB?=
 =?us-ascii?Q?hRl+hibAiI35sjAGJBDbOcNrtgMaGcDP7eRGH51SGE86xQYL+7G5KCaRW8mC?=
 =?us-ascii?Q?ouj15Hj343nK+OGZDyjkrMTvu/zR/4YBtjLCP+08x/QdmnS7ObYFxHDosC9J?=
 =?us-ascii?Q?8GxE3GcH0yw5w5nZv0UgZAjX0QCOJeuvQLrYAhIa3lgogvnDtDTZsD69XPbT?=
 =?us-ascii?Q?f9btp8G4v3SHp9r/dcuFsGdFdterGnUT+mpwMNmr2wG7vFaTmySr9S5JJKpy?=
 =?us-ascii?Q?nxxpA37X34pJPJqcKEoIdTQNF+5olDMqViHdDk76ZY5O7YKigCYbUDFtcQX1?=
 =?us-ascii?Q?leMv/v0/j93EKu3ObU5ftZ/GrBLVb4J/JLh+Qxdi/ui6usYEjAFyLSkD7Z8n?=
 =?us-ascii?Q?anF47+KBJonHbHytsSw1oq1pq5kJ9iLOgC+o5ROyRAIM9hB0y6Ld94wgVEKq?=
 =?us-ascii?Q?18jGhn6Z5F/qwB971+JCTyE8oY8UiAtCHrSEjgCSoUyvaEgBOjTtJrHKIrAm?=
 =?us-ascii?Q?Hop2g2ZtDtqA6kth6vtWo7cyZ/7EY4M7XlQq3qhFvxZmYDFKdqSAHiOdLBdS?=
 =?us-ascii?Q?miF+O9+eNGqj/5hFqRejSqBKSHgHXGmxxWgyvOks3VqhZ5vKgt6JYdl0oSTM?=
 =?us-ascii?Q?yhiDZQ+pGz6ANr+wA3YxR5C73lLdKlV7xzr6nhbWcahAe76r7o1PWJK7e1oS?=
 =?us-ascii?Q?pFqciyyCmXQ6n8OZB2tJ0ksE/JFkRXbtwlkMZueYlwwg1exvTlR8O/9rh9wT?=
 =?us-ascii?Q?RorpIl13II9bnSZgy9RuLhL/XJdA7rl7jCRPg3l2I07/2gJ9lDD8fmzqwyc4?=
 =?us-ascii?Q?wjIGGGSg2pSHiZdVl7n4SVMJmfdLm97M1v9KOgv229lP/mabQk5EmUdHcebb?=
 =?us-ascii?Q?aA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1eb6a0b9-09f3-496f-2795-08dcdcd97d80
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:05.3803 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pqSy+ZBm0nFZmVWXloN02FrUD7tcA1QnMUefDXeqfuthp55DXWO2kewVsCJ5G4TkKVHWWGfZsCDwPrI44Cm8gQ==
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

No functional change. This patch only splits the xe_display_pm
suspend/resume functions in the regular suspend/resume from the
runtime/d3cold ones.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 68 ++++++++++++++++---------
 1 file changed, 45 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index be431d9907df..a4705a452adb 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -308,8 +308,41 @@ static void xe_display_flush_cleanup_work(struct xe_device *xe)
 	}
 }
 
-/* TODO: System and runtime suspend/resume sequences will be sanitized as a follow-up. */
-static void __xe_display_pm_suspend(struct xe_device *xe, bool runtime)
+static void xe_display_to_d3cold(struct xe_device *xe)
+{
+	struct intel_display *display = &xe->display;
+
+	/* We do a lot of poking in a lot of registers, make sure they work properly. */
+	intel_power_domains_disable(xe);
+
+	xe_display_flush_cleanup_work(xe);
+
+	intel_hpd_cancel_work(xe);
+
+	intel_opregion_suspend(display, PCI_D3cold);
+
+	intel_dmc_suspend(display);
+}
+
+static void xe_display_from_d3cold(struct xe_device *xe)
+{
+	struct intel_display *display = &xe->display;
+
+	intel_dmc_resume(display);
+
+	if (has_display(xe))
+		drm_mode_config_reset(&xe->drm);
+
+	intel_display_driver_init_hw(xe);
+
+	intel_hpd_init(xe);
+
+	intel_opregion_resume(display);
+
+	intel_power_domains_enable(xe);
+}
+
+void xe_display_pm_suspend(struct xe_device *xe)
 {
 	struct intel_display *display = &xe->display;
 	bool s2idle = suspend_to_idle();
@@ -321,10 +354,10 @@ static void __xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 	 * properly.
 	 */
 	intel_power_domains_disable(xe);
-	if (!runtime)
-		intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
 
-	if (!runtime && has_display(xe)) {
+	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
+
+	if (has_display(xe)) {
 		drm_kms_helper_poll_disable(&xe->drm);
 		intel_display_driver_disable_user_access(xe);
 		intel_display_driver_suspend(xe);
@@ -334,7 +367,7 @@ static void __xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 
 	intel_hpd_cancel_work(xe);
 
-	if (!runtime && has_display(xe)) {
+	if (has_display(xe)) {
 		intel_display_driver_suspend_access(xe);
 		intel_encoder_suspend_all(&xe->display);
 	}
@@ -344,11 +377,6 @@ static void __xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 	intel_dmc_suspend(display);
 }
 
-void xe_display_pm_suspend(struct xe_device *xe)
-{
-	__xe_display_pm_suspend(xe, false);
-}
-
 void xe_display_pm_shutdown(struct xe_device *xe)
 {
 	if (!xe->info.probe_display)
@@ -379,7 +407,7 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
 		return;
 
 	if (xe->d3cold.allowed)
-		__xe_display_pm_suspend(xe, true);
+		xe_display_to_d3cold(xe);
 
 	intel_hpd_poll_enable(xe);
 }
@@ -405,7 +433,7 @@ void xe_display_pm_resume_early(struct xe_device *xe)
 	intel_power_domains_resume(xe);
 }
 
-static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
+void xe_display_pm_resume(struct xe_device *xe)
 {
 	struct intel_display *display = &xe->display;
 
@@ -419,12 +447,12 @@ static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
 
 	intel_display_driver_init_hw(xe);
 
-	if (!runtime && has_display(xe))
+	if (has_display(xe))
 		intel_display_driver_resume_access(xe);
 
 	intel_hpd_init(xe);
 
-	if (!runtime && has_display(xe)) {
+	if (has_display(xe)) {
 		intel_display_driver_resume(xe);
 		drm_kms_helper_poll_enable(&xe->drm);
 		intel_display_driver_enable_user_access(xe);
@@ -433,17 +461,11 @@ static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
 
 	intel_opregion_resume(display);
 
-	if (!runtime)
-		intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_RUNNING, false);
+	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_RUNNING, false);
 
 	intel_power_domains_enable(xe);
 }
 
-void xe_display_pm_resume(struct xe_device *xe)
-{
-	__xe_display_pm_resume(xe, false);
-}
-
 void xe_display_pm_runtime_resume(struct xe_device *xe)
 {
 	if (!xe->info.probe_display)
@@ -452,7 +474,7 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
 	intel_hpd_poll_disable(xe);
 
 	if (xe->d3cold.allowed)
-		__xe_display_pm_resume(xe, true);
+		xe_display_from_d3cold(xe);
 }
 
 
-- 
2.46.0

