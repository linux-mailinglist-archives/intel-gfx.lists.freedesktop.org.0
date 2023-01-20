Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCBB6752AA
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 11:40:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C4C410E0EA;
	Fri, 20 Jan 2023 10:40:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77C3F10E0EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674211254; x=1705747254;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2HSlD86CV5uL7OidBmBt2bsdeV25rqBPpBPWqSmtEgw=;
 b=CDxYluIRGOIt8KAgd1xQJkus5LikGT+u6LWpJeXqq/oaVOb2iIHBq+BQ
 euYH6SiMbnu3cymcrQVzIOL4aKaDI+OQJx3Ps4dZjcrNQLCY9kbJ8uHb5
 tbMeU2qg+jpKmcicj1ZLJRPC7CHRCGKPkMZXNGyMrI+O2K8NNFyqhgZdX
 vZZQ9c0zpRbTu9S2ytMJG6wfI0C6Tk65KhyFzo0Wn81IkNrxZTYxCNcqj
 v82Wawd7gYGzMKrKHxaGbWLPv6PVHU8VQAvTKOki3uNGmTOTYT3moAo8H
 51ZlfPIeYypJxZL96POiLVaAQobK+zzNszYIoiY1Z3HZJyAVHjB1Hs3q0 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="387916424"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="387916424"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 02:40:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="692824943"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="692824943"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 20 Jan 2023 02:40:52 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 02:40:52 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 02:40:52 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 02:40:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ajvHX2+n/Bu66GrQn+GVEUgxRB6YvH2QPRhpCwGn/lD3JheCRK0Ub2D4ycw7gB+jwfQSa2HtuO14djSqPXaBX+9PdH14Cx42M0L2K1d2ig+f2XFQA+2W0qeGekrgBF64EuLzjI8urWH3ayq5Z/bThFH3UqUNtq2h3TKy6/+JkaV3U3AZAiZKMwbIPxqiwzj1Kfm/y+8f2gZ1YWoS1VXeudqA6/ejz5NtPF7qkBEy2qLGBILkys7bI7wh2hcM4ssGwOXpi2H/aRdfniLLGIgpmZFuR+uCZPVWp7v/hyhgB9UOWZ+pwqHXCTPFH8LU9WdnxAy53X3c7uozG5kzH2PWbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4wVcvPrcolNJzncDG8Qc9dWjkEdXvcT4Lv6vnaVBYWk=;
 b=cmxunW90JEvXcfda50Bs9TPAicFyewyKdYNmZRqR40NC8i1phrweW97/6ByxFqKQfTtsBjv58qQzWPFyvTkQdK/1ha60BMTG0YN/mTmoVBNYsT+rdXCazKz2O/8ySD6hXoJlJ35xi/NkdhSLnu+MuHoLI6nk1qOkqyTy4tIIaO+DnMHZl2+soJF1C7wM0nJ70gcEUts9Bh/0mQNr3EJz713OF5vdfN06rghZ2eqAZVUTOb+k3in5Vv6WiDXk9c5fYsVd4PxCDd6MDAkEDgXyYFy7sL8kf1KSyuBtC9OWhNnWqsZqlDzOS/5VlZY2dWb9n1DrdkIi7/qbw8Lr/SWIfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB6953.namprd11.prod.outlook.com (2603:10b6:510:204::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.26; Fri, 20 Jan
 2023 10:40:50 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.025; Fri, 20 Jan 2023
 10:40:50 +0000
Date: Fri, 20 Jan 2023 05:40:46 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y8pvrrVAwtoEVsUD@intel.com>
References: <20230118131538.3558599-1-jani.nikula@intel.com>
 <20230118131538.3558599-5-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230118131538.3558599-5-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR06CA0024.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::37) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB6953:EE_
