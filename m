Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E98056B4A9
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 10:45:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13CF7112A5C;
	Fri,  8 Jul 2022 08:45:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 675E1112A6E
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 08:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657269923; x=1688805923;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=tF/nnGY/1/YbTpTcXA7TdGI7ktBzSK550L4/+GrbfUE=;
 b=BG5bsdm/UtQqqXu28ksOTCbZtq8HmqQc6e1zPdnMrtYtHXMCVCP1ANbG
 QH0D/8T4iqOa74lTdC6evnX9xNbE5ADg/l7C57KfYFyRhBrp/XqSdggWR
 /KxOOZQhVWQBT9CBO9tUQR2784vfZqvkUv34q0KGJS+WF8igDUoxkGkP6
 eA9NajDdEAddOR8A7Xig4R25qXlmOz7vQAaJ+leJ036ArJUlmXuhP7TSG
 u41NdrsDjaSDQOyOkc4YYd9KhEDaYvcslbF7QWc/oUzPloWKc2yX+CT1a
 H/fExEUJ3WlnO0DYYJwFtk6NJXPLMxQdYtP7w/N6t2ULW+xbJjEsvK7jx g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="348218424"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="348218424"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 01:45:22 -0700
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="568867473"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.16.201])
 ([10.213.16.201])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 01:45:19 -0700
Message-ID: <aab26533-8184-fa5b-f094-cd19262b8e5e@intel.com>
Date: Fri, 8 Jul 2022 10:45:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
References: <20220707193002.2859653-1-umesh.nerlige.ramappa@intel.com>
 <20220707193002.2859653-2-umesh.nerlige.ramappa@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220707193002.2859653-2-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] i915/perf: Disable OA sseu config param
 for gfx12.50+
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

On 07.07.2022 21:30, Nerlige Ramappa, Umesh wrote:
> The global sseu config is applicable only to gen11 platforms where
> concurrent media, render and OA use cases may cause some subslices to be
> turned off and hence lose NOA configuration. Ideally we want to return
> ENODEV for non-gen11 platforms, however, this has shipped with gfx12, so
> disable only for gfx12.50+.
> 
> v2: gfx12 is already shipped with this, disable for gfx12.50+ (Lionel)
> 
> v3: (Matt)
> - Update commit message and replace "12.5" with "12.50"
> - Replace DRM_DEBUG() with driver specific drm_dbg()
> 
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/i915_perf.c | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index b3beb89884e0..f3c23fe9ad9c 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -3731,6 +3731,13 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   		case DRM_I915_PERF_PROP_GLOBAL_SSEU: {
>   			struct drm_i915_gem_context_param_sseu user_sseu;
>   
> +			if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 50)) {
> +				drm_dbg(&perf->i915->drm,
> +					"SSEU config not supported on gfx %x\n",
> +					GRAPHICS_VER_FULL(perf->i915));
> +				return -ENODEV;
> +			}
> +
>   			if (copy_from_user(&user_sseu,
>   					   u64_to_user_ptr(value),
>   					   sizeof(user_sseu))) {

