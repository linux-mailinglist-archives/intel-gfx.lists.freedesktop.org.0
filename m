Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF7C797EB1
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 00:27:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 453B310E0DF;
	Thu,  7 Sep 2023 22:27:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EE3F10E81E
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 22:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694125668; x=1725661668;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jWzPTOigcb7hPWLW9Ux2hrtmWrMk5LWFeUCu1ec8vo4=;
 b=T9o3tZQiOck8NSDqVW30hOBYtCnkOOMUF8kldfA1AYBoH4fwXofz7D9b
 9TlhieM/NNGrkBCwakmUVkNMiXOkD+hqH67+qCwskntgnvDmWVIP/X0E8
 uIlflhwXKclei8B35SUrHPFLZdzFqAqbdfaH6nNORSIApf+OTUPWk1uaP
 6sW/PYrBLq2Z4iXVQpxTL3QXvZpAjHcLlagtPk1FMpv9lOAxTDiHnVDP7
 BEGA8RXk7rlIBWQioq50X1R3w6WMM/wjzQqoFrNwfv86EorO83nEAYu86
 Dgikn6XoMUFaWxZvrKpeTX/Z4VfgcT4ZHNCN7dwH3DugVgpI+4uEknvQa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="463879832"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="463879832"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 15:27:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="1073041311"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="1073041311"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 15:27:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 15:27:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 15:27:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 15:27:45 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 15:27:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LL0Mw4+xbj/novJIQVGoqlCCle1pbSKrUWybHt41AKsDSDPIXPl39VpGHvlgUwyPmEbCV2iCaGoNAw0WjG0GvW5wlFCXpAJE00fi2WarCjZnEo+hMxGL9KvGjXsesG2lWcAtAjVR6jM7QYn44CyK6iqgQnnd1VWDRoxFtJz/sfjpBL4hXv9Y+tlQ1S6NFlFnWKoA25M9x5jl47MH9RigY3T06ywtbf5X4ksd7TowBsfrziyxoYQlaecq/lPkfuRWKgo+D1GMGKs7PnzK/2chfoN6yzhhMEVbY292AzUJHQznOTJDJK6+6yP8EAunnsdviIOagfwGjwDYxcai4rzgcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XKFv79/J6avqOEkD9L+Zd0Bd3jsWFqKzvI6iq/m6rEk=;
 b=DWVxbSnMgO1rHU0Shsn0s2n6NWtRGS1CL65fOMy8myBl/VW5hN4+eiNMda/QgQrgpBwETZObFYNI7K9T/KhaH/Y4AITtiyk7Nzih8PXSWorzKZfzurK3+iLg9EFax5wBCEY91uFecT9xfoEXo0EzuP0feK8xQxv4PqvuhiqPqTEnRV0zMo3sce7ukzzSN3ricpV4Iz6eiFq1IBP5gvTDzs8H5gMYC4A46GM+Hx7iJUPkW/NVSu2yZYxEs5rdsEIzdG2y0lShi960rNu9M0RFEQ73ywQwiWxPvts+Zx5yQgqMLFJK6XWPrUxsu50O+87BXPXhAXGga5odwXkohrGFoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.33; Thu, 7 Sep
 2023 22:27:42 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6745.034; Thu, 7 Sep 2023
 22:27:42 +0000
Date: Thu, 7 Sep 2023 17:27:40 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Message-ID: <tg3egnpgipczry3gobovsx7nokhmdtj467gojjnoe3ej7zfygh@2wznhsyxvras>
X-Patchwork-Hint: comment
References: <20230907065734.3871575-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230907065734.3871575-1-dnyaneshwar.bhadane@intel.com>
X-ClientProxiedBy: BYAPR21CA0001.namprd21.prod.outlook.com
 (2603:10b6:a03:114::11) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM4PR11MB6360:EE_