X-MS-Office365-Filtering-Correlation-Id: bddf6765-291e-465e-8bde-08dafad2cbdc
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H+vL6Dwol5wjJoYJqakxa/rjQI3PeI8gjRoDK2RJS5SsZrSK3BVi7jrzDB40UwfH0l6VPYRcGmehN+JEO8yGkOzm6qgtWOAiPkRvmvHPzyIVloNrtb6DW67u8+fimmSnmgi9mWTcUTwWnYtOymbutFcTs7cx6PNQTibdN4yvAhblNuCLpEiHfdOIK6//jcErYs2cap9hO3xP9CXPdsOgDUp9ecWxUxk2RG1tBP0ya+oHH3d1DecCKWkstjEC9IXgyNTvSVegp+L0whQ5dqYDIB4OW8GYKvo3lXDz6s1srLQsFXLygV3TvpNA0yXP8Sif0ed3Yg4jI/VjOqZfTAQQrxGvZo5TqvUXLD3XKwhUJ4X+/VVaWNhLwRidQ/NkzeNBxWprrn0WaNHizfb1DsQIJVKuEBpOMVtBQByTmFKKYGEhXf0zjfZmGJImLayghI+BuOnVCrYHEPZhfxm0m4IX6q5DKA6DvYc9Kebpxqdy6BCSsVfUNkN+8YmR59hj83wa6y2rLJliDnqMeRbEikjVmLkWXttqXwt8q4SXrs9FF6sUtnCtcB9gW+mSnkl9z4pbeqqDYiWkH7uMqXgNy84SkLqe3/0MYpdgMoeOitYYt/zdjH1XySLR2nhpnKvSOTuPTnKDOH1avr9V9BJDBjezRw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(396003)(376002)(366004)(136003)(451199015)(2906002)(83380400001)(41300700001)(66476007)(66946007)(66556008)(8676002)(36756003)(4326008)(44832011)(6862004)(2616005)(8936002)(316002)(37006003)(5660300002)(6636002)(6512007)(186003)(26005)(82960400001)(478600001)(38100700002)(6666004)(6506007)(6486002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?b74tVYDOcZ5pxuWNPlFWkXPIkV9xQ3vBc+yHBlD1xrOcadrHYEGo9hXf5H2W?=
 =?us-ascii?Q?HGD8fJATfKB4Tb2hBi29Mx9XBNz1nSz6xDuWqe2kWalWpDuR7RGzTA7FHcTH?=
 =?us-ascii?Q?JMBjDmJrhvUGD8NIZ0J0TbyTAPiMNtNDI8D3RJONrFj11da+0f49cRruwyQH?=
 =?us-ascii?Q?Fj6XpDcTYG6mh5idNyQyspqe0d9VdgB+un5aOyU+8L53UY8nEQYzPlsT65pR?=
 =?us-ascii?Q?UjWW19QChxFyiiDLp2MaPvc7F/JOeHo0jqvtYE1w+zCxZY34cA+0QdhL4Dbg?=
 =?us-ascii?Q?hlxCqxjwuaBisw8bo/AgLqwVFN0Ry3184Ku9dKs7R9TsEJtoFxkyDlOPxoD2?=
 =?us-ascii?Q?lGZUPQvKM+WkyWKnKRUk2Pv+L2hUybotkUA2FRKs3sfI4+wFvcWcG9Qj+rBc?=
 =?us-ascii?Q?cpH00nNd5M9AnqUhRcqldHWNDpSMkZjhhIGg0cPmFQI4y+iMeb1uLmFbGmKH?=
 =?us-ascii?Q?QwDhnU+o7LGJFm4mr51WncVfcHQd/oAi9tIWUTpyPKvZj7f4m82HFMpUtTmn?=
 =?us-ascii?Q?rguKVP5JsaKeBIB1odZqYV7umQSAHpFEdVxsXkygT9cdYWzpXD9BVProm7Ny?=
 =?us-ascii?Q?U3scImltwG6KH5z2vEUPwpZ0eLudE3p7yYxeqnufmqgV5pwR3812onUcTtWX?=
 =?us-ascii?Q?CfpOv8voB31C/RKSOz5EEn9apKu0uTtzmQSru3S/Kp7yu8YjFmbMy7akP1JC?=
 =?us-ascii?Q?20lqUxXBTBe3inaGDiQYdjIWhHbY2/Mi2DBPxSSA5Quh/iBzvmLuIQZbbene?=
 =?us-ascii?Q?DNomPVYZYA7vgVhDBn6v0NmDgUJgWBXrD39FwoXcSKmFF1aHhHQWnkl0ECBs?=
 =?us-ascii?Q?qCfDbqLhLj5cnCQHnEcggsR2yeBmbQj5KRZM6XT6U61jSS9/o9vXyo+Vbu8o?=
 =?us-ascii?Q?5GJCLgfC9/+5nbWEx1MST7rhcFdXr2B42E+S4u6phbjQdMt5f/Ela3aONaWB?=
 =?us-ascii?Q?ps7u0IQwlsU9aba9noNw+4M+e1atLXFhXlcWTBEBUg1wCgxnbLZX61hmv2cr?=
 =?us-ascii?Q?dUyps8xsUO9h1QKj0rSgRsmMhfX0v+rGzUddqNkBxv47CiKSatoP22xH5s8M?=
 =?us-ascii?Q?/O54z9dzB+NlGjUAY3bNdtlUII8vJ7UaPsYwnh9XwzcxOgEZAAe3lOOZYreT?=
 =?us-ascii?Q?eMA7A9MXX1+qtWASAfDxCiuuY71fonjx0bFjCyRr4fTt/qrX/o4+S9OvYdwJ?=
 =?us-ascii?Q?jS81Cc1JW5t7/Yfd27d17xvYXXSwZ+ZOcJfSRrT5giv8/jG+3Au9b1J4Chkp?=
 =?us-ascii?Q?eJ1q92dS8JyCLcY9iUbEkOtlh6dWVCTADhb4BpELJzbC9uGc4gyeDmuuwIGZ?=
 =?us-ascii?Q?N7PrkgMAu9T75QMjtTSnvdvsNR8XXQi8X7cYiMymfocZUXHxbmUQVG0bBbGL?=
 =?us-ascii?Q?ZCjPF2W/r/4Z9YngWuMNPFnISZKaf+KvV7Ul7URF9YvL8GOq62WoMTgwB3VL?=
 =?us-ascii?Q?a0zXAJWhW4bGQ3mrPSq3ldKynixS1AA5AzKF4+FokW2QNAS7VPQVfG2DBrUv?=
 =?us-ascii?Q?oZC0JnVMRTZYgYu/3or1Lau6WPKgo1RXeU7phOZZwvvulWUoD+WIvpmYEfaP?=
 =?us-ascii?Q?AhUINNGdZ6Qr2Db2zyONwH4AyNZmU8NaR7GM19zyvqcpjUp6sO6dFQlyVMmi?=
 =?us-ascii?Q?nA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bddf6765-291e-465e-8bde-08dafad2cbdc
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 10:40:49.9463 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OtnWJWGaUd5RputdA76C3gl3CtXs0eJYWkSSUN33JqanqnBUAjS9LgmczsWu8/B4OL7XxvYJSwZ9tcB8LitegA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6953
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: move I915_GEM_GPU_DOMAINS to
 i915_gem.h
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

