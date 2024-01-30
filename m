Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EED84310D
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 00:21:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 311A110E949;
	Tue, 30 Jan 2024 23:21:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
 [209.85.219.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1341F10E902
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 23:21:18 +0000 (UTC)
Received: by mail-qv1-f53.google.com with SMTP id
 6a1803df08f44-6868823be58so31507046d6.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 15:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706656817; x=1707261617;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=rs78AZGYZTjxMX7LTlpyJfiDjCXLG1hXqlvxcSisg0Q=;
 b=K4v3BzHmzSiIfoNNWTHI9d5lf2MjI/cm19Wp/8a4qHfUR4MjN1vjE5QYl7WxSTVWdo
 yXwosRWJ1XSfA+tNRctDV7NWqFIrHDtZmOMt3ybdljLGO3/Y0v8gq8crBswFPJh7dI7D
 J/UQoWR+jk+N+WDXGzRVauHXXOlc9LcNe1+DQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706656817; x=1707261617;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rs78AZGYZTjxMX7LTlpyJfiDjCXLG1hXqlvxcSisg0Q=;
 b=RgWGDUPkvlHh9/owDWI0eb1ZmunQIXarLN2rrSDt9DROkvU9v3r6zTAejRDJpnzluF
 TvMyBVFHEnhbYElVpGMHA9gBptvkeG4oDTCnXTOIWrUeF5wTHlXf5U/muPHyHRySFMaj
 NlPyz9EfS6GI9uEKuUUiqq5Gan4ZGNgPsDKIbVO5ZDiDKZVlAwW37QZQxuRSAhqHVrWy
 kN0R0xUh/vn7F288co9jOzLETA7xyDr6KrBTaeIu5UmAaIlv02N55h87iXsGpDeDnegv
 CcWt3UAge0yOO5yyMOMk0O/fpPHQoD8jtAgb8h3LfbVPyqgnXBh5CGOUhbsz6Uauy9LC
 ISTQ==
X-Gm-Message-State: AOJu0YwnBZmBzIcU3pGn0NngsS1ZBaKaW2fruPaUE2xfUYZY+3W14Pxg
 ojtXI/PTZlUS8q9oz21glWhRPXY6XoZzrq9z3UMJncy6zmIc58BHIvtD18iW2g==
X-Google-Smtp-Source: AGHT+IFsMb+QQplxaYDVL99lbMJY7df7AavT5fnAQH+JAQw3acEdMKrLP+m5o95Sfb2QIYR5KnkcHQ==
X-Received: by 2002:a05:6214:2aa4:b0:68c:6c97:7b55 with SMTP id
 js4-20020a0562142aa400b0068c6c977b55mr20792qvb.35.1706656817263; 
 Tue, 30 Jan 2024 15:20:17 -0800 (PST)
Received: from google.com (240.157.150.34.bc.googleusercontent.com.
 [34.150.157.240]) by smtp.gmail.com with ESMTPSA id
 me16-20020a0562145d1000b0068c440bc7d0sm3492535qvb.105.2024.01.30.15.20.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 15:20:17 -0800 (PST)
Date: Tue, 30 Jan 2024 23:20:15 +0000
From: Paz Zcharya <pazz@chromium.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v4 05/16] drm/i915: Disable the "binder"
Message-ID: <ZbmEL5vG8vczSQc4@google.com>
References: <20240116075636.6121-6-ville.syrjala@linux.intel.com>
 <20240125102736.22536-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240125102736.22536-1-ville.syrjala@linux.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 25, 2024 at 12:27:36PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Now that the GGTT PTE updates go straight to GSMBASE (bypassing
> GTTMMADR) there should be no more risk of system hangs? So the
> "binder" (ie. update the PTEs via MI_UPDATE_GTT) is no longer
> necessary, disable it.
> 
> My main worry with the MI_UPDATE_GTT are:
> - only used on this one platform so very limited testing coverage
> - async so more opprtunities to screw things up
> - what happens if the engine hangs while we're waiting for MI_UPDATE_GTT
>   to finish?
> - requires working command submission, so even getting a working
>   display now depends on a lot more extra components working correctly
> 
> TODO: MI_UPDATE_GTT might be interesting as an optimization
> though, so perhaps someone should look into always using it
> (assuming the GPU is alive and well)?
> 
> v2: Keep using MI_UPDATE_GTT on VM guests
> v3: use i915_direct_stolen_access()
> 
> Cc: Paz Zcharya <pazz@chromium.org>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Hi Ville,

Thank you so much for this incredible series.
It solves the issue regarding MTL initial plane readout
that Andrzej Hajda and I worked on in
https://patchwork.freedesktop.org/patch/570811/?series=127130&rev=2
In addition, it solved the issue with the new GOP.

I tested it on two different devices with Meteor Lake and it worked perfectly:
no i915 errors, no flickers or observable issues.

Tested-by: Paz Zcharya <pazz@chromium.org>

> ---
>  drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index 86f73fe558ca..7811a8c9da06 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -24,7 +24,8 @@
>  bool i915_ggtt_require_binder(struct drm_i915_private *i915)
>  {
>  	/* Wa_13010847436 & Wa_14019519902 */
> -	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
> +	return !i915_direct_stolen_access(i915) &&
> +		MEDIA_VER_FULL(i915) == IP_VER(13, 0);
>  }
>  
>  static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
> -- 
> 2.43.0
> 
