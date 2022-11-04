Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9642619470
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Nov 2022 11:29:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2290A10E0A0;
	Fri,  4 Nov 2022 10:29:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A36CD10E0A0
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Nov 2022 10:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667557738; x=1699093738;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Hhyb+SAInXgh5V5rGlUMW1HTwJj8HcW1Bl1uZYoeAq0=;
 b=SAaeKbfqG6fMB9b7aOjjyUQULk+rwQU9BxJCAMo7bC9dp+KLq7tlQYYm
 48pf4hs3FHzsTvcb+CnTxphR7tnWXQRkV8ObcXPBW2007ikDBL+J2NNOJ
 n6S2bKFrJkunp0auP39d3D6k52kNhLha3xBRSDnnY3Tp+9XNgw4mI2w1G
 sCeFQeNcXhsjHqes75ev9+bTOnqY3ksHo+uzpUfJALDGO49HT3W/EilPA
 3llqvIfLKyzVm9OmEg9LFqIMFNON5/63SlrVYh2RpYZ8Zo95HkutHOao2
 5ipf+04pahXSf8auKXOX4zdtLa1lnjvaLkEN26hlMHgTWfjhXPxbwH+V8 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="311673385"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="311673385"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 03:28:58 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="668315120"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="668315120"
Received: from cbrodi-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.31.219])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 03:28:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>, Swati Sharma
 <swati2.sharma@intel.com>
In-Reply-To: <20221103192000.GA2883421@mdnavare-mobl1.jf.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221103060222.23054-1-swati2.sharma@intel.com>
 <20221103192000.GA2883421@mdnavare-mobl1.jf.intel.com>
Date: Fri, 04 Nov 2022 12:28:53 +0200
Message-ID: <874jvfau8q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Add is_dsc_supported()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 03 Nov 2022, "Navare, Manasi" <manasi.d.navare@intel.com> wrote:
> On Thu, Nov 03, 2022 at 11:32:22AM +0530, Swati Sharma wrote:
>> Lets use RUNTIME_INFO->has_dsc since platforms supporting dsc has this
>> flag enabled.
>> 
>> This is done based on the review comments received on
>> https://patchwork.freedesktop.org/patch/509393/

I don't think that's necessary. If it were an idea worth crediting, the
usual way is using Suggested-by: tag.

>> 
>> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c   | 6 +++---
>>  drivers/gpu/drm/i915/display/intel_vdsc.c | 7 ++++++-
>>  drivers/gpu/drm/i915/display/intel_vdsc.h | 2 ++
>>  3 files changed, 11 insertions(+), 4 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 7400d6b4c587..eb908da80f2b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1012,7 +1012,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>  	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>>  	 * integer value since we support only integer values of bpp.
>>  	 */
>> -	if (DISPLAY_VER(dev_priv) >= 10 &&
>> +	if (is_dsc_supported(dev_priv) &&
>>  	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
>>  		/*
>>  		 * TBD pass the connector BPC,
>> @@ -2906,7 +2906,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
>>  	intel_dp_set_max_sink_lane_count(intel_dp);
>>  
>>  	/* Read the eDP DSC DPCD registers */
>> -	if (DISPLAY_VER(dev_priv) >= 10)
>> +	if (is_dsc_supported(dev_priv))
>>  		intel_dp_get_dsc_sink_cap(intel_dp);
>>  
>>  	/*
>> @@ -4691,7 +4691,7 @@ intel_dp_detect(struct drm_connector *connector,
>>  	}
>>  
>>  	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
>> -	if (DISPLAY_VER(dev_priv) >= 11)
>> +	if (is_dsc_supported(dev_priv))
>>  		intel_dp_get_dsc_sink_cap(intel_dp);
>>  
>>  	intel_dp_configure_mst(intel_dp);
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> index 269f9792390d..e7c1169538da 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -338,13 +338,18 @@ static const struct rc_parameters *get_rc_params(u16 compressed_bpp,
>>  	return &rc_parameters[row_index][column_index];
>>  }
>>  
>> +bool is_dsc_supported(struct drm_i915_private *dev_priv)
>> +{
>> +	return RUNTIME_INFO(dev_priv)->has_dsc;
>> +}
>> +

All of the wrappers to runtime/device info members are of the form:

#define HAS_DSC(__i915)		(RUNTIME_INFO(__i915)->has_dsc)

in i915_drv.h.

>>  bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
>>  {
>>  	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>  
>> -	if (!RUNTIME_INFO(i915)->has_dsc)
>> +	if (!is_dsc_supported(i915))
>>  		return false;
>>  
>>  	if (DISPLAY_VER(i915) >= 12)
>
> In Runtime info, Gen 12 should have Gen 11 runtime has dsc set, so makes
> this check here redundant.

As it is, it's not redundant. It's tied to the transcoder check.

But this could be simplified as:

	if (!HAS_DSC(i915))
		return false;

	if (DISPLAY_VER(i915) == 11 && cpu_transcoder == TRANSCODER_A)
		return false;

	return true;

It could be condenced even further, but at the const of losing clarity.

BR,
Jani.


>
> Manasi
>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
>> index 8763f00fa7e2..049e8b95fdde 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
>> @@ -12,7 +12,9 @@ enum transcoder;
>>  struct intel_crtc;
>>  struct intel_crtc_state;
>>  struct intel_encoder;
>> +struct drm_i915_private;
>>  
>> +bool is_dsc_supported(struct drm_i915_private *dev_priv);
>>  bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
>>  void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state);
>>  void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
>> -- 
>> 2.25.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
