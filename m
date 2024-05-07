Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F8F8BE971
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 18:43:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6761410E377;
	Tue,  7 May 2024 16:43:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BcWenHgZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CCF810E377;
 Tue,  7 May 2024 16:43:36 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id
 5b1f17b1804b1-41ba1ba55e8so21628275e9.1; 
 Tue, 07 May 2024 09:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1715100214; x=1715705014; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=dMAQjPWGuP8SM720Jw76Skp+igPnRAlHPPK0UOjC16w=;
 b=BcWenHgZKgNhZngfDOKgEIc1TUbx878ooxIE+vVoKJNLbV6SwpzxeU+BXLiwJywGne
 IUvUNO9L389QBlSETDcKRS0TlYq2orLs2sIk0JjUzsJS2O6oSDldo9eNY0EhGUK50Rop
 jtLWHkkKF1I0vz7bKjO/ljKkcdkLUX5jSsPyujiT3zGweNOlzcjgnSE4W/wVTwML1WZ/
 i4OzLlgcWrg86gPKkqg4hF51Or4jbUsgGOgKdJCoGnGak+BPWqT/7dI/ZelxQZAXg54+
 4JwJFvxLKwa8u0g6yoZ+wXPrH2nVyu2LTpf/wNdkETzNe2O0LZHDQpK5BrBMrf5nWohn
 hxJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715100214; x=1715705014;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=dMAQjPWGuP8SM720Jw76Skp+igPnRAlHPPK0UOjC16w=;
 b=DuKNhYTPbWKeFJrQCO3mmW8Gmt9k69yUOxzvRHF8985wyKVWM6aFb+YrY+BX/CUnpP
 1/j39z3vmWwH39OEdsVJ00b1HuP+kdER4nF/DrQBhLIOjctcFy/rFYxKKHD+gWd7x7dt
 tpIn+gvK9m3C/MaB0WwuLYthuDsbQusOfJ8bytZnjmiI9l3SXC4RENkEGzQCTnfBK4E4
 X1WysO/734zOXsiShsxnoGyatDSV7Hu/HRH/8U/TVIuTrgZOJMWLGCyj2J/oyxZqocIH
 SO1UXVo5wIDSPGnPCr7OXfnCWl+hXingOPRHpb/2UOKELNsEZ/BvF9G3vbmXsTfIzE2Q
 +HUA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWZf3jcAlKI1lznX1VORXvZFDS2Sf2cNOt3TnoQHbT1+d1+L1dDF4INPBP7PwmVzqvWPAK2YTrxN/geprL2KHaULzeLmaWA/o3VuLREKwdw
X-Gm-Message-State: AOJu0Yykrf/Bol/LHdmqyhR119CMOAbLkXNCFAZUOzjgNtM5FRXRYGBR
 69W4mYoG9X+KOlxiBfKRJ2QsXkgb45ezWuG2pTO0E32FIKyweGq9
X-Google-Smtp-Source: AGHT+IGtdqLFmqdkl5uQcXQE4TwLUAaPQEnHrb6Ek7PFTHy8P1OVZEZqJ9zhxaPTZWjFu3PEOQlgQg==
X-Received: by 2002:a05:600c:4745:b0:418:ee30:3f92 with SMTP id
 5b1f17b1804b1-41f723a0c4emr2234075e9.25.1715100214113; 
 Tue, 07 May 2024 09:43:34 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.78])
 by smtp.googlemail.com with ESMTPSA id
 5b1f17b1804b1-41f42e744d7sm16231525e9.0.2024.05.07.09.43.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 May 2024 09:43:33 -0700 (PDT)
Message-ID: <ec2b911d-023b-423c-9c01-3fec208da7f3@gmail.com>
Date: Tue, 7 May 2024 19:43:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 3/3] drm/i915/display: allow creation of case
 I915_FORMAT_MOD_4_TILED_XE2_CCS type framebuffer
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 "Chery, Nanley G" <nanley.g.chery@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Graunke, Kenneth W" <kenneth.w.graunke@intel.com>,
 "Souza, Jose" <jose.souza@intel.com>, "Mathew, Alwin"
 <alwin.mathew@intel.com>, "Zhang, Jianxun" <jianxun.zhang@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
