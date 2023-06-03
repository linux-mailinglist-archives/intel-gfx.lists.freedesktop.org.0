Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF88720C90
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Jun 2023 02:15:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDB2710E10D;
	Sat,  3 Jun 2023 00:15:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E41A10E10D
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Jun 2023 00:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685751331; x=1717287331;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BPDcV1XdbzVhj3ukig2ZVxjUaZWhRp/OmaYd3PvEx1s=;
 b=Ld/lBkfgjC1aY95dA9tj9DZeSFVmmij/b21vGjGlywPp1wFOFnFypbSF
 9iXvdlJTrG73QZx8rirzW01VVRik2Nxnd3JjPD0sSwJuYoB42iUrtTb1g
 cwvunLsZRdJ/4pVn928kDtfZGXIvD6JuZJDhtwGoMGIgXjK29H2EdqNmi
 olwV02gpc4ZKEpdCTNU0qFe9GuScwj3bQN5SXH6/XmFdFcTcvYJ8VOEEa
 uqEDYYe46mGRj5jIPzAjsEllZi7Qfw002O45V+16wl7ygzbc8hlpo+zgb
 19LGWQh8LC32L/7fDKbw+5Px/0MRDuqfBNdA3kpc0VGL7Ml0YVcSBNHW3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="335623530"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="335623530"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 17:15:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="711146379"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="711146379"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 02 Jun 2023 17:15:30 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 17:15:30 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 17:15:29 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 2 Jun 2023 17:15:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 2 Jun 2023 17:15:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XzYkAXikEUg38iz5JtoPsWHWT+K6WF5+ItwhjR/qyMHiUeA4QAq6jyEOjI1IYXZI0qZ0NdVz4N7eYcJWvxi2R9ij+mUJkS1gMC9OPMDWYStxlVBvIn4UAWLUEd1sa84yeOwUB1NuLtA3VTRn/0g1FPeHPmuBRKBCChwxeFyHbkiS1sO83GxxBu9sC/FVTSauOIc3Q56Wu+cybQS7253jrspAgV1l4ocBEVFd3YUhdmLLeIVYb1623QfDhZe3gX4hwpjFArfpsLQ7vGboDTS/fASGHfvMjXX9Qqd5eX3Dn+M6tMmjeY02ypBz23AV1CCEoPkW1UV6mdLubG+wQuo6PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CpJjvZZ3zADk9sKFd1euvdAu46eZFyheONoSnNUoddE=;
 b=Osc0pXljRfFpaW6UCdPLiroronxsCpCwbCqBEVc0OrV/00me9Nmug1ApL0KKieTy2PHwVj85nBjtp6D6qmm50wwDjqdHlsPm+AqC4/IjKZ77RgQaGE92x4iVVffjK20JOu9Wj2FTbZ9X8XsUSMHC4nGv4B9j7lrDGlCduSZO7i25ZbKwUtFJWWxsRBMuSBT8WPlnn82dRVz/FLbUHE7CJ1BQpjt0AI1jdMp/i0SyxhTyip54j2aYIWnZ8zo8Mm9E5U12vWfLGmqMZrJkeS7XakNmgL9FMo5mZqXPg1l/MV1jwVWa1WHc5ebJsKNxQFmSADz/KRDiFQ5oitGWkX9n5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS7PR11MB7908.namprd11.prod.outlook.com (2603:10b6:8:ea::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.27; Sat, 3 Jun 2023 00:15:28 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%3]) with mapi id 15.20.6455.027; Sat, 3 Jun 2023
 00:15:28 +0000
Date: Fri, 2 Jun 2023 17:15:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20230603001524.GT6953@mdroper-desk1.amr.corp.intel.com>
References: <20230602231754.1596433-1-matthew.s.atwood@intel.com>
 <20230602231754.1596433-3-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230602231754.1596433-3-matthew.s.atwood@intel.com>
X-ClientProxiedBy: BY3PR05CA0004.namprd05.prod.outlook.com
 (2603:10b6:a03:254::9) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS7PR11MB7908:EE_
