Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C4165285A
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 22:24:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9BEA10E406;
	Tue, 20 Dec 2022 21:23:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5C7710E406
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 21:23:25 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id m19so19359657edj.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 13:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=lCzjnOluGHEUA/mW9Ju4GsKFh21aPETjHNGVncx6FZ8=;
 b=QlqXLYh8MCIqZoJkqRO6HRrATzhG4QgKGUSQ2HRDTZ1T0IFuJ6+YKzwZwlEdkHcqFh
 kWtJU5OwE2z0eqWuqM5Eu1LVCYnDpLJEuE10LPFE63ayf9Dp7bjs2zfOhgRr/qLcT7yT
 ostke7g3DAZfc4J6wlHAWgD0VkrtTeugB+Y0UOrNl6dwB0AuohPEjzNtBmgapeXcWn/H
 GKPI0vLsf5HWcrZDY4pVIHnZ+d82VHVD17iOBmWcldtr3h1xTLdodnDGyUUn2OufF002
 P8Mn96SwIFaqXiDyDDd10+VbaNFX6nUBNscp48q0O62hpjKXNj5WaQb61B9fgV87v7Tb
 6pWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=lCzjnOluGHEUA/mW9Ju4GsKFh21aPETjHNGVncx6FZ8=;
 b=wxHCJS4aFWoGKuQV3GejEXqKhtPBGKTy37UkT2z6qseaGYR5rJGj94EhWs7fejg27c
 ymoCQNcww+5qvK+X8/ixJiRZfq5Ue6ZT06/g+oex3BP5qqrMdN3i+/ry8n/kW55vYE9W
 ZNUnnVFdqKvDYOpkoaor0KgpH+C4sI4/YVLTrcRLBI3WLf8I8+gjCPONw76LI4U2znd5
 RgwC5gw7wmSD7il7SoQ/6Ouf4fEduWwh/hadt4ectQdFA/EBgJ6JNB3LZF2XIjpq/ov4
 9ljESMxpzFZrNrhQWyBGAl/GzlYHI3+Hg6GA9sTbxUD9MqvpmWxqospx79wK8d540VVw
 j/sg==
X-Gm-Message-State: AFqh2kqGKy0AiATPwi8zsvrUwdnWTnRV8aY5Vuf9sAau6fT1rZ+/t23H
 XXudfACxxiV/4za4AdKV/U1ZZrkYovdvG0zD
X-Google-Smtp-Source: AMrXdXsjATW24FCS28eIRRrdrtT3aex4SG8nDTeW75hc6tbQmsQyMqN5b/pE35F8/+7824Gfj3us6Q==
X-Received: by 2002:aa7:dc04:0:b0:472:3008:bcfc with SMTP id
 b4-20020aa7dc04000000b004723008bcfcmr23480947edu.15.1671571404061; 
 Tue, 20 Dec 2022 13:23:24 -0800 (PST)
Received: from [0.0.0.0] ([134.134.139.78])
 by smtp.googlemail.com with ESMTPSA id
 t25-20020a056402241900b004643f1524f3sm6134508eda.44.2022.12.20.13.23.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Dec 2022 13:23:23 -0800 (PST)
Message-ID: <dca1d107-a529-fea3-0d1f-ba33ea3bf881@gmail.com>
Date: Tue, 20 Dec 2022 23:23:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221220162926.22805-1-stanislav.lisovskiy@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20221220162926.22805-1-stanislav.lisovskiy@intel.com>
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

On 20.12.2022 18.29, Stanislav Lisovskiy wrote:
> We have some Tile4 tests now skipping, which were
> supposed to be working. So lets make them work, by
> adding display_ver 14 as supported.
> 
> v2: - Remove "14" for Tile 4 CCS formats, as they
>        seem to be not supported by DG2(Juha-Pekka Heikkila)

DG2 ccs modifiers not supported on MTL. DG2 ccs modifiers are of course 
supported on DG2.

>      - For generic Tile 4, the opposite - lets use -1
>        in order to make sure all the next gens support it by
>        default(Juha-Pekka Heikkila)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fb.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 63137ae5ab217..93d0e46e54813 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -174,7 +174,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
>   		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC,
>   	}, {
>   		.modifier = I915_FORMAT_MOD_4_TILED,
> -		.display_ver = { 13, 13 },
> +		.display_ver = { 13, -1 },
>   		.plane_caps = INTEL_PLANE_CAP_TILING_4,
>   	}, {
>   		.modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
