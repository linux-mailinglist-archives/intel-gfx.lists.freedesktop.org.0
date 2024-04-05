Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C6789A3C1
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 19:55:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 284D810E5B0;
	Fri,  5 Apr 2024 17:55:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="L13qukAa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 731AC10E5B0
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 17:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1712339751;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FTv/7Tk+v3zaLetYd31tUApCUGM3b2lQtJGelHnQ+iY=;
 b=L13qukAaDKPgDuPOtnYMG8edeIwyODJjyGJ2lxaUOKI5evka9/C3IoGOVcGFp6cSIS/mP0
 EH4AdtxkVkHDUeTxZqYf4hE8tdF0FUAkDRItwmEODJUHvv6eD3TpzOnt6Lfdh51szdXvsO
 bGQ1aVgbSjR8zxm/khIw+5xUwUP7ieY=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-546-D1lA96SgPMuCpULEwUIbSA-1; Fri, 05 Apr 2024 13:55:50 -0400
X-MC-Unique: D1lA96SgPMuCpULEwUIbSA-1
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-343e74dcf0bso392922f8f.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Apr 2024 10:55:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712339749; x=1712944549;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FTv/7Tk+v3zaLetYd31tUApCUGM3b2lQtJGelHnQ+iY=;
 b=G3ljpadO2WViwr1XkEsCQBU1MYueVdORM87BUqevHqoRAFS8MqKkE3tJyJwaDT8Wof
 bnva9KfO73GQ4WY6eegdOvnDsddFZkBuX6ac+KAb9izpfku/ERB4ge3+wYEXA+CttQ+V
 /FcxGJqCC20cOZWHGBASkH6GZwdWyhd67seFnuxc3JcjMGunqeX3jM1OPNF/HJIiFld5
 dGN6k9NTy6uFk81X4xx1b3v+xvmuxEqzNuUBt11SToJyc646nndL7qxRtDVq3LcCA+7y
 jLL1dITAjnVcalupCrrekjfV/32OQg7ynkFInxBOM1NHk9lZ0knU6I+UA3qYOpKrwBEl
 nsqg==
X-Gm-Message-State: AOJu0YzzWHUQBC+HTcfBPVe+2g4dAj3Ho1iwsCLY9voJT9V+glCkZ6P1
 E0u0QjCqsUwMJfEh+X+HDcGG9C7rxddqilBUO3Vj6tVKyUeZmByrk/GDmGL77IBqEgfJC2hsCe0
 VCJKbccZ4XLdm9ciq0S3zd5loIRIyBdCdc0J+9hS+vwEabwmEdGrme2eSRJAHcA+8+w==
X-Received: by 2002:adf:fe89:0:b0:343:d35d:71d with SMTP id
 l9-20020adffe89000000b00343d35d071dmr1572495wrr.8.1712339748857; 
 Fri, 05 Apr 2024 10:55:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBHgk1zCn0k1zYtsY9tfcAYh3j+Z+CC//lM9xiKUfBYsYxry/190OVKvHcxxfcCvnuuymLVg==
X-Received: by 2002:adf:fe89:0:b0:343:d35d:71d with SMTP id
 l9-20020adffe89000000b00343d35d071dmr1572483wrr.8.1712339748486; 
 Fri, 05 Apr 2024 10:55:48 -0700 (PDT)
Received: from toolbox ([2001:9e8:899a:a100:d85f:7bed:a911:4675])
 by smtp.gmail.com with ESMTPSA id
 d14-20020adfe84e000000b00343bd6716b3sm2507813wrn.99.2024.04.05.10.55.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Apr 2024 10:55:48 -0700 (PDT)
Date: Fri, 5 Apr 2024 19:55:46 +0200
From: Sebastian Wick <sebastian.wick@redhat.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, chaitanya.kumar.borah@intel.com,
 uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 arun.r.murthy@intel.com, jani.nikula@intel.com, naveen1.kumar@intel.com
Subject: Re: [7/7] drm/i915/dp: Limit brightness level to vbt min brightness
Message-ID: <20240405175546.GA934147@toolbox>
References: <20240405083704.393996-2-suraj.kandpal@intel.com>
MIME-Version: 1.0
In-Reply-To: <20240405083704.393996-2-suraj.kandpal@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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

On Fri, Apr 05, 2024 at 02:07:05PM +0530, Suraj Kandpal wrote:
> Limit minimum brightness to vbt min brightness when using aux
> based brightness control to avoid letting the screen
> from going completely blank.
> Sometimes vbt can have some bogus values hence clamping the value
> for sanity in case of corner case.

So, you're completely ignoring the value from the EDID now instead?

> 
> --v2
> -Use something same mechanism to limit minimum brightness
> that PWM method uses [Jani]
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 20dd5a6a0f3f..eb2a7225dfaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -411,6 +411,8 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
>  	struct intel_panel *panel = &connector->panel;
>  	struct drm_luminance_range_info *luminance_range =
>  		&connector->base.display_info.luminance_range;
> +	u32 min_level = clamp_t(u32,
> +				connector->panel.vbt.backlight.min_brightness, 0, 64);
>  	int ret;
>  
>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDR backlight is controlled through %s\n",
> @@ -427,14 +429,12 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
>  		}
>  	}
>  
> -	if (luminance_range->max_luminance) {
> +	if (luminance_range->max_luminance)
>  		panel->backlight.max = luminance_range->max_luminance;
> -		panel->backlight.min = luminance_range->min_luminance;
> -	} else {
> +	else
>  		panel->backlight.max = 512;
> -		panel->backlight.min = 0;
> -	}
>  
> +	panel->backlight.min = min_level;
>  	intel_dp_aux_write_panel_luminance_override(connector);
>  
>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX HDR interface for backlight control (range %d..%d)\n",

