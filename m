Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B48A5850346
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Feb 2024 08:25:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B4CF1123C8;
	Sat, 10 Feb 2024 07:25:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="cc/gVFhq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
 [209.85.210.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D5B11123CA
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Feb 2024 07:25:18 +0000 (UTC)
Received: by mail-ot1-f52.google.com with SMTP id
 46e09a7af769-6dc36e501e1so1129605a34.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Feb 2024 23:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1707549917; x=1708154717;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=8m8phvJbCBaUpR//XQr5m++ylbpQ4FZPXh/gWEIh+SE=;
 b=cc/gVFhqMeyBYcCHyOt97hBMHB3UBTgUdIsr0gFRCPByu/1sG3zHcSl8c23VV8Mycx
 nnl8dWi7mvvnKmpnBYR5Fp2dS3eNi/2UWdQ4fLSWiAvh9n1rQ3RYzdHgYJZWyq28LtkE
 +HIEUKmQxhoBfKMtSQxpcXHWRcQn/4ftdM/qg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707549917; x=1708154717;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8m8phvJbCBaUpR//XQr5m++ylbpQ4FZPXh/gWEIh+SE=;
 b=shfcdtlpcC3rCTkWms04xH/0+Vefb/BEYPzXzhv1k1Ex3qOZA6AgDT01y6ES7jWJKT
 l3mlCqjgQSEYcPlvrUzg0BkZLrMxIT92vlvBVjRCqcD8gWDTzuuDxcaDOHM9dWoeVxGp
 tTw0NuGghbvYimxHnC1iKkpkGiRdhgKxQ1XB8ZA02xCJ5ggtFrjagGOytIVcmpKC4BRR
 +HiYfMT6MCAa0Y5WoKpMhaebjxYWHSVMIwssb3cdvsO1pCsfim0jSycLPDAjo6OeOIBS
 BEChlGWN6uSvcJbDNAVM+Liq+6DRFjDkTV60NCdPJVV8Rjoh2DuxEaxLWNbu99MJuRvu
 3K1Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXa/WJJTv+g7nKTTqp1wB28Dxgrq+aFO5y6t//hCJKPRHw1AOJIZEXyekNZGAto4kmA8Or554UdXEP5ztM0H9F6yJROLv2pjYadhSlMz5yk
X-Gm-Message-State: AOJu0Ywv7ipO0M0uS2m+lupxrPWMfAr/JcXmKYSNXTvayTWSZBPJklSR
 fV9SyBEGk17q76BxEU5wkpkvvz4hJI6sTAbczu+hq/tgVPTHNXeDcZwEfcpE5g==
X-Google-Smtp-Source: AGHT+IElngRtfqOH7jE59C2E77px2P+jsgE2ilQV5OGTU5uO/TGyfz9K4uKnQQ8sPYMnkLE7+Gwnww==
X-Received: by 2002:a9d:6c4d:0:b0:6e2:b26f:82d4 with SMTP id
 g13-20020a9d6c4d000000b006e2b26f82d4mr1634235otq.23.1707549917218; 
 Fri, 09 Feb 2024 23:25:17 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXWI+Qtz60dxMswupBxoATcUXayLu78VKmIYUB1WV7w5wAxJbzvFP5mOZyvKdqJTtivs97R3xpPqAcG6vl0W3hrjqBLJ4abTYwk+uFosaNu9NdJAdot9OanBEGqJvAYdugjCCKGmU3qXq3nHO6ohvfy9z/1wmNye7lW0R82vCupE6IcNGcmvVnS992QdBjh6V2xzVuTC3KBjMuGsM8KMF6iTUNlj9uiU/ZC5CFyoOU2FD701MXJ+2OabJHC8M1bcn+tks2vNmnOpfZ6wsrgBtWP5KLzxwcSLinuPpDj8Kr38lYK4rLetIFt3Rk9JInWt3sexODtvyg7pr3a9fmWNh95LflZZhHTXIcEEYWdOwb6MZLNXl/zTJmrmqUPQ/3eibOXfibW7jArw5x0i5Poqd+OuYu7gax/GbQ9Se9v2sVd4WYblg==
Received: from www.outflux.net ([198.0.35.241])
 by smtp.gmail.com with ESMTPSA id
 y20-20020a62b514000000b006ddb0dde293sm1669384pfe.65.2024.02.09.23.25.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Feb 2024 23:25:16 -0800 (PST)
Date: Fri, 9 Feb 2024 23:25:16 -0800
From: Kees Cook <keescook@chromium.org>
To: Erick Archer <erick.archer@gmx.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH] drm/i915: Add flex arrays to struct i915_syncmap
Message-ID: <202402092322.09287B8@keescook>
References: <20240208181318.4259-1-erick.archer@gmx.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240208181318.4259-1-erick.archer@gmx.com>
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

On Thu, Feb 08, 2024 at 07:13:18PM +0100, Erick Archer wrote:
> The "struct i915_syncmap" uses a dynamically sized set of trailing
> elements. It can use an "u32" array or a "struct i915_syncmap *"
> array.
> 
> So, use the preferred way in the kernel declaring flexible arrays [1].
> Because there are two possibilities for the trailing arrays, it is
> necessary to declare a union and use the DECLARE_FLEX_ARRAY macro.
> 
> The comment can be removed as the union is now clear enough.
> 
> Also, avoid the open-coded arithmetic in the memory allocator functions
> [2] using the "struct_size" macro.
> 
> Moreover, refactor the "__sync_seqno" and "__sync_child" functions due
> to now it is possible to use the union members added to the structure.
> This way, it is also possible to avoid the open-coded arithmetic in
> pointers.
> 
> Link: https://www.kernel.org/doc/html/next/process/deprecated.html#zero-length-and-one-element-arrays [1]
> Link: https://www.kernel.org/doc/html/next/process/deprecated.html#open-coded-arithmetic-in-allocator-arguments [2]
> Signed-off-by: Erick Archer <erick.archer@gmx.com>
> ---
>  drivers/gpu/drm/i915/i915_syncmap.c | 19 ++++++++-----------
>  1 file changed, 8 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_syncmap.c b/drivers/gpu/drm/i915/i915_syncmap.c
> index 60404dbb2e9f..df6437c37373 100644
> --- a/drivers/gpu/drm/i915/i915_syncmap.c
> +++ b/drivers/gpu/drm/i915/i915_syncmap.c
> @@ -75,13 +75,10 @@ struct i915_syncmap {
>  	unsigned int height;
>  	unsigned int bitmap;
>  	struct i915_syncmap *parent;
> -	/*
> -	 * Following this header is an array of either seqno or child pointers:
> -	 * union {
> -	 *	u32 seqno[KSYNCMAP];
> -	 *	struct i915_syncmap *child[KSYNCMAP];
> -	 * };
> -	 */
> +	union {
> +		DECLARE_FLEX_ARRAY(u32, seqno);
> +		DECLARE_FLEX_ARRAY(struct i915_syncmap *, child);
> +	};

This is a new code pattern for me! Trailing arrays of different element
sizes but with a fixed element count. :)

I hope when __counted_by is expanded to take expressions we can add a
literal. :)

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook
