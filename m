Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 558BD569C47
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 09:56:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77F2914A17A;
	Thu,  7 Jul 2022 07:56:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DE3214A175
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 07:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657180587; x=1688716587;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=mZIiQPiq/O7jeOut9sXhiLnQYmMDTHrfvvAbPi9LOSs=;
 b=Xo/awK5R9nPZZvvnchXpkeQ7DFTFXLTcyc91FyjfdSYg3UQq+LAekv9h
 aPg+GOftmAPudsZlZCm3ryuNdUnvhxqlnxgQ27VE2jSTliMgQnVpY4trq
 N6Ztqm7LuHJFqSa+ZCYCEBg10s9Nhg5apE2HQmiCAGKlfnQJ908kKZF42
 CH3cTL9K+e+naZYgdKsnZ2rWzkcI+OeLCqXTuJn1gZ+dbsUeXWZSOzdfa
 gVi33CPLAA9hdjIbaupFPJgQcMKCkTZR+pRQxpqnHzTzLWYUO2++3VXvt
 gZHkzuQqYC/LkYdFFlHIH60ZYL3XuDzjkOYkHG3czGT3ovkpJZVjLk7Mr g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="345648391"
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="345648391"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 00:56:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="920497727"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga005.fm.intel.com with ESMTP; 07 Jul 2022 00:56:26 -0700
Received: from [10.249.130.181] (unknown [10.249.130.181])
 by linux.intel.com (Postfix) with ESMTP id ECFE3580B9D;
 Thu,  7 Jul 2022 00:56:24 -0700 (PDT)
Message-ID: <5f6b800c-6142-aebb-2928-78d24592a0ce@intel.com>
Date: Thu, 7 Jul 2022 10:56:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220706215205.2830951-1-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <20220706215205.2830951-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] i915/perf: Disable OA sseu config param for
 non-gen11 platforms
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

On 07/07/2022 00:52, Nerlige Ramappa, Umesh wrote:
> The global sseu config is applicable only to gen11 platforms where
> concurrent media, render and OA use cases may cause some subslices to be
> turned off and hence lose NOA configuration. Return ENODEV for non-gen11
> platforms.
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>


The problem is that we have gfx12 platforms shipped using this.

So I guess have to disable it on gfx12.5+ where it was never accepted.


-Lionel


> ---
>   drivers/gpu/drm/i915/i915_perf.c | 6 ++++++
>   1 file changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 1577ab6754db..512c163fdbeb 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -3706,6 +3706,12 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   		case DRM_I915_PERF_PROP_GLOBAL_SSEU: {
>   			struct drm_i915_gem_context_param_sseu user_sseu;
>   
> +			if (GRAPHICS_VER(perf->i915) != 11) {
> +				DRM_DEBUG("Global SSEU config not supported on gen%d\n",
> +					  GRAPHICS_VER(perf->i915));
> +				return -ENODEV;
> +			}
> +
>   			if (copy_from_user(&user_sseu,
>   					   u64_to_user_ptr(value),
>   					   sizeof(user_sseu))) {


