Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F6F6FC5B1
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 13:58:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 331BB10E075;
	Tue,  9 May 2023 11:58:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1737710E075
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 May 2023 11:58:26 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id
 a640c23a62f3a-965e93f915aso872355166b.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 May 2023 04:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683633502; x=1686225502;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=Dt3WTLqaRK3p0sDH8veaLsxiqSUh8juZp94goC5WKp8=;
 b=HlzXGdp0953dVGI1Zqr8CYEMos6lbc75B7EFkV7yVBHlWSIWFLQd5TQ5nHVHtFPi3q
 +D3NV1629Id5V/rZh7e/aN5n0hXy96iiaW36kFSoGnZAs/4tp5fZX9Hyi6Ovk2NOr64A
 T6/ANNctkzL9bZZh5tUImJszmm3YSUQ9RkfhdiL58Vr/5B1tXiyk01Cj7hJEyNDy7mXS
 ePfjIgXluUXrKEIkArLrbfJR/7f6FbojJIfxyIZmk1WZbNO0JGqjTdvkks3qLd0aSjI3
 jcRKSy8YfwBLgMqt3msJUHFUm/lqXDqruuGYZ0dt59LraxsXNfcs21N5pl2mrIUsX/+w
 X/Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683633502; x=1686225502;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Dt3WTLqaRK3p0sDH8veaLsxiqSUh8juZp94goC5WKp8=;
 b=JsAXjJ0FHmPmJ60ysqIKmrT/nyD44236L/0TImmo0p9BK3iLfBoR8NeKHZwfXA2XqD
 AEYdMZxBVRj1D6E4QoorZOP1q63RmrOO+TIolsVnTJLc/dW5P+y7i9wreSu3KQ56Ljuw
 pVYwXHPArQQ4u6qOPt8FNxwVHwyR/SgVkLf4jCvcmwhW8LtVQGtpnJqZUlMJCCAljIbR
 Lbp7eNtZhQuXXMp1etAj0IWKVNib0YEe2gTYxwbHXFiixwPvoN8eoa5uzv7Oji3QAaji
 G2XVOmYbDrtnggjhs705zFy3v1bsex4Bu0IgA9ZkDgBdx6KXzYO/BGOsnomI4N1gbn2R
 B6qw==
X-Gm-Message-State: AC+VfDxiACyLEgmxZrowLCJ4ieYXQEQw++kfzpf8nY9ZGC/3w2jdc/wr
 79/9zXkj5QmOmAClF0EiHNM=
X-Google-Smtp-Source: ACHHUZ5RZwXuyU8L9FsDNtP7iQ3em41JfyYkGiUmpegmv6J0oYthVi9dSCZMH3Tn2cpJfXKOgXyH+g==
X-Received: by 2002:a17:907:84a:b0:94e:bc04:c6f6 with SMTP id
 ww10-20020a170907084a00b0094ebc04c6f6mr10669374ejb.9.1683633502191; 
 Tue, 09 May 2023 04:58:22 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.87])
 by smtp.googlemail.com with ESMTPSA id
 eq19-20020a170907291300b0096739e10659sm1226242ejc.163.2023.05.09.04.58.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 May 2023 04:58:21 -0700 (PDT)
Message-ID: <6f773aef-54be-45a8-9925-19e2939b2dfc@gmail.com>
Date: Tue, 9 May 2023 14:58:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
To: "Kahola, Mika" <mika.kahola@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20230504102805.18645-1-juhapekka.heikkila@gmail.com>
 <20230504102805.18645-4-juhapekka.heikkila@gmail.com>
 <MW4PR11MB705486642D803993AA62881AEF719@MW4PR11MB7054.namprd11.prod.outlook.com>
Content-Language: en-US
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <MW4PR11MB705486642D803993AA62881AEF719@MW4PR11MB7054.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/mtl: Add handling for MTL ccs
 modifiers
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