On Wed, Jan 18, 2023 at 03:15:36PM +0200, Jani Nikula wrote:
> Declutter i915_drv.h.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h | 7 -------
>  drivers/gpu/drm/i915/i915_gem.h | 7 +++++++
>  2 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 73ce5447cae8..eed552e507dc 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -68,13 +68,6 @@ struct drm_i915_clock_gating_funcs;
>  struct vlv_s0ix_state;
>  struct intel_pxp;
>  
> -#define I915_GEM_GPU_DOMAINS \
> -	(I915_GEM_DOMAIN_RENDER | \
> -	 I915_GEM_DOMAIN_SAMPLER | \
> -	 I915_GEM_DOMAIN_COMMAND | \
> -	 I915_GEM_DOMAIN_INSTRUCTION | \
> -	 I915_GEM_DOMAIN_VERTEX)
> -
>  #define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
>  
>  #define GEM_QUIRK_PIN_SWIZZLED_PAGES	BIT(0)
> diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
> index a5cdf6662d01..82e9d289398c 100644
> --- a/drivers/gpu/drm/i915/i915_gem.h
> +++ b/drivers/gpu/drm/i915/i915_gem.h
> @@ -39,6 +39,13 @@ struct i915_gem_ww_ctx;
>  struct i915_gtt_view;
>  struct i915_vma;
>  
> +#define I915_GEM_GPU_DOMAINS	       \
> +	(I915_GEM_DOMAIN_RENDER |      \
> +	 I915_GEM_DOMAIN_SAMPLER |     \
> +	 I915_GEM_DOMAIN_COMMAND |     \
> +	 I915_GEM_DOMAIN_INSTRUCTION | \
> +	 I915_GEM_DOMAIN_VERTEX)
> +

this is getting used in i915_vma.c which is not directly importing
the i915_gem.h... should we add this include there explicitly or
rely on the .h indirection include?

>  void i915_gem_init_early(struct drm_i915_private *i915);
>  void i915_gem_cleanup_early(struct drm_i915_private *i915);
>  
> -- 
> 2.34.1
> 
