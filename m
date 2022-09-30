Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A331D5F0AFB
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 13:47:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77A9810E20C;
	Fri, 30 Sep 2022 11:47:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3739610E20C
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 11:47:40 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id s14so6492953wro.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 04:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date;
 bh=Al6O9itma5kp/gHWUeQ+UMduj7jOUIHt2FV2sOUg/78=;
 b=cveXjnfDbKmoo4/d4bpK8WHnvZCfml/xFAeBvq35UBdNpOG+VQOh6B8jlK+8p6i5wT
 QFkfWUeelm00d/i9oD1/m/gZfMqLRxrwZvOad5KTpPF6QX4qRp/jWjr4yO7iChNUeXJL
 RI8ASLu/M/wJnn0K0TZymtTW2P4O05lD4xEeQFOGI1CyGec/MsAf4rFNt4lJ8KF9VBCG
 mHqOeVLTuNmspYdfwgwqGm7lBhWNy9mwSaG6R81/7hv7pHoisBMo3GaR9oz0AQdda79j
 uPM5uMRbiXQVEQ0F3+7tSU38jARaF3ULhME7f46BewKPq6WjOFutmHWI3AGcl58WYNTo
 1H2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date;
 bh=Al6O9itma5kp/gHWUeQ+UMduj7jOUIHt2FV2sOUg/78=;
 b=EqHLUKKtsq7WYPD9oGvbwReXcX3oGe2vzGhL9IfldY1l25L0U90e0HfCyRS6OC2aEu
 HMgsCyyAvgJBrpvMOdkqXyVOHxbXO490250kvlbSzjD31hNTYzwhBL9eyKSQ3mcHcqn8
 tiKpZs50YUE9IQBKX689NBJ+XPdswyWGgZntpBQylsmjPnvLCTVaC0Du9jpPnfERonnD
 6/BVKrmHWZJKdz2Lq/02zgSbgc0+z2NEaFSZ1oEyv7haUDdbRgje2I/xutw9J9xX/0G+
 BP8dLi4ELrND6ZOw+gB93QHhwVSyy7Ch4QIvpXaOfml+L6jZ8a/EPVAmiD4BMNNZN5V9
 OrYg==
X-Gm-Message-State: ACrzQf1D5gGYgT94hhivT1q9QwAdtFkDgpHcXaLmSjO1rJ0q1hD9nMjJ
 qfwYkstgNcwxXr3MUi/CTQt9nodOf9LfA3GZ
X-Google-Smtp-Source: AMsMyM4u6eql0ibNA18vzouk2ade5wYFq9OUAPel0kkCeDnag8aIAkWE+/I3erCwcg/dl1bHgoLizQ==
X-Received: by 2002:a5d:5b18:0:b0:22b:1c7:6f8 with SMTP id
 bx24-20020a5d5b18000000b0022b01c706f8mr5514576wrb.502.1664538458391; 
 Fri, 30 Sep 2022 04:47:38 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.85])
 by smtp.googlemail.com with ESMTPSA id
 n37-20020a05600c3ba500b003b47b913901sm6127128wms.1.2022.09.30.04.47.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Sep 2022 04:47:37 -0700 (PDT)
Message-ID: <039f8845-3521-614a-7794-c3eac9494429@gmail.com>
Date: Fri, 30 Sep 2022 14:47:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20220930104302.25836-1-ville.syrjala@linux.intel.com>
 <20220930104302.25836-6-ville.syrjala@linux.intel.com>
 <e6c027ff-0cd4-ef3d-0f12-13d31015ba60@gmail.com> <YzbTnZFZdFUM5REm@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <YzbTnZFZdFUM5REm@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Simplify modifier lookup in
 watermark code
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 30.9.2022 14.31, Ville Syrjälä wrote:
> On Fri, Sep 30, 2022 at 02:22:08PM +0300, Juha-Pekka Heikkila wrote:
>> I had earlier this patch which look like it does mostly the same
>> https://patchwork.freedesktop.org/patch/444010/?series=92491&rev=4
>>
>> With exception to mc ccs, earlier Imre said mc ccs must not be
>> considered here.
> 
> For the rc_surface thing? Doesn't actually matter what we put there
> on glk+ since it's only used in skl/bxt code.
> 

