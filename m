Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1620C1A0CAC
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 13:15:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82C016E833;
	Tue,  7 Apr 2020 11:15:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2DEF6E833
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 11:14:59 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id w10so3425592wrm.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 04:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=QBxMu4xxLer0SzQSQ3SwKLmK++F8yQwRac9xHPMx9S8=;
 b=vc2r2fSU/ah0/hB81RrxUk+mv0IJjRsyNZAjwzuoaOyuHOb2UUbmXe4FQ1uJIlShWu
 g1F8UNi8Dl/P2HB1pf3Tl50HD4JU+XOG0QEWVdkGsZXgPwj/t59X0JV9mavoqPw5yDoQ
 GYS4I2pcogJsalHBLB32enU4BKcPkYS7fJdp5HN9YI3Ds8EfzFK9Qb+gRXT6pkQ0SlxB
 QFE/XoMAlxpN4fAtO3XKEJuo3Mjka9wm4G6kBtRaROuUfedFEPvYRt88DAPow6ft1bzU
 hxtocETXC8FerHfDzgO0Zph3c7Asm6DmLw2uYWxi6OLmflU6bFAxEh5TKxn4vunk54D2
 U5xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=QBxMu4xxLer0SzQSQ3SwKLmK++F8yQwRac9xHPMx9S8=;
 b=Gpwit/AU+H5MMyJvmFCED7J+UGfdLGqk68eJlUfvIJaEzhVKOkwNj9E6QCrID773fr
 jL6k61HbCwNZeuEz1Gsd9Fxsmjcoqz8KEXMkxpX+/4FJEB2CyBiOAzXS4bqIS1mH0826
 O19DkHJMMOmYfrf5AAUgs6W5MToJHSaYOzMqEhyZ0zDavoGzwkLd0D7H6RjPST1oOR33
 Mv170+unWQMQSL+zm7Z8iMpzKUp+yZ+fGCDcI87J7owxpv6ZYwuD4KEqcKCS4MHsupQl
 WFw7HcTLa1FGp7TfMiRKckpD3/TR5GQLnyCU+VphOxN0Z1sJZ5LBBROKE8f/wTLM0W3U
 6WoQ==
X-Gm-Message-State: AGi0PuYZ+90wXu5wMqLo8kUxHL+zM1grATJhVNs5iOLMJiMuhAnLbZ3s
 2PVWOtW5tOwFTSa0ieOnt3s=
X-Google-Smtp-Source: APiQypKgb+xC5dZQBZZz3M4T1zT8mvdkYhb1K7TUYriZnL9kjMH6+M/ZCHQzw9ieo+zxkHRyC5kDVg==
X-Received: by 2002:a5d:42c1:: with SMTP id t1mr2178896wrr.215.1586258098347; 
 Tue, 07 Apr 2020 04:14:58 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id b66sm1883522wmh.12.2020.04.07.04.14.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 04:14:57 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Tue, 7 Apr 2020 14:12:38 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20200402114819.17232-1-jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2004071410480.77089@wambui>
References: <20200402114819.17232-1-jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/17] drm/i915/audio: use struct drm_device
 based logging
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On Thu, 2 Apr 2020, Jani Nikula wrote:

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

Reviewed-by: Wambui Karuga <wambui.karugax@gmail.com>

> ---
> drivers/gpu/drm/i915/display/intel_audio.c | 12 +++++++-----
> 1 file changed, 7 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 950160f1a89f..47402c2869db 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -252,14 +252,16 @@ static u32 audio_config_hdmi_pixel_clock(const struct intel_crtc_state *crtc_sta
> 		i = ARRAY_SIZE(hdmi_audio_clock);
>
> 	if (i == ARRAY_SIZE(hdmi_audio_clock)) {
> -		DRM_DEBUG_KMS("HDMI audio pixel clock setting for %d not found, falling back to defaults\n",
> -			      adjusted_mode->crtc_clock);
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "HDMI audio pixel clock setting for %d not found, falling back to defaults\n",
> +			    adjusted_mode->crtc_clock);
> 		i = 1;
> 	}
>
> -	DRM_DEBUG_KMS("Configuring HDMI audio for pixel clock %d (0x%08x)\n",
> -		      hdmi_audio_clock[i].clock,
> -		      hdmi_audio_clock[i].config);
> +	drm_dbg_kms(&dev_priv->drm,
> +		    "Configuring HDMI audio for pixel clock %d (0x%08x)\n",
> +		    hdmi_audio_clock[i].clock,
> +		    hdmi_audio_clock[i].config);
>
> 	return hdmi_audio_clock[i].config;
> }
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
