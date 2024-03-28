Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F46188FA06
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 09:31:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDC22112367;
	Thu, 28 Mar 2024 08:31:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D0+XEbln";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2701112367;
 Thu, 28 Mar 2024 08:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711614701; x=1743150701;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9o3xCITAzaBnDrWo+ehKIbor2QrpkreavRUsBFZh5/A=;
 b=D0+XEblniQmAQlcsTfE2lQL+zGpypl1VlPvr6oSvS28GANpbh744azOv
 HviFn9hnLoS9wUp2UnBnIgUWPYooh6v48clDiSmOTolDvjwqbp64CArFX
 QYHkhh6V2352pn6rFco3z6UqwogA6OLse1lqxwWWszcG8X+926hwsyihZ
 7ZBWvPQYjxDV3dR2Uy904xqioTbGyO7+cixwpRyRzESTJp3DsJ9F05u7c
 jMHsMZ7IQwqH5bQrR5qMS+cPAoWrACSCcGVDdvhSAYsXRPdnAxD9OfQgC
 NHBfCjQaFn1hSTQwOw0AEDLprYnpFHXOpBkHExYn1QZjYU76NzVmCImAY A==;
X-CSE-ConnectionGUID: h4OOozrmTOy9d7VwjNDnWw==
X-CSE-MsgGUID: pmUmMFETQd+R3wUyG3zz9w==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="10549916"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="10549916"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 01:31:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="47774372"
Received: from unknown (HELO intel.com) ([10.247.118.221])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 01:31:37 -0700
Date: Thu, 28 Mar 2024 09:31:31 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCHv2] drm/xe/display: check for error on drmm_mutex_init
Message-ID: <ZgUq47D313cr2VYp@ashyti-mobl2.lan>
References: <20240328080005.410961-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240328080005.410961-1-arun.r.murthy@intel.com>
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

Hi Arun,

...

> -	drmm_mutex_init(&xe->drm, &xe->sb_lock);
> -	drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
> -	drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
> -	drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
> -	drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
> -	drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
> +	if (drmm_mutex_init(&xe->drm, &xe->sb_lock) ||
> +	    drmm_mutex_init(&xe->drm, &xe->display.backlight.lock) ||
> +	    drmm_mutex_init(&xe->drm, &xe->display.audio.mutex) ||
> +	    drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex) ||
> +	    drmm_mutex_init(&xe->drm, &xe->display.pps.mutex) ||
> +	    drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex))
> +		return -ENOMEM;

why not extract the value from drmm_mutex_init()? it would make
the code a bit more complex, but better than forcing a -ENOMEM
return.

	err = drmm_mutex_init(...)
	if (err)
		return err;

	err = drmm_mutex_init(...)
	if (err)
		return err;

	err = drmm_mutex_init(...)
	if (err)
		return err;
	
	...

On the other hand drmm_mutex_init(), as of now returns only
-ENOMEM, but it's a bad practice to assume it will always do. I'd
rather prefer not to check the error value at all.

Andi

>  	xe->enabled_irq_mask = ~0;
>  
>  	err = drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
> -- 
> 2.25.1
