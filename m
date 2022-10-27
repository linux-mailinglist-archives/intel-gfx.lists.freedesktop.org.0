Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A6B60FF37
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 19:19:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22B9410E6B1;
	Thu, 27 Oct 2022 17:19:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 650F410E6B1
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 17:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666891166; x=1698427166;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=jT3fLlESp/pa5X3ChIVx7ZFsmJRQWImFu3yCkcqXhTY=;
 b=HMs2TZqCI4ZE5ykBxLTyU0mPxaaUKxwZZdKgi89Pcyxb2nHHmfWMmEnD
 yO8WKXOYLtTpAPtSHzbaI3Ly3DdVLU89CD5RDxZ9t9Sgw4G9kp6DOMOc9
 Ul0aVAcmF2JvOLi+CBd6TVgv/OBLuOQfKpK0kzqEbDfqQn9UJ0ivAHmrn
 EzINk0Uz3VGprVJIJ7z7caMvpXRk5VTOyMeM2PaCqqa/LKbajLZrTQ6Jv
 tG28gIHZJvwTY6I7DovCa97TkQmB15jVrtcSrUQu0cLViMRHhRT6qQHXw
 iXMYkH/o0NQrlPNvtevrmB6AkVuNplZhPhGnl7umhhQozbYa03+jF6aNu g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="295698041"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="295698041"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 10:19:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="663698655"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="663698655"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 27 Oct 2022 10:19:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 10:19:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 10:19:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 27 Oct 2022 10:19:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 27 Oct 2022 10:19:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UHKdtbVKjISg7JTCpTRNp8JsBx7nRrx6nnrNo88FrwbTJaMbxn/8BD7hyPT6Q/DH6fBMtbqV3LA+Pp+qQTsXkWP/kh2XFTWzIRGu/yGzqDVJWpegYImtzyB70PEi+5mKiSZkwYMFZxPS4cz/7qS17ekRqvOQr7N7YHH19uL0AFsz/X3YO1maKI5PUAM3aB6XHjmn+CCcuaPAuyAXEfv9Uz9N6QqoSgvTr1VuDaBZEGPKrCampCegxiEj6zGQqCW35RP5UZVt7DLzpa0zC1QQGW88HysrcgmkeZrrMU51Q7uxj2AUKS0Ypw4dxsodXG6F27wKafKCK48AWgCuL9B/rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4SEMKkE75WudV10rYk8GA8YBJ0G4/ON8MsQeUAJLP3U=;
 b=YMyOIvNEknkrWJ73ByWVuWJ6B9l9lX6MH+wX2cfUqwZ2A86yByofqpv4ry7XoF8dfygCf8mFMAvL/Dxe1OYvLzCn5RmoE2BrmHcEdaKyw5R2JhJr07cg8+wfDeLJofFgIHx+aXTD/Ye/vCUUDo0FFir2cV90Npv+nrA7xv0YuPCeudKoI8ndjEdchEth9z5djZrifnKi/rJdW9Sl4I8AJTyLSVXIYfIDGQephxU/JlLaZhyLFJbOkpLcDLahGGwjJU42xjBdVdW2YgGgJ8b9op2uPh8PSqgCZI8Xh16AQ4MQMYsPPbNWN4+/t9GBLe3XTYeqddHiIch37tHoGSQZcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by IA1PR11MB6146.namprd11.prod.outlook.com (2603:10b6:208:3ee::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Thu, 27 Oct
 2022 17:19:18 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d456:b3ee:cd32:4aed]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d456:b3ee:cd32:4aed%5]) with mapi id 15.20.5746.023; Thu, 27 Oct 2022
 17:19:18 +0000
