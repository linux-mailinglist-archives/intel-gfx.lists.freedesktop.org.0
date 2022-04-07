Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3E74F80C5
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 15:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73CDC10EA03;
	Thu,  7 Apr 2022 13:37:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3BB110EA03
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 13:37:55 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id i27so10889093ejd.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Apr 2022 06:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:reply-to:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=G4I8l5LMo94vyl+K9Y30a+kPZsWBHFVFBT+vIXarMIM=;
 b=hqxcILKe276iHleBh/SG9/XpMBJdF7Xv8Hu7AIJINfXO/7QXsKnKPZYGlTm6LdVECz
 yTP4urR9mJ8xLVNtk7q7VZZocCLBXMiBXYKrz9OqPhz/0Yky/N6IfvZ/q2jfWVXxwokr
 OziwAbNOnHa4jQknb07IPIv19tKfQe1IgC50RGDbBw54Q9XmrSeA/Y1MMwRZb1MLk+45
 rtDWxRMtNAjKON8iIR4bO5Ct3jF4o0KSgRsJgaP6a+iBf9M+WPPNyeXK2ZUkzo71ZbDN
 KyoLug7Um8qSH1uFpvZPHkNZWwTSsMCcXn7EW7iVhrCiBAwmMmlNbBBJDqUNE9WUXe/s
 TYGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:reply-to
 :subject:content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=G4I8l5LMo94vyl+K9Y30a+kPZsWBHFVFBT+vIXarMIM=;
 b=xikvD/u+I2+8rU3yFZYF4/1Y5r278gEFF+dpe4OMi3zDlcZ07SpXbHRrOlxIZ7ik+8
 GxIHYNx80Sgn6k7Fxrs9xnxw4OwENYQfIzV8jHhdTgKOr2GI/7oJ288bDztLP6TxlkAo
 1MasC5xZImR62JDcFYLVIr6b9sgVlpHj0PfubPxIbEnqrbkEnpgq/XT1Ez0jvyDgujzk
 ntd66+Iw9ZKpeAY9K/J3Ia1pASgEpNthkCDNLH/9ezPWhV/A+o8ngCS+l990mX2ZQtPs
 lOXtazE3f+6ytWW8wwIWixa72KFFMQp4u/8KrmJ8gReCYOUTPE6cgfyW+WAjaO/bdKOf
 W8rQ==
X-Gm-Message-State: AOAM533t6pVVzB766guSan89/GvzPBR17y6hkvQiVRRIoRQvXRBoZEv8
 444hV9TgWT7ssQBIXhEBLW5mkaQb686RuvE9
X-Google-Smtp-Source: ABdhPJz4JUrOFqk/FPyGFkQNi3TzjsPiJmAUWSbN9pETH+7jANXG86HWCQczogDNWRF5ZtRjEIjTCA==
X-Received: by 2002:a17:907:6e03:b0:6e0:15ce:77ba with SMTP id
 sd3-20020a1709076e0300b006e015ce77bamr13342838ejc.67.1649338674322; 
 Thu, 07 Apr 2022 06:37:54 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.87])
 by smtp.googlemail.com with ESMTPSA id
 s11-20020a170906284b00b006e108693850sm7646496ejc.28.2022.04.07.06.37.52
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Apr 2022 06:37:54 -0700 (PDT)
Message-ID: <d552242f-a29b-d77a-b551-f5f9ffe0ca8d@gmail.com>
Date: Thu, 7 Apr 2022 16:37:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20220404133846.131401-1-imre.deak@intel.com>
 <20220404133846.131401-4-imre.deak@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20220404133846.131401-4-imre.deak@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/fourcc: Introduce format modifier
 for DG2 clear color
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

On 4.4.2022 16.38, Imre Deak wrote:
> From: Mika Kahola <mika.kahola@intel.com>
> 
> DG2 clear color render compression uses Tile4 layout. Therefore, we need
> to define a new format modifier for uAPI to support clear color rendering.
> 
> v2:
>    Display version is fixed. [Imre]
>    KDoc is enhanced for cc modifier. [Nanley & Lionel]
> v3:
>    Split out the modifier addition to a separate patch.
>    Clarify the modifier layout description.
> 
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Acked-by: Nanley Chery <nanley.g.chery@intel.com>
> ---
>   include/uapi/drm/drm_fourcc.h | 14 ++++++++++++++
>   1 file changed, 14 insertions(+)
> 
> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> index 4a5117715db3c..e5074162bcdd4 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -605,6 +605,20 @@ extern "C" {
>    */
>   #define I915_FORMAT_MOD_4_TILED_DG2_MC_CCS fourcc_mod_code(INTEL, 11)
>   
> +/*
> + * Intel Color Control Surface with Clear Color (CCS) for DG2 render compression.
> + *
> + * The main surface is Tile 4 and at plane index 0. The CCS data is stored
> + * outside of the GEM object in a reserved memory area dedicated for the
> + * storage of the CCS data for all RC/RC_CC/MC compressible GEM objects. The
> + * main surface pitch is required to be a multiple of four Tile 4 widths. The
> + * clear color is stored at plane index 1 and the pitch should be ignored. The
> + * format of the 256 bits of clear color data matches the one used for the
> + * I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC modifier, see its description
> + * for details.
> + */
> +#define I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC fourcc_mod_code(INTEL, 12)
> +
>   /*
>    * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
>    *