On 8.5.2023 14.41, Kahola, Mika wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Juha-Pekka Heikkila
>> Sent: Thursday, May 4, 2023 1:28 PM
>> To: intel-gfx@lists.freedesktop.org
>> Subject: [Intel-gfx] [PATCH 4/4] drm/i915/mtl: Add handling for MTL ccs modifiers
>>
>> Add Tile4 ccs modifiers w/ auxbuffer handling
>>
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_fb.c       | 42 ++++++++++++++++++-
>>   .../drm/i915/display/skl_universal_plane.c    | 22 +++++++++-
>>   2 files changed, 61 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
>> index c004f08fcfe1..f9420a68ed3c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
>> @@ -157,6 +157,32 @@ struct intel_modifier_desc {
>>
>>   static const struct intel_modifier_desc intel_modifiers[] = {
>>   	{
>> +		.modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS,
>> +		.display_ver = { 14, 14 },
>> +		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC,
>> +
>> +		.ccs.packed_aux_planes = BIT(1),
>> +		.ccs.planar_aux_planes = BIT(2) | BIT(3),
>> +
>> +		FORMAT_OVERRIDE(gen12_ccs_formats),
>> +	}, {
>> +		.modifier = I915_FORMAT_MOD_4_TILED_MTL_RC_CCS,
>> +		.display_ver = { 14, 14 },
>> +		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC,
>> +
>> +		.ccs.packed_aux_planes = BIT(1),
>> +
>> +		FORMAT_OVERRIDE(gen12_ccs_formats),
>> +	}, {
>> +		.modifier = I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC,
>> +		.display_ver = { 14, 14 },
>> +		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC_CC,
>> +
>> +		.ccs.cc_planes = BIT(2),
>> +		.ccs.packed_aux_planes = BIT(1),
> 
> Nitpick, earlier we have defined order in BIT(1), BIT(2), etc. but here we have BIT(2) defined before BIT(1). Maybe define BIT(1) here before BIT2)?

While I agree with your comment this follow how rc ccs cc is earlier 
defined in same table for I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC. I'd 
stick with current order and later time do cleanups if needed.

> 
> Otherwise, patch looks ok to me.
> 
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>

Thanks!

/Juha-Pekka

> 
>> +
>> +		FORMAT_OVERRIDE(gen12_ccs_cc_formats),
>> +	}, {
>>   		.modifier = I915_FORMAT_MOD_4_TILED_DG2_MC_CCS,
>>   		.display_ver = { 13, 13 },
>>   		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC, @@ -370,6 +396,14 @@ static bool
>> plane_has_modifier(struct drm_i915_private *i915,
>>   	if (!plane_caps_contain_all(plane_caps, md->plane_caps))
>>   		return false;
>>
>> +	/*
>> +	 * Separate AuxCCS and Flat CCS modifiers to be run only on platforms
>> +	 * where supported.
>> +	 */
>> +	if (intel_fb_is_ccs_modifier(md->modifier) &&
>> +	   HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
>> +		return false;
>> +
>>   	return true;
>>   }
>>
>> @@ -489,7 +523,7 @@ static bool intel_fb_is_gen12_ccs_aux_plane(const struct drm_framebuffer *fb, in  {
>>   	const struct intel_modifier_desc *md = lookup_modifier(fb->modifier);
>>
>> -	return check_modifier_display_ver_range(md, 12, 13) &&
>> +	return check_modifier_display_ver_range(md, 12, 14) &&
>>   	       ccs_aux_plane_mask(md, fb->format) & BIT(color_plane);  }
>>
>> @@ -605,6 +639,9 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
>>   		if (intel_fb_is_ccs_aux_plane(fb, color_plane))
>>   			return 128;
>>   		fallthrough;
>> +	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
>> +	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
>> +	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
>>   	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
>>   	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
>>   	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
>> @@ -791,6 +828,9 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
>>   	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
>>   	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
>>   	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
>> +	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
>> +	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
>> +	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
>>   		return 16 * 1024;
>>   	case I915_FORMAT_MOD_Y_TILED_CCS:
>>   	case I915_FORMAT_MOD_Yf_TILED_CCS:
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> index 8ea0598a5a07..f6f760e59c9e 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -789,6 +789,14 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
>>   			PLANE_CTL_CLEAR_COLOR_DISABLE;
>>   	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
>>   		return PLANE_CTL_TILED_4 | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
>> +	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
>> +		return PLANE_CTL_TILED_4 |
>> +			PLANE_CTL_RENDER_DECOMPRESSION_ENABLE |
>> +			PLANE_CTL_CLEAR_COLOR_DISABLE;
>> +	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
>> +		return PLANE_CTL_TILED_4 | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
>> +	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
>> +		return PLANE_CTL_TILED_4 | PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE;
>>   	case I915_FORMAT_MOD_Y_TILED_CCS:
>>   	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
>>   		return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
>> @@ -2160,6 +2168,11 @@ skl_plane_disable_flip_done(struct intel_plane *plane)  static bool skl_plane_has_rc_ccs(struct
>> drm_i915_private *i915,
>>   				 enum pipe pipe, enum plane_id plane_id)  {
>> +	/* Wa_14017240301 */
>> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>> +		return false;
>> +
>>   	/* Wa_22011186057 */
>>   	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>>   		return false;
>> @@ -2441,12 +2454,17 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
>>   	case PLANE_CTL_TILED_Y:
>>   		plane_config->tiling = I915_TILING_Y;
>>   		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
>> -			if (DISPLAY_VER(dev_priv) >= 12)
>> +			if (DISPLAY_VER(dev_priv) >= 14)
>> +				fb->modifier = I915_FORMAT_MOD_4_TILED_MTL_RC_CCS;
>> +			else if (DISPLAY_VER(dev_priv) >= 12)
>>   				fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS;
>>   			else
>>   				fb->modifier = I915_FORMAT_MOD_Y_TILED_CCS;
>>   		else if (val & PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
>> -			fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
>> +			if (DISPLAY_VER(dev_priv) >= 14)
>> +				fb->modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS;
>> +			else
>> +				fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
>>   		else
>>   			fb->modifier = I915_FORMAT_MOD_Y_TILED;
>>   		break;
>> --
>> 2.25.1
> 

