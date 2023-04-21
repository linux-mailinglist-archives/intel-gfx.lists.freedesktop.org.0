Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F8B6EAD75
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 16:52:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7FC110E117;
	Fri, 21 Apr 2023 14:52:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9273110E117
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 14:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682088768; x=1713624768;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=I8hbvCRDspQ4CbHqt3PBHhS+7iSAuerhjOFrXZf798c=;
 b=Z5sowlrT9QmkG5HUWhD5kHmhvlRT+uOGWN/ReHMYlw+rAfJN9drrjxOP
 uOqo+VgvEja87/dDQfxfe9o/WfixSoWwlFY9dZSdp8fiGFJZXoOpG1rVD
 m140GpOl8d2ibS2M65CcQvQTJ+6o3pLKPYpaRSuLZywIhNdhNlgPAoXl4
 CWc2m8qaX9a2RG593F2OUZsQtZCBnBXyOQ2V01zkyT98jwZQMjs4nJE2S
 +V7liPU2MvBFgMZnY2z8Nl/F0XB4vTOSsqR3wNKfTOdSvdwp81+c5N8sf
 blpQdwFWM5UOs7ti3OmfdjXJlM0CSDYmHHQ0Zd5yxbxDLPfReigaxwo3s g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="432285312"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="432285312"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 07:52:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="866725173"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="866725173"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 21 Apr 2023 07:52:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 07:52:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 21 Apr 2023 07:52:47 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 21 Apr 2023 07:52:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ltxOvKe9XSvKpc/2O0p1gGoFnJA2xTA6Nv2DzF2kGNhy+70KiLTNVACg+fCP6Jsmf9c9mWsIgJdxKHr0SQIixSVg0MCD6mRWB4NuiJzjJofmVR2HyN3eHNroO+FRTn9GcJ/sdIKagdl9uZp1HwYtn3lP+zUwl85PtmyGY90bTjVLathfxxgQ63Q6C9dp7bjhCdeUyZn+sXl9iZyctOAS2BtehpXKCdwsbRDHqkKnlbSWcvBe6WaKl1eS+voj9F7K7HfUU3TjQJ2MFIPT48auvZ98xiKdJbfoh+uXp1FLaWaRdwxmpjxU0yrTkleRNtrrje7B1UcCzahbjO0MH+xqVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+e4fp6xHpAkA/NtcHYMqbiO4bXXjpo8HqvvEcdCfXeg=;
 b=RoNNubOGyP/Hg8aiQiDmYlENZzmWBy+jKn47mMCkFu6WKF64yvhhTvG2sS1ghdRFsJff4KGenOnEobo+JR1ZYd6sOeylTw7VfhLuKxPzeoqaGVksxSMD7AHBTJytS0SYl22twqVvLZqsM/eBBKF8FdkcxCaKtg14wCEW050+3Gc8oKegYxw10iVjtRNz+kUd+2DqRoJj2TihK4XX/OOgK9Hu41WW2IxfdtcwV/BNSjNkkJEqsmoK2KS47dirRnk8NpvHwkB25uc0S6rTMsa9bW/5YqHOcJUSAXHdVgh1ryHM9rJ5/UViA4+5DaqQjuW5isT4eoz8sSEnFanHqROmkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB6820.namprd11.prod.outlook.com (2603:10b6:930:60::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6319.22; Fri, 21 Apr 2023 14:52:44 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0%8]) with mapi id 15.20.6298.030; Fri, 21 Apr 2023
 14:52:44 +0000
