Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8975942CA
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 00:14:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08073D3D21;
	Mon, 15 Aug 2022 22:14:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 132E7D5F44
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Aug 2022 22:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660601643; x=1692137643;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9VkVNDvA4PoDEA7OjMSwTMpr5j8uPzOs7aIxQmQA7DA=;
 b=hq7S0s/XukxZMB9yFR3WHNMBKkLnprsAAzFy8qMXdurwlAuJMFSp7gH0
 /cF9jvUv6k2GAHUaKl/pqgWcG3sCKJZTBvoZ/7riQ+qfyJW1X5LOmCxo6
 oVrwRyKz9lSz/D37RV+vK8ztXNXzJr18IUlSoJRFZAw6Gt7yOjYKikZ34
 n/ZtyHIzzPrHDeLBXW1OfpH+wkuA3XMoRocKwQlrgTRTDa7Wc5CWbjfLE
 I8dY7XshGSY/13wP9Hna7ZdP+GfWV76wQn1Sipl3waM+TpGgArA9eeq3E
 DtZDE+h9+ow6LCMR43qjBVQCX0fmYAI8yPcKN44sa+ihNwP6P5ZZpT1IH w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="292865234"
X-IronPort-AV: E=Sophos;i="5.93,239,1654585200"; d="scan'208";a="292865234"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 15:14:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,239,1654585200"; d="scan'208";a="709912213"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 15 Aug 2022 15:14:01 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 15:14:01 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 15:14:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 15 Aug 2022 15:14:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 15 Aug 2022 15:13:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bbT+P7jAc6AQZPS+DsByTm81GNYg9rixdelqVLKIjR3GoHclc4DuUDVdAhVqIEAyFSstinHEd7PPWjpotWVsmNOTPae91f8jqQjwSMyMRoyq/NElXHAuNA6ZZ8xdizP09wTSLdReOYdN2J322XSLK3TnRR78mEZHHt6bDQ/g/oQUtUm+NEgUGVX59XqAIUlDTJ56oGWqDtM4bOfx6QLNsXCCIcg0BKFKP0cqfABbkcQSNyNcY5bunDRffqZDyTD3TNEzm444qmTfutF1SMvDOA3iepv8FMdEBbSUKruUle7GwKx1a74sPRPx/5aSOdqEwxcMz4j6K7TK6hiJQBtQGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jlECQcbv5ga8/HEZoWtU3fUlCQXb8AyQK4RlemACXzo=;
 b=Z9KMbQXqhBpTLfm67ZloRYtgDNlr01EeJ3NNh6lPqJbb6h/suDOcr4foSoAEizAm2A3qH6dg/za3B5cIsP42YFexrNekpHco5iYDzrTp7c10yE60ZTmJrDz2qoXZ4MzJfK+hlX/467iZ36YIPw1IAhaBaZ6AsbFUGbFfXDteWXthmMFHEnQ+NkprDRcZR9Ze5Z0f2XqxS7Ayuw+9oEO8y9OTDEwBz1CPC+RcMdiZzxs/2f1HQRYJyMEuBaUfPh/cwDtv2KYi8hHx3kJzgGEzdjLAsELPY/pGfL6/nu5xwUybx2RfA7GsS3SuZJhctbZG2A+J3NrM4LPh2ZY9et1gTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by BN6PR1101MB2068.namprd11.prod.outlook.com (2603:10b6:405:50::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Mon, 15 Aug
 2022 22:13:58 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Mon, 15 Aug 2022
 22:13:57 +0000
Date: Mon, 15 Aug 2022 15:13:55 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20220815221355.aagkmujxn6khcfng@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20220812202240.542124-1-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20220812202240.542124-1-matthew.d.roper@intel.com>
X-ClientProxiedBy: SJ0PR13CA0094.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::9) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 50a80e5e-0c4c-4af6-a654-08da7f0b72b5
X-MS-TrafficTypeDiagnostic: BN6PR1101MB2068:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BGg92CV/rD2bcr72stsPoRqkAlI5WqDZ/RsbvlW67cX+yxN+KTgWZS3l5VN2ZOHgUMAPyTP8DAwGK99kuhQ62uYfOQInRSmOH1ca3zM4BmDJlMNJgFIOcTWOksyYKS7Ot+kq3fO3KWDWqSFY/vU/qoapS8lBOm8mgC/N19Iw0B8xlIkGwckKomgJj8Lbi/fWzEGSTCU70a6tLqpCcZTEdm84fVGXpnFY5BsYdaePGHJOs6Qm2PENCp1YGptFJviNwmndtb6C/Su+5Dy7+jV5twC/LHt/4ateeNbRb8wI5l3O8y3a0SoN02XPc87l7PdcqxKk6oghgrTKgZNWYs4U+ZxJAQh6EJTJhDt8tlH4yonQPvM9jiIdlUQf3B675uKFAdVDolHw89pDrP+4sGYW6v1iQC5HeOx0sQ1OLZy6XrP3BWdVlGzcPVHJPt5WbVRgTWuM8lcXzPuitxFWYg68zftmEqAgjWIMX3d5DmUT/LELfo1pdJ+3B2wTRVi3QdsLwrLnpvADBZCtW2xB3vgA+hvOD9S/mHwdPtJcs88Gs/ZCNBcdqauqbuKuO63BLmjinxM6NNChoBrthP1L8T5eq9QfltJXo+SUGNbENIcfr5nKx21nhXH7B8ue2BlIFE5uxOqf9xydHa5r8B/WgOuR/2CvviK+U0cuPd+J0YW+/DEnQiCZVGk4sEDmT3IM2UkET9JBfQWVZ7/C8NM2DY4TjbLEqJ7ajiG9JbVz6rMShlVwwj7v/MVTCb7hUq8bGBkB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(346002)(396003)(136003)(366004)(376002)(5660300002)(6862004)(6506007)(41300700001)(9686003)(86362001)(26005)(82960400001)(6512007)(8936002)(66946007)(6636002)(6486002)(66476007)(8676002)(478600001)(316002)(66556008)(36756003)(2906002)(4326008)(1076003)(83380400001)(38100700002)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?s4G1/UIo7OcNjLCaVs7u0PhtOZnSb0Kv8ISlBziyYARHPmRh4f1XFW7hkfsE?=
 =?us-ascii?Q?fxnuf1ILkN3uexgG1Bml1hDrqeH2o9PffSuNcJENqlRJQIq8IGlJ4F2bYXcS?=
 =?us-ascii?Q?ri2BPLWy2qm5itU/gBk2GBAl3ZBRgXajt3aAnOA0LjrooA9Lh5BkfYUoVqJ5?=
 =?us-ascii?Q?A+aTkMaxX+0jcSEgzW6oa/pJCpXq8gSbFBQyAUZGPHkVEnU0Y8qn4ISPTr1l?=
 =?us-ascii?Q?3vQYHOpnFjUdCXP/S1kX0KtXkS7PlcA5Wiz36JEjwZa0NPUxkK7bsEqguxmc?=
 =?us-ascii?Q?sdPD4QyyQ7UGXT5T5qlVYz7wxSpUt9tZ6NDyBCeQH2CgxkB1Y8BOPzPs27pw?=
 =?us-ascii?Q?II/yHIsTch9wl7FCHHFmDk40GFKRSRpClEqY5rHnGjat+F1pP/UYO7YMZlQs?=
 =?us-ascii?Q?kwlue33GnOqkCJjq47+mAcLYyTC0A/KDCw5YFI4bQEEmHJrC4Or6R7bhM6Cg?=
 =?us-ascii?Q?3L828ZmTcsFEpFzlLKqLpCEB1giF6B5NkHrchUQs2oEpQtrZRbovQF8RN7Gh?=
 =?us-ascii?Q?ZsbdXcvES0KFiNIgEMiSzd2x7BjL6SXk95F7dvwb7mlTMB3aMCeFmBc93stB?=
 =?us-ascii?Q?v4A2H64iMJ3L3ywR+CqC8i9a3LkFk74iE29WjjrJKdxRsn3ggxeesYmY253y?=
 =?us-ascii?Q?S9rUlgyBv3RZtN+/KfioGUD6iUS899IB3c+NH+fBwxg06RVIuOpP3G5hQXzn?=
 =?us-ascii?Q?sntqoDw4CEsMSkIGQyaHHFnbG/CZXkYMEC3Vo9s6reH9GgiNgmmpHibYk9XQ?=
 =?us-ascii?Q?fFvusqqNo20klLosVP/8fQGXMwVF4KwvOQ0u1kc09sPviyb9pISrOWIjljyQ?=
 =?us-ascii?Q?k1FtRImpUBQiOqBYMr9bNeolH780sUnA4tHBRCX18tl+ty+eP2gkmLFTfQT5?=
 =?us-ascii?Q?85+n63Gzin1L24lNXAq4fzUuX2ODPDg+2butl7bTAbDJoW9M06TP3OQWNv/l?=
 =?us-ascii?Q?cxcPhFk+jjUikpPcthemoYkjGxb6sQBdKAcUUUsgLxhbusHWqQ2GIHrGg24a?=
 =?us-ascii?Q?BS4Hh7WDGoGzrxLRzkxXJWfL6i2FIHmEkoX1reQc7H/VpiQF6pLjS0Iuox2r?=
 =?us-ascii?Q?3e0R47dv4XjH5OV1tecjDmqAMB3pZsUkUhjF2QPUP0qfBBRv4XFQBHxfQQXB?=
 =?us-ascii?Q?KXo2FQB28xPburrl9LT+mk60OxeQZaktamkmiGseMzatSGWcMPaEdoC6iVM+?=
 =?us-ascii?Q?DVqlykI/AXNlqGQNU7mXTSFA1VjuYcG5nm9Xb2l45kltz5qzYs7ytOVskvqy?=
 =?us-ascii?Q?rgrqMc4mEkLxoWJ5xs6SNI9HHTalONRR4zdnlxzwBcnXFpv04EABKWc1we6/?=
 =?us-ascii?Q?rIINqEGNuVodY+xorjqhMbq+gJIbZkZsLsiFhOm2VLOE6XXJ1XlocT6rJmrF?=
 =?us-ascii?Q?OEpghoU3gXle9GQuYVFAsOyY13lqsYGhdhd0eAXDclCvySMj129eYsSjFCVe?=
 =?us-ascii?Q?/bpHScj8Jx+naGqScvdDGGsRpeG9Io+lSkwzogDQsL3iuV1DnWkBLf704qIS?=
 =?us-ascii?Q?zo39jDZumqZPXR1BZW6EHRbpICFHvZV3+i6L4EpTYTExIlG4EdIacTEpEUaZ?=
 =?us-ascii?Q?Add35QlIxXfMbICkt4B/+cPD9zNdlAf+UjYD1Zp8OY6hkuT3z5LpP0icwxgA?=
 =?us-ascii?Q?bA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 50a80e5e-0c4c-4af6-a654-08da7f0b72b5
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2022 22:13:57.3783 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lhp2OpiRTBOksxcrXXFz3Af/vnoLKw0eWB1cmFg7OjtMIXKLna70WqJ+3A4i7HaGCFUfvwdL9Ez6vJoEiCwgjqPhaf3k0TGVybVZ3wHmJ8M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2068
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Add dedicated function for
 non-ctx register tuning settings
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 12, 2022 at 01:22:39PM -0700, Matt Roper wrote:
>The bspec performance tuning section gives recommended settings that the
>driver should program for various MMIO registers.  Although these
>settings aren't "workarounds" we use the workaround infrastructure to do
>this programming to make sure it is handled at the appropriate places
>and doesn't conflict with any real workarounds.
>
>Since more of these are starting to show up on recent platforms, it's a
>good time to create a dedicated function to hold them so that there's
>less ambiguity about how/where to implement new ones.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 42 ++++++++++++++-------
> 1 file changed, 28 insertions(+), 14 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>index 59cf28baa472..a68d279b01f0 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -2102,13 +2102,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> 		/* Wa_1509235366:dg2 */
> 		wa_write_or(wal, GEN12_GAMCNTRL_CTRL, INVALIDATION_BROADCAST_MODE_DIS |
> 			    GLOBAL_INVALIDATION_MODE);
>-
>-		/*
>-		 * The following are not actually "workarounds" but rather
>-		 * recommended tuning settings documented in the bspec's
>-		 * performance guide section.
>-		 */
>-		wa_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
> 	}
>
> 	if (IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
>@@ -2676,6 +2669,32 @@ ccs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> 	}
> }
>
>+/*
>+ * The bspec performance guide has recommended MMIO tuning settings.  These
>+ * aren't truly "workarounds" but we want to program them with the same
>+ * workaround infrastructure to ensure that they're automatically added to
>+ * the GuC save/restore lists, re-applied at the right times, and checked for
>+ * any conflicting programming requested by real workarounds.
>+ *
>+ * Programming settings should be added here only if their registers are not
>+ * part of an engine's register state context.  If a register is part of a
>+ * context, then any tuning settings should be programmed in an appropriate
>+ * function invoked by __intel_engine_init_ctx_wa().
>+ */
>+static void
>+add_render_compute_tuning_settings(struct drm_i915_private *i915,
>+				   struct i915_wa_list *wal)
>+{
>+	if (IS_PONTEVECCHIO(i915)) {
>+		wa_write(wal, XEHPC_L3SCRUB,
>+			 SCRUB_CL_DWNGRADE_SHARED | SCRUB_RATE_4B_PER_CLK);
>+	}
>+
>+	if (IS_DG2(i915)) {
>+		wa_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
>+	}
>+}
>+
> /*
>  * The workarounds in this function apply to shared registers in
>  * the general render reset domain that aren't tied to a
>@@ -2690,14 +2709,9 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> {
> 	struct drm_i915_private *i915 = engine->i915;
>
>-	if (IS_PONTEVECCHIO(i915)) {
>-		/*
>-		 * The following is not actually a "workaround" but rather
>-		 * a recommended tuning setting documented in the bspec's
>-		 * performance guide section.
>-		 */
>-		wa_write(wal, XEHPC_L3SCRUB, SCRUB_CL_DWNGRADE_SHARED | SCRUB_RATE_4B_PER_CLK);
>+	add_render_compute_tuning_settings(i915, wal);
>
>+	if (IS_PONTEVECCHIO(i915)) {
> 		/* Wa_16016694945 */
> 		wa_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
> 	}
>-- 
>2.37.1
>