References: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
 <20240506185238.364539-4-juhapekka.heikkila@gmail.com>
 <ZjpRcqvy7BSCV5fo@intel.com>
Content-Language: en-US
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <ZjpRcqvy7BSCV5fo@intel.com>
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

On 7.5.2024 19.06, Ville Syrjälä wrote:
> On Mon, May 06, 2024 at 09:52:38PM +0300, Juha-Pekka Heikkila wrote:
>> Add I915_FORMAT_MOD_4_TILED_XE2_CCS to possible created tiling for new framebuffer
>> on Xe driver.
>>
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c       |  1 +
>>   drivers/gpu/drm/i915/display/intel_fb.c            | 10 ++++++++++
>>   drivers/gpu/drm/i915/display/skl_universal_plane.c |  4 +++-
>>   3 files changed, 14 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index ef986b508431..083147a21edb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -6150,6 +6150,7 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
>>   		case I915_FORMAT_MOD_Y_TILED:
>>   		case I915_FORMAT_MOD_Yf_TILED:
>>   		case I915_FORMAT_MOD_4_TILED:
>> +		case I915_FORMAT_MOD_4_TILED_XE2_CCS:
>>   			break;
>>   		default:
>>   			drm_dbg_kms(&i915->drm,
>> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
>> index bf24f48a1e76..6a44746b8381 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
>> @@ -161,6 +161,10 @@ struct intel_modifier_desc {
>>   
>>   static const struct intel_modifier_desc intel_modifiers[] = {
>>   	{
>> +		.modifier = I915_FORMAT_MOD_4_TILED_XE2_CCS,
>> +		.display_ver = { 14, -1 },
> 
> Should that say 20?

No, 14 is smallest display version where this can be used. (and graphics 
version 20)

> 
>> +		.plane_caps = INTEL_PLANE_CAP_TILING_4,
>> +	}, {
>>   		.modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS,
>>   		.display_ver = { 14, 14 },
>>   		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC,
>> @@ -435,6 +439,10 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
>>   	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
>>   		return false;
>>   
>> +	if (md->modifier == I915_FORMAT_MOD_4_TILED_XE2_CCS &&
>> +	    GRAPHICS_VER(i915) < 20)
>> +		return false;
>> +
>>   	return true;
>>   }
>>   
>> @@ -657,6 +665,7 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
>>   			return 128;
>>   		else
>>   			return 512;
>> +	case I915_FORMAT_MOD_4_TILED_XE2_CCS:
>>   	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
>>   	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
>>   	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
>> @@ -858,6 +867,7 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
>>   	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS:
>>   	case I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC:
>>   		return 16 * 1024;
>> +	case I915_FORMAT_MOD_4_TILED_XE2_CCS:
>>   	case I915_FORMAT_MOD_Y_TILED_CCS:
>>   	case I915_FORMAT_MOD_Yf_TILED_CCS:
>>   	case I915_FORMAT_MOD_Y_TILED:
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> index 0a8e781a3648..e590fea1180a 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -792,6 +792,7 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
>>   	case I915_FORMAT_MOD_Y_TILED:
>>   		return PLANE_CTL_TILED_Y;
>>   	case I915_FORMAT_MOD_4_TILED:
>> +	case I915_FORMAT_MOD_4_TILED_XE2_CCS:
>>   		return PLANE_CTL_TILED_4;
>>   	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
>>   		return PLANE_CTL_TILED_4 |
>> @@ -949,7 +950,8 @@ static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
>>   		plane_ctl |= adlp_plane_ctl_arb_slots(plane_state);
>>   
>>   	if (GRAPHICS_VER(dev_priv) >= 20 &&
>> -	    fb->modifier == I915_FORMAT_MOD_4_TILED) {
>> +	    (fb->modifier == I915_FORMAT_MOD_4_TILED ||
>> +	     fb->modifier == I915_FORMAT_MOD_4_TILED_XE2_CCS)) {
>>   		plane_ctl |= PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> 
> If we got to the trouble of adding a new modifier then we should
> just let skl_plane_ctl_tiling() handle this, like it does for
> every other platform.

yea, this will need to be moved. Otherwise here start to gather clutter.

> 
>>   	}
>>   
>> -- 
>> 2.43.2
> 