Date: Fri, 21 Apr 2023 07:52:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20230421145241.GJ4085390@mdroper-desk1.amr.corp.intel.com>
References: <20230421135948.2029121-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230421135948.2029121-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0023.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::28) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB6820:EE_
X-MS-Office365-Filtering-Correlation-Id: a9f80da9-f8f9-44f2-8520-08db42781031
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ym+pgH1WOj48XxaOsBwtZGQlHNtK+Rzg1q0qhstSg730fDQjetwy5gRfUMZOIVc8mUBKb5I2lO/C+Wd9/AEzyVWXbqSvFpvWutN5NOomUd36h6OZCPQ3Y1Eueh4ZQTFzqkQ87634k21DC/KmhNQV5mIF+K5ah5QEd3eOtdpAAewbQo0TBW6e96STamN1NbuMdDcENSgFFjgxN+9TteoAm9Vy2zbPAoLaOgmYCIVY5gR8j15a+JxZa0NOkTyww1SJMQV5bNgF1qiQFgfT2DAxpY/2gAv0u1KR1vR6b7dQJCSQZvoorLeycqXVDqMmvsLx+j4NjQIFcLqE+VFHbj/RCD8jH8X64kBBQxRcM3N+41Ructn587szi0jWNZnZDzfDBqpsnGEnp6cKiNYawuCeYz3TT7rMp93hqPWFFZTpuM4f056AJjC6lD4+AN664CWTfOfcb/nkdzhBNqzgYuHU6hlwn6l4gV9VbfIGahrju+cY7YJnKvMb3vpZOoD82LCptoA6zLD7jY+XdchALmfieR3HjCB+l4HR6TMPVh0l+/rH09tmHMp7LL815sJFLX/m
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(396003)(346002)(366004)(39860400002)(451199021)(316002)(82960400001)(4326008)(66946007)(66556008)(83380400001)(6486002)(478600001)(6636002)(38100700002)(8676002)(6862004)(66476007)(6666004)(41300700001)(8936002)(2906002)(30864003)(5660300002)(26005)(6506007)(1076003)(6512007)(186003)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yj107+23QUZ5jLk54+zhrxV3XEKcMDgVPHVFIsBr5LjmwZIRH15qQZiHaiIT?=
 =?us-ascii?Q?sbvQsYnVe8hhgBmbXVuyIkv3O7vhk7R/DepV1Ig0cDLD1UD7BkXgMdg6tMnZ?=
 =?us-ascii?Q?Un/zyiojNF0rcAI/FkKa1fykcAXv7gJMbkHMqkJXWrypOA2d8l8uBvbQeH71?=
 =?us-ascii?Q?tQCMQWrfZImhRppO4jROgzhBv5P1P4v4eddGJk5JkrJ7VmRrQfJbadsxogYl?=
 =?us-ascii?Q?XkXADermcCOuqD6BvLz74haTSWP/AfJuz7N6F4bzXPvHV0+uPAAMPF1qip75?=
 =?us-ascii?Q?v8n1E4WAy9Yv55uYM7POB8BvI5o/nw76yJtNh8CBAWx8GVZ+Av/yiBvg/zNN?=
 =?us-ascii?Q?mn7GSv/V7EdffhuTijTCLXf7wuTn/C192/YV/YMMdA2yO+fHgsk17PHp/xEH?=
 =?us-ascii?Q?XpWJHGVvxw5+ap8IY2Y4RllMOyF8q4unbGPC3FfhEPG8TkAA3fR1yy6VYKN1?=
 =?us-ascii?Q?wYbUvIt1lvO3k0/OW5wBY47sy5/i6D01npPi/uQpBEjcOGX0rKNTiEhB6rop?=
 =?us-ascii?Q?ERWOP6lhOVHq/6hKT2f45tPsaTB5sA9U2Rdw8uKMA61CM2jwCdvDoyctOZN5?=
 =?us-ascii?Q?jTnogVN3II+LnByrYytjIqldYJ5sNzJCygv26idEZEbINRsyV0XIuIDodGxR?=
 =?us-ascii?Q?HMxllMqGba7Hg3TzyxuIOADbBbsfOuEwgXQ/rJJxfMga9Wt41KPvBXnJBIfx?=
 =?us-ascii?Q?pJGtwv91n2v8lo/jKH7nefnW1HRsH4hygJ14OZ0YWLabg0GT7JkuV/EoSIG9?=
 =?us-ascii?Q?0Q8kAtmPV1Wspx7bdnd6TvCUNJmSVYt9C0aqnt/NAA8MpmzgwSrvlH6yMvIy?=
 =?us-ascii?Q?5rYQeH3uY6N7ZHw/w1CuxZbSEGWgwUshFM9hniGZd5UqncrogAnJlwxbueCM?=
 =?us-ascii?Q?jYt/K+bYu1kElplwKMkICJjoAPGaTdt5CQv4+MFRx3RbXaCmzzyolCP40Ku9?=
 =?us-ascii?Q?Gkel/9Z75xOIR9yUP24sT9Lz9PJ9E1OqhpGVQO9gZr1dmj/ucg69XU4svnSK?=
 =?us-ascii?Q?Q/xCj0S8Z2v3qS8Tz8pMY8Rc7/TAQ/IP4YmGj7V8Ujsv1SGLxvf6vzzynsbk?=
 =?us-ascii?Q?SfJPxoNnfuBORspLCwZTjmG0zwDtYOnzgrtz8q+CLz+5dMzXmdYuU4a4vJ+7?=
 =?us-ascii?Q?R8OagUXUheBRAQC+yu5I8f65JbdRtKdTXe51MvdBIEsbcir4Op6FO+sjN2EF?=
 =?us-ascii?Q?tPAftLQHsLbMmwHsKahjq41DyRdMlETemLLYO9Kkj3xqJ4tR+A7zqLIUsoi7?=
 =?us-ascii?Q?PO0Jscfe99n9emO41Mhs1caziGzGKQKx7St0+66m7Hl/zgdon1RLE5PQ0X6Q?=
 =?us-ascii?Q?KNxEXS4qhWvXQqMQlzQRV29ebPVczVxV70It1kaeYF70PL7XRMCUxt8RyovL?=
 =?us-ascii?Q?Zh0A63z/1Re86oOxO2JMC3hRe9QFYpJLrJvh5RqASSRYRSz1JEp0NyPKDFRi?=
 =?us-ascii?Q?KMrceiXepi2/EgMCN7fXJivC4e7JdZ6Ufw72zEMVMPlqsUm9XCD+Unay5ymH?=
 =?us-ascii?Q?fI0ie4LAL6YBTAJbHSKSW50ZZ/8fi6erBdc66g9YKSxPukB10WinqgWTcQYW?=
 =?us-ascii?Q?FsuTTOlj+LkbjDFCoFU3tuduDxT0gm4q7xB+k5az+9lFbGNNaoD5H15ESSI6?=
 =?us-ascii?Q?gA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9f80da9-f8f9-44f2-8520-08db42781031
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2023 14:52:44.0947 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HbdwuunYBvVjKKvDz5huBCmyL7La+QBdAw+KPI+uk4QQj/jqvW7XyRqPVOtRcnU/85TSfQ46bZmRZ58PZKrNyEbIFcdrGpw6/epnfrZs4+w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6820
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rc6: throw out set() wrapper
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

