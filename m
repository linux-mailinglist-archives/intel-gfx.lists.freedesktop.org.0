Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CFA60069A
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 08:11:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DA5010EC82;
	Mon, 17 Oct 2022 06:11:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3269110EC82
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 06:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665987075; x=1697523075;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=gTz4zCWdew7xUUQozAD7GfoXcyevCzbCtlvjI0KnHmU=;
 b=mgk5381baqm1cxPJHOK6wAeTD9lYoa3fss/XbBpQGr7BKMHIG55/EX8g
 083IKsP2y5/4Rzv+qZRXqqA1nmbcfdZwetDljRPdSTyYSBx9+MoPkxt0Q
 KdlUeELWiqgtMcahez1bLzLONq/Zba0MYcUp3PfiTVacHT2mUvIzduKIj
 FAIqAdGii/dkQlhnJd4AqG5TWvIYd+g9A6Bj7/bUtgKPd4u1KmrVdjppc
 rmQeImnsl0Qlr0kAVyVUZsTBHEgeIXqBwQnCHgFXEkEuWSDyoPglKBCmA
 6zHa4c4vjj1taaNv/UHUVhcxmVIhWiuKRD8Fsq5IVAjYZ11KS9XUds9uT Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="286106391"
X-IronPort-AV: E=Sophos;i="5.95,190,1661842800"; d="scan'208";a="286106391"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2022 23:11:14 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="717377324"
X-IronPort-AV: E=Sophos;i="5.95,190,1661842800"; d="scan'208";a="717377324"
Received: from aplata-mobl3.ger.corp.intel.com (HELO [10.213.25.105])
 ([10.213.25.105])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2022 23:11:13 -0700
Message-ID: <6c421a02-5aa5-db5e-8eac-6ebfc5cbc8d9@intel.com>
Date: Mon, 17 Oct 2022 08:11:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.3
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221014154655.14075-1-nirmoy.das@intel.com>
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20221014154655.14075-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Print return value on error
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

On 14.10.2022 17:46, Nirmoy Das wrote:
> Print returned error code for better debuggability.
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/7211
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/intel_fbdev.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 112aa0447a0d..ab385d18ddcc 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -175,7 +175,7 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
>   	}
>   
>   	if (IS_ERR(obj)) {
> -		drm_err(&dev_priv->drm, "failed to allocate framebuffer\n");
> +		drm_err(&dev_priv->drm, "failed to allocate framebuffer (%pe)\n", obj);
>   		return PTR_ERR(obj);
>   	}
>   
> @@ -256,7 +256,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
>   
>   	info = drm_fb_helper_alloc_fbi(helper);
>   	if (IS_ERR(info)) {
> -		drm_err(&dev_priv->drm, "Failed to allocate fb_info\n");
> +		drm_err(&dev_priv->drm, "Failed to allocate fb_info (%pe)\n", info);
>   		ret = PTR_ERR(info);
>   		goto out_unpin;
>   	}
> @@ -291,7 +291,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
>   	vaddr = i915_vma_pin_iomap(vma);
>   	if (IS_ERR(vaddr)) {
>   		drm_err(&dev_priv->drm,
> -			"Failed to remap framebuffer into virtual memory\n");
> +			"Failed to remap framebuffer into virtual memory (%pe)\n", vaddr);
>   		ret = PTR_ERR(vaddr);
>   		goto out_unpin;
>   	}

