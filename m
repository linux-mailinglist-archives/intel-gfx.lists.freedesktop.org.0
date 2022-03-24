Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D654E60DD
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 10:08:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D2E610E86E;
	Thu, 24 Mar 2022 09:08:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACB5610E86B
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 09:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648112922; x=1679648922;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Eq2TqmJz4k5axzKog0XFvlijkROQOu+O4O78Oy7xowc=;
 b=kz9zlQyIXkrcCZa6m97GPVEvt7rWTOFlj1CgSwuzRmLnKzjmKaGGUZ91
 p3ySX1yiLRZm4U5c95yGZqRKnEbSzzysGKd78NmTev2DQkmg199IBaDoB
 IpEgwuhd97KkoViT/EXtB4OgN5Vmc7dnA5rzDNtq9HFjp4a8m/sjOgzZs
 pti7Q4tE0UGDA7iouFB/GYiuYbHXDG0kJbrH6OxHXc4XUls238EC4ydqf
 IV1IK7+hj30tVJuRzHdWAZipi7ALcyJE8ecVPuBVhAxWRX/fO151vIeV9
 Hx8fmsjjZFo7AXDBC8v6bRpqJjEqz9xOUTkpv2oiI2jScUBI8v6lx66oH g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="240483516"
X-IronPort-AV: E=Sophos;i="5.90,206,1643702400"; d="scan'208";a="240483516"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 02:08:42 -0700
X-IronPort-AV: E=Sophos;i="5.90,206,1643702400"; d="scan'208";a="561291408"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.56.159])
 ([10.252.56.159])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 02:08:41 -0700
Message-ID: <176fa37d-3c9a-15ee-bb5d-b75c33d2e498@linux.intel.com>
Date: Thu, 24 Mar 2022 10:08:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220324074300.21294-1-animesh.manna@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220324074300.21294-1-animesh.manna@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: modified to drm_info in
 dsb_prepare()
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


On 3/24/2022 8:43 AM, Animesh Manna wrote:
> The request to aqquire gem resources is failing for DSB in rare
> scenario where it is busy and the register programming will be done
> through mmio fallback path.
>
> DSB has extra advantage of faster register programming which may
> go away through mmio path. Adding wait for gem resource also may
> not be right as anyways losing time.
>
> To make the CI execution happy replaced drm_dbg_kms() to drm_info()
> for printing debuf info during dsb buffer preparation.
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dsb.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index b34a67309976..b68dd7bd5271 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -275,7 +275,7 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
>   
>   	dsb = kmalloc(sizeof(*dsb), GFP_KERNEL);
>   	if (!dsb) {
> -		drm_err(&i915->drm, "DSB object creation failed\n");
> +		drm_info(&i915->drm, "DSB object creation failed\n");
>   		return;
>   	}
>   
> @@ -283,14 +283,14 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
>   
>   	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
>   	if (IS_ERR(obj)) {
> -		drm_err(&i915->drm, "Gem object creation failed\n");
> +		drm_info(&i915->drm, "Gem object creation failed\n");

If CI is happy with drm_warn then it makes sense to use drm_warn.


>   		kfree(dsb);
>   		goto out;
>   	}
>   
>   	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
>   	if (IS_ERR(vma)) {
> -		drm_err(&i915->drm, "Vma creation failed\n");
> +		drm_info(&i915->drm, "Vma creation failed\n");


These messages are bit vague, add "DSB VMA creation failed" or something 
similar.

With that Acked-by: Nirmoy Das <nirmoy.das@intel.com>


Nirmoy


>   		i915_gem_object_put(obj);
>   		kfree(dsb);
>   		goto out;
> @@ -298,7 +298,7 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
>   
>   	buf = i915_gem_object_pin_map_unlocked(vma->obj, I915_MAP_WC);
>   	if (IS_ERR(buf)) {
> -		drm_err(&i915->drm, "Command buffer creation failed\n");
> +		drm_info(&i915->drm, "Command buffer creation failed\n");
>   		i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
>   		kfree(dsb);
>   		goto out;
