Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 368BA3F1784
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 12:50:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A0386E5C3;
	Thu, 19 Aug 2021 10:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DA1E6E5C3
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Aug 2021 10:50:33 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id q11so8396864wrr.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Aug 2021 03:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:reply-to:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JXb2s8D0spIYaxWukrSE+wgNjFC+Xl6kyojWPY8tP7Q=;
 b=ZRWpjwPH2H+sOGOkS7Opr9KUgU+SuUDs16x2YlhlYPmTJQxjHXRga6a/GDv8OQaUBv
 31U9O9UX4yRpyly/9G0qYq0V3pixgsGKQS5/KVIIiER1rkwU/G3EXHLeZvmLiVzd9x/E
 euKl3qauJxulDx33jXQl+rSqnVa1DCIO1DS63e8dX2rxec5Pi8KO1cgI22Lh17kGPTyE
 MuO54DisinYxejqR0fe5qIiBp8jxP9RA2IIs9Xi2EN0N2nieqFsl7pXzG49DU7qzFifC
 LWdwzfNva1hh8ZC4dgClXFZMf7VCzgO/IAU1fbW9x7z1PUU1KZwBwA3OwLetVZJT5en2
 qavQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:reply-to:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JXb2s8D0spIYaxWukrSE+wgNjFC+Xl6kyojWPY8tP7Q=;
 b=K4MdyJwrOH+zRXCF5PyqpTE8a+KND1M1UCIPMqujdeP4vlAsmChp28ZQrXiLEHfMuj
 zPj0HKuJfmN2mA5YiDHVXVWZ43rJYHx3CO9XnHvHoBFoIXSRveat5bjAKQBR/NjsXIRx
 tJw2GswEqj9ft/L+IlbGBavurFSKnLtegW7VE+x9ujz92wSZlifQystdZcWd7cpEADfD
 Tz8uebH6FUFOWlZ9Rp5nApxgqeBYfUYn8uYsi7KoDSiofA89eTV5TxpvWtyfPWHSDp+J
 f0bw4ZWb0TuBhGq9yhKp2xpSO03KkHqHBo7wm0NYDielgSNVGSlu5NoBJpIqWS+DLo0g
 p57A==
X-Gm-Message-State: AOAM5312qv2mFvGnT3y1JhOZjU9yJA+IeoS0tfhgi8xUeKrRsFFcYFdT
 fN4hdefmJsTzvqAYuEgYZUpUlgdoR5t1nleS
X-Google-Smtp-Source: ABdhPJz0Ynq+PcaXrsGIkPKjPA+fnqlYJZ1Ob+AVJ7V88gr6hpCVoOlrqknvWr3F+lLNb/uqbV8ILw==
X-Received: by 2002:adf:ec81:: with SMTP id z1mr3016382wrn.181.1629370231306; 
 Thu, 19 Aug 2021 03:50:31 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.86])
 by smtp.googlemail.com with ESMTPSA id u16sm2496790wmc.41.2021.08.19.03.50.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Aug 2021 03:50:30 -0700 (PDT)
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20210702204603.596-1-ville.syrjala@linux.intel.com>
 <20210702204603.596-7-ville.syrjala@linux.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <3fffb5c9-d3c6-1bef-3daf-b1c644f33821@gmail.com>
Date: Thu, 19 Aug 2021 13:50:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210702204603.596-7-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/fbc: Align FBC segments to
 512B on glk+
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

Look ok to me.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 2.7.2021 23.46, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Apply the same 512 byte FBC segment alignment to glk+ as we use
> on skl+. The only real difference is that we now have a dedicated
> register for the FBC override stride. Not 100% sure which
> platforms really need the 512B alignment, but it's easieest
> to just do it on everything.
> 
> Also the hardware no longer seems to misclaculate the CFB stride
> for linear, so we can omit the use of the override stride for
> linear unless the stride is misaligned.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fbc.c | 14 +++++++++++---
>   drivers/gpu/drm/i915/i915_reg.h          |  4 ++++
>   2 files changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 2baf58af016c..2da5295092e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -93,7 +93,7 @@ static unsigned int intel_fbc_cfb_stride(struct drm_i915_private *i915,
>   	 * be 512 byte aligned. Aligning each line to 512 bytes guarantees
>   	 * that regardless of the compression limit we choose later.
>   	 */
> -	if (DISPLAY_VER(i915) == 9)
> +	if (DISPLAY_VER(i915) >= 9)
>   		return ALIGN(stride, 512);
>   	else
>   		return stride;
> @@ -334,10 +334,18 @@ static void gen7_fbc_activate(struct drm_i915_private *dev_priv)
>   	const struct intel_fbc_reg_params *params = &fbc->params;
>   	u32 dpfc_ctl;
>   
> -	/* Display WA #0529: skl, kbl, bxt. */
> -	if (DISPLAY_VER(dev_priv) == 9) {
> +	if (DISPLAY_VER(dev_priv) >= 10) {
>   		u32 val = 0;
>   
> +		if (params->override_cfb_stride)
> +			val |= FBC_STRIDE_OVERRIDE |
> +				FBC_STRIDE(params->override_cfb_stride / fbc->limit);
> +
> +		intel_de_write(dev_priv, GLK_FBC_STRIDE, val);
> +	} else if (DISPLAY_VER(dev_priv) == 9) {
> +		u32 val = 0;
> +
> +		/* Display WA #0529: skl, kbl, bxt. */
>   		if (params->override_cfb_stride)
>   			val |= CHICKEN_FBC_STRIDE_OVERRIDE |
>   				CHICKEN_FBC_STRIDE(params->override_cfb_stride / fbc->limit);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index ab2bd4837efd..7cf318d84d81 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3334,6 +3334,10 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>   #define   ILK_DPFC_DISABLE_DUMMY0 (1 << 8)
>   #define   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL	(1 << 14)
>   #define   ILK_DPFC_NUKE_ON_ANY_MODIFICATION	(1 << 23)
> +#define GLK_FBC_STRIDE		_MMIO(0x43228)
> +#define   FBC_STRIDE_OVERRIDE	REG_BIT(15)
> +#define   FBC_STRIDE_MASK	REG_GENMASK(14, 0)
> +#define   FBC_STRIDE(x)		REG_FIELD_PREP(FBC_STRIDE_MASK, (x))
>   #define ILK_FBC_RT_BASE		_MMIO(0x2128)
>   #define   ILK_FBC_RT_VALID	(1 << 0)
>   #define   SNB_FBC_FRONT_BUFFER	(1 << 1)
> 
