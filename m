Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 964487F13BA
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Nov 2023 13:46:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC6CA10E04A;
	Mon, 20 Nov 2023 12:46:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BD3E10E04A
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Nov 2023 12:46:21 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id
 4fb4d7f45d1cf-548d60a4d60so772931a12.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Nov 2023 04:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700484380; x=1701089180; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=ilvCMM5UWr/3AsUksgc7eeGorvEQNwQalunDufX/Tzc=;
 b=ipmne0gpfUNOH7BnQnJPRGhPECm2CfsDu/L5JgZBFXSA2xYJ3vvmCUMJEdjKMfGOq0
 iwGMD75EavLAKzItcqyOPO5sC7kR0uQENsPdd0uCmH785veT0/prvJhyCeWgLwN4HSI+
 wd9HT/kzMNb9NfBG/clsFeaaZNT1LmYBeslo7v1lkOV5VN4jntWD/7IGmF57m/rjE7mb
 hnfcUIfTKMoutLorUCnwF19Cf1QSSzSJM/91SwZalRX7hEy+kdIiCakJcovMg6TieKm/
 zwAfhMwYt1Sblbg79nX+DZtuU/bOT/M5JfO15ok1XTQ1cxAhB90MUAu8+iS1e1H9HAYX
 f5FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700484380; x=1701089180;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ilvCMM5UWr/3AsUksgc7eeGorvEQNwQalunDufX/Tzc=;
 b=uw8m/fWV/lJK+SD5h4QU2sUZFfHgqGQp3vdZl6gR8ywtbsl7Ygw+RmLfXPZMa0PqSf
 3C3K/gvxiIFd3oRHCZ4BlZHWWwvq29QobvK0UEmuLrPZvO37QuJ8/4ZXoEeBA+Q+ki5h
 N0xoWdGLAsjZGtf1S5f8zEUd9YRLjx+APu+8IqrAY9PzGjyVrkwesPzm99374rylyv9Q
 /QXZl369TFkNP6Tw979ENdgEklJHXjqnRNh6pY4Mi8c+Xk7S5YkEMmt7DbUyA5vQbM7B
 0kTm+r6dBtKz0q2Q4qYB0OuBAgxjreHcnUk36Y4BTsErUXZyRNvc0ab6p8AXNKHFInf3
 xeXw==
X-Gm-Message-State: AOJu0YyS89SxDkv7e1aDVWjP0srRZkQKSuoKNniy9PMmU8LXlViHsVwa
 8usFZ94Kp3koCeNy7SmcR0o=
X-Google-Smtp-Source: AGHT+IF0QRB+AaVyQadsypVRUEVRhMcuT6WUz4DLpi1I3P/FqNf21BQLHrThKR/HDshbcvEi0JiZEA==
X-Received: by 2002:a17:906:7212:b0:9f8:a622:d670 with SMTP id
 m18-20020a170906721200b009f8a622d670mr6438592ejk.19.1700484379651; 
 Mon, 20 Nov 2023 04:46:19 -0800 (PST)
Received: from [0.0.0.0] ([134.134.137.88])
 by smtp.googlemail.com with ESMTPSA id
 gt2-20020a170906f20200b009aa292a2df2sm3835619ejb.217.2023.11.20.04.46.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Nov 2023 04:46:19 -0800 (PST)
Message-ID: <4b37f29b-d91b-46e3-b225-82d723196709@gmail.com>
Date: Mon, 20 Nov 2023 14:46:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231117171833.25816-1-ville.syrjala@linux.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20231117171833.25816-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/fbc: Split plane size vs.
 surface size checks apart
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
Reply-To: juhapekka.heikkila@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Took a while to comprehend what the spec says and how it translate into 
code but I think this is correct fix.

entire set is
Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 17.11.2023 19.18, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Do separate checks for the visible plane size vs. the surface
> size (which I take to mean offset+size). For now both use the
> same max w/h, but we can relax the surface size limits as
> a followup.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fbc.c | 32 +++++++++++++++++++++++-
>   1 file changed, 31 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index b73cf1c5ba33..fe21371db38c 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1050,6 +1050,31 @@ static bool intel_fbc_hw_tracking_covers_screen(const struct intel_plane_state *
>   	return effective_w <= max_w && effective_h <= max_h;
>   }
>   
> +static bool intel_fbc_plane_size_valid(const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> +	unsigned int w, h, max_w, max_h;
> +
> +	if (DISPLAY_VER(i915) >= 10) {
> +		max_w = 5120;
> +		max_h = 4096;
> +	} else if (DISPLAY_VER(i915) >= 8 || IS_HASWELL(i915)) {
> +		max_w = 4096;
> +		max_h = 4096;
> +	} else if (IS_G4X(i915) || DISPLAY_VER(i915) >= 5) {
> +		max_w = 4096;
> +		max_h = 2048;
> +	} else {
> +		max_w = 2048;
> +		max_h = 1536;
> +	}
> +
> +	w = drm_rect_width(&plane_state->uapi.src) >> 16;
> +	h = drm_rect_height(&plane_state->uapi.src) >> 16;
> +
> +	return w <= max_w && h <= max_h;
> +}
> +
>   static bool i8xx_fbc_tiling_valid(const struct intel_plane_state *plane_state)
>   {
>   	const struct drm_framebuffer *fb = plane_state->hw.fb;
> @@ -1247,11 +1272,16 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>   		return 0;
>   	}
>   
> -	if (!intel_fbc_hw_tracking_covers_screen(plane_state)) {
> +	if (!intel_fbc_plane_size_valid(plane_state)) {
>   		plane_state->no_fbc_reason = "plane size too big";
>   		return 0;
>   	}
>   
> +	if (!intel_fbc_hw_tracking_covers_screen(plane_state)) {
> +		plane_state->no_fbc_reason = "surface size too big";
> +		return 0;
> +	}
> +
>   	/*
>   	 * Work around a problem on GEN9+ HW, where enabling FBC on a plane
>   	 * having a Y offset that isn't divisible by 4 causes FIFO underrun

