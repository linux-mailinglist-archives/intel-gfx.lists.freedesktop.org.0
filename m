Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F41F587187
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Aug 2022 21:41:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BBF88BBD1;
	Mon,  1 Aug 2022 19:41:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F2F78B690
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Aug 2022 19:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659382882; x=1690918882;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NbmWu9xTKd0GhmBynqW26nutSXf5EYfXKxGOhIF2MhE=;
 b=Nf9rfIUZ2OWvdNvS+j+msQDFMvByO8gWkSD8wpws0TjW7AC/pL1z+uMq
 dAT+Hcw3vjcGHG4jgZYKjMmf8RlTgEBTWiUnPgEjwLpkesvzYa3QuUiYG
 6cTjg6LJcHuZGrdHlqKMXRn3GadDLgOiPXKDWiwOiJDeyBaMTQd94orik
 lQ+o18sdBdWE4Q8fRTUR9Bj8VcEaAlwLsDggXTv3D7kdFOJ78ypos9mPh
 jp8wF+s++TNpTqSfYHn/0uadxz9g9QsHsZD1E9DsVxv9gIWtwzuve23os
 hiwV0i+Z47CSu/zqRPbGaGaOYchdVa97WFLh+7/aJl6Rk+JnQbf3PYD4j A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="269612877"
