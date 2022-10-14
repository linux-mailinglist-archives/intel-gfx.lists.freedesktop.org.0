Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE585FF187
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 17:38:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1622B10EB26;
	Fri, 14 Oct 2022 15:38:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA8AC10EB26
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 15:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665761914; x=1697297914;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=c+IiK8NE9sHF5RL8IDUsterA8yvk06vQOXwX9W4GCOg=;
 b=kcisvjTwmStCRrtUqrWUssLQ5xFI815scTbkCRkn5gUvgY5bWVI9uOKi
 gA2Cf7iygJXEtFb/hjlDF3uJ7m7xLg/Bp+ZkRA2FAUchSLZ9YDqAiC3rD
 hfMRSuuYSmFlRbDbFK8DI4Ezqb6nmin1k8BCYkR3pzeCesjnf5k5gixcx
 hPpNLqqsMbhru2JmGRl1fOcMBjIMEzYawAVtdwiB/Vv7POqZREw5qdVvY
 cRYXr92qJzY9bgMQcCmpdhUaCIIRWM4hRUuxbvDBPxrnn1vf4aqPximSy
 5YH8xxTbn5wcRjSyQ1Q2QP8GUF5eM3lkDbysxmlhUqroNbfkTr4s8lsGh A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="367422819"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="367422819"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 08:38:34 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="578665830"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="578665830"
Received: from lgleeson-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.43.239])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 08:38:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221014152525.7683-1-nirmoy.das@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221014152525.7683-1-nirmoy.das@intel.com>
Date: Fri, 14 Oct 2022 18:38:49 +0300
Message-ID: <87fsfqs9di.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Print return value on error
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 14 Oct 2022, Nirmoy Das <nirmoy.das@intel.com> wrote:
> Print returned error code for better debuggability.
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/7211
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 112aa0447a0d..015a854d9bec 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -175,7 +175,7 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
>  	}
>  
>  	if (IS_ERR(obj)) {
> -		drm_err(&dev_priv->drm, "failed to allocate framebuffer\n");
> +		drm_err(&dev_priv->drm, "failed to allocate framebuffer(err = %pe)\n", obj);

Nitpick, space before (. With %pe, not sure if the "err =" part is
necessary either.

failed to allocate framebuffer (err = -ENOMEM)

vs.

failed to allocate framebuffer (-ENOMEM)

Ditto below.

BR,
Jani.

>  		return PTR_ERR(obj);
>  	}
>  
> @@ -256,7 +256,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
>  
>  	info = drm_fb_helper_alloc_fbi(helper);
>  	if (IS_ERR(info)) {
> -		drm_err(&dev_priv->drm, "Failed to allocate fb_info\n");
> +		drm_err(&dev_priv->drm, "Failed to allocate fb_info(err = %pe)\n", info);
>  		ret = PTR_ERR(info);
>  		goto out_unpin;
>  	}
> @@ -291,7 +291,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
>  	vaddr = i915_vma_pin_iomap(vma);
>  	if (IS_ERR(vaddr)) {
>  		drm_err(&dev_priv->drm,
> -			"Failed to remap framebuffer into virtual memory\n");
> +			"Failed to remap framebuffer into virtual memory (err = %pe)\n", vaddr);
>  		ret = PTR_ERR(vaddr);
>  		goto out_unpin;
>  	}

-- 
Jani Nikula, Intel Open Source Graphics Center
