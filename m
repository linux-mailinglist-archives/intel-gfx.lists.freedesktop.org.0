Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E1D787757
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 19:57:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B240310E5A0;
	Thu, 24 Aug 2023 17:57:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1041C10E5A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 17:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692899872; x=1724435872;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pdxIn/ic18Cm+GgG1IraWvaqK9yu6aWhp21SeZoJ2lU=;
 b=mr7THlyF2vS6rPBItcNvAgxXmJ9sdJMVGoWg7y2MUIuQvycghCVvt2fE
 wMpw0g7dY0uIwcF2Ono+859mxglVKSmPz/eb7OscgxiD+VDlr4hlGE3a3
 MFvg95O7eIJCPW64LA5TarJD2D09DIsgg9o9Vs7DT0d2eYuvZqZ6X6yhL
 ZoHcipQlwzmC73viEq+Udc3Et2XWbTA8E6UgOiq/aIPH92ZzotZDvj2vf
 mMEUl0CjYOzU330cP0bnnD8Ut4bMaXjKBUhO7YNrbx00H/YdmuWpVEtwn
 yilpH+Or5oTKrPRRY9e1QLu1UFEO4ou3pwaEjb9/6oPibYQzhe/JbmIOq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="359515978"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="359515978"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 10:57:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="802639017"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="802639017"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 24 Aug 2023 10:57:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 10:57:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 10:57:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 10:57:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DGOdoglLseInBgRT9qN5NDVO/mvOsfogWttG2nOToefuxqS1BbMGkGlryVnq/0eFkxwfi7Y1jf3KnxA+TdVIDA48IvnQssZ1aywcw4bZOPAu9eNkPP/FAClr8l6nmbKiLhzbAp0tqTw7ICwxoNC2OBZdxJliezm6uokGufa1+T+ZC9DErVe+Ps8zsTG/+gG8qx8SbaOIe78yj4ELUKLZOETFUYNOJ0g4FLkUfoouWVZZXrBjKpsE/Wzad11h2a83GVV8uicLD6CK26fOA1Kx90/3ifkCd2SYW6iwUQs8eii30Vb2r51fl9Ps81nzUI+aq39KY3VDPL51nI8aEJ48ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p/UQKEzJUT1Am73H5EaBIIoPPZfywHOtD1KJc6tlxzE=;
 b=VkSUHzDuunPoezk7PmJfigibR85TlsKfR1Ba9EL/BvzFOG2bFJ3B0zD6oQ2DOgS6dCmqQiKygr+t4/4QH/xkrIaF9BI03Pi2upQ1ifRPw7eckQk6hDdy12D9ZzubmnamRAUl/hjAy3WARE1RAoZkCXCpALdjpH/hXhncf7lq3SihfZ7TcJf7Bsj1jSoHW9H8NmnFATtBst5FjS+MfhH5V8qZydblKZZyrslNm/L1ZBxDoOw7svcEujHdD0ku60VY78OXpCXw0SOZoHUeL6G23u/wsUUZv+ChKZATtsDBFawp7D2iRWl4INmjtNGiOhseK1nnxRb6K5nVMcSBLcNohQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5)
 by IA0PR11MB7792.namprd11.prod.outlook.com (2603:10b6:208:409::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 17:57:46 +0000
Received: from IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::c66d:c5f1:1ea6:74b7]) by IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::c66d:c5f1:1ea6:74b7%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 17:57:45 +0000
Date: Thu, 24 Aug 2023 10:57:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <20230824175741.GX1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823185104.1994138-1-jonathan.cavitt@intel.com>
 <20230823185104.1994138-2-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823185104.1994138-2-jonathan.cavitt@intel.com>