Date: Thu, 27 Oct 2022 14:20:14 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20221027172014.xl737g7nd634k4wo@gjsousa-mobl2>
References: <20221025180335.1723742-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221025180335.1723742-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR03CA0156.namprd03.prod.outlook.com
 (2603:10b6:a03:338::11) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|IA1PR11MB6146:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d130479-de6b-48f7-2df6-08dab83f6155
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nH2jbVGnHkmUT7/BZLNanu8jf8/KfSLSof7jEOPQ3YW5znlG+3pendSIjUrbETwzD5dQvnEIzBGsu4FOPy/CHDNEdBLAnqFjUYsrYLIJta7mkUvGNoYK7T3B23SrhSXbryHPM42wGS/NcaaBb0rJ/01oNchg1KCMO52zCv+2DHPhurjniDqWxUNBfMymC+XDADpsOMxBrJnRbipPqZH7thYArFe/jZoQFxyLIaBuWUB0s+FALMj1tUK4KvZ46971p5GLJYfCt+TFfuCmfcWtK0TWogIqrZsW/t49BS6pnLxIWhobXjJjukbo/i6WudhaUmIPfLXb88yBgDrbrUZGAtibk9e5FgfSBT9SOz7buW6o4hV6YRfE5Qt06f7mzXYbmt+RRClW1Bd4KmSylHOk8AW4Yu5MF6QatsolPtSCcECqkP3HFBcKt3wzN5hI1AHKtlGxlFLqb/R6n3EZ6/YUEGlr+9XX6liErnrURZ976RZgq43QubEhp8pjYIQGgfbm2iMfX7XngGCfyDqbql8UV8ob+dbnA1ZK/WInCRhcCa196YNr/urYDtARFTVoh1I6jf+my/tbDsiPaTNhMMIm4G9CPcnGvEZggGdFIZWJGLN8AhRg6Bp1n0lyltOcCI3U/AxfxOjlEwlP9HRNa8bXzgDgdKCPHNCBST8vT3jMI9beoHEE592wS+X3MkdhwNFC1pRu7qbg7MmS6JWHTyjB+Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(39860400002)(366004)(396003)(136003)(376002)(451199015)(86362001)(44832011)(38100700002)(82960400001)(5660300002)(2906002)(66556008)(66476007)(8676002)(8936002)(41300700001)(33716001)(66946007)(6506007)(1076003)(186003)(6512007)(9686003)(478600001)(316002)(6486002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uKnNrMMrTBmJOxPtbvD9V/BY3CE0MjjM4QKJ1Q+tgZPQl/T3idp51MNe61Ad?=
 =?us-ascii?Q?tRbYSmVSDAPpqmA8+XDqfLX1ccs5yHWJ6WzGEkz3mMwj+qNkIevwRtujEHBZ?=
 =?us-ascii?Q?f84FxQjjip3ZByM0vb99SfjUwFNUdX49b3NZQtJl4y/03zkX12mJOChSfOCD?=
 =?us-ascii?Q?RlWbeta/aQEUsfDQFPpOsDoUKL1HOMbQMtlukEU9V1Gcm1T2frQ3MzXVKfVw?=
 =?us-ascii?Q?OzlooQrWpch3vlI/sK5zrMBIP4fUGUffHWWtZqliqBBdjTBYo8HxmBe6ZzOh?=
 =?us-ascii?Q?5FiUrrZ3hsgULuzppExXYCSPF/auDfPModZkxYxGwaQcAEbI5RLzLtC8xtDr?=
 =?us-ascii?Q?8cuVYw7/cHEOINKOqOxKFV1SZ/a/pIZ37vwk6hf1mHupiPibPrPgLZlJjMw+?=
 =?us-ascii?Q?Ri1WtqSS9te6yM2UhZrhcseaIoj3kDQD6JwxPr+E8vhZnAAWnrJ5GIuu8uqw?=
 =?us-ascii?Q?k1b2sLPb5Te3qdVIjONkVkjLjgC1wZc5/7ZceLKjSJ9NLkAcwMORTSiGRl2o?=
 =?us-ascii?Q?PwM6mG2Ko0WEis/QS2/Ot8SuRyT3kusa27I4KD3EsA5te7vDv3OIjGCLsw/L?=
 =?us-ascii?Q?saDwK/qBXGj+bGHzglH2ycMPRixks+AIk9CJHzBQgu7niftoU0hJvxBcrshL?=
 =?us-ascii?Q?laXUlAjiYE2t5RUVrBPJ8JvtI3fQt3lecb76n/gdcYMvnOeXSBVxblTiqXc+?=
 =?us-ascii?Q?nXAw/A4nbF/BBErTXXc8zF5WRtAEF4zvNpX2/NPDMQ7R3VZxhlCvUxiJplOB?=
 =?us-ascii?Q?SNn2OARwI0XP5OLByoOw6DfN3yrkxlZKw0pok2rHzBqK9xSOEoOIrPaAYfzw?=
 =?us-ascii?Q?lAOnsYn7XB95Sbobuyx+yPVkRllC9CyJYbHgIG2wrcC6aNdGiqXXmIbn//Z/?=
 =?us-ascii?Q?C5VztOcMBQIu7houkfGHrdaUFF1jDONBq887Lrl2V8FL1jA/E9PTcoyEdbiO?=
 =?us-ascii?Q?iND2qeeDZKEUYfimWmZ1n8CfGqsVPoq8IID1p4OTJgij/+LyhDBKxRVmcR1P?=
 =?us-ascii?Q?YUzFnyofjbi4S5+duw3JbIzw/8vlZHMPPY532C7ABfEFk36/CAj8nPjj2SXT?=
 =?us-ascii?Q?BHesLK+RLhpgoBE3P3/Ew457ngTI9YkbN47i9doxmJVf8FNd2i+PFPxZYjI4?=
 =?us-ascii?Q?j8Kh+uSqRDg9UE0ItolhZ9qCtD0BvaMD7145tKAWQllpGBV3UXZAfYomvoEa?=
 =?us-ascii?Q?NTHMkyhYcz0cORZd+Ioso+zyhBF5ddX3n/RT6myoMHeKFGtC/TzdesRNBfBe?=
 =?us-ascii?Q?PfCX12Eqcdq4ey6ywLz+qC8v/kZozcoiTSD+GOSljflJ6EsirupAvSOX9QbW?=
 =?us-ascii?Q?64Ap07XgYQ9nPCI79aTCKs2OrGKU1q7yPUenswes8yFGD++olDn5jcee8+ii?=
 =?us-ascii?Q?0AVXSJFhBkbapy5gaviWnvyc/OdSLfI+NlRQL7KQHuE4I1XjWoinc2yrY5Au?=
 =?us-ascii?Q?tu1bsp8OOyUY0M3QxU9LS1AIjVTEV8CLkrI7qz5q8SxFBqSGpfkI13f3W///?=
 =?us-ascii?Q?MpCoujwO3oi6X7ryn61XM3a0PIAWhjON3EXWcAaMG9e8GBaBCcdPwjHYyBfC?=
 =?us-ascii?Q?5T7qvA0TjWjqtptuUR9xFQFupxEKfu72rqMn3ng+IeWUwevwIM52rlOLbpic?=
 =?us-ascii?Q?/PoV9WJa9IMZuQ46S1eBYszZopKm6OitLh9PMRJbVIPAnTR5Rk4SWYVhZ81g?=
 =?us-ascii?Q?QoNuxQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d130479-de6b-48f7-2df6-08dab83f6155
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2022 17:19:18.5987 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 88jOZkUFdeM894Nw6s5GwP/Sbynis9wPeQOwAVOn9XT2cxwCF46n0vM5sKpTHUVt4TxUUVksy9cGGAf97TCGhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6146
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dg2: Introduce Wa_18018764978
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

On Tue, Oct 25, 2022 at 11:03:34AM -0700, Matt Atwood wrote:
> Wa_18018764978 applies to specific steppings of DG2 (G11 C0+,

I believe you mean "G10 C0+"?

> G11 and G12 A0+).
> 
> Bspec: 66622
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 36d95b79022c..e8372d4cd548 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -448,6 +448,9 @@
>  #define GEN8_L3CNTLREG				_MMIO(0x7034)
>  #define   GEN8_ERRDETBCTRL			(1 << 9)
>  
> +#define PSS_MODE2				_MMIO(0x703c)
> +#define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
> +
>  #define GEN7_SC_INSTDONE			_MMIO(0x7100)
>  #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
>  #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 63e1e6becf34..ced3a26cf7e7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -743,6 +743,11 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
>  		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
>  
> +	/* Wa_18018764978:dg2 */
> +	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
> +		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))

Checkpatch is complaining about the alignment here.

--
Gustavo Sousa

> +		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> +
>  	/* Wa_15010599737:dg2 */
>  	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
>  }
> -- 
> 2.37.3
> 