ack. Then this set is

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

>>
>> /Juha-Pekka
>>
>> On 30.9.2022 13.43, Ville Syrjala wrote:
>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>
>>> Replace the huge modifier lists in the watermark code with
>>> a few calls to intel_fb.c.
>>>
>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_fb.c      | 13 ++++++++++++
>>>    drivers/gpu/drm/i915/display/intel_fb.h      |  1 +
>>>    drivers/gpu/drm/i915/display/skl_watermark.c | 22 +++-----------------
>>>    3 files changed, 17 insertions(+), 19 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
>>> index eefa33c555ac..63137ae5ab21 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_fb.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
>>> @@ -300,6 +300,19 @@ static bool plane_caps_contain_all(u8 caps, u8 mask)
>>>    	return (caps & mask) == mask;
>>>    }
>>>    
>>> +/**
>>> + * intel_fb_is_tiled_modifier: Check if a modifier is a tiled modifier type
>>> + * @modifier: Modifier to check
>>> + *
>>> + * Returns:
>>> + * Returns %true if @modifier is a tiled modifier.
>>> + */
>>> +bool intel_fb_is_tiled_modifier(u64 modifier)
>>> +{
>>> +	return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps,
>>> +				      INTEL_PLANE_CAP_TILING_MASK);
>>> +}
>>> +
>>>    /**
>>>     * intel_fb_is_ccs_modifier: Check if a modifier is a CCS modifier type
>>>     * @modifier: Modifier to check
>>> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
>>> index 12386f13a4e0..4662b812b934 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_fb.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
>>> @@ -29,6 +29,7 @@ struct intel_plane_state;
>>>    #define INTEL_PLANE_CAP_TILING_Yf	BIT(5)
>>>    #define INTEL_PLANE_CAP_TILING_4	BIT(6)
>>>    
>>> +bool intel_fb_is_tiled_modifier(u64 modifier);
>>>    bool intel_fb_is_ccs_modifier(u64 modifier);
>>>    bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
>>>    bool intel_fb_is_mc_ccs_modifier(u64 modifier);
>>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
>>> index 18178b01375e..0715bb308989 100644
>>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>>> @@ -1706,26 +1706,10 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
>>>    		return -EINVAL;
>>>    	}
>>>    
>>> -	wp->y_tiled = modifier == I915_FORMAT_MOD_Y_TILED ||
>>> -		      modifier == I915_FORMAT_MOD_4_TILED ||
>>> -		      modifier == I915_FORMAT_MOD_Yf_TILED ||
>>> -		      modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
>>> -		      modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
>>> -		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
>>> -		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
>>> -		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
>>> -		      modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS ||
>>> -		      modifier == I915_FORMAT_MOD_4_TILED_DG2_MC_CCS ||
>>> -		      modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC;
>>>    	wp->x_tiled = modifier == I915_FORMAT_MOD_X_TILED;
>>> -	wp->rc_surface = modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
>>> -			 modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
>>> -			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
>>> -			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
>>> -			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
>>> -			 modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS ||
>>> -			 modifier == I915_FORMAT_MOD_4_TILED_DG2_MC_CCS ||
>>> -			 modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC;
>>> +	wp->y_tiled = modifier != I915_FORMAT_MOD_X_TILED &&
>>> +		intel_fb_is_tiled_modifier(modifier);
>>> +	wp->rc_surface = intel_fb_is_ccs_modifier(modifier);
>>
>> I had earlier this patch which look like it did mostly the same
>> https://patchwork.freedesktop.org/patch/444010/?series=92491&rev=4
>>
>> With exception to mc ccs, earlier Imre said mc ccs must not be
>> considered here.
>>
>> /Juha-Pekka
>>
>>>    	wp->is_planar = intel_format_info_is_yuv_semiplanar(format, modifier);
>>>    
>>>    	wp->width = width;
> 

