Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B15AC8056A8
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 15:00:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0755C10E529;
	Tue,  5 Dec 2023 14:00:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F6F810E529
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 14:00:15 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id
 ffacd0b85a97d-3334254cfa3so1547421f8f.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Dec 2023 06:00:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1701784813; x=1702389613; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=KkdQFow4g8mdiCNr6z4/4jE3byBLDe15ZcBkAaFACY8=;
 b=EuouKAVb7ZCLvhmrOOHBKTZrQMjTChtwL/Fg6AOwT0gWN/YcSN4r0hJo/6YJpoRNqq
 iaGkPNRmzYV0nbhmrvAlOFqwYyqVsoZ4E56X1hJT9ayeGvq/FC/gfG5hU8f2SLmZzr2j
 JEVCfstOsfbohnZbg7ZQzO7XvChmmcmy9GAMF3emv9DAOd845+/0Mj9qHEFuw6P7xB7i
 a2vqj8QGjZGoxyFmiPZfwD6X5K7fsWXqrLL8S1KypgpqdzSZ3eTdc2oJprqsyTcDgdQk
 6lSCN0xbwPj7u7OcrCfvWtp3fbfGlYrMndlt4QWHzQoywz7NhpCJ/daiBQpxCOKwuPKd
 6y3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701784813; x=1702389613;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=KkdQFow4g8mdiCNr6z4/4jE3byBLDe15ZcBkAaFACY8=;
 b=i8a9ojl5I1Rmbp55CCliK4lYCT0ORWWznCnw5vVci6Krj0ZU3qdkfQPte5z8SQvqRB
 phnTeb+/Py+SK8w583/moOsD7rryxGKnJ48IdHJFzqkh/y1HqA/sGduAXDgbnnX4QuPd
 rgSYqCJQQ3EZbMn3/5S9nd6Y+zIz8ukkJ0K8s0pSoAnFF90AAH/O20mRGoY8EdFqnCu1
 oatcKSggbKu1mu6r03aLLAFWwu532zmuM53FEJPuNAA3XzwsqUTG3AIP0QYd2EY7bAjl
 xvybyTvUEi1x7oQmZPvLXSHIB7+I9F+FW8ExxBuhu87btv/q1FOFRRQYk0+gB0udHcg5
 OP6g==
X-Gm-Message-State: AOJu0YyeOw4B9s2fuoiKBLfH/8VtLJ2zu+PG5ASNFT4tOdr964P7PFEw
 yRTCg7gFGcXZT089hNRNBtH3V85nQF8Jxw==
X-Google-Smtp-Source: AGHT+IHMi4iOYGmxe4RrFJJ7Lek+GFgZ2Tb4gZFMfUSAumINYz96eQAPxtUGf5y1i6J/Q8eIEw8PCg==
X-Received: by 2002:a05:6000:18c6:b0:333:2fd7:960c with SMTP id
 w6-20020a05600018c600b003332fd7960cmr797425wrq.71.1701784813279; 
 Tue, 05 Dec 2023 06:00:13 -0800 (PST)
Received: from [0.0.0.0] ([134.134.137.89])
 by smtp.googlemail.com with ESMTPSA id
 j1-20020a5d5641000000b0033349de2622sm5600696wrw.94.2023.12.05.06.00.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Dec 2023 06:00:06 -0800 (PST)
Message-ID: <53d17786-0955-4cd5-aa6f-cb3f79654690@gmail.com>
Date: Tue, 5 Dec 2023 15:59:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231204202443.31247-1-ville.syrjala@linux.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20231204202443.31247-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix ADL+ tiled plane stride when
 the POT stride is smaller than the original
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

I tried a bit if I can break something with ccs but it seemed everything 
work as expected with this fix.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 4.12.2023 22.24, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> plane_view_scanout_stride() currently assumes that we had to pad the
> mapping stride with dummy pages in order to align it. But that is not
> the case if the original fb stride exceeds the aligned stride used
> to populate the remapped view, which is calculated from the user
> specified framebuffer width rather than the user specified framebuffer
> stride.
> 
> Ignore the original fb stride in this case and just stick to the POT
> aligned stride. Getting this wrong will cause the plane to fetch the
> wrong data, and can lead to fault errors if the page tables at the
> bogus location aren't even populated.
> 
> TODO: figure out if this is OK for CCS, or if we should instead increase
> the width of the view to cover the entire user specified fb stride
> instead...
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fb.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 33a693460420..ab634a4c86d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1381,7 +1381,8 @@ plane_view_scanout_stride(const struct intel_framebuffer *fb, int color_plane,
>   	struct drm_i915_private *i915 = to_i915(fb->base.dev);
>   	unsigned int stride_tiles;
>   
> -	if (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
> +	if ((IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14) &&
> +	    src_stride_tiles < dst_stride_tiles)
>   		stride_tiles = src_stride_tiles;
>   	else
>   		stride_tiles = dst_stride_tiles;