X-MS-Office365-Filtering-Correlation-Id: f7de7209-335f-4104-9a0f-08db63c7a289
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fg7OiNjHO/15H603OBrd+c1NYYFibipXMuk36sSPw7+nQKzp6sSyjxzSh6pVyUoxDw+Wamp+7P47Yo6ziM33JCiSoiKxlsM8Ym2NEixccZ4wRrWs2G3LF4o2Hzscc7ZggBZDVTxATPtmHMIzf5tLdP1vTdz4cKzFCmCTzTQ45152H2cvXOHKgqWv8nJCKzVUqHbnFTqf2NrI5QFMGpykLZj+mNkWcaoqg6dkcyixIRp3ETM2+TtWgpyJZpJDWu0OtLgATAdmYtex6E2Catx7i0w7Ose/X+3QApTI+ptthVJHoIK0iUUOFWQjBzuJj+cSCsGofC78FGMrA8TlEXB4hAk/z3p3wC9JQwWm31rbEM/CPoElRlfIgwyojwJFYqMQcsMouYnf4hNZ+cXqGQrfQbZERQSQetNOabnCqzKrfPimZJxUprb6yc9Nd67xHjmMNPFaxI6j4r7LxDkCO+r15y1eg3aAMHnOVPGtz4RF0DeLv/tHilsFh2IbbZqM9zR2twMoz6Yci59HjDbyje6ZzE2hKQnTn2AtdoQ5dJS/dRGaw4EqjJBYBdiZC+UJ1wYx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(39860400002)(396003)(366004)(376002)(451199021)(86362001)(33656002)(38100700002)(82960400001)(478600001)(6486002)(6666004)(2906002)(8936002)(8676002)(6862004)(6636002)(4326008)(5660300002)(66556008)(66946007)(66476007)(316002)(41300700001)(186003)(83380400001)(6512007)(1076003)(6506007)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gTwKylx2ilLBWcAfx75t+Hblggu6Bal99Hc11oQ1UtPll7q4EMrdKHL21O8H?=
 =?us-ascii?Q?rB6ULenmXw4VrIaSlYoH/SkoMJTM4Pmm3LrHayNxqoOZFpdPopsr3XUllsmH?=
 =?us-ascii?Q?WJTUAEC6W6M8HrxGQXsRnWZUDsHi4LwzzLwFO7wH3rKDt1P68j5DU6xfhSlo?=
 =?us-ascii?Q?Ntm6LOQmrHv9B5/TH2Vdsz+O/hLtdPAOXiuBcr6Iz85aiAegiiaGb/dVw15K?=
 =?us-ascii?Q?vGIHNYQ/eRFn/jLt4y9A1pqS4tCXGc1iD84x03rrocZUFvflpyIorfOHgfp+?=
 =?us-ascii?Q?ZTM4x/jydsCUn3tpDk6XHnr7MilQkZxUiiK2bYVpS2oAt8Sx1eWvFwZYTfCR?=
 =?us-ascii?Q?nhe2Qnz8frn1J7dcfZnmGtfVciqwJ0M4HIEyvF/4KLteYS31lRS8Y5gpaZdP?=
 =?us-ascii?Q?+X/9JxKkY012PUdSFHK8RH4OB+z1hhq9omXe2Q/AXhtqh3phFnnCElGgCtmQ?=
 =?us-ascii?Q?awQKweVWtefJQSR8A5sQro936kuWB4tpdlW5HheF8ZHqwSt0djrYKEa3wN/X?=
 =?us-ascii?Q?nPKfBlWrbSBoYoJtX3HxaTYn0NX283fZBe7hzK2wQ0jiiZHrATmw9cf5pgLN?=
 =?us-ascii?Q?2/JSjcc7AUGLrb2mG19w7wjCFo7n9v5CvDp7gF/Uir5t3MualY+4lvX0YPbn?=
 =?us-ascii?Q?565R6tGwlDlFuWlfw6gWjiFgTDxB90e5D6r8LW4R4gkDqKI/tZYQUHzf3UIx?=
 =?us-ascii?Q?rHW7TIJnn9zbo9H5TKaffEc614/WL/0oL5+Tj4osNrWtI/2Ew8itTGh3DRQv?=
 =?us-ascii?Q?DSZ1EpK/xbS/ujwng15MoPSWnYEwLcE30u+7XUdkA6lL1F+73opIJgEZabjW?=
 =?us-ascii?Q?QM5p0X21wE+pgaNgPTLviNvVJZ+QC7a6y6OQ62icTcWJXSofRhe3EowK8OTS?=
 =?us-ascii?Q?nPSGokEDMG3j8MPGcQ4Y2tvGHV6d3DqW8s1HhkM3NtehoJZy5grWgV2msaYO?=
 =?us-ascii?Q?7lG5nvLrnXsSEHig8EGVgvSXOPRTU2T/iIpQVdjyNsxpZ1BiQdI1B0PmXjHW?=
 =?us-ascii?Q?sYVcKClutT5OSAuAhR5UA0odfGkPuEMih8Tn0uviFtQLEe8JPpZWBLDxXvJu?=
 =?us-ascii?Q?sP8wUYmpe1iQ5ETdmmA8jscaMEloVWt2Y4dMAOQRcxpImU6lqm/8+FPZ0jwf?=
 =?us-ascii?Q?iRIMbqjxDBKFKFK6ZIq9y2bIgmPWxpn4nfvX74YD7aVcoS02Bmavz3za/No6?=
 =?us-ascii?Q?1oXv5Rzw1z4ikv3Et0Usw+lhosCAX4OL8lpnXr64YUjs6u1b8ekEXbIxInXu?=
 =?us-ascii?Q?aqbbruBEVv7nGLZ/9aXd1lqbl86qAZHng+z7oQE7qBl63IAjBnDuZ8KjDzGP?=
 =?us-ascii?Q?sCbZEYB17ge2BdV/SyGQE5LaHAYxD/APrjxlMzbLNHCZmWF9n5IEk54pWsyW?=
 =?us-ascii?Q?woFgoasg8/s0dCLwTBWZ/Ttl7CypmT+4JZ25OfdVYYOckWxyH27uvpmo8HJ2?=
 =?us-ascii?Q?TqhImJCFHZ4im6nYR+c6n4Z1B3nkHez/cCdw/eHxgaF4yQb92N+0oqKepCtr?=
 =?us-ascii?Q?Myo1fs4Xndmk3uOc80cRqKcS1NZsuBBu6ZZUd1a52FIFJoymxhf2G0+qu8vi?=
 =?us-ascii?Q?pBE9R4Y3+ddV851K9YTaOH3Yr7vr5ews5oKGbiZKD6KJnM/10fzndU1b1HZj?=
 =?us-ascii?Q?Mg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f7de7209-335f-4104-9a0f-08db63c7a289
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2023 00:15:28.1412 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E9eF9+zc5VgLj/N2v4daUor8ev1xEtcScwM/OGTTzSZo4pTFH9XbGADVbNOwoBlT98Quj8g2/HafTQ8PD/RJgVn30SQ9fKxUhroCuLT/8uY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7908
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: rename I915_PMU_MAX_GTS to
 I915_PMU_MAX_GT
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
Cc: intel-gfx@lists.freedesktop.org, ashutosh.dixit@linux.intel.com,
 andy.shyti@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 02, 2023 at 04:17:54PM -0700, Matt Atwood wrote:
