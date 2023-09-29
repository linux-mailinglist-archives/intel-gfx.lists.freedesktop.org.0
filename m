Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 381B67B330D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 15:08:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2860310E12B;
	Fri, 29 Sep 2023 13:08:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7264F10E12B
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 13:08:30 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 5b1f17b1804b1-4053c6f0db8so135900475e9.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 06:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695992909; x=1696597709; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=YawnXPpR/q1xwVSS1qH77DtFQDtkA7lDy+LLpTfNTXI=;
 b=VPagzp3tp3an1rnOQrV79H8TY0mSBftqfKpku9qaNJ6/cUx1SdztPrepvn7e74wDMp
 s78RJNFlU3NWowVZj7JuQRM0lOka7NugVBI/S413HRyTLBlynFlVyT1pHnNhLCZShxh6
 ZcZROMxx6EXHsIy0tmtvTb6mnWQcHRnKweClYA+JJZ2BwDKS+V0Ss7qQJrSW4/kGX9UU
 zdqifgnp+1xLL4ZRIMMCSJeOxVUVDIDEbNMbBdAtsFHhD5EumeerADHK7GZAuVoG/VgA
 zLCXpfUjLe/jvwkTyl6QhROb6O5QuwUL4rJCe4ffuuHE3+cVznxLOMEcpkLT4MSjdJZb
 VeoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695992909; x=1696597709;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=YawnXPpR/q1xwVSS1qH77DtFQDtkA7lDy+LLpTfNTXI=;
 b=Tyu9lnK7cUuMbJMJBQwnXaQyZTIBIIk3pRAN+jpOBk8S+z1V6XWCTK+1sWc5vCnZ9N
 gTVVbue0kJR9IT4SNgEmdi+IKCkktEqQ2E/nTz8/d6HzSgxoS/Nn6WQHDsrP+RRe96T5
 zZU33xpplzwuMzJGLwWh+JuK/Ryt+1Bf5InZqgoxwPrwyNH/Kza1ZBfHGO+61pX5b+Qs
 DG6eJyFvwfm3Tqaf3IZckdFhB8B09V0DTPb/7+jBBUVVzIQlS5yKnOxwM35iBgNJ9p9b
 AvJQPxmJWjuymkbYSOVBMaBP3iQxgTxb8qYFjseNBgck1QaVqzvlflaHENnWe8etvzXl
 opOw==
X-Gm-Message-State: AOJu0YwzBVd9lkQ/vNDjm2sgkdzBxRq+87oCWaazWJvalBzz0SxyCUuU
 R00q3CCBdfRAB2EVUH3lbwJt8V9XQJDLlewM
X-Google-Smtp-Source: AGHT+IGHGxeQCpXuwATomxRkPzlXbNFBVqStQoN5B++TzcyHoGF6AbhuNIzGGXzHnnA0zB41XTmC4A==
X-Received: by 2002:a7b:c410:0:b0:403:bb04:2908 with SMTP id
 k16-20020a7bc410000000b00403bb042908mr3597602wmi.23.1695992907208; 
 Fri, 29 Sep 2023 06:08:27 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.86])
 by smtp.googlemail.com with ESMTPSA id
 12-20020a05600c024c00b004051f8d6207sm1403513wmj.6.2023.09.29.06.08.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 Sep 2023 06:08:26 -0700 (PDT)
Message-ID: <93c3e667-1332-5504-5b0c-c9e58516aec5@gmail.com>
Date: Fri, 29 Sep 2023 16:08:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/fbc: Remove ancient 16k plane
 stride limit
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

All 5 patches look ok to me, I didn't spot anything to comment about.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 14.9.2023 14.38, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The 16k max plane stride limit seems to be originally from
> i965gm, and no limit explicit limit has been specified since (g4x+).
> So let's assume the max plane stride itself is a suitable limit
> also for the more recent FBC hardware.
> 
> In fact even for i965gm the max X-tiled stride is also 16k so
> technically we don't need the check there either, but let's
> keep it there anyway since it's explicitly mentioned in the
> spec. Gen2/3 have more strict limits checked separately.
> 
> Cc: Swati Sharma <swati2.sharma@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++----
>   1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 817e5784660b..1b3358a0fbfb 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -866,7 +866,8 @@ static bool stride_is_valid(const struct intel_plane_state *plane_state)
>   	if (DISPLAY_VER(i915) == 2 || DISPLAY_VER(i915) == 3)
>   		return stride == 4096 || stride == 8192;
>   
> -	if (DISPLAY_VER(i915) == 4 && !IS_G4X(i915) && stride < 2048)
> +	if (DISPLAY_VER(i915) == 4 && !IS_G4X(i915) &&
> +	    (stride < 2048 || stride > 16384))
>   		return false;
>   
>   	/* Display WA #1105: skl,bxt,kbl,cfl,glk */
> @@ -874,9 +875,6 @@ static bool stride_is_valid(const struct intel_plane_state *plane_state)
>   	    fb->modifier == DRM_FORMAT_MOD_LINEAR && stride & 511)
>   		return false;
>   
> -	if (stride > 16384)
> -		return false;
> -
>   	return true;
>   }
>   

