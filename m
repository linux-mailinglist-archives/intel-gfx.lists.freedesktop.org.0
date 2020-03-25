Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D44A1922F1
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 09:38:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97F4C6E132;
	Wed, 25 Mar 2020 08:38:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D66A66E069
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 08:38:12 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id w10so1781135wrm.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 01:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fS9Ue10fbAcZyOWm1Exns1f3Kd+erTx1CQg1taMbNn4=;
 b=ZHKhjYIrqlGLtuE5Td6jKpwpHhAx//hy1Es93oZLealoK5ckHJ/H/b1hVG+qtGUY2P
 6dmYeRwB2X/KZ/4Awpt25Ktwx3z4xxpUG9rbgCpvJKPPu8jW0tB4VfpeSFC4ONcI+wuJ
 1acjwQqDqdrJZXxoRNXPzTWXSQ/KC+p17CFwM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fS9Ue10fbAcZyOWm1Exns1f3Kd+erTx1CQg1taMbNn4=;
 b=DEE3FtWL/HHkMchmflyLjRY3YcPAUAxjS3HjDQu6fPqYW06e36IxTopae2riWJC4p1
 ce3WyaWp9SGeW1NAbyjEr07E1RQzO3NR0fTJrZpmMZoOsLXJLez0TCTZBIAfHFavjzUn
 Hgidd8uuot7Ym454xWS6k03kAmrt8iDN1dEQ3PSwy6Vdzj8wIKI1O7mMMQk8kNyqqo3+
 q9JNktMPwQnnxnlGp4m2NFixy90hg8IKJrw7a+Zk+/ynGvAllEPXk5unpiQtStpcoVue
 RUjGzLsJ8i6l0PQnbXXN/4BSsSX3Z4W5Z9WSPgilPMZqPnRlGC82vcG5qeWlEE423Tzw
 WpLw==
X-Gm-Message-State: ANhLgQ35pd8Wvskp2qVK8Eyuiy5iA4AD/91hpfVhoidI1wkjHOfGd+b/
 2dIT14g6g3l2xtVlA80I36GBJg==
X-Google-Smtp-Source: ADFU+vt20YRcopWFb+AXBS/98EowZn2kXCabv7AnDA/y4f+Gv2PFwG+f3x6T/+Y88ekhjnw7tobUHQ==
X-Received: by 2002:adf:a549:: with SMTP id j9mr1990679wrb.183.1585125491525; 
 Wed, 25 Mar 2020 01:38:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a186sm7773182wmh.33.2020.03.25.01.38.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 01:38:10 -0700 (PDT)
Date: Wed, 25 Mar 2020 09:38:09 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200325083809.GN2363188@phenom.ffwll.local>
References: <cover.1584714939.git.jani.nikula@intel.com>
 <25e56d1b7df3b1e91024eb969fb839fdcbdcb35e.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <25e56d1b7df3b1e91024eb969fb839fdcbdcb35e.1584714939.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915/display_power: use struct
 drm_device based logging
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
Cc: intel-gfx@lists.freedesktop.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 20, 2020 at 04:36:27PM +0200, Jani Nikula wrote:
> Convert all the DRM_* logging macros to the struct drm_device based
> macros to provide device specific logging.
> 
> No functional changes.
> 
> Generated using the following semantic patch, originally written by
> Wambui Karuga <wambui.karugax@gmail.com>, with manual fixups on top:
> 
> @@
> identifier fn, T;
> @@
> 
> fn(...,struct drm_i915_private *T,...) {
> <+...
> (
> -DRM_INFO(
> +drm_info(&T->drm,
> ...)
> |
> -DRM_NOTE(
> +drm_notice(&T->drm,
> ...)
> |
> -DRM_ERROR(
> +drm_err(&T->drm,
> ...)
> |
> -DRM_WARN(
> +drm_warn(&T->drm,
> ...)
> |
> -DRM_DEBUG_DRIVER(
> +drm_dbg(&T->drm,
> ...)
> |
> -DRM_DEBUG_KMS(
> +drm_dbg_kms(&T->drm,
> ...)
> |
> -DRM_DEBUG_ATOMIC(
> +drm_dbg_atomic(&T->drm,
> ...)
> )
> ...+>
> }
> 
> @@
> identifier fn, T;
> @@
> 
> fn(...) {
> ...
> struct drm_i915_private *T = ...;
> <+...
> (
> -DRM_INFO(
> +drm_info(&T->drm,
> ...)
> |
> -DRM_NOTE(
> +drm_notice(&T->drm,
> ...)
> |
> -DRM_ERROR(
> +drm_err(&T->drm,
> ...)
> |
> -DRM_WARN(
> +drm_warn(&T->drm,
> ...)
> |
> -DRM_DEBUG_DRIVER(
> +drm_dbg(&T->drm,
> ...)
> |
> -DRM_DEBUG_KMS(
> +drm_dbg_kms(&T->drm,
> ...)
> |
> -DRM_DEBUG_ATOMIC(
> +drm_dbg_atomic(&T->drm,
> ...)
> )
> ...+>
> }
> 
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 22 +++++++++++++------
>  1 file changed, 15 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 246e406bb385..433e5a81dd4d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1873,20 +1873,27 @@ __async_put_domains_state_ok(struct i915_power_domains *power_domains)
>  static void print_power_domains(struct i915_power_domains *power_domains,
>  				const char *prefix, u64 mask)
>  {
> +	struct drm_i915_private *i915 = container_of(power_domains,
> +						     struct drm_i915_private,
> +						     power_domains);

A power_to_i915() macro would find 3 uses in total, after your patch. With
or without that:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>  	enum intel_display_power_domain domain;
>  
> -	DRM_DEBUG_DRIVER("%s (%lu):\n", prefix, hweight64(mask));
> +	drm_dbg(&i915->drm, "%s (%lu):\n", prefix, hweight64(mask));
>  	for_each_power_domain(domain, mask)
> -		DRM_DEBUG_DRIVER("%s use_count %d\n",
> -				 intel_display_power_domain_str(domain),
> -				 power_domains->domain_use_count[domain]);
> +		drm_dbg(&i915->drm, "%s use_count %d\n",
> +			intel_display_power_domain_str(domain),
> +			power_domains->domain_use_count[domain]);
>  }
>  
>  static void
>  print_async_put_domains_state(struct i915_power_domains *power_domains)
>  {
> -	DRM_DEBUG_DRIVER("async_put_wakeref %u\n",
> -			 power_domains->async_put_wakeref);
> +	struct drm_i915_private *i915 = container_of(power_domains,
> +						     struct drm_i915_private,
> +						     power_domains);
> +
> +	drm_dbg(&i915->drm, "async_put_wakeref %u\n",
> +		power_domains->async_put_wakeref);
>  
>  	print_power_domains(power_domains, "async_put_domains[0]",
>  			    power_domains->async_put_domains[0]);
> @@ -4480,7 +4487,8 @@ void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
>  	drm_WARN(&dev_priv->drm, hweight8(req_slices) > max_slices,
>  		 "Invalid number of dbuf slices requested\n");
>  
> -	DRM_DEBUG_KMS("Updating dbuf slices to 0x%x\n", req_slices);
> +	drm_dbg_kms(&dev_priv->drm, "Updating dbuf slices to 0x%x\n",
> +		    req_slices);
>  
>  	/*
>  	 * Might be running this in parallel to gen9_dc_off_power_well_enable
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