X-MS-Office365-Filtering-Correlation-Id: 7099d6be-275a-4836-e50f-08dbaff1a6d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DNFprEB+L7FUdWO/fIrJKjOP+a+x4YKmmvGFfgRoj855ei1wUHfEuk/G1x6QUVb5iSJLe0k3NFrsq63L6IQFnN+iQVy3+46aqrR34EUfsBd5VWDWsYGnM00gQgzybOxEj+nnUSmQ1UrxctKHJ6YVlc4KOfQm73Bi1m6pt27sLcF4HpqlBbF++aF2zuY2uI/3OyaUjKHSmCerN+YUwIlwiNZ0D/pbS8K2HA2xazXvRroIX2wXlwM/EZGq8HuBVpvY+4KeQBPA5CzwSOrDdbshp/8UM3EztAk1HqWNKwuzRYA/iMf3L+u4yjU10Du8Js+KIr8KMzHb759tb0c7SyyYONIUjc8VxF8YUGpnru7mYgOJ2E/gqKlZy1fcNddoKBcwGulPXD7IKJwGibLrjtr348F1vcOaPQb/akPAT+RRPbdGNTiArHpNW1myIs/jx/LVnoMr8jO6Wl+5QOXCbKSljURO9ok1adJl+piyUpgWQx1xWajuEWQaUr0y3pPRWuGVSOLH1o8D0m2A+5h7hpGZ4rSumNlQjLJ5x7aeaYvMul2zuo4X9LcEaUSvTVmd2pwM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(376002)(346002)(366004)(39860400002)(396003)(451199024)(1800799009)(186009)(8936002)(41300700001)(66556008)(8676002)(6636002)(6862004)(66476007)(66946007)(316002)(2906002)(5660300002)(33716001)(6506007)(4326008)(6512007)(9686003)(86362001)(83380400001)(26005)(107886003)(6486002)(38100700002)(82960400001)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6z0ZmaU2/RJ1GgkiCnuZTz8a1s/LkSpSHmFPOPclpJ8S8oZR/oJ2rICkVLF1?=
 =?us-ascii?Q?dmoLXOt6hOyWF2XQOzuhVj1ZOEi4jwmV3nEyxatZaZ4L1QpXxPz++FkyYDXY?=
 =?us-ascii?Q?PYTem9EFl9PZhLdbjD7vlSC/yRIGaxAPzKblTuuT40SX3ZJNokHikEo7/mC4?=
 =?us-ascii?Q?AzWTQ0T9KdFg70LJajK7oFYGBD1KuFs/XLDChrtMMXZckKVOamgNAKG/gpjS?=
 =?us-ascii?Q?QmxRz4diINkYD1C6JfvBQc7bkDSnFj5pamjg2/0EfdfkpN4nbqJlaGxE1twc?=
 =?us-ascii?Q?HbM1H4irQan8v08uRATfg/QlEiSVd8K/AxgJRcq3vthpS+YKY471tcknaEKE?=
 =?us-ascii?Q?EGq+5HTUxptsGPb23r0qDJtWCdzoT00NIC/8pd2bbpMZDOSk0kOdJKt8pbkB?=
 =?us-ascii?Q?TTYhMFLscx5QZcIiAYUhY2xe7tflsZk1JRxFIXIsPvjKJ+tH9VsQVs8GGxOF?=
 =?us-ascii?Q?2CgdM/fOm/IgFRGLt384yEqAyalAgQsYXd0i6vNYjehsWD1TlrfbdvPqw2ux?=
 =?us-ascii?Q?MRuDhT5qCis7YqTmaxdEn/I99zKkBl+Lr2Q+H6NWbMNHzDyJjHpJ/aIK6AKI?=
 =?us-ascii?Q?tqlWfQyPhCbCPV5sMHnuUWRjU2BZm4SwgzwKuQ/GqJbfEaqLCHfCET2Uk7hX?=
 =?us-ascii?Q?puQ6IfrW9TCXm5F5fksouZxZniU2NyajCa9TRupju0T3ITMHio5Dk7g06cRI?=
 =?us-ascii?Q?BVemRiXA5uyBZhrGgAirQHeDIla/060TUBd3fozXPEookBzA1JWrJq+GYAGK?=
 =?us-ascii?Q?Oj4eVNWNpmCCaLuEIRm6WpbPVb/7lJ1n21u6WStVJkf+tZLNazhaq6VUoQNY?=
 =?us-ascii?Q?9CWinlAGLliAKuBPU3noepsMqM2CcaNQvf1RJQ9xNHUlKpEDPvyIV21dMoJ6?=
 =?us-ascii?Q?zO/X314zV+ogSZnTIWU6cMYTn5IKJ13HoKdhFdLq03VFaxg8CDO7sy6QY0eq?=
 =?us-ascii?Q?rz+7LDtZugHeRhPvDrx4EMk67C8Jj6IQpESPxDoHVAtZqqF7mHIlOLdvtSmQ?=
 =?us-ascii?Q?VJgFxDYqPDwiInAESJJMH/ns0IJwAOt8R8feBUnslHBWzRHz6C4yEOG5mQuM?=
 =?us-ascii?Q?dMfUpzXWroA2Q9RXaX2J8xk+paiaAgR3cNrIHPSKfYe4FIMrpV7vIuZgRCEW?=
 =?us-ascii?Q?LBnI+pgw8ZywrSSluYId1JTvVbZT+bC59HKbLUaBzUCo2HVxm4S7h7GLnJ6i?=
 =?us-ascii?Q?Ko8C+ryh1Hkg2WYdceXOn+KtDqgQ2BmQ9j8p/Vv3V5KwYtLqc1DmJ7fz566D?=
 =?us-ascii?Q?ecaMT222TTWW0Q7F3WG5qWENLZUmiMGzC4ajIhqvT/K6v9XpdpfxmoEsuPSE?=
 =?us-ascii?Q?aCbnMPkiPN5nyE0GYDy+oqt9aNJem/5de0RUM24O4dJxteSB9cn0JdRonVQ7?=
 =?us-ascii?Q?Ft6HuWp0vYHdA6yHDzadI29ftInReSZmqVmHD95ZCQXjwJl2v89iIym+ynvd?=
 =?us-ascii?Q?vCVniGGTm1wQY8or2RP/yBAJjRdTuQzJJIsqYqZqndt1oZHLXI7jd/qZPXJN?=
 =?us-ascii?Q?MSpZgmrDVuC5xPrSOEPpz5UFSO/wCCt7x49m2c5C6wCSihfW/hJvw+xz+IC5?=
 =?us-ascii?Q?4TFHMKhBWDI887kNBi8YPYmUcaWb9kx1aCffjrqZeRCp6K1ZTQR8L2crloB5?=
 =?us-ascii?Q?xQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7099d6be-275a-4836-e50f-08dbaff1a6d3
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 22:27:42.6160 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lr0dozQMGaonpMzxhE2lgR6byN/jD2RRU2WN+1k69xNH+XsjQ5Uk7QnpzPPeVaajHVWIjMtj1wcxfSNvA9pZIQdaMPHHN8IYEhhRDOk7RI4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6360
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Added Wa_18022495364
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
Cc: intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 07, 2023 at 12:27:34PM +0530, Dnyaneshwar Bhadane wrote:
>This workaround has two different implementations,
>one for gen 12 to DG2 and another for DG2 and later.
>Bspec :  11354 , 56551.

