Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A786BDD62
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 01:09:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC8DB10E241;
	Fri, 17 Mar 2023 00:09:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CB7F10E241
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 00:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679011786; x=1710547786;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=S+LM6Jb0n/T30+6fSDODYscyjsEkRDqpP+0q/QyzJ2w=;
 b=CC2f6n7//nj/aA6QIJnp6AukV5vSrDOFV3gCWMDp9F1oo2HtCnk6wx0L
 dO2Ig1rV6UKIfmZTJUFFxQ9GCVf7OseYhMUnZWu4xb4enwnI5pN4TEaFq
 1O9qtr0rEG4nmwbFClbFFYbxfZ7zaMhILxyInM6D1/wraGEaxKqJcA3Sc
 zpcrEYLZxB7FxrbkgSKnzojt1+07A8iLZK/WOL+bgqqbdOINj8tz11nNx
 EppaEUX8PSzTOmuvcI6z1mTZ5W5Ygs1+ckZWD56IKq4GftxZCxFk0wOQh
 9pHHx8pJ1AGSHjHRQrPwlZEI4au4xu8fCTSa/jFqOaOb/syQf/3gdHNb+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="335631817"
X-IronPort-AV: E=Sophos;i="5.98,267,1673942400"; d="scan'208";a="335631817"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 17:09:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="744361633"
X-IronPort-AV: E=Sophos;i="5.98,267,1673942400"; d="scan'208";a="744361633"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 16 Mar 2023 17:09:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 17:09:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 16 Mar 2023 17:09:44 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 16 Mar 2023 17:09:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ANMT7Mzy4xr6/6g2XiXN9G7urOZNegw30rf56xwDnt5UYWxaCyePVc5hr842u2xv5M5m7zbqmezWJ8yWDJh2Awk0h0ymjCyUY82hluReXS5qvL1wUn7NcqWcROvR6PazWK3ON2u9QNN5BW7wyGrVUiR36aWA2ZlKyMJIeyoe/UqtNf7pK0DCXP/0i0fEFYY9VSif6pQQTo35dz5AUbf2R7QW5y7tvwPbjBKT4/MiW1xZ5v3092gwSy/Hp0ssfPkTCWV+3/OYSEgQbxHhGFBfGeyUVYosZzR7gX/kKMxJ3bQNhNzZxYMQB6vdZz8zgw1N+k6IgH+u72h6PUifHh6E6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q2JKog6t/442TbU1W/fTkBhDyO81EoHPOwV/HrIuw5E=;
 b=EkjuCkqJya7dwmBEFinVW8cEaBLEtpkCJyRahZZpYyq+g389qXCrAT6Dq7VdTAPzrTCnOffyQq3w5HLcUz/nYXG+fyeN9pbXnHyxBNSkQsby9i9CAUTWl6JTJMa0aEc7Nt2KTdWfCJJ2mYbgQJTGfIqnvDLXGwrcysLjF1xM1uFAvnyH3+9QSPH+DbsPtVgaECJHoO70CpUPtj86hIuLGCmFvXmzEntYokO9eEmBaoWOxHHXjMqFxEil5sinRsJd8wqceN8cBwX84TjisqYoKuhqbTQRlifYd2eKrQJeB1UErTwA+scl9q/a2dmz1QvjcaxuYnYr1aKKnSEmnbXcwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM6PR11MB4530.namprd11.prod.outlook.com (2603:10b6:5:2a4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.35; Fri, 17 Mar
 2023 00:09:43 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::2629:fb12:6221:3745]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::2629:fb12:6221:3745%4]) with mapi id 15.20.6178.017; Fri, 17 Mar 2023
 00:09:43 +0000
Date: Thu, 16 Mar 2023 17:09:39 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <20230317000939.hg2t52xd2c5rp6un@ldmartin-desk2.jf.intel.com>
X-Patchwork-Hint: comment
References: <20230316202549.1764024-4-radhakrishna.sripada@intel.com>
 <20230316204143.1768749-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230316204143.1768749-1-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR03CA0070.namprd03.prod.outlook.com
 (2603:10b6:a03:331::15) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM6PR11MB4530:EE_
