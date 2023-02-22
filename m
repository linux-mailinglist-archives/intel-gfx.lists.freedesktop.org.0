Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4553969FC31
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 20:30:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21A6610E1E9;
	Wed, 22 Feb 2023 19:30:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F09C810E1E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 19:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677094197; x=1708630197;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=rJC4mm2cGbFuJV8UyrLXkW36btXJXFruT1d4AMbL1rs=;
 b=Sdrmh/hM9TEQpZeT4e7YC3u5I6frnnfahWqdf4awUzQtPWRDnHzAYQEz
 WA4tkBbGt660r4b2qif9H1I8s9vgQr/PPUaUlNMEuQkwgekLF9h0+mZqh
 eFBj6mFsqlUy36n8zhZXpNo8nsX7/YIu9xbIPY7R19i6mYbyp8zTZqUb8
 vAZm/VSFhGsYHkrLBktQbPS7t0LMaJesszgc8x91iRDRVnQDegHSpIsp0
 C4hj6pnTusTcQ1QREoV6sUOhnq5+/SrbAveOFPCEskkzkF7i9uGsL4x+d
 eHd/Z+WqSB48Voy1KNUaf3ZPYqKshpwuZqXlN4uWfFHF+Xy5CS3zoVdwa w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="419249295"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="419249295"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 11:29:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="622044102"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="622044102"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 22 Feb 2023 11:29:57 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 11:29:56 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 22 Feb 2023 11:29:56 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 22 Feb 2023 11:29:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CzOdYmzGuECo8EBlNMd6ldjc80oKV/QNTCm0RGjkQJv/30kZeGTSq+D+gP12xv/XWBBbQ432yXexFfk2Qdc/mbSTjkhAXATmohsxyMRwS1MDuLByyk11XQrhHYPWkLEqnXv1XeXp5NBXJsM/tXf9igLfADoy5i1YpIa+m5nx+wECGucMBgDBkK2ECn86mzeH9r4ABRa/zKVy3m12k97nagO9tMHVpsPX3GHkyQ1yl8ouFMmJgRF887cpTUEn+XAdM1gV6n1oeibw+QVmJRH/q/yhDlXcExtvAZIlWgGVIhvmEi2nJsxaPWghePeaWVPy8UwjxRAUyanapr2TzOzq9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d6vCDJY2+TXhhm3I0qlRsVXDrrEgsylSPqOFoUZDDk0=;
 b=HZ32tjxiui10QstW4NW0LYcdSdZ46KBY0LJQynJr1Wf12r+uOCOrduM+c3gaHbkD27IVg8sWBFpPBxctdFgcHtKrbmHKbobREME84OlV7a2hPpj/IBBboD5nWxdZF1wb30RoJfhF0nO0H92KYb27DUfosgxrVU0hf9rDk/aixIA0iDDRXpKqCx/vv1RkJJXLlPDXntBQHi4PHlDJXekRNsbbOoS9SIHnoaCXSns9xX3q2t2zzApqJd7X+ZIPbtfFWbYSnAs+vm8/WUEk9tr1Q/0EEJ0cbZDNJGtM74dWn4Sf4yQNm+/4E/QPIBzo+hH+tcFz3tf2baThlTVnkeacFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM6PR11MB4658.namprd11.prod.outlook.com (2603:10b6:5:28f::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6111.21; Wed, 22 Feb 2023 19:29:55 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%5]) with mapi id 15.20.6111.021; Wed, 22 Feb 2023
 19:29:55 +0000
Date: Wed, 22 Feb 2023 11:29:52 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Y/ZtMA2UNzU1USh6@mdroper-desk1.amr.corp.intel.com>
References: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
 <20230222073507.788705-9-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230222073507.788705-9-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR03CA0007.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::12) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM6PR11MB4658:EE_