You seem to have extra spaces here. Please format it smilarly to other
commits.

>
>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>---
> drivers/gpu/drm/i915/gt/gen8_engine_cs.c    | 4 ++++
> drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
> 3 files changed, 9 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>index 0143445dba83..fee2712f81e8 100644
>--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>@@ -271,6 +271,10 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
> 		if (GRAPHICS_VER_FULL(rq->i915) >= IP_VER(12, 70))
> 			bit_group_0 |= PIPE_CONTROL_CCS_FLUSH;
>
>+		/* Wa_18022495364 */
>+		if ((GRAPHICS_VER_FULL(rq->i915) >= IP_VER(12, 70)) ||

		    ^  why the extra parenthesis here?

		    
>+		    IS_DG2(rq->i915))
>+			bit_group_1 |= PIPE_CONTROL_CONST_CACHE_INVALIDATE;

it's usually preferred to leave a newline after then if/else branches
to help readability.

> 		bit_group_1 |= PIPE_CONTROL_TILE_CACHE_FLUSH;
> 		bit_group_1 |= PIPE_CONTROL_FLUSH_L3;
> 		bit_group_1 |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>index 0e4c638fcbbf..4c0cb3a3d0aa 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>@@ -164,6 +164,8 @@
> #define GEN9_CSFE_CHICKEN1_RCS			_MMIO(0x20d4)
> #define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE	(1 << 2)
> #define   GEN11_ENABLE_32_PLANE_MODE		(1 << 7)
>+#define GEN12_CS_DEBUG_MODE2			_MMIO(0x20d8)
>+#define   GEN12_GLOBAL_DEBUG_ENABLE			BIT(6)
>
> #define GEN7_FF_SLICE_CS_CHICKEN1		_MMIO(0x20e0)
> #define   GEN9_FFSC_PERCTX_PREEMPT_CTRL		(1 << 14)
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>index 864d41bcf6bb..1a026d4d7ac5 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -712,6 +712,9 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
> 			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
> 			    GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);
>
>+	/* Wa_18022495364 :tgl,rkl,dg1,adl-s,adl-p */

			 ^ extra space here too.

Actually there is no need to add the platforms names as comments.


>+	wa_masked_en(wal, GEN12_CS_DEBUG_MODE2,
>+		     GEN12_GLOBAL_DEBUG_ENABLE);

missing newline


Lucas De Marchi

> 	/*
> 	 * Wa_16011163337 - GS_TIMER
> 	 *
>-- 
>2.34.1
>
