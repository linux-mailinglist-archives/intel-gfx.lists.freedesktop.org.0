Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E271F9904DB
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 15:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83D8110E171;
	Fri,  4 Oct 2024 13:52:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kZ9ykbsy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7BD510EA0D
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2024 13:52:20 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id
 ffacd0b85a97d-37cfa129074so1595282f8f.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Oct 2024 06:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728049939; x=1728654739; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=8BKNNmijL+YeOVB6VDSZyqEckJxDnQ+2NVQiW9FUKSs=;
 b=kZ9ykbsy8zO3DkHF+H0iOlJ9AqOYZcUAKO72BgT8l0+eioWeS9l4ZaPxxkDqdSU4OB
 qC+CMczr3Njy62UaVNPgVzCpw8CMsGd+pbh+ubUaG/qavz56C8ezgFnt9nrJgbH04RGH
 2hougo6xvJA/cLRTd5iheTC7vTveIHiR3Y8vkaU+zcZSFSM6awD0LSjyvYjTUAyELNsc
 6Nm3cRDwvA885wDQJvDfbEWDttWmnVEV7p5cbpB3VD5Borgy18V+IkEVytVa4JlUO8bP
 OAmr2wLipSmu7jHZmyI+phO/AE9FKxtguV2hp8eK7lbmYh0FxEb7g0Et4jUBUf1Tzang
 WWgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728049939; x=1728654739;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=8BKNNmijL+YeOVB6VDSZyqEckJxDnQ+2NVQiW9FUKSs=;
 b=Oot0f27gqSkMhdTCY7Y4lKv8U+zSCpzmeM4DsUz9XTip+v0n/2Wl/J1x4gVJFKyooi
 XrHPN7eljIlETdKjYRywdr561RuTpHD6Dqeeog52hznzsO+9b3Ns16B6+5oG+Cvqx0pm
 BTowwiDt+ZE949XtzZgB+UsZ9nqWGhumk53rCUyZLJUw4PRtnytTChLz5IGB8CgQhY0h
 7K+MTnAvJxB48vM3qfKYlH5zS+rIvsaNq0WnPP80zyHi+BgbBbmTXxHK5ELRUT0exM9U
 2bXLypTzWwd1uX+WpW0l1y/oSx3ECnF6l2qGfiqZLZJR2gU/sf2KZexVTZ+hH87JA2SV
 1VIQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXccbQyVhZubNOtdQdWhLRRHNOBFQDOTiXXB05aqFk3wHo7CuJ/rfJnd4yBuVOCdBJDLdMnxqqAAD4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzx2EkkVSdXKtS4ZssMO4tdiazSxMkLP0LxtQbG8J2rIislrtCS
 g3nOudzHS1tm1CfTOFpwNx82oFv02mskwgzRbc+t1XNNyzbr2lx/4AsQaw+0qAI=
X-Google-Smtp-Source: AGHT+IEU6LBfJzV24KsqZ6q5Zi7W1/04mjkCesi8KTSF+XdZLYYvZhyd/EkzJol3UtmMozw0GlWDHA==
X-Received: by 2002:adf:dd8d:0:b0:368:74c0:6721 with SMTP id
 ffacd0b85a97d-37d0e8de825mr1864265f8f.38.1728049939082; 
 Fri, 04 Oct 2024 06:52:19 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.72])
 by smtp.googlemail.com with ESMTPSA id
 5b1f17b1804b1-42f86b2ad3bsm16255815e9.35.2024.10.04.06.52.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Oct 2024 06:52:18 -0700 (PDT)
Message-ID: <1aeb083e-b213-4585-8502-4508cdb8bb23@gmail.com>
Date: Fri, 4 Oct 2024 16:52:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/7] drm/i915: Drop GEN12_MC_CCS check from
 skl_plane_max_width()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
 <20240918144445.5716-7-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20240918144445.5716-7-ville.syrjala@linux.intel.com>
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

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 18.9.2024 17.44, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS is tgl+ only, so checking for
> in skl_plane_max_width() (which only applies to pre-glk hardware)
> is pointless.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_universal_plane.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index afaa92a6d91c..f56d679b0143 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -349,7 +349,6 @@ static int skl_plane_max_width(const struct drm_framebuffer *fb,
>   			return 5120;
>   	case I915_FORMAT_MOD_Y_TILED_CCS:
>   	case I915_FORMAT_MOD_Yf_TILED_CCS:
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
>   		/* FIXME AUX plane? */
>   	case I915_FORMAT_MOD_Y_TILED:
>   	case I915_FORMAT_MOD_Yf_TILED:

