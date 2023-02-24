Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CC26A1BA9
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 12:56:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1208610E873;
	Fri, 24 Feb 2023 11:56:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FF0510E8A8
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 11:56:07 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id q16so3303452wrw.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 03:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=8B1cS+AJ+QY9xyXvsmI9awh6dnGMYah1+XS+Y5a7lus=;
 b=SqzPDr/BU+/2bzwY+UvgpYg8Q2m3YCRiIj4b1O+E2BCEfLttOsyvfOu1zEmvy1YD6F
 S3/uzeidJqdkFRxFoGmL+QUxVH94IHkF2LG7bWh6Or1bUtkknueXWUeLHS+sKDu6bZ1z
 WEMw+oyXnI8L4lEO3s8xoDDflaXoWKfvJH4gkS/hkmb7QPXrcLuuBLD06+Hcz7ZihaIw
 fClzR9+ym37ggTdkeGDu6tvC1WJQz9awTvYvgRLLFOlfIb1gY3uRIi6bggKzBmYmqFBf
 NlB+w5Es1l6r4yyveJ+q51KoaqiDTN56cBM9gbvRnu30RA1MYSrW9JZkEK4zmtp0dP+/
 +oGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=8B1cS+AJ+QY9xyXvsmI9awh6dnGMYah1+XS+Y5a7lus=;
 b=RLTEdAGfmreesMagK3+mjelwjzF081Xx3vA6WFCooU4gnfviCbcxgZMEZuSvkV2OcO
 GfYWXbztMryNFp/UNbHmSkfZPLTWeLGw4UVtiRJc/AyuIVR0APXL+QSvA1QBg2zm4U2y
 xi3E/2BbnQZB/YX0ZPdAEq8x4vzD6igTVdi5LOEesX+TjB/N4gWVzvm1v/cdQNkEPv9j
 5JQKzEPyKUgTg9GE5a8RWEOsSiyI8HZCQXRV/5CDewviqLpPpPkVkOyIj05jTKNWbEtc
 xMyJQQMJZp/ERTweOiBbGLsCrIoTscUpxcNZfYHJYEa/iQaxNW4GI0ILqGgeg8tTRY1v
 KVIw==
X-Gm-Message-State: AO0yUKXvZSUmGgi/Fz+0Fc1iqelREW3E2eG8f8rHTFS3FPOoMkYBc50G
 VcuZjCHJudtqOyRYxEkLkpMa29fMBHdoh2o9D+A=
X-Google-Smtp-Source: AK7set9kVrPHgkC5UtOHBJn+CiFLFOIHGWDt3kgSdMzzCr0fM66F2Dpii/nfgWwFzQsjcxWbFvSN4Q==
X-Received: by 2002:adf:e788:0:b0:2c5:5521:a79d with SMTP id
 n8-20020adfe788000000b002c55521a79dmr16101047wrm.67.1677239765603; 
 Fri, 24 Feb 2023 03:56:05 -0800 (PST)
Received: from [0.0.0.0] ([134.134.139.84])
 by smtp.googlemail.com with ESMTPSA id
 r13-20020adfdc8d000000b002c557f82e27sm11105009wrj.99.2023.02.24.03.56.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Feb 2023 03:56:05 -0800 (PST)
Message-ID: <017add33-89c5-63db-1350-1f195542209b@gmail.com>
Date: Fri, 24 Feb 2023 13:55:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230223183954.1817632-1-jonathan.cavitt@intel.com>
Content-Language: en-US
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20230223183954.1817632-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: X-Tile support changes to
 client blits
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
Cc: matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com,
 lucas.demarchi@intel.com, saurabhg.gupta@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

look ok to me.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 23.2.2023 20.39, Jonathan Cavitt wrote:
> Refactor the supports_x_tiling and fast_blit_ok helper
> functions in the live client selftest to better reflect
> when XY_FAST_COPY_BLT supports X-tile and can be used.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>   .../i915/gem/selftests/i915_gem_client_blt.c  | 19 +++++++++----------
>   1 file changed, 9 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> index 3bb1f7f0110e..ff81af4c8202 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> @@ -108,31 +108,30 @@ struct tiled_blits {
>   	u32 height;
>   };
>   
> -static bool supports_x_tiling(const struct drm_i915_private *i915)
> +static bool fastblit_supports_x_tiling(const struct drm_i915_private *i915)
>   {
>   	int gen = GRAPHICS_VER(i915);
>   
> +	/* XY_FAST_COPY_BLT does not exist on pre-gen9 platforms */
> +	drm_WARN_ON(&i915->drm, gen < 9);
> +
>   	if (gen < 12)
>   		return true;
>   
> -	if (!HAS_LMEM(i915) || IS_DG1(i915))
> +	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
>   		return false;
>   
> -	return true;
> +	return HAS_DISPLAY(i915);
>   }
>   
>   static bool fast_blit_ok(const struct blit_buffer *buf)
>   {
> -	int gen = GRAPHICS_VER(buf->vma->vm->i915);
> -
> -	if (gen < 9)
> +	/* XY_FAST_COPY_BLT does not exist on pre-gen9 platforms */
> +	if (GRAPHICS_VER(buf->vma->vm->i915) < 9)
>   		return false;
>   
> -	if (gen < 12)
> -		return true;
> -
>   	/* filter out platforms with unsupported X-tile support in fastblit */
> -	if (buf->tiling == CLIENT_TILING_X && !supports_x_tiling(buf->vma->vm->i915))
> +	if (buf->tiling == CLIENT_TILING_X && !fastblit_supports_x_tiling(buf->vma->vm->i915))
>   		return false;
>   
>   	return true;

