Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9798A6511CB
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Dec 2022 19:27:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAA4510E00C;
	Mon, 19 Dec 2022 18:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6318310E048
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Dec 2022 18:27:38 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id u19so23616984ejm.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Dec 2022 10:27:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=Mx74UzzjaE8Hw1sSi+f84B4hhx0XR8LO82jc2xh5jm4=;
 b=Y/9FweuBSEmwFZ5ClnbmXgWtJ9IImYt+gUNdEiPAKFnI4FqRWD1fCDA7uWgMM6g+HD
 rA44LVVsY21LlieyMnN4oq95SKmujq9ADGCYVNQlSLUoOcEfCkU8iswNEnDkjLn5dKnd
 /eGWZqMPrwQ+2RNMyoySvwM6l6qny4OWQIZxTLj+7dSDh0E4LYO10A0PAqmxbKpdAKHK
 fogl9wIaPKB5yzQeDK7AczDPklsEQISde0UbN5qI72/OfDBj8v+vZw41VjmsTlMtb74a
 PAhhDLywa7IZQ2nbgkxIItUHvwsvUQuH1RPgaP19Rjt/WxzAiVyaGFd680N/39Qd1GAc
 jTUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Mx74UzzjaE8Hw1sSi+f84B4hhx0XR8LO82jc2xh5jm4=;
 b=pFi/vfMHpzsyaecYDsYPtg8ZrmrfwQRDDC10Yx8MeubegSJyZduz54oMaTl9ir/Fnf
 DYhXrruVOSdqzK8ctYruP2c7+uahzUNxmDotDP1qOgdadjs0cyw52JUhIrxbFxo01+BA
 QEEaQSKm97PC3kA8Ngg64ZLTsxVqgf9a0gxXq202xngYa0+DT/mxMZUqoGCPI2rTDQwZ
 zPTUg5FQ8yhRA5nZCxhD6B7nGrA9f8a3dl0/KZ/KAzXTpjKHa4xVHQoTMA5BfuiYHvrH
 Fw//uKYunNZrD2Y+H11YonbU3PLJcUjlunytQT4z2C1HsxPWxX7ELg9Rrb5WMRnv2iOP
 aG0g==
X-Gm-Message-State: ANoB5pmU40fMcIClC4uj0pspwLbA2M04H/9TGvW9UpQ23bRtah4066S4
 rv4qZeApV6+VzJlSnGdRGcEHPbebT6BqpS6Z
X-Google-Smtp-Source: AA0mqf4RP99IlMeyZ0DP3JkjUmAvtveBQRdNCjXer2uWMu6VTVdQKyPCVTN6iTBCPgKKlc3JnpQECA==
X-Received: by 2002:a17:907:d503:b0:7c0:a99c:485c with SMTP id
 wb3-20020a170907d50300b007c0a99c485cmr27522080ejc.68.1671474456751; 
 Mon, 19 Dec 2022 10:27:36 -0800 (PST)
Received: from [0.0.0.0] ([134.134.139.87])
 by smtp.googlemail.com with ESMTPSA id
 20-20020a170906311400b0073d81b0882asm4721671ejx.7.2022.12.19.10.27.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 19 Dec 2022 10:27:36 -0800 (PST)
Message-ID: <2000a445-44f2-9aab-7631-69c283532d40@gmail.com>
Date: Mon, 19 Dec 2022 20:27:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221219135035.13059-1-stanislav.lisovskiy@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20221219135035.13059-1-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add support of Tile4 to MTL
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

Hi Stan,

On 19.12.2022 15.50, Stanislav Lisovskiy wrote:
> We have some Tile4 tests now skipping, which were
> supposed to be working. So lets make them work, by
> adding display_ver 14 as supported.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fb.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 63137ae5ab217..75a17f38def53 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -158,11 +158,11 @@ struct intel_modifier_desc {
>   static const struct intel_modifier_desc intel_modifiers[] = {
>   	{
>   		.modifier = I915_FORMAT_MOD_4_TILED_DG2_MC_CCS,
> -		.display_ver = { 13, 13 },
> +		.display_ver = { 13, 14 },

I don't think you'd want to do this. These DG2 ccs modifiers rely on 
usage of flat ccs which is not present in Meteorlake.

>   		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC,
>   	}, {
>   		.modifier = I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC,
> -		.display_ver = { 13, 13 },
> +		.display_ver = { 13, 14 },

Let's drop this change too.

>   		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC_CC,
>   
>   		.ccs.cc_planes = BIT(1),
> @@ -170,11 +170,11 @@ static const struct intel_modifier_desc intel_modifiers[] = {
>   		FORMAT_OVERRIDE(gen12_flat_ccs_cc_formats),
>   	}, {
>   		.modifier = I915_FORMAT_MOD_4_TILED_DG2_RC_CCS,
> -		.display_ver = { 13, 13 },
> +		.display_ver = { 13, 14 },

And this.

>   		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC,
>   	}, {
>   		.modifier = I915_FORMAT_MOD_4_TILED,
> -		.display_ver = { 13, 13 },
> +		.display_ver = { 13, 14 },

Here you could do something like ".display_ver = { 13, -1 }," to enable 
tile4 from version 13 onward and we'll fix it if it ever change in the 
future.

/Juha-Pekka

>   		.plane_caps = INTEL_PLANE_CAP_TILING_4,
>   	}, {
>   		.modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,