X-MS-Office365-Filtering-Correlation-Id: a483731b-1abd-4c88-efea-08db150b2d19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HGU1uD/H7tQ/9doa3/NJ3bc+vfmUW05EsMr0g4TGSlGKZJMpFQ8hEGINyP4vmR0BVhTvJPym06iS+qcCBHfgrNdZeMOlJvvxWZzzt8QlaS9Rii61G6JDSxwGNtPX3hKyae3hf0TAyP+d2tQmMK77MEvBCxvkLc4slVwEi+FFouyXj+kwnZWMApI4T1lFAsG8S4HMbOg66HoepDTYhg8jlMIjif8Hxu/ab7d0OShd+Beufu/Ee4LIjzLRQ2efCZ/U07wYWfNeX4DlR+4fNNnk+KZYnVcrwDlZiAVwfC/yxankis2ZrI9pmew4J/aEDtaczl/WCt4X6WUeLwsfJCsMt7l+jjOguI2aHb9oAlZXwsIkup5J3SfqLHOWeg0J8MFLRqztPSkI+HFlelsf9BY0cwfxbXDrSEMe+7xesPsSjjQ/4oOJXqH/Sa/hPQyf9uAZYj04EV0d7+nwdZ1qkEpVOU+bphNhbqd76xjMNplKef1Npz3ZmVoGlDn2Vyfo3LXI8JiDw+4FlK7QtmIj8zsb6d42/7r2Byb/4bsYR8er4/j+K9kB7xzvAwvnQM74Tnk9uuv/kXPYsA2D6Q4PWTm4Bj3DFdKnyuXq+xBmf/btOts+mrBWlwTlskHp7lg4k2FE40HX+6icpGFCb9ORViaDbA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(366004)(346002)(136003)(396003)(376002)(451199018)(83380400001)(41300700001)(6512007)(186003)(6636002)(26005)(316002)(86362001)(6486002)(478600001)(6666004)(6506007)(66946007)(66476007)(66556008)(4326008)(8676002)(82960400001)(2906002)(38100700002)(5660300002)(8936002)(6862004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?8Oxp8OKXbO9Gzl3l8trVdwl1h5AXAdoGqcyYEcWmyjQynaPJeE3n/zh4em?=
 =?iso-8859-1?Q?zxQ/8wJhPJ70OYZM6O8gDZcPFnTyGD9SLe1Xthc/v1aqebx/4Oeu7tvPXe?=
 =?iso-8859-1?Q?+uYe4OihEXwioxUnpBLsmDC9e0YeWUUMRIQWlfBLLbcgIF7EaocPuDaZ43?=
 =?iso-8859-1?Q?jEy/Ltu138wS/ertHstbTRa7rSPbZdTitc4cyn4/MX3zOKG20zYyWbDqpz?=
 =?iso-8859-1?Q?znfoFYcjjZF4IxdfJqtbcZLAkWImX/ZvlNNwRIrK33+Wl3RKqLEYVAtLOz?=
 =?iso-8859-1?Q?wpa1VamcEsDL34Ukk41rqS81qjfAzQDTkLbtei/NwWhpYJSj+0FPX2Xc70?=
 =?iso-8859-1?Q?J58dhuy/p0wNTfDq4+KPXEKOsEFmqnradetonmvp6+WQCO97nJCVY2tq2J?=
 =?iso-8859-1?Q?uOPm+v6687N4SjPs1dImqVOBEIldPjAc8lyvK5pwvhVe3zw3Cnin3xfIk0?=
 =?iso-8859-1?Q?RRMGGNq5bzJD7qJ14qCTk+p+oPK9lLkfi9rIu9/gwbj+ojfuisdQP7sF8j?=
 =?iso-8859-1?Q?yTHY8JLWUDSna7ejSEL4mwgi3YHNZAxit8dVTQLa8k0RHAVBR1pwfuBaOq?=
 =?iso-8859-1?Q?U6dmu0oran/SVTY3L5/u9nn6yohyEO39jJ4bqwroDYGzeUk1dRPMa+vaYT?=
 =?iso-8859-1?Q?NbKJokyPsiHAtyndGYoUObbtxqbzCFo0UfF2wxr/bg0GNM0oDFjqObn62l?=
 =?iso-8859-1?Q?rQ9cwb8IFBVnzexAIqx5gSfEVl0jEw+Ez1hLCEkmokB1IGsqt+4OVfUrzn?=
 =?iso-8859-1?Q?HBbQgpLBhe2K/5FE1sxSZ8zw6CdJUnN8ErfO+sd9aLavBBXbYFygrM151w?=
 =?iso-8859-1?Q?Xl1EpsVQ2AT6dqQ36pG+h+fG4hJxXKhCweV7vrHLnn/97VPAbzhdVJTn2u?=
 =?iso-8859-1?Q?A8JQqk8r770e/T1jD5eYMGKFBbGlhy+gZUkhFZrGxK2QTbZSAfNBRSgJR9?=
 =?iso-8859-1?Q?T1GAN5/mnxh8NgbkOYbPEh7f/X4hxHWnRMM2iKIuWcWvpbRO6N3CLl23N2?=
 =?iso-8859-1?Q?kgn9xRdzZY4nFdmF7cW9YoPsIqXoec98ERDhYuS9umNcNJIERd9ryXkZ7m?=
 =?iso-8859-1?Q?V+1iVfRuzEhM8kDQLzMhJiyhqRd825dF/R80LI/WRNgGQYjOYYfjjIgrer?=
 =?iso-8859-1?Q?A3Z54hMNrCp7cTuV+SYH8ovI0Ts1ZIRKDQWr4SF9fJzR965qymyv1Ah4PZ?=
 =?iso-8859-1?Q?gZuxeLuaCJ5q6F/PlJOTuhYCv3D0D+m1piN4fKUSoCsSh17Q8G3S5Dl7Ou?=
 =?iso-8859-1?Q?4+oPUhsz6MT/hsrqM7FnIoS6dOj+xCCsGiu5E65B1N5JsCJQUzESBp0DOC?=
 =?iso-8859-1?Q?M2ofIJ4VpTYWB1odqzjQ7Lov+pjwRKr14xGdfWSBqNckreMCwoFu32NJMY?=
 =?iso-8859-1?Q?ggpzEutmWbGz2OH5jp2ZxbPKJpVd5eg3kcJjb8C66Z7opUPRaFyTXdsAZK?=
 =?iso-8859-1?Q?+wc6rQk1aNcwGSDcjkdGUrq5vUt/H/vK/C/Mp3HtLUVqEgPxFGeMgsqQLf?=
 =?iso-8859-1?Q?Y5kwWRYU0NDIBZRSmDzDLK74APhsOdYshc2xYt7IYlsbsJpSKi/SyrqH8S?=
 =?iso-8859-1?Q?YFfrZfTGqDgU/l/icZe41R3T+5nWw2nu9cKW2Jl4GQiKfsfSDq4A397zIC?=
 =?iso-8859-1?Q?t+lhq21zewFUpSBzTqUFeTvqA8pZOz2GpMuFNTTIQWkbJmrvYVs2cdUw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a483731b-1abd-4c88-efea-08db150b2d19
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2023 19:29:54.9961 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nh4Rdad0yzQ/+S5mGtfUh7L3A0hv2ZUKediF7JOEB3oBhiv8VU6nGCshEVQVzwl25x1VhcfpfjBa+lUODqP0Wzju1R/t5KZAnjGCrGDZbrk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4658
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 8/9] drm/i915/mtl: define MTL related ccs
 modifiers
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