> _GTS as an abbreviation here leads to some confusion, match other
> definitions and drop the s.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Ashutosh Dixit <ashutosh.dixit@linux.intel.com>
> Cc: Andi Shyti <andy.shyti@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> 

You generally don't want/need a blank line here, but we can fix that
while applying.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pmu.c | 2 +-
>  drivers/gpu/drm/i915/i915_pmu.h | 8 ++++----
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index f96fe92dca4e..d35973b41186 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -132,7 +132,7 @@ static u32 frequency_enabled_mask(void)
>  	unsigned int i;
>  	u32 mask = 0;
>  
> -	for (i = 0; i < I915_PMU_MAX_GTS; i++)
> +	for (i = 0; i < I915_PMU_MAX_GT; i++)
>  		mask |= config_mask(__I915_PMU_ACTUAL_FREQUENCY(i)) |
>  			config_mask(__I915_PMU_REQUESTED_FREQUENCY(i));
>  
> diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
> index d20592e7db99..41af038c3738 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.h
> +++ b/drivers/gpu/drm/i915/i915_pmu.h
> @@ -38,7 +38,7 @@ enum {
>  	__I915_NUM_PMU_SAMPLERS
>  };
>  
> -#define I915_PMU_MAX_GTS 2
> +#define I915_PMU_MAX_GT 2
>  
>  /*
>   * How many different events we track in the global PMU mask.
> @@ -47,7 +47,7 @@ enum {
>   */
>  #define I915_PMU_MASK_BITS \
>  	(I915_ENGINE_SAMPLE_COUNT + \
> -	 I915_PMU_MAX_GTS * __I915_PMU_TRACKED_EVENT_COUNT)
> +	 I915_PMU_MAX_GT * __I915_PMU_TRACKED_EVENT_COUNT)
>  
>  #define I915_ENGINE_SAMPLE_COUNT (I915_SAMPLE_SEMA + 1)
>  
> @@ -127,11 +127,11 @@ struct i915_pmu {
>  	 * Only global counters are held here, while the per-engine ones are in
>  	 * struct intel_engine_cs.
>  	 */
> -	struct i915_pmu_sample sample[I915_PMU_MAX_GTS][__I915_NUM_PMU_SAMPLERS];
> +	struct i915_pmu_sample sample[I915_PMU_MAX_GT][__I915_NUM_PMU_SAMPLERS];
>  	/**
>  	 * @sleep_last: Last time GT parked for RC6 estimation.
>  	 */
> -	ktime_t sleep_last[I915_PMU_MAX_GTS];
> +	ktime_t sleep_last[I915_PMU_MAX_GT];
>  	/**
>  	 * @irq_count: Number of interrupts
>  	 *
> -- 
> 2.40.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