X-IronPort-AV: E=Sophos;i="5.93,208,1654585200"; d="scan'208";a="269612877"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 12:41:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,208,1654585200"; d="scan'208";a="929679924"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 01 Aug 2022 12:41:21 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 1 Aug 2022 12:41:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 1 Aug 2022 12:41:20 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 1 Aug 2022 12:41:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PtKLOm1/iCOMavneeRbdaTDLrSy93nYGf7ZGKjB+nF3t+svp3pMZ6nzAdNjh1b3rvhdU76Of5zGLLMRHT4Z7Ps01XMgQrI7BMGxiNhMur7erG/nJVPzJ74GF/OwU3gRSWHX8RNhki5QfJ2b4/hJ98Gl1yMxNAUB2w+AurNieRwOGusTfGk65Ka+7ZDbVOkGmTRH2s33KazGPwbUguR/cOiXrEqqWdqhMiJLgr5+IKUoH/gfx1BBbPxe9XCFtwrV8RxNJ2epU+bBJSR0YQ/VdHmg4Ug3MT+c4vrTu+9WQdmDaYSNd4eFpjNOyMRTVQ7bvNVFBBxFeOmQGc/ycf8eJmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p1rmYciS/A5pWk0q0eejwRXtjjbuPuX9wggBCdcWshQ=;
 b=Koh31CwIV04cB5kPnCCxb58dMxyLxt+D+aRSj1Uvvyu5nw33+plUZd9NAfmm1iP3eRHpqBSf8zXY1DBQOabphWvkOFo/Sx/dmPW94fSTTYF8HoO6ttcHoVbs3xrVSqgd+Z+crc+GzujE8iqHq/hxntWAuZsd1/tFyJJK/odSMUeB0H/peOe1G9Lk/rhBLcSWPYXRmQo+ZzCBr26V2BCb9ZCrq+20slDr7am/cU6GpxFv4s82vvf9RP0axvoEaVKNz2+FL6M8TD4PYINA3Vj4F0YnV3XuZVz3qWBOTxZlQm/e6BPFLopiNSz0Mp20JSbHJ2JfftUusMYyAEPTYCWfXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by MN2PR11MB4712.namprd11.prod.outlook.com (2603:10b6:208:264::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Mon, 1 Aug
 2022 19:41:14 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5482.012; Mon, 1 Aug 2022
 19:41:14 +0000
Date: Mon, 1 Aug 2022 12:41:11 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Harish Chegondi <harish.chegondi@intel.com>
Message-ID: <YugsV2ClM8pTLoLN@mdroper-desk1.amr.corp.intel.com>
References: <20220728184907.31796-1-harish.chegondi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220728184907.31796-1-harish.chegondi@intel.com>
X-ClientProxiedBy: SJ0PR03CA0053.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::28) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 92b2896b-83b8-44b3-d1a6-08da73f5cb06
X-MS-TrafficTypeDiagnostic: MN2PR11MB4712:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Taty9bbUYFkIE16Krk6ZouRum6pmapemgEC2lxn7poAX3nrgbwKG8jSBdGkXpatrxiNHCetN2hNuZkoecMUd7vAfsgAZrHAFpOKVeua0dR0yZd0RXcM0RJEPQXA+/6jGzo7aYKjjiamwnRUOi1qUEIsR2U09WZQBc3nL3lnX2nWazGLcA5B8nke3AHEBmWPCzOuWnVUX53LdfuipFfwQhUnQOEzaTCLrasJK8q/aRUetaJrS4FmHhcbed/10bXIvBajuEKPAxZKDYQEyJeErrbOlEV1csOrG+hY11RXWzDb/GsClDmt3M82BIVjaXAO0CYjfazu2oIFHMf+GGncB4shnBBJY5ZiCZOuaxaRPbmBxmAgf3UW799psxu9N9zycYMqtjYAnpq23+V0qJFoRAt5C/MHlwYx033Ki786/UqfG7N4yYQ5aIb7AnwQCowWQpHQBcguKI1nCHNHflWS473ETnKeyzFyl0Fpfr1Nxwgol4vWgIcyGhkEHdF+bKYXFAz4K3pePvoWhsruXmuKzHeiXsKqzEougCU+qVnIOHC8PoxUIodGRCYB7MW2t30dvtz6F9CXFCvvwdA/vFJtu5UvfFLrAn3WGkKSAVqeFF0G5sewrmSQQW90aFC5XWydjYBWULIsO/HDmjcTXIHIr6jcU01ip0cqBSMEAfk9B3soI896zb+27bMh7epyeY5O5upOwzLExg2aRGPkqX9bTlWFq5X+a2aGHXHwf+tfxDFI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(376002)(39860400002)(396003)(366004)(478600001)(6486002)(6506007)(86362001)(6512007)(41300700001)(6666004)(26005)(38100700002)(82960400001)(186003)(8676002)(4326008)(2906002)(66556008)(8936002)(66946007)(66476007)(6862004)(5660300002)(6636002)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9WLKSbUIrl8P7WuXmMevsVx9KKj0Gzb0BC1W926oR9TpZ1lQkp6i5fMS59RB?=
 =?us-ascii?Q?dSzvUeAB88mFJZq5mSb9be2Ib/DAYpHWNlNJlIg+87rPCxHFn3Wavhf9LJTO?=
 =?us-ascii?Q?3VcZfC3ZjafsEKnvWGZb0IM5/zxW4Jbv0p3AW7gbNxTj0lVc2yDQvfiFsjrl?=
 =?us-ascii?Q?DO2HcxaRx3OloLjuj3vp8y9MmdyZJTZ4pHN6jo6i2Wbzd0ptZCK0TcRBfU3W?=
 =?us-ascii?Q?jLI4DsspssSvOchBV3TOqW8dA9pa3I+tqaCNCtt0nG64ZUn3NqDt7zAJuRYs?=
 =?us-ascii?Q?SNplD0lHY2ShnDcoHfuVzSxOfp9XnQTv/dC8w0S7cD4v86HYO+Dno0+CKlFG?=
 =?us-ascii?Q?aPDFws3rYDmKfeKtDhQSB4z8LUpfHalzIJQQDAkPcaPbQM8G2NuuuWKySAEA?=
 =?us-ascii?Q?AY+ZR3Kpaz3+m2iFisbyENY9Dh7IpYNY/WgTGwOd4ToG83K3p1uWolXDh8Iu?=
 =?us-ascii?Q?T9l9tuz6crguHsuaMt70ZkKx99MaWGcc4QPmHMyeyMI6PxgzHu/zVMWJCfkl?=
 =?us-ascii?Q?9GqiZu/q9ZBmmVbI6voLYAsnbl2wRYhWkE/juqOT1y9i6wwmvmxT5t7LUT8r?=
 =?us-ascii?Q?ta2eT1ODibIKEPffuR7TYBauwfz/TzDCWGU0KexT6nmVh1cxmvr5fO/WEwwa?=
 =?us-ascii?Q?TnYDKwcW8LuyasF5eiSIJvkemmudKEhQg9MwKjZGA6ZXTMy9icawvs1G1kNm?=
 =?us-ascii?Q?r6buXAmhMxv3V7XRvGkaXR8X84kIEOaVE1+BGLNrA0eBDTJ+1DpIPKsy2C0Q?=
 =?us-ascii?Q?BezxMSFad8D2x0MLdQJeQblO+j8J5aTBke+pQi1bX8IZNmlh4peJmx40haWE?=
 =?us-ascii?Q?cFhlyutRPqgY4FW1eYNhfCOBhaw3AA903XeD2nLTbLgITdBRWqydP6Zy+mi/?=
 =?us-ascii?Q?zxGVz9rqv2mhPJHRIuqEf7IzG/OXp7Ell2i/mz+gS4NmNB6Xz4Wkv4gAxqCt?=
 =?us-ascii?Q?lu4Aid0Hu392+J6sgY0GftOelPKzrkQd87McVWy1hYY6d5xLxWWVtlhDqlE2?=
 =?us-ascii?Q?muE5oMlDHAiRtYacFqsiuQpS7RkcqrvTsEdLZFJhhB7oSgqzrdigs/Rq/wRa?=
 =?us-ascii?Q?IXYGTyW++mHLmO2tHeQcOdYihRH9w1e61jL36ADYPjXZ+ORarRDhj9KYynoW?=
 =?us-ascii?Q?vTHFhtIrviBuJcK0Fh7KnzCGZfRe+hf9PQgPyGtG72lvgX+YsGuB1AGFs+1e?=
 =?us-ascii?Q?GqcaW9svv8RjZIdXrvBuJ3fdoEzCqGIUgVEvqAtfHOISax0tmhr8AYzQS5LZ?=
 =?us-ascii?Q?FBzzkviz8RrI+Y+mGBxXeYsSzg6/mvhNd4oG3CGEv2hS2HMXd015akIQdfzm?=
 =?us-ascii?Q?Etu1LlYG8I6e72OPC+j7rcq5rS0eF9D7Iuo0Fprot5zS4xA5NjPo0NtSRUii?=
 =?us-ascii?Q?2ThV1SdkUksMt4EEKElREYws17qTiiv6Jov7KdRqybbHIRv/eeR6K7F+ctPF?=
 =?us-ascii?Q?ivl00LrlBTlfvQAu81mVIS7n7GiZg/JJxwjQ7sI7z+h/Hmq1qJkOAhEEXWPT?=
 =?us-ascii?Q?nntzbo7HzBL9B30KbljlfUEQfE+fPDcIsxko7+W2GyKs1gptnc8z4gGtzgi/?=
 =?us-ascii?Q?Z6B5W3H2AUkEdHZ4zy/y8MLG9Ltm/MX+kA7yEKJ8GIC7ZhPiyu6Ertth2KZo?=
 =?us-ascii?Q?fQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 92b2896b-83b8-44b3-d1a6-08da73f5cb06
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2022 19:41:13.9406 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rlmsan22fFtOx6JcTIdtLqyRIjVoddnGRxB1UGf980is9PUkwE+kraayQV1VWQijjJNaT0iXPlu4lNjeL25A+M6L/lccn+npq9FsFELsd+0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4712
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_1509727124
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

