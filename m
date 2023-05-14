Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56659701ECA
	for <lists+intel-gfx@lfdr.de>; Sun, 14 May 2023 19:44:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9570510E033;
	Sun, 14 May 2023 17:44:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39AAF10E033
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 May 2023 17:43:59 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id
 4fb4d7f45d1cf-50b383222f7so17477429a12.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 May 2023 10:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684086234; x=1686678234;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=Ehg2tSMyOBJ3viyxEtnKL2gsz5sp7fKvAT7qZaEFsIo=;
 b=nfz7CApechFJLjtBjLGTG7VJWB7IF6yY8J/Kj22Rs5jfWBQalpcGLrlbAUkg/n1mSl
 WBicBBTie2nRPZsDiv1hMmCW3oNXJHI2PJndZ/pI5lFqhkBm5eNvL2RC4zkAwcVrXc5Z
 hmdLcLuMpig+Z3hrhTqBGB01z62I6NtwE9V4UrU4YeSD63lyryDbo1Yzn2S9/WqeqsLq
 u/9oM3QVlQl2kVizq3CpluG4uWk5S+7xk8V/psb+pfD65s8mBYKROywniPXA71pV/qwq
 M58cQlqRKVqd9hDgAt1l4nxbQuFSSbFxrdiUEtk2nSGoQF18Tiz3mHTKfRaVwQfhLIKb
 elnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684086234; x=1686678234;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Ehg2tSMyOBJ3viyxEtnKL2gsz5sp7fKvAT7qZaEFsIo=;
 b=UHr5DI7yPD6OKHn8ciaJbBUlAZnLXUODqoYitCbPP1nY9XaRaIuKuqKeqmqpcCF5ag
 D1WAOiNwbeK3IYgGd7OJKAbmcxjdkVr23ljlNqJ1f/RkmzfnUbBNktYZnWjjIcDRvHQW
 Gv6JQHXKbCo5NQotpBp1IQH7epvb3674Se6tvP7gNAKDoEefUcX4guqv0lTYTFwNKGNC
 MPVUj7xvojXN95Gzbroa8P8Kh49Op253CDhnQO4kftCE0oQLoVnXe2E3MSEzfYbjXHTJ
 jdlZeFv81w5AUsUxUWpXYVjldh829Hee2VdcyfyRLnKgp3CmfOrIparxAo+pCPle8/Le
 NIow==
X-Gm-Message-State: AC+VfDwwAB7wbs1vAjBnpMJywQ8CbJc75rKp3+4vMtICFCvHnC8u4MK6
 pMl7ri7LEZ+cMuY3LWSjvkxd9leoqmRwMw==
X-Google-Smtp-Source: ACHHUZ4GxuiEys7pfM2By4iDr9CQdvCHlckNDXFbmFiVr9iWm6nCYs0EyZid5vJa16/2ci/+qobxsA==
X-Received: by 2002:a17:907:7291:b0:96a:717:d452 with SMTP id
 dt17-20020a170907729100b0096a0717d452mr18761530ejc.19.1684086234029; 
 Sun, 14 May 2023 10:43:54 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.85])
 by smtp.googlemail.com with ESMTPSA id
 jj8-20020a170907984800b00965c7c93655sm8270229ejc.213.2023.05.14.10.43.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 14 May 2023 10:43:53 -0700 (PDT)
Message-ID: <804fa18f-e930-a7e2-8988-677cd19e5086@gmail.com>
Date: Sun, 14 May 2023 20:43:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Matt Atwood <matthew.s.atwood@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230511103714.5194-1-juhapekka.heikkila@gmail.com>
 <20230511103714.5194-2-juhapekka.heikkila@gmail.com>
 <ZF1MbhyoHsXgOcaA@msatwood-mobl>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <ZF1MbhyoHsXgOcaA@msatwood-mobl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add handling for MTL ccs
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

On 11.5.2023 23.13, Matt Atwood wrote:
> On Thu, May 11, 2023 at 01:37:14PM +0300, Juha-Pekka Heikkila wrote:
>> Add Tile4 ccs modifiers w/ auxbuffer handling
> Commit message should include the workarounds implemented
> Wa_14017240301.
>>
> Bspec: 49251, 49252, 49253
> with white space revisions, and commit message update:
> Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> Reviewed-by: Mika Kahola <mika.kahola@intel.com>
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
>> +
>> +		FORMAT_OVERRIDE(gen12_ccs_cc_formats),
>> +	}, {
>>   		.modifier = I915_FORMAT_MOD_4_TILED_DG2_MC_CCS,
>>   		.display_ver = { 13, 13 },
>>   		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC,
>> @@ -370,6 +396,14 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
>>   	if (!plane_caps_contain_all(plane_caps, md->plane_caps))
>>   		return false;
>>   
>> +	/*
>> +	 * Separate AuxCCS and Flat CCS modifiers to be run only on platforms
>> +	 * where supported.
>> +	 */
>> +	if (intel_fb_is_ccs_modifier(md->modifier) &&
>> +	   HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
> please align HAS_FLAT_CCS with intel_fb_is_css_modifier

I'll update and put patches to list.

thanks for the reviews

/Juha-Pekka

>> +		return false;
>> +
>>   	return true;
>>   }
>>   
>> @@ -489,7 +523,7 @@ static bool intel_fb_is_gen12_ccs_aux_plane(const struct drm_framebuffer *fb, in
>>   {
>>   	const struct intel_modifier_desc *md = lookup_modifier(fb->modifier);
>>   
>> -	return check_modifier_display_ver_range(md, 12, 13) &&
>> +	return check_modifier_display_ver_range(md, 12, 14) &&
>>   	       ccs_aux_plane_mask(md, fb->format) & BIT(color_plane);
>>   }
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
>> @@ -2160,6 +2168,11 @@ skl_plane_disable_flip_done(struct intel_plane *plane)
>>   static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
>>   				 enum pipe pipe, enum plane_id plane_id)
>>   {
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
>>

