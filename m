Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0762881502
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 16:55:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 375B310FDC3;
	Wed, 20 Mar 2024 15:55:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="P+INTbc4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF47310FDA3
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 15:55:48 +0000 (UTC)
Received: by mail-lj1-f177.google.com with SMTP id
 38308e7fff4ca-2d27184197cso232681fa.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 08:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1710950147; x=1711554947; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=MjepncrgZV+uQa5ReqTpoguMfFHll5wKjUf+t70Bu80=;
 b=P+INTbc4JOXaCxNWRjNXcqdwuz8NANh98mGhDa1/qky7WuLstVQ3DdrBZhAVTFj5ne
 TrNWWjfxFgzOPLOIyQqwVHTd01AhqrkSf6+gnn2/Kzucws3Xz8zQjGY8BHgtrZQ7bBI3
 4+NakyGHyG5/F/somsrDuAGD1y3wcBfGDIR3f6Q3kMZrQ55PS66Wh7MFH7FQIOcoJmED
 3uUs0DVQ1EOhrWs6AvoCIcLWlbLnc4P11Bww8Yatq+nYupAgwjOAd8SmvJBvGIi6xgMA
 uMzYHz5hRacP7JRsRCTTKRc/cDRbUHk7wDXZDCPHPrfgORZHaW00CUpsJl+GCEu0LSML
 FKWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710950147; x=1711554947;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=MjepncrgZV+uQa5ReqTpoguMfFHll5wKjUf+t70Bu80=;
 b=HBkXVArxUMejJpQDzfkuVbkN3EtO3coCb94/2ka23vAfDjPpLWRz6KcQR/ELGewTkx
 Meq8TXSBinWXfZofMzDoud5wa9ey9NSIZw53vZFawwWXHc5XiwNdJoYbN7XQXXpZoSln
 ypWu/DFDP2UhQd9hpuXyOKheDHqd82jDYZLK7J4PXg8CQ/WYuFNYkOgmNYzCm6SWEuTk
 /ondJ0VsyT0mnPfNV5N3mQLhzerVKn9/vjncJTqWAkhibyI8/7q5/W5BVaDPKt4ngVdh
 UD/3lVPQh2KGwBVrnaLaXDFPtXfU0KQxgTCQqbjyWuym9h4HePUzhCH0zMSw7xWK44f0
 0jBA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUEP3dKxNSQm9sh/XOroCPRM5k+WW6O42y69z2gRKG1cXMLpS/TFFUa/+YVTd9YLlXku6v0h8AA7/gPQoCxgzTwja2y+nRePi7ixS5i6wWk
X-Gm-Message-State: AOJu0Yy/37luz2CRWVOWa/iMhPebMb+TCdgFpGKDK04mPVkVMiO2anG+
 3LkQU/TfLQZ4+yj7+l/U/V0e4Uvc2scDgqZyljm41wMHmA6EGBjAEiCj330QJnA5oShT
X-Google-Smtp-Source: AGHT+IF/HYJHWqBqb1x5S4unX2kBJw8xG6r3Q3wwsJ4zqKfMVGl8Xa0XHSQtUNRH1IrGhadMc+Uzvw==
X-Received: by 2002:a2e:860a:0:b0:2d2:6ed5:e45a with SMTP id
 a10-20020a2e860a000000b002d26ed5e45amr1839712lji.12.1710950146661; 
 Wed, 20 Mar 2024 08:55:46 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.85])
 by smtp.googlemail.com with ESMTPSA id
 p22-20020a05600c359600b004140d326399sm619879wmq.1.2024.03.20.08.55.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 Mar 2024 08:55:46 -0700 (PDT)
Message-ID: <fa745fb2-182a-4cb9-ad28-d18f49a95e40@gmail.com>
Date: Wed, 20 Mar 2024 17:55:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] drm/i915: Add SIZE_HINTS property for cursors
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Simon Ser <contact@emersion.fr>, =?UTF-8?Q?Jonas_=C3=85dahl?=
 <jadahl@redhat.com>, Daniel Stone <daniel@fooishbar.org>,
 Sameer Lattannavar <sameer.lattannavar@intel.com>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 Harry Wentland <harry.wentland@amd.com>,
 Pekka Paalanen <pekka.paalanen@collabora.com>
References: <20240318204408.9687-1-ville.syrjala@linux.intel.com>
 <20240318204408.9687-3-ville.syrjala@linux.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20240318204408.9687-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

look all ok to me.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 18.3.2024 22.44, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Advertize more suitable cursor sizes via the new SIZE_HINTS
> plane property.
> 
> We can't really enumerate all supported cursor sizes on
> the platforms where the cursor height can vary freely, so
> for simplicity we'll just expose all square+POT sizes between
> each platform's min and max cursor limits.
> 
> Depending on the platform this will give us one of three
> results:
> - 64x64,128x128,256x256,512x512
> - 64x64,128x128,256x256
> - 64x64
> 
> Cc: Simon Ser <contact@emersion.fr>
> Cc: Jonas Ådahl <jadahl@redhat.com>
> Cc: Daniel Stone <daniel@fooishbar.org>
> Cc: Sameer Lattannavar <sameer.lattannavar@intel.com>
> Cc: Sebastian Wick <sebastian.wick@redhat.com>
> Cc: Harry Wentland <harry.wentland@amd.com>
> Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cursor.c | 24 +++++++++++++++++++++
>   1 file changed, 24 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index f8b33999d43f..49e9b9be2235 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -823,6 +823,28 @@ static const struct drm_plane_funcs intel_cursor_plane_funcs = {
>   	.format_mod_supported = intel_cursor_format_mod_supported,
>   };
>   
> +static void intel_cursor_add_size_hints_property(struct intel_plane *plane)
> +{
> +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> +	const struct drm_mode_config *config = &i915->drm.mode_config;
> +	struct drm_plane_size_hint hints[4];
> +	int size, max_size, num_hints = 0;
> +
> +	max_size = min(config->cursor_width, config->cursor_height);
> +
> +	/* for simplicity only enumerate the supported square+POT sizes */
> +	for (size = 64; size <= max_size; size *= 2) {
> +		if (drm_WARN_ON(&i915->drm, num_hints >= ARRAY_SIZE(hints)))
> +			break;
> +
> +		hints[num_hints].width = size;
> +		hints[num_hints].height = size;
> +		num_hints++;
> +	}
> +
> +	drm_plane_add_size_hints_property(&plane->base, hints, num_hints);
> +}
> +
>   struct intel_plane *
>   intel_cursor_plane_create(struct drm_i915_private *dev_priv,
>   			  enum pipe pipe)
> @@ -881,6 +903,8 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
>   						   DRM_MODE_ROTATE_0 |
>   						   DRM_MODE_ROTATE_180);
>   
> +	intel_cursor_add_size_hints_property(cursor);
> +
>   	zpos = DISPLAY_RUNTIME_INFO(dev_priv)->num_sprites[pipe] + 1;
>   	drm_plane_create_zpos_immutable_property(&cursor->base, zpos);
>   