On Tue, Feb 21, 2023 at 11:35:06PM -0800, Radhakrishna Sripada wrote:
> From: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
> 
> Add Tile4 type ccs modifiers with aux buffer needed for MTL
> 
> Cc: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

This is defining new uapi, so you need Cc's for all the relevant
usermode drivers (and acks from them).  In fact it's probably best to
break this out to its own series for visibility rather than mixing it
into the middle of a MTL enablement series.


Matt

> ---
>  include/uapi/drm/drm_fourcc.h | 43 +++++++++++++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
> 
> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> index de703c6be969..cbe214adf1e4 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -657,6 +657,49 @@ extern "C" {
>   */
>  #define I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC fourcc_mod_code(INTEL, 12)
>  
> +/*
> + * Intel color control surfaces (CCS) for display ver 14 render compression.
> + *
> + * The main surface is tile4 and at plane index 0, the CCS is linear and
> + * at index 1. A 64B CCS cache line corresponds to an area of 4x1 tiles in
> + * main surface. In other words, 4 bits in CCS map to a main surface cache
> + * line pair. The main surface pitch is required to be a multiple of four
> + * tile4 widths.
> + */
> +#define I915_FORMAT_MOD_4_TILED_MTL_RC_CCS fourcc_mod_code(INTEL, 13)
> +
> +/*
> + * Intel color control surfaces (CCS) for display ver 14 media compression
> + *
> + * The main surface is tile4 and at plane index 0, the CCS is linear and
> + * at index 1. A 64B CCS cache line corresponds to an area of 4x1 tiles in
> + * main surface. In other words, 4 bits in CCS map to a main surface cache
> + * line pair. The main surface pitch is required to be a multiple of four
> + * tile4 widths. For semi-planar formats like NV12, CCS planes follow the
> + * Y and UV planes i.e., planes 0 and 1 are used for Y and UV surfaces,
> + * planes 2 and 3 for the respective CCS.
> + */
> +#define I915_FORMAT_MOD_4_TILED_MTL_MC_CCS fourcc_mod_code(INTEL, 14)
> +
> +/*
> + * Intel Color Control Surface with Clear Color (CCS) for display ver 14 render
> + * compression.
> + *
> + * The main surface is tile4 and is at plane index 0 whereas CCS is linear
> + * and at index 1. The clear color is stored at index 2, and the pitch should
> + * be ignored. The clear color structure is 256 bits. The first 128 bits
> + * represents Raw Clear Color Red, Green, Blue and Alpha color each represented
> + * by 32 bits. The raw clear color is consumed by the 3d engine and generates
> + * the converted clear color of size 64 bits. The first 32 bits store the Lower
> + * Converted Clear Color value and the next 32 bits store the Higher Converted
> + * Clear Color value when applicable. The Converted Clear Color values are
> + * consumed by the DE. The last 64 bits are used to store Color Discard Enable
> + * and Depth Clear Value Valid which are ignored by the DE. A CCS cache line
> + * corresponds to an area of 4x1 tiles in the main surface. The main surface
> + * pitch is required to be a multiple of 4 tile widths.
> + */
> +#define I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC fourcc_mod_code(INTEL, 15)
> +
>  /*
>   * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
>   *
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
