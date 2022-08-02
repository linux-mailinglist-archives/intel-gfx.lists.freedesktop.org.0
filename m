Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA94587E7F
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 17:01:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 443518DD9B;
	Tue,  2 Aug 2022 15:01:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FCDC8DD7F
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 15:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659452462; x=1690988462;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=XzdgkzdGw1FRnZ7+lFZhogk8S2qOyVCriXA0pXhPS2c=;
 b=A+hJzL/Ko8STK3CaN5fXojUKZW3SgFCb1hEhoksx/9BzFzVhzGZXNhAX
 krn7A7eqKpR6RfffGZU4UZ7FyU9R6LjQOxgCRjQ7j09KtYmeaj7kOSxBr
 nMNmnMDLn5NI+nHggf5EsIT14tfmeR0e+dODAGSJeJ7JJ33AlQ2gBu2a5
 b/6DRnf5m9RQr16YWILw3Uo4kN25E3ucZgzYMOMWiQf+G92eFjizgVHDK
 vBjflIWd3ZgPiihibNXQcEzlZ6dIxH8Do2FaNzFOrEArvtZPLXb38asFd
 aAafnhWz+V8AFp0AgZDWWWAZdwCjVpXT9YN0dSFJgyQeyKQW4c12BMXAO A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="289439638"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="289439638"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 08:01:00 -0700
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="661658611"
Received: from llaviniu-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.60.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 08:00:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220713081747.1729689-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220602141850.21301-5-animesh.manna@intel.com>
 <20220713081747.1729689-1-arun.r.murthy@intel.com>
Date: Tue, 02 Aug 2022 18:00:56 +0300
Message-ID: <87r11yellj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCHv2] drm/i915/display: add support for dual
 panel backlight
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

On Wed, 13 Jul 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> The patch with commit 20f85ef89d94 ("drm/i915/backlight: use unique
> backlight device names") already adds support for dual panel backlight
> but with error prints. Since the patch tried to create the backlight
> device with the same name and upon failure will try with a different
> name it leads to failure logs in dmesg inturn getting caught by CI.
>
> This patch alternately will check if the backlight class of same name
> exists, will use a different name.
>
> v2: reworked on top of the patch 20f85ef89d94 ("drm/i915/backlight: use
> unique backlight device names")
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_backlight.c    | 24 ++++++++-----------
>  1 file changed, 10 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 110fc98ec280..1e550d048e86 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -971,26 +971,22 @@ int intel_backlight_device_register(struct intel_connector *connector)
>  	if (!name)
>  		return -ENOMEM;
>  
> -	bd = backlight_device_register(name, connector->base.kdev, connector,
> -				       &intel_backlight_device_ops, &props);
> -
> -	/*
> -	 * Using the same name independent of the drm device or connector
> -	 * prevents registration of multiple backlight devices in the
> -	 * driver. However, we need to use the default name for backward
> -	 * compatibility. Use unique names for subsequent backlight devices as a
> -	 * fallback when the default name already exists.
> -	 */
> -	if (IS_ERR(bd) && PTR_ERR(bd) == -EEXIST) {
> +	if (backlight_device_get_by_name(name)) {

This leaks a reference count to the backlight device. It needs to be
something like:

	bd = backlight_device_get_by_name(name);
	if (bd) {
		put_device(&bd->dev);

		/* ... */
	}

BR,
Jani.

> +		/*
> +		 * Using the same name independent of the drm device or connector
> +		 * prevents registration of multiple backlight devices in the
> +		 * driver. However, we need to use the default name for backward
> +		 * compatibility. Use unique names for subsequent backlight devices as a
> +		 * fallback when the default name already exists.
> +		 */
>  		kfree(name);
>  		name = kasprintf(GFP_KERNEL, "card%d-%s-backlight",
>  				 i915->drm.primary->index, connector->base.name);
>  		if (!name)
>  			return -ENOMEM;
> -
> -		bd = backlight_device_register(name, connector->base.kdev, connector,
> -					       &intel_backlight_device_ops, &props);
>  	}
> +	bd = backlight_device_register(name, connector->base.kdev, connector,
> +				       &intel_backlight_device_ops, &props);
>  
>  	if (IS_ERR(bd)) {
>  		drm_err(&i915->drm,

-- 
Jani Nikula, Intel Open Source Graphics Center