On Fri, Apr 21, 2023 at 04:59:48PM +0300, Jani Nikula wrote:
> Remove useless indirection that's just misdirection for the readers.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_rc6.c | 157 ++++++++++++++--------------
>  1 file changed, 76 insertions(+), 81 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 8f3cd68d14f8..908a3d0f2343 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -53,11 +53,6 @@ static struct drm_i915_private *rc6_to_i915(struct intel_rc6 *rc)
>  	return rc6_to_gt(rc)->i915;
>  }
>  
> -static void set(struct intel_uncore *uncore, i915_reg_t reg, u32 val)
> -{
> -	intel_uncore_write_fw(uncore, reg, val);
> -}
> -
>  static void gen11_rc6_enable(struct intel_rc6 *rc6)
>  {
>  	struct intel_gt *gt = rc6_to_gt(rc6);
> @@ -72,19 +67,19 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>  	 */
>  	if (!intel_uc_uses_guc_rc(&gt->uc)) {
>  		/* 2b: Program RC6 thresholds.*/
> -		set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 54 << 16 | 85);
> -		set(uncore, GEN10_MEDIA_WAKE_RATE_LIMIT, 150);
> +		intel_uncore_write_fw(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 54 << 16 | 85);
> +		intel_uncore_write_fw(uncore, GEN10_MEDIA_WAKE_RATE_LIMIT, 150);
>  
> -		set(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000); /* 12500 * 1280ns */
> -		set(uncore, GEN6_RC_IDLE_HYSTERSIS, 25); /* 25 * 1280ns */
> +		intel_uncore_write_fw(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000); /* 12500 * 1280ns */
> +		intel_uncore_write_fw(uncore, GEN6_RC_IDLE_HYSTERSIS, 25); /* 25 * 1280ns */
>  		for_each_engine(engine, rc6_to_gt(rc6), id)
> -			set(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
> +			intel_uncore_write_fw(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
>  
> -		set(uncore, GUC_MAX_IDLE_COUNT, 0xA);
> +		intel_uncore_write_fw(uncore, GUC_MAX_IDLE_COUNT, 0xA);
>  
> -		set(uncore, GEN6_RC_SLEEP, 0);
> +		intel_uncore_write_fw(uncore, GEN6_RC_SLEEP, 0);
>  
> -		set(uncore, GEN6_RC6_THRESHOLD, 50000); /* 50/125ms per EI */
> +		intel_uncore_write_fw(uncore, GEN6_RC6_THRESHOLD, 50000); /* 50/125ms per EI */
>  	}
>  
>  	/*
> @@ -105,8 +100,8 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>  	 * Broadwell+, To be conservative, we want to factor in a context
>  	 * switch on top (due to ksoftirqd).
>  	 */
> -	set(uncore, GEN9_MEDIA_PG_IDLE_HYSTERESIS, 60);
> -	set(uncore, GEN9_RENDER_PG_IDLE_HYSTERESIS, 60);
> +	intel_uncore_write_fw(uncore, GEN9_MEDIA_PG_IDLE_HYSTERESIS, 60);
> +	intel_uncore_write_fw(uncore, GEN9_RENDER_PG_IDLE_HYSTERESIS, 60);
>  
>  	/* 3a: Enable RC6
>  	 *
> @@ -141,7 +136,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>  					      VDN_MFX_POWERGATE_ENABLE(i));
>  	}
>  
> -	set(uncore, GEN9_PG_ENABLE, pg_enable);
> +	intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, pg_enable);
>  }
>  
>  static void gen9_rc6_enable(struct intel_rc6 *rc6)
> @@ -152,26 +147,26 @@ static void gen9_rc6_enable(struct intel_rc6 *rc6)
>  
>  	/* 2b: Program RC6 thresholds.*/
>  	if (GRAPHICS_VER(rc6_to_i915(rc6)) >= 11) {
> -		set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 54 << 16 | 85);
> -		set(uncore, GEN10_MEDIA_WAKE_RATE_LIMIT, 150);
> +		intel_uncore_write_fw(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 54 << 16 | 85);
> +		intel_uncore_write_fw(uncore, GEN10_MEDIA_WAKE_RATE_LIMIT, 150);
>  	} else if (IS_SKYLAKE(rc6_to_i915(rc6))) {
>  		/*
>  		 * WaRsDoubleRc6WrlWithCoarsePowerGating:skl Doubling WRL only
>  		 * when CPG is enabled
>  		 */
> -		set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 108 << 16);
> +		intel_uncore_write_fw(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 108 << 16);
>  	} else {
> -		set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 54 << 16);
> +		intel_uncore_write_fw(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 54 << 16);
>  	}
>  
> -	set(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000); /* 12500 * 1280ns */
> -	set(uncore, GEN6_RC_IDLE_HYSTERSIS, 25); /* 25 * 1280ns */
> +	intel_uncore_write_fw(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000); /* 12500 * 1280ns */
> +	intel_uncore_write_fw(uncore, GEN6_RC_IDLE_HYSTERSIS, 25); /* 25 * 1280ns */
>  	for_each_engine(engine, rc6_to_gt(rc6), id)
> -		set(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
> +		intel_uncore_write_fw(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
>  
> -	set(uncore, GUC_MAX_IDLE_COUNT, 0xA);
> +	intel_uncore_write_fw(uncore, GUC_MAX_IDLE_COUNT, 0xA);
>  
> -	set(uncore, GEN6_RC_SLEEP, 0);
> +	intel_uncore_write_fw(uncore, GEN6_RC_SLEEP, 0);
>  
>  	/*
>  	 * 2c: Program Coarse Power Gating Policies.
> @@ -194,11 +189,11 @@ static void gen9_rc6_enable(struct intel_rc6 *rc6)
>  	 * conservative, we have to factor in a context switch on top (due
>  	 * to ksoftirqd).
>  	 */
> -	set(uncore, GEN9_MEDIA_PG_IDLE_HYSTERESIS, 250);
> -	set(uncore, GEN9_RENDER_PG_IDLE_HYSTERESIS, 250);
> +	intel_uncore_write_fw(uncore, GEN9_MEDIA_PG_IDLE_HYSTERESIS, 250);
> +	intel_uncore_write_fw(uncore, GEN9_RENDER_PG_IDLE_HYSTERESIS, 250);
>  
>  	/* 3a: Enable RC6 */
> -	set(uncore, GEN6_RC6_THRESHOLD, 37500); /* 37.5/125ms per EI */
> +	intel_uncore_write_fw(uncore, GEN6_RC6_THRESHOLD, 37500); /* 37.5/125ms per EI */
>  
>  	rc6->ctl_enable =
>  		GEN6_RC_CTL_HW_ENABLE |
> @@ -210,8 +205,8 @@ static void gen9_rc6_enable(struct intel_rc6 *rc6)
>  	 *   - Render/Media PG need to be disabled with RC6.
>  	 */
>  	if (!NEEDS_WaRsDisableCoarsePowerGating(rc6_to_i915(rc6)))
> -		set(uncore, GEN9_PG_ENABLE,
> -		    GEN9_RENDER_PG_ENABLE | GEN9_MEDIA_PG_ENABLE);
> +		intel_uncore_write_fw(uncore, GEN9_PG_ENABLE,
> +				      GEN9_RENDER_PG_ENABLE | GEN9_MEDIA_PG_ENABLE);
>  }
>  
>  static void gen8_rc6_enable(struct intel_rc6 *rc6)
> @@ -221,13 +216,13 @@ static void gen8_rc6_enable(struct intel_rc6 *rc6)
>  	enum intel_engine_id id;
>  
>  	/* 2b: Program RC6 thresholds.*/
> -	set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 40 << 16);
> -	set(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000); /* 12500 * 1280ns */
> -	set(uncore, GEN6_RC_IDLE_HYSTERSIS, 25); /* 25 * 1280ns */
> +	intel_uncore_write_fw(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 40 << 16);
> +	intel_uncore_write_fw(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000); /* 12500 * 1280ns */
> +	intel_uncore_write_fw(uncore, GEN6_RC_IDLE_HYSTERSIS, 25); /* 25 * 1280ns */
>  	for_each_engine(engine, rc6_to_gt(rc6), id)
> -		set(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
> -	set(uncore, GEN6_RC_SLEEP, 0);
> -	set(uncore, GEN6_RC6_THRESHOLD, 625); /* 800us/1.28 for TO */
> +		intel_uncore_write_fw(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
> +	intel_uncore_write_fw(uncore, GEN6_RC_SLEEP, 0);
> +	intel_uncore_write_fw(uncore, GEN6_RC6_THRESHOLD, 625); /* 800us/1.28 for TO */
>  
>  	/* 3: Enable RC6 */
>  	rc6->ctl_enable =
> @@ -245,20 +240,20 @@ static void gen6_rc6_enable(struct intel_rc6 *rc6)
>  	u32 rc6vids, rc6_mask;
>  	int ret;
>  
> -	set(uncore, GEN6_RC1_WAKE_RATE_LIMIT, 1000 << 16);
> -	set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 40 << 16 | 30);
> -	set(uncore, GEN6_RC6pp_WAKE_RATE_LIMIT, 30);
> -	set(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000);
> -	set(uncore, GEN6_RC_IDLE_HYSTERSIS, 25);
> +	intel_uncore_write_fw(uncore, GEN6_RC1_WAKE_RATE_LIMIT, 1000 << 16);
> +	intel_uncore_write_fw(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 40 << 16 | 30);
> +	intel_uncore_write_fw(uncore, GEN6_RC6pp_WAKE_RATE_LIMIT, 30);
> +	intel_uncore_write_fw(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000);
> +	intel_uncore_write_fw(uncore, GEN6_RC_IDLE_HYSTERSIS, 25);
>  
>  	for_each_engine(engine, rc6_to_gt(rc6), id)
> -		set(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
> +		intel_uncore_write_fw(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
>  
> -	set(uncore, GEN6_RC_SLEEP, 0);
> -	set(uncore, GEN6_RC1e_THRESHOLD, 1000);
> -	set(uncore, GEN6_RC6_THRESHOLD, 50000);
> -	set(uncore, GEN6_RC6p_THRESHOLD, 150000);
> -	set(uncore, GEN6_RC6pp_THRESHOLD, 64000); /* unused */
> +	intel_uncore_write_fw(uncore, GEN6_RC_SLEEP, 0);
> +	intel_uncore_write_fw(uncore, GEN6_RC1e_THRESHOLD, 1000);
> +	intel_uncore_write_fw(uncore, GEN6_RC6_THRESHOLD, 50000);
> +	intel_uncore_write_fw(uncore, GEN6_RC6p_THRESHOLD, 150000);
> +	intel_uncore_write_fw(uncore, GEN6_RC6pp_THRESHOLD, 64000); /* unused */
>  
>  	/* We don't use those on Haswell */
>  	rc6_mask = GEN6_RC_CTL_RC6_ENABLE;
> @@ -372,22 +367,22 @@ static void chv_rc6_enable(struct intel_rc6 *rc6)
>  	enum intel_engine_id id;
>  
>  	/* 2a: Program RC6 thresholds.*/
> -	set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 40 << 16);
> -	set(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000); /* 12500 * 1280ns */
> -	set(uncore, GEN6_RC_IDLE_HYSTERSIS, 25); /* 25 * 1280ns */
> +	intel_uncore_write_fw(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 40 << 16);
> +	intel_uncore_write_fw(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000); /* 12500 * 1280ns */
> +	intel_uncore_write_fw(uncore, GEN6_RC_IDLE_HYSTERSIS, 25); /* 25 * 1280ns */
>  
>  	for_each_engine(engine, rc6_to_gt(rc6), id)
> -		set(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
> -	set(uncore, GEN6_RC_SLEEP, 0);
> +		intel_uncore_write_fw(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
> +	intel_uncore_write_fw(uncore, GEN6_RC_SLEEP, 0);
>  
>  	/* TO threshold set to 500 us (0x186 * 1.28 us) */
> -	set(uncore, GEN6_RC6_THRESHOLD, 0x186);
> +	intel_uncore_write_fw(uncore, GEN6_RC6_THRESHOLD, 0x186);
>  
>  	/* Allows RC6 residency counter to work */
> -	set(uncore, VLV_COUNTER_CONTROL,
> -	    _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH |
> -			       VLV_MEDIA_RC6_COUNT_EN |
> -			       VLV_RENDER_RC6_COUNT_EN));
> +	intel_uncore_write_fw(uncore, VLV_COUNTER_CONTROL,
> +			      _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH |
> +						 VLV_MEDIA_RC6_COUNT_EN |
> +						 VLV_RENDER_RC6_COUNT_EN));
>  
>  	/* 3: Enable RC6 */
>  	rc6->ctl_enable = GEN7_RC_CTL_TO_MODE;
> @@ -399,22 +394,22 @@ static void vlv_rc6_enable(struct intel_rc6 *rc6)
>  	struct intel_engine_cs *engine;
>  	enum intel_engine_id id;
>  
> -	set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 0x00280000);
> -	set(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000);
> -	set(uncore, GEN6_RC_IDLE_HYSTERSIS, 25);
> +	intel_uncore_write_fw(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 0x00280000);
> +	intel_uncore_write_fw(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000);
> +	intel_uncore_write_fw(uncore, GEN6_RC_IDLE_HYSTERSIS, 25);
>  
>  	for_each_engine(engine, rc6_to_gt(rc6), id)
> -		set(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
> +		intel_uncore_write_fw(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
>  
> -	set(uncore, GEN6_RC6_THRESHOLD, 0x557);
> +	intel_uncore_write_fw(uncore, GEN6_RC6_THRESHOLD, 0x557);
>  
>  	/* Allows RC6 residency counter to work */
> -	set(uncore, VLV_COUNTER_CONTROL,
> -	    _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH |
> -			       VLV_MEDIA_RC0_COUNT_EN |
> -			       VLV_RENDER_RC0_COUNT_EN |
> -			       VLV_MEDIA_RC6_COUNT_EN |
> -			       VLV_RENDER_RC6_COUNT_EN));
> +	intel_uncore_write_fw(uncore, VLV_COUNTER_CONTROL,
> +			      _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH |
> +						 VLV_MEDIA_RC0_COUNT_EN |
> +						 VLV_RENDER_RC0_COUNT_EN |
> +						 VLV_MEDIA_RC6_COUNT_EN |
> +						 VLV_RENDER_RC6_COUNT_EN));
>  
>  	rc6->ctl_enable =
>  	    GEN7_RC_CTL_TO_MODE | VLV_RC_CTL_CTX_RST_PARALLEL;
> @@ -575,9 +570,9 @@ static void __intel_rc6_disable(struct intel_rc6 *rc6)
>  
>  	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
>  	if (GRAPHICS_VER(i915) >= 9)
> -		set(uncore, GEN9_PG_ENABLE, 0);
> -	set(uncore, GEN6_RC_CONTROL, 0);
> -	set(uncore, GEN6_RC_STATE, 0);
> +		intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, 0);
> +	intel_uncore_write_fw(uncore, GEN6_RC_CONTROL, 0);
> +	intel_uncore_write_fw(uncore, GEN6_RC_STATE, 0);
>  	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
>  }
>  
> @@ -684,7 +679,7 @@ void intel_rc6_unpark(struct intel_rc6 *rc6)
>  		return;
>  
>  	/* Restore HW timers for automatic RC6 entry while busy */
> -	set(uncore, GEN6_RC_CONTROL, rc6->ctl_enable);
> +	intel_uncore_write_fw(uncore, GEN6_RC_CONTROL, rc6->ctl_enable);
>  }
>  
>  void intel_rc6_park(struct intel_rc6 *rc6)
> @@ -704,7 +699,7 @@ void intel_rc6_park(struct intel_rc6 *rc6)
>  		return;
>  
>  	/* Turn off the HW timers and go directly to rc6 */
> -	set(uncore, GEN6_RC_CONTROL, GEN6_RC_CTL_RC6_ENABLE);
> +	intel_uncore_write_fw(uncore, GEN6_RC_CONTROL, GEN6_RC_CTL_RC6_ENABLE);
>  
>  	if (HAS_RC6pp(rc6_to_i915(rc6)))
>  		target = 0x6; /* deepest rc6 */
> @@ -712,7 +707,7 @@ void intel_rc6_park(struct intel_rc6 *rc6)
>  		target = 0x5; /* deep rc6 */
>  	else
>  		target = 0x4; /* normal rc6 */
> -	set(uncore, GEN6_RC_STATE, target << RC_SW_TARGET_STATE_SHIFT);
> +	intel_uncore_write_fw(uncore, GEN6_RC_STATE, target << RC_SW_TARGET_STATE_SHIFT);
>  }
>  
>  void intel_rc6_disable(struct intel_rc6 *rc6)
> @@ -735,7 +730,7 @@ void intel_rc6_fini(struct intel_rc6 *rc6)
>  
>  	/* We want the BIOS C6 state preserved across loads for MTL */
>  	if (IS_METEORLAKE(rc6_to_i915(rc6)) && rc6->bios_state_captured)
> -		set(uncore, GEN6_RC_STATE, rc6->bios_rc_state);
> +		intel_uncore_write_fw(uncore, GEN6_RC_STATE, rc6->bios_rc_state);
>  
>  	pctx = fetch_and_zero(&rc6->pctx);
>  	if (pctx)
> @@ -766,18 +761,18 @@ static u64 vlv_residency_raw(struct intel_uncore *uncore, const i915_reg_t reg)
>  	 * before we have set the default VLV_COUNTER_CONTROL value. So always
>  	 * set the high bit to be safe.
>  	 */
> -	set(uncore, VLV_COUNTER_CONTROL,
> -	    _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH));
> +	intel_uncore_write_fw(uncore, VLV_COUNTER_CONTROL,
> +			      _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH));
>  	upper = intel_uncore_read_fw(uncore, reg);
>  	do {
>  		tmp = upper;
>  
> -		set(uncore, VLV_COUNTER_CONTROL,
> -		    _MASKED_BIT_DISABLE(VLV_COUNT_RANGE_HIGH));
> +		intel_uncore_write_fw(uncore, VLV_COUNTER_CONTROL,
> +				      _MASKED_BIT_DISABLE(VLV_COUNT_RANGE_HIGH));
>  		lower = intel_uncore_read_fw(uncore, reg);
>  
> -		set(uncore, VLV_COUNTER_CONTROL,
> -		    _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH));
> +		intel_uncore_write_fw(uncore, VLV_COUNTER_CONTROL,
> +				      _MASKED_BIT_ENABLE(VLV_COUNT_RANGE_HIGH));
>  		upper = intel_uncore_read_fw(uncore, reg);
>  	} while (upper != tmp && --loop);
>  
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