X-ClientProxiedBy: BY3PR10CA0010.namprd10.prod.outlook.com
 (2603:10b6:a03:255::15) To IA1PR11MB7854.namprd11.prod.outlook.com
 (2603:10b6:208:3f6::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7854:EE_|IA0PR11MB7792:EE_
X-MS-Office365-Filtering-Correlation-Id: d3252430-ae45-49fa-f0b3-08dba4cb9ef4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: c7SpZffcIX3ZsTl5v8CMXW0HS79C8VU/CPQsbWphN9LMxI7F6/kiZq4FGcHmVDFTDwnnFxuk90k9crP36GQMngllvDRBWQ/nTawznj/UMR2iCBmgdE/TPvsVBr+yei5L8yPBGA2y74TD9zVBye29mY9HXtL+qUg/BUk0YTrLHcWnOspYn7UvILRiQnrsUGv0EK70c+C4yv4CdDkTQoMYq1Vo0bhXHMSXhYbqR+PIW6y+tZdD2VZ6ig3RhMQsKkUsv3h4XMYMS2/+uGExC4Bq4ZRqLcsIqmPSRxEa8jAB9nKGOvD64AsTYk1f7tfEA0viSS3VWf0BiCBXjjPS+Hg1OAQC7kXou1qTKY6kTSEKocBXGDSIFux5NsEepi3MPtrhmhEwxv0+CzI/kcYpV4pW7SDwXd0MW7bGZEYWw4Jp7p4GVXcO7HklXUPs+FGzGgU3CdTLzSDX57Tx0sHeV60/29LKDltM/GlNmqylyXc/YyAnPeyRsmEsl1VXeChGNUzAu3Y73Pr+SWcOasgGhBZLWNunnKZ3vfHSdIDjTjnmq+ghA0PZIjE0slQBY2TBQS2Z
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(396003)(136003)(39860400002)(366004)(186009)(451199024)(1800799009)(6512007)(26005)(83380400001)(1076003)(30864003)(41300700001)(66946007)(66476007)(66556008)(2906002)(6636002)(316002)(5660300002)(4326008)(8936002)(8676002)(6862004)(478600001)(6486002)(6666004)(6506007)(82960400001)(86362001)(33656002)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aLqFnJ1flg3As+q+U27Ia3V3/XfYFciZK4Lld5Nnel10dRmCAqu5tg7WWW8R?=
 =?us-ascii?Q?I8hpepBns0lDLg4g1A3tlsg6wA8BWCp5MDFwVMx19vDuBk7JWR2Dgh98xy+v?=
 =?us-ascii?Q?p+/DK8cBFlOh3FWLQ60WzR23yGMjGCoGmedpceKgFByyK7xUoMUtTLpyUWKE?=
 =?us-ascii?Q?vbXd7af7TnOFnOrB3UkdmDl9bUJe27ciTDJ02FND4Kf3aKuN2kE1pmz1QOM1?=
 =?us-ascii?Q?vjmiNkoWkIuqy+DoAX/wfe3vHsAf1IEumHb7YvbXP7MV5kkSzdElvf5iZwkw?=
 =?us-ascii?Q?xyxEfxmcUSwWFXxmrFnmnM6Wapw6YN+fWuqAI/dw7pZwaB4tLJV1CzHw2AS7?=
 =?us-ascii?Q?OqYv/znUEp9U7vHYsgm8+maKha4bj1xdfgSToYoqTY5wDXBj9PxgLK/0Jcwa?=
 =?us-ascii?Q?DxUrg40QPn2Za6m/HN1QLu0u2wZa6gcUqFxUP/KuN1ev49ixeme/cd1QhOVV?=
 =?us-ascii?Q?b034PDVhqxK4xuJguOOKk01hR+Ir1OpLpwxhEHZwfCzYtSGzCPsTJxwslneM?=
 =?us-ascii?Q?sXQ3IgKUgCNp+KXxa0/LdUqHH/6fTCel+D0SpodgUXvPMzzy2Glao2DlzP+b?=
 =?us-ascii?Q?CRob/hOipIYE5XXkTfxqlNXTbNZ861Nev+rB9Z478BHC+3ZgfioFyPKR36f7?=
 =?us-ascii?Q?rGPUxnxe1a4Hf47NqBPA3C6cHW+z4U9Tp2iZMYTAvVMVaFj5rMIW/aSmUx+S?=
 =?us-ascii?Q?A1rgaCMm1COLcEhR9HkWFLh1PjkfrgEgwoZvG5HEMIw80w65F1hb0/4Ejrcn?=
 =?us-ascii?Q?jWAMpXJKnBrtHy9eBVSbBUAmYCs/JaKpyA2QXeken43q1DSMU8J375d4yAZ9?=
 =?us-ascii?Q?KGsaJHk3S3mimTMVqEuwhkR8IGmFv0r0YRflAmPaw0KMzMO5A2TzEugQ/nSS?=
 =?us-ascii?Q?PPnUYbIxSEkf9NTbR2KsmAHeX0Zm0TsE2vvy3mERmns7lffwUvLMHTuh2NAo?=
 =?us-ascii?Q?f3A5MOzNowTKikFH5ic/iEZGdMkNTJb1FmR4/nOmqFM3X9K4VG+CdxsykupO?=
 =?us-ascii?Q?NwSfajSeWyJxj07S3nGZR5BE11v2/qUm1t1mTN8MyahQf4ixfsS//GlChIYR?=
 =?us-ascii?Q?ZAZ3FkxHezfdnWeFHMd1m+ZeSprTeSgYi/qVeruajpQleuZUcsTklXxSBtqp?=
 =?us-ascii?Q?RxMpEItd1OV9jbj+da+2IBejOA4lYGSh6wOBtOgeFuCmoJ+7ILP8ouXGO66a?=
 =?us-ascii?Q?B0YTEg70DQ4ZOaUorXvZp5HHNjshRbM0kO4zSH4hoorO0pZxd76a9Som4aSl?=
 =?us-ascii?Q?qRNvXTNSmMtVaikDSr3DCTs5yb9iIZWN8eMgiwnR55VBPDyQoFL1MmBKS7wx?=
 =?us-ascii?Q?CXXMOT2u5vY7yN6c5UIPErnmERuldhbeGxM5Pmc6yrGCIh5m9dUjm9E5hPsr?=
 =?us-ascii?Q?9C0RYH9VOlneII0zGZnSUWmHSpn+FyoR8/bU5iopdD7N90X1ob/C4QnoCVJ/?=
 =?us-ascii?Q?xpNGo+bVQ3+8RQqmj5rB1OyE5HNoKMyRGOoagG0Ls++dLjifIBpKiwB8zR+D?=
 =?us-ascii?Q?3h3wLFCVid4Heqc6Cz7Xj4myhcOEXVQIQqa0HGB2I6DpL6AhzkfI7BNIIGqE?=
 =?us-ascii?Q?/6wk3XC42A4Qbgo3A32hn9Kcoqz9j0+auqVlnR8DQMyZYIYfcT177QYtWYc/?=
 =?us-ascii?Q?Qg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3252430-ae45-49fa-f0b3-08dba4cb9ef4
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 17:57:45.7621 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kfnFPt6OGJu/TmDQFC/nTKwkJeH9iMTx6BsFV5Kwuk5yoxAIjXA3rPjqOxEXRyh3xrrIh1Valz4MzCFYs0H0/l9jVr5JQzSq2lAvZb9zsQc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7792
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: Add WABB blit for
 Wa_16018031267 / Wa_16018063123
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
Cc: tomasz.mistat@intel.com, rodrigo.vivi@intel.com,
 gregory.f.germano@intel.com, intel-gfx@lists.freedesktop.org,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 11:51:03AM -0700, Jonathan Cavitt wrote:
> From: Nirmoy Das <nirmoy.das@intel.com>
> 
> Apply WABB blit for Wa_16018031267 / Wa_16018063123.
> Additionally, update the lrc selftest to exercise the new
> WABB changes.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_regs.h |   3 +
>  drivers/gpu/drm/i915/gt/intel_gt_types.h    |   3 +
>  drivers/gpu/drm/i915/gt/intel_lrc.c         | 114 +++++++++++++++++++-
>  drivers/gpu/drm/i915/gt/selftest_lrc.c      |  65 +++++++----
>  drivers/gpu/drm/i915/i915_drv.h             |   5 +
>  5 files changed, 169 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> index 6b9d9f837669..2e06bea73297 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> @@ -118,6 +118,9 @@
>  #define   CCID_EXTENDED_STATE_RESTORE		BIT(2)
>  #define   CCID_EXTENDED_STATE_SAVE		BIT(3)
>  #define RING_BB_PER_CTX_PTR(base)		_MMIO((base) + 0x1c0) /* gen8+ */
> +#define   PER_CTX_BB_FORCE			BIT(2)
> +#define   PER_CTX_BB_VALID			BIT(0)
> +
>  #define RING_INDIRECT_CTX(base)			_MMIO((base) + 0x1c4) /* gen8+ */
>  #define RING_INDIRECT_CTX_OFFSET(base)		_MMIO((base) + 0x1c8) /* gen8+ */
>  #define ECOSKPD(base)				_MMIO((base) + 0x1d0)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index def7dd0eb6f1..81989659ff78 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -307,6 +307,9 @@ enum intel_gt_scratch_field {
>  
>  	/* 8 bytes */
>  	INTEL_GT_SCRATCH_FIELD_COHERENTL3_WA = 256,
> +
> +	/* 8 bytes */

This section of scratch is being used as the target of a dummy blit with
destination stride = (0x3F + 1) and height 5.  That's more than just 8
bytes.

> +	INTEL_GT_SCRATCH_FIELD_DUMMY_BLIT = 384,
>  };
>  
>  #define intel_gt_support_legacy_fencing(gt) ((gt)->ggtt->num_fences > 0)
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 967fe4d77a87..444ad1977b10 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -828,6 +828,18 @@ lrc_ring_indirect_offset_default(const struct intel_engine_cs *engine)
>  	return 0;
>  }
>  
> +static void
> +lrc_setup_bb_per_ctx(u32 *regs,
> +		     const struct intel_engine_cs *engine,
> +		     u32 ctx_bb_ggtt_addr)
> +{
> +	GEM_BUG_ON(lrc_ring_wa_bb_per_ctx(engine) == -1);
> +	regs[lrc_ring_wa_bb_per_ctx(engine) + 1] =
> +		ctx_bb_ggtt_addr |
> +		PER_CTX_BB_FORCE |
> +		PER_CTX_BB_VALID;
> +}
> +
>  static void
>  lrc_setup_indirect_ctx(u32 *regs,
>  		       const struct intel_engine_cs *engine,
> @@ -997,7 +1009,18 @@ static u32 context_wa_bb_offset(const struct intel_context *ce)
>  	return PAGE_SIZE * ce->wa_bb_page;
>  }
>  
> -static u32 *context_indirect_bb(const struct intel_context *ce)
> +/**

Just a normal comment is fine here; we generally don't use formal
kerneldoc on static functions.

> + * context_wabb -
> + * Generates the location of the desired batch buffer used for workarounds
> + * @ce:		The context used for the workaround.
> + * @per_ctx:	When enabled, the function returns the location of
> + * 		the PER_CTX_BB.  When disabled, the function returns
> + * 		the location of the INDIRECT_CTX.

Nitpick:  s/enabled/true/, s/disabled/false/

> + *
> + * Returns: The location of the PER_CTX_BB or INDIRECT_CTX in the ce
> + * context, depending on if per_ctx is true or false, respectively.
> + */
> +static u32 *context_wabb(const struct intel_context *ce, bool per_ctx)
>  {
>  	void *ptr;
>  
> @@ -1006,6 +1029,7 @@ static u32 *context_indirect_bb(const struct intel_context *ce)
>  	ptr = ce->lrc_reg_state;
>  	ptr -= LRC_STATE_OFFSET; /* back to start of context image */
>  	ptr += context_wa_bb_offset(ce);
> +	ptr += per_ctx ? PAGE_SIZE : 0;
>  
>  	return ptr;
>  }
> @@ -1082,7 +1106,8 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
>  
>  	if (GRAPHICS_VER(engine->i915) >= 12) {
>  		ce->wa_bb_page = context_size / PAGE_SIZE;
> -		context_size += PAGE_SIZE;
> +		/* INDIRECT_CTX and PER_CTX_BB need separate pages. */
> +		context_size += PAGE_SIZE * 2;
>  	}
>  
>  	if (intel_context_is_parent(ce) && intel_engine_uses_guc(engine)) {
> @@ -1370,12 +1395,94 @@ gen12_emit_indirect_ctx_xcs(const struct intel_context *ce, u32 *cs)
>  	return gen12_emit_aux_table_inv(ce->engine, cs);
>  }
>  
> +static u32 *xehp_emit_fastcolor_blt_wabb(const struct intel_context *ce, u32 *cs)
> +{
> +	struct intel_gt *gt = ce->engine->gt;
> +	int mocs = gt->mocs.uc_index << 1;
> +	u32 addr = intel_gt_scratch_offset(gt, INTEL_GT_SCRATCH_FIELD_DUMMY_BLIT); 
> +
> +	/**
> +	 * Wa_16018031267 / Wa_16018063123 requires that SW forces the
> +	 * main copy engine arbitration into round robin mode.  We
> +	 * additionally need to submit the following WABB blt command
> +	 * to produce 4 subblits with each subblit generating 0 byte
> +	 * write requests as WABB:
> +	 *
> +	 * XY_FASTCOLOR_BLT
> +	 *  BG0    -> 5100000E
> +	 *  BG1    -> 0000003F (Dest pitch)
> +	 *  BG2    -> 00000000 (X1, Y1) = (0, 0)
> +	 *  BG3    -> 00040001 (X2, Y2) = (1, 4)
> +	 *  BG4    -> scratch
> +	 *  BG5    -> scratch
> +	 *  BG6-12 -> 00000000
> +	 *  BG13   -> 20004004 (Surf. Width= 2,Surf. Height = 5 )
> +	 *  BG14   -> 00000010 (Qpitch = 4)
> +	 *  BG15   -> 00000000
> +	 */
> +	*cs++ = XY_FAST_COLOR_BLT_CMD | (16 - 2);
> +	*cs++ = FIELD_PREP(XY_FAST_COLOR_BLT_MOCS_MASK, mocs) | 0x3f;
> +	*cs++ = 0;
> +	*cs++ = 4 << 16 | 1;
> +	*cs++ = addr;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +	*cs++ = 0x20004004;
> +	*cs++ = 0x10;
> +	*cs++ = 0;
> +
> +	*cs++ = MI_BATCH_BUFFER_END;
> +
> +	return cs;
> +}
> +
> +static u32 *
> +xehp_emit_per_ctx_bb(const struct intel_context *ce, u32 *cs)
> +{
> +	/* Wa_16018031267, Wa_16018063123 */
> +	if (ce->engine->class == COPY_ENGINE_CLASS &&
> +	    NEEDS_FASTCOLOR_BLT_WABB(ce->engine->i915))
> +		cs = xehp_emit_fastcolor_blt_wabb(ce, cs);
> +
> +	return cs;
> +}
> +
> +
> +static void
> +setup_per_ctx_bb(const struct intel_context *ce,
> +		 const struct intel_engine_cs *engine,
> +		 u32 *(*emit)(const struct intel_context *, u32 *))
> +{
> +	/* Place PER_CTX_BB on next page after INDIRECT_CTX */
> +	u32 * const start = context_wabb(ce, true);
> +	u32 *cs;
> +
> +	cs = emit(ce, start);
> +
> +	/* Skip PER_CTX_BB setup when not needed. */
> +	if (cs == start)
> +		return;
> +
> +	GEM_BUG_ON(cs - start > I915_GTT_PAGE_SIZE / sizeof(*cs));
> +	while ((unsigned long)cs % CACHELINE_BYTES)
> +		*cs++ = MI_NOOP;
> +
> +	lrc_setup_bb_per_ctx(ce->lrc_reg_state, engine,
> +			     lrc_indirect_bb(ce) + PAGE_SIZE / sizeof(*cs));

What's the "/ sizeof(*cs)" for?  Doesn't the per_ctx_bb come a full page
after the indirect_ctx?

> +}
> +
>  static void
>  setup_indirect_ctx_bb(const struct intel_context *ce,
>  		      const struct intel_engine_cs *engine,
>  		      u32 *(*emit)(const struct intel_context *, u32 *))
>  {
> -	u32 * const start = context_indirect_bb(ce);
> +	u32 * const start = context_wabb(ce, false);
>  	u32 *cs;
>  
>  	cs = emit(ce, start);
> @@ -1474,6 +1581,7 @@ u32 lrc_update_regs(const struct intel_context *ce,
>  		/* Mutually exclusive wrt to global indirect bb */
>  		GEM_BUG_ON(engine->wa_ctx.indirect_ctx.size);
>  		setup_indirect_ctx_bb(ce, engine, fn);
> +		setup_per_ctx_bb(ce, engine, xehp_emit_per_ctx_bb);
>  	}
>  
>  	return lrc_descriptor(ce) | CTX_DESC_FORCE_RESTORE;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 5f826b6dcf5d..f1dce05bbfb7 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -1555,7 +1555,7 @@ static int live_lrc_isolation(void *arg)
>  	return err;
>  }
>  
> -static int indirect_ctx_submit_req(struct intel_context *ce)
> +static int wabb_ctx_submit_req(struct intel_context *ce)
>  {
>  	struct i915_request *rq;
>  	int err = 0;
> @@ -1579,7 +1579,8 @@ static int indirect_ctx_submit_req(struct intel_context *ce)
>  #define CTX_BB_CANARY_INDEX  (CTX_BB_CANARY_OFFSET / sizeof(u32))
>  
>  static u32 *
> -emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
> +emit_wabb_ctx_canary(const struct intel_context *ce,
> +			    u32 *cs, bool per_ctx)
>  {
>  	*cs++ = MI_STORE_REGISTER_MEM_GEN8 |
>  		MI_SRM_LRM_GLOBAL_GTT |
> @@ -1587,26 +1588,43 @@ emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
>  	*cs++ = i915_mmio_reg_offset(RING_START(0));
>  	*cs++ = i915_ggtt_offset(ce->state) +
>  		context_wa_bb_offset(ce) +
> -		CTX_BB_CANARY_OFFSET;
> +		CTX_BB_CANARY_OFFSET +
> +		(per_ctx ? PAGE_SIZE : 0);
>  	*cs++ = 0;
>  
>  	return cs;
>  }
>  
> +static u32 *
> +emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
> +{
> +	return emit_wabb_ctx_canary(ce, cs, false);
> +}
> +
> +static u32 *
> +emit_per_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
> +{
> +        return emit_wabb_ctx_canary(ce, cs, true);
> +}
> +
>  static void
> -indirect_ctx_bb_setup(struct intel_context *ce)
> +wabb_ctx_setup(struct intel_context *ce, bool per_ctx)
>  {
> -	u32 *cs = context_indirect_bb(ce);
> +	u32 *cs = context_wabb(ce, per_ctx);
>  
>  	cs[CTX_BB_CANARY_INDEX] = 0xdeadf00d;
>  
> -	setup_indirect_ctx_bb(ce, ce->engine, emit_indirect_ctx_bb_canary);
> +	if (per_ctx)
> +		setup_per_ctx_bb(ce, ce->engine, emit_per_ctx_bb_canary);
> +	else
> +		setup_indirect_ctx_bb(ce, ce->engine, emit_indirect_ctx_bb_canary);
>  }
>  
> -static bool check_ring_start(struct intel_context *ce)
> +static bool check_ring_start(struct intel_context *ce, bool per_ctx)
>  {
>  	const u32 * const ctx_bb = (void *)(ce->lrc_reg_state) -
> -		LRC_STATE_OFFSET + context_wa_bb_offset(ce);
> +		LRC_STATE_OFFSET + context_wa_bb_offset(ce) +
> +		(per_ctx ? PAGE_SIZE / sizeof(u32) : 0);
>  
>  	if (ctx_bb[CTX_BB_CANARY_INDEX] == ce->lrc_reg_state[CTX_RING_START])
>  		return true;
> @@ -1618,21 +1636,21 @@ static bool check_ring_start(struct intel_context *ce)
>  	return false;
>  }
>  
> -static int indirect_ctx_bb_check(struct intel_context *ce)
> +static int wabb_ctx_check(struct intel_context *ce, bool per_ctx)
>  {
>  	int err;
>  
> -	err = indirect_ctx_submit_req(ce);
> +	err = wabb_ctx_submit_req(ce);
>  	if (err)
>  		return err;
>  
> -	if (!check_ring_start(ce))
> +	if (!check_ring_start(ce, per_ctx))
>  		return -EINVAL;
>  
>  	return 0;
>  }
>  
> -static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
> +static int __lrc_wabb_ctx(struct intel_engine_cs *engine, bool per_ctx)
>  {
>  	struct intel_context *a, *b;
>  	int err;
> @@ -1667,14 +1685,14 @@ static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
>  	 * As ring start is restored apriori of starting the indirect ctx bb and
>  	 * as it will be different for each context, it fits to this purpose.
>  	 */
> -	indirect_ctx_bb_setup(a);
> -	indirect_ctx_bb_setup(b);
> +	wabb_ctx_setup(a, per_ctx);
> +	wabb_ctx_setup(b, per_ctx);
>  
> -	err = indirect_ctx_bb_check(a);
> +	err = wabb_ctx_check(a, per_ctx);
>  	if (err)
>  		goto unpin_b;
>  
> -	err = indirect_ctx_bb_check(b);
> +	err = wabb_ctx_check(b, per_ctx);
>  
>  unpin_b:
>  	intel_context_unpin(b);
> @@ -1688,7 +1706,7 @@ static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
>  	return err;
>  }
>  
> -static int live_lrc_indirect_ctx_bb(void *arg)
> +static int lrc_wabb_ctx(void *arg, bool per_ctx)
>  {
>  	struct intel_gt *gt = arg;
>  	struct intel_engine_cs *engine;
> @@ -1697,7 +1715,7 @@ static int live_lrc_indirect_ctx_bb(void *arg)
>  
>  	for_each_engine(engine, gt, id) {
>  		intel_engine_pm_get(engine);
> -		err = __live_lrc_indirect_ctx_bb(engine);
> +		err = __lrc_wabb_ctx(engine, per_ctx);
>  		intel_engine_pm_put(engine);
>  
>  		if (igt_flush_test(gt->i915))
> @@ -1710,6 +1728,16 @@ static int live_lrc_indirect_ctx_bb(void *arg)
>  	return err;
>  }
>  
> +static int live_lrc_indirect_ctx_bb(void *arg)
> +{
> +	return lrc_wabb_ctx(arg, false);
> +}
> +
> +static int live_lrc_per_ctx_bb(void *arg)
> +{
> +	return lrc_wabb_ctx(arg, true);
> +}		
> +
>  static void garbage_reset(struct intel_engine_cs *engine,
>  			  struct i915_request *rq)
>  {
> @@ -1947,6 +1975,7 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(live_lrc_garbage),
>  		SUBTEST(live_pphwsp_runtime),
>  		SUBTEST(live_lrc_indirect_ctx_bb),
> +		SUBTEST(live_lrc_per_ctx_bb),
>  	};
>  
>  	if (!HAS_LOGICAL_RING_CONTEXTS(i915))
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 87ffc477c3b1..15b54b3beaa5 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -813,4 +813,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
>  				       GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>  
> +#define NEEDS_FASTCOLOR_BLT_WABB(i915)	(GRAPHICS_VER_FULL(i915) == IP_VER(12, 70) || \
> +					 GRAPHICS_VER_FULL(i915) == IP_VER(12, 71) || \
> +					 IS_PONTEVECCHIO(i915) || \
> +					 IS_DG2(i915))

Looks like the workaround is still in pending state for DG2 and PVC, but
assuming that goes through to completion, we can write this condition
with the new IP range check:

   #define NEEDS_FASTCOLOR_BLT_WABB(gt) \
        IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 55), IP_VER(12, 71));

since there aren't any platforms in the range that the workaround
doesn't apply to.

It might be best to keep this #define in the file that uses it.
i915_drv.h is already too cluttered and this isn't something that needs
to be globally available to the entire driver.


Matt

> +
>  #endif
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
