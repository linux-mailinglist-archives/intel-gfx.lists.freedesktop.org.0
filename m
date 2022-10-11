Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9945FB3ED
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 15:54:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 610A010E802;
	Tue, 11 Oct 2022 13:54:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C033910E802
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 13:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665496477; x=1697032477;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=8oLoE7lCrl9yNqZE8DuhpOGwXKswTKDuUq5x5sV2vwI=;
 b=D2yPwcoyU09k/pAr2e65Ro1KAw4ATxqAXx9/ZStFQ7SrHwEAyxcf3euj
 s+rq9VTGkXP5p9QFui6QPPvOCMpvHnuyrsHnINrbDFkBi8Adcryll/3ib
 xlQlzgDOCb/Vxd6Ne+Ieica4kZaQVeIHHZ6ouIl6bZWXpy8I1+YbsOE/Q
 ygl6i3ILw49ZY72ICtHzRUleXjj5esW0N4fkGFWql5Q2d+77FG/8YGiE8
 LxW4XrFPjlpqceud6hLlxggftgS31VbTYna4TxsGd6T4DDK1a0ZcVH9yJ
 JeSZ2BQkwheWAGwGQZQE7T0vd15kitbiT4HWzt85bPet2s3aCzw5+sNOf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="303245500"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="303245500"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 06:54:37 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="577442591"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="577442591"
Received: from mhartiga-mobl.ger.corp.intel.com (HELO [10.213.228.219])
 ([10.213.228.219])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 06:54:35 -0700
Message-ID: <c2639c20-6abc-08bb-76bf-bc8693f2f418@linux.intel.com>
Date: Tue, 11 Oct 2022 14:54:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221004131916.233474-1-matthew.auld@intel.com>
 <20221004131916.233474-4-matthew.auld@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221004131916.233474-4-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v5 4/5] drm/i915/display: consider
 DG2_RC_CCS_CC when migrating buffers
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
Cc: Jianshui Yu <jianshui.yu@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi Matt,

On 04/10/2022 14:19, Matthew Auld wrote:
> For these types of display buffers, we need to able to CPU access some
> part of the backing memory in prepare_plane_clear_colors(). As a result
> we need to ensure we always place in the mappable part of lmem, which
> becomes necessary on small-bar systems.
> 
> v2(Nirmoy & Ville):
>   - Add some commentary for why we need to CPU access the buffer.
>   - Split out the other changes, so we just consider the display change
>     here.
> v3:
>   - Handle this in the dpt path.
> v4(Ville):
>   - Drop the intel_fb_rc_ccs_cc_plane() sanity check in
>     pin_and_fence_fb_obj(), since we can also trigger this on DG1 it
>     seems.
> 
> Fixes: eb1c535f0d69 ("drm/i915: turn on small BAR support")

That one landed in 6.0 - do you want to send this (with 
pre-requisite(s)) to stable? Or if not do you want me to send for 6.1 as 
part of fixes flow? In which case what are the per-requisites?

Regards,

Tvrtko

> Reported-by: Jianshui Yu <jianshui.yu@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fb_pin.c | 13 ++++++++++++-
>   1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> index 5031ee5695dd..e12339f46640 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -50,7 +50,18 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>   			continue;
>   
>   		if (HAS_LMEM(dev_priv)) {
> -			ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
> +			unsigned int flags = obj->flags;
> +
> +			/*
> +			 * For this type of buffer we need to able to read from the CPU
> +			 * the clear color value found in the buffer, hence we need to
> +			 * ensure it is always in the mappable part of lmem, if this is
> +			 * a small-bar device.
> +			 */
> +			if (intel_fb_rc_ccs_cc_plane(fb) >= 0)
> +				flags &= ~I915_BO_ALLOC_GPU_ONLY;
> +			ret = __i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0,
> +							flags);
>   			if (ret)
>   				continue;
>   		}