X-MS-Office365-Filtering-Correlation-Id: f027c905-ea0f-439f-2329-08db267be8a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aLaVPK/Pn0YNFL6jtShomRFo/qPmMCNMd19761W+budA8bd/X3//lUjYFIN6iIwJeOUB5PDtn+jDEYyMpNmS1oiNTzN+XHYCD++RJ0HrawV8B7hMvJCPeVkivEgc2bmJ64X5Epx+yqSC1adqOBCmpfHKJG0XyHsmjPaLRmAdXhdLnNRtns9TmG35iXZyrbyKOlt4R8Mf2j8wxfzJYlWoFcW8hr5Gef2+z83NbjA2FxDd3pETK8Lex4CF3S1+0KW4dgPc50GxsIMop2jlertdmiEgI8REFgk0du+dGmKAJp/FIxgcy9IN0qfMVXrD3ULMcdVJePvOP5wP5kz5XRmn4494oHHPVqxZVcCW+skR907t5cyKLcLorJnIhSA9TMBv+eF9d4+4rSMg4NajDNy2qLxEyIRhIaWq92qNhqEIlCA5TKmx/a4Idv5bbkRqBUWeWT9Sk8xRV89JSUjk3jcy3J2qXdeEheLsHKba0oxD2+NEq8E39dg9hYLZ/55lBVn1s50teEjF5fRS9/73v0Y+64fXaq11DCpETOuvtmCpRt8odY2GS2rjRuwMyKsomta63sVprJNQdwPYTzwXYdSk9rymSyU8WznvEzWS0KnJKQwIT1iYUwu+7kzLQ3u/tPyDdR0c3FpkQ3PKsczBaV82HQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(39860400002)(396003)(376002)(346002)(366004)(451199018)(186003)(6486002)(83380400001)(107886003)(6666004)(478600001)(6636002)(316002)(8676002)(1076003)(6506007)(6512007)(26005)(66476007)(66556008)(66946007)(41300700001)(4326008)(8936002)(6862004)(5660300002)(38100700002)(2906002)(82960400001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XVWciPX0VQG8lqbaJt5enUvMNM4mN6P4cAT8UongDltXxOrtuK0WUSF50wkZ?=
 =?us-ascii?Q?WVZJ8IhPeNS+ZPoolKO2nSbpfrBeJzWnvwR5yAQ6Z/9xJY9B25/2aXRR+r1Y?=
 =?us-ascii?Q?6KnF72O3ROlq7xRa4k6yAWjkqsHH7liUand/lbGHl+QHCwtTJBAILLn95g0f?=
 =?us-ascii?Q?3v7ZmHqSIOHTbapvuuexjWlCzyhidYEj/hw8vFVRkGujarE83Db3PdhihUAa?=
 =?us-ascii?Q?QMEHbDQD7YZDpiOFdHu8U5T+5OfjF8n4ydxRHKAlUX054a2Bh4TpR4PxAudJ?=
 =?us-ascii?Q?9FWPqgB2QetsOMxA7bAFfBA4WWFa+jZzRXkvFLbhIuxSOuVRxULYEKNg150Z?=
 =?us-ascii?Q?IoUsDkFDhmbhNJdrEp+2dEe3EruD3wX2NpSd0sQVE9zVagP3R0bPVlEKfHyY?=
 =?us-ascii?Q?gVyEF8QP+8tHAjg1LO2wXIv5T5UNZBWjutR469lqqjbem9QmQ/b70nVX5Mhf?=
 =?us-ascii?Q?/Qfmxh1Q3qSThi0gTX5EJqkc0k2v90uAmlRU7AwC8BFZNZqJCB9BMfDcfc+e?=
 =?us-ascii?Q?bdyipLmB3WbOsVNad1WwI7XLG9kduhiAsGagopREytRGnCjZxN8Fee/XTNsx?=
 =?us-ascii?Q?BcooTXvGwe7nado/2laxnNlLuhfYgILpqyrUV1v1hIgLCZmelGXvZoEtbnJN?=
 =?us-ascii?Q?Q+TYCppq514Lf4iOFKHyKwkn6LBgJUQzO2NR4LM2HlmD72SskcFdCxOUB2aT?=
 =?us-ascii?Q?3kWhZQ8qum8et56/Tj473B5FDBgmER3bpH14ExacONsDK+PY8AfTxWzpLclj?=
 =?us-ascii?Q?EMS1wlzPh9oOSomS+nxxTvmZi1wNEJxNMIlUeh/HCa3EPCaytwRF87AcrvMi?=
 =?us-ascii?Q?zUhaflrkmcIpw8Pm7XY1/omPW+PUNbHuZnfCuZsb+R/DcKG2Xr0VWwD8+tfa?=
 =?us-ascii?Q?r6hqm+dsgiXBkTrgmnqVK9zB5sET1n71QvTl/3NcdG4jLJTw6ER514Iiknlo?=
 =?us-ascii?Q?HyncZG3zUUtfae5N8/091rW09ge00aD/3VY0MnjM3sx6LVLiynaE5prxrIHo?=
 =?us-ascii?Q?EgyISlsRIdnf68s5FtQzMZjicA+620YM008IX/bUC1wrpan9NRVjCslOBVBu?=
 =?us-ascii?Q?Vzo2BkqgGHwOafrPFbDgAu488cVYNi0/9lucUVYhu4fgYqzoGvZ8VpGZklqw?=
 =?us-ascii?Q?18y/exXb9RtRXl/J0llnr9LF+nOphC1+GHrXHHge2ug1nfykZ62HYF4szPV9?=
 =?us-ascii?Q?swVbjRETyyaCT9VOBNbmlxWVn23rMpNc8A6DWZCMMgO8L7Q+F+PwXnFfkK05?=
 =?us-ascii?Q?UEI7zaa6gY9fZfDqPwR+dKfjjfPSFuyWKSrdzbmT69T46dr9hDns0trDJwlQ?=
 =?us-ascii?Q?M/KDXrNGGvDk+A8IhGEbe7Be5FLSM5nD6K3wIRTQQop6VH9OGyM7htSB59W/?=
 =?us-ascii?Q?C6k+OmUnD3PaqU9Qk1y+2oUwT3nqA71jDC8o9tcCbjWIKlGmGmoIw5mnRAAp?=
 =?us-ascii?Q?wk1s3+GFj8hmAmrdjPpixRGN4yhQ09BuTzIufF+pjij63/F6Aw0hKt9EoJfa?=
 =?us-ascii?Q?XyzDbEdai0l5wXXZmTgrtAloWyMoyt/uPAVlnNOULHML3C4JrgzKyo+Ip2h0?=
 =?us-ascii?Q?Zv07sWrpzgVtQ/Ir1/omOAvDRPi4vOkFy75qxbPX5jQaXISoDzMMdnT5FUwu?=
 =?us-ascii?Q?mA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f027c905-ea0f-439f-2329-08db267be8a7
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2023 00:09:43.1812 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LsD+TDOicHuBK0TbCBhAYNqJHofJTnJyPHxH1bjFCVm/FWkVLrzpisd9mm00u17ByVs7CpA13yLUDfqzvgAYOGNl0/iE1S99VRSJXCqAJmo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4530
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH dii-client v1.1] drm/i915/mtl: Extend
 Wa_22011802037 to MTL A-step
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