On Thu, Jul 28, 2022 at 11:49:07AM -0700, Harish Chegondi wrote:
> Bspec: 46052
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Harish Chegondi <harish.chegondi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 ++++++++
>  2 files changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 60d6eb5f245b..b3b49f6d6d1c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1078,6 +1078,7 @@
>  
>  #define GEN10_SAMPLER_MODE			_MMIO(0xe18c)
>  #define   ENABLE_SMALLPL			REG_BIT(15)
> +#define   SC_DISABLE_POWER_OPTIMIZATION_EBB	REG_BIT(9)
>  #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
>  
>  #define GEN9_HALF_SLICE_CHICKEN7		_MMIO(0xe194)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index e8111fce56d0..434d85aec72b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2119,6 +2119,14 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		wa_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
>  	}
>  
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> +	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_FOREVER) ||

a0..forever covers all steppins and can be simplified to just
IS_DG2_G11().

With that changed,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


> +	    IS_DG2_G12(i915)) {
> +		/* Wa_1509727124:dg2 */
> +		wa_masked_en(wal, GEN10_SAMPLER_MODE,
> +			     SC_DISABLE_POWER_OPTIMIZATION_EBB);
> +	}
> +
>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0) ||
>  	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
>  		/* Wa_14012419201:dg2 */
> -- 
> 2.37.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