On Thu, Mar 16, 2023 at 01:41:43PM -0700, Radhakrishna Sripada wrote:
>From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
>
>Wa_22011802037 was being applied to all graphics_ver 11 & 12. This patch
>updates the if statement to apply the W/A to right platforms and extends
>it to MTL-M:A0.

it should be any A stepping, not just A0. But the code is correct, it's
only here that is wrong.

btw wrong subject-prefix here, not sure CI will pick it up for
execution.

>
>v1.1: Fix checkpatch warning.
>
>Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>---
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 4 +++-
> 1 file changed, 3 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>index 88e881b100cf..a099406dcc38 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>@@ -1629,7 +1629,9 @@ static void guc_reset_state(struct intel_context *ce, u32 head, bool scrub)
>
> static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
> {
>-	if (!IS_GRAPHICS_VER(engine->i915, 11, 12))
>+	if (!(IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
>+	      (GRAPHICS_VER(engine->i915) >= 11 &&
>+	       GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))))

the double negation + parenthesis + line wrap make it hard to read.
It seems that in commit 0667429ce68e ("drm/i915/reset: Add additional
steps for Wa_22011802037 for execlist backend") the Wa comment got
misplaced as the call to intel_engine_stop_cs() is part of the Wa
handling, no?

+Umesh

Maybe let's change to a positive check and move the Wa comment to be
above the check?

	static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
	{
		/*
		 * Wa_22011802037: stop the cs and wait for any pending mi force
		 * wakeups
		 */
		if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
		    (GRAPHICS_VER(gt->i915) >= 11 &&
		     GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 70))) {
			 intel_engine_stop_cs(engine);
			 intel_engine_wait_for_pending_mi_fw(engine);
		}
	}


This matches the condition checked everywhere else in the driver:

	$ git grep Wa_22011802037
	drivers/gpu/drm/i915/gt/intel_engine_cs.c:       * Wa_22011802037: Prior to doing a reset, ensure CS is
	drivers/gpu/drm/i915/gt/intel_engine_cs.c: * Wa_22011802037:gen12: In addition to stopping the cs, we need to wait for any
	drivers/gpu/drm/i915/gt/intel_execlists_submission.c:    * Wa_22011802037: In addition to stopping the cs, we need
	drivers/gpu/drm/i915/gt/uc/intel_guc.c: /* Wa_22011802037: graphics version 11/12 */
	drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:       * Wa_22011802037: In addition to stopping the cs, we need

Btw then comments about graphics versions didn't age well: they are not matching
the code anymore


Lucas De Marchi
