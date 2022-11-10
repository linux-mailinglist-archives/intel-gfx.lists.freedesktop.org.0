Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC89623EA6
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 10:32:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0D1210E6AB;
	Thu, 10 Nov 2022 09:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FCC410E6AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 09:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668072766; x=1699608766;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=mDZzfI0scJtSIJ0EyVYgDtbqq7xf3llHat0lm4/MFC8=;
 b=HBUyCe4kcSuaBcU7pmmd/sBmizvyfzijVqP+rTdI2hQyxx+1QyHkjkfm
 LD+BKCsAfwGscSXV3cy2eyurl33tjeJs9vL6D1YHCwPoFUGDkWzza75A0
 8jADP7PKExVbOaCJuPWsYiPXjdczBdcxlFl4a23B5ucYDJpkrOUQgrOBj
 O7of4DtWR+C4ILHGHjiQZVVtcLgYBEW5hFZNZxGJdqvuMSiNNMVgAw4LW
 5nS6Euy20noskEDE75XqtnD8AheIXke6byKgcqKCJ+fXInDnBAMhtWKPs
 d098NzrW6SR6hlDUbwDuKDj7uRt06YgQ9QdkMIiE8hQykvIO9noPT+Xuq g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="294613170"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="294613170"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 01:32:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="966347987"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="966347987"
Received: from swatish2-mobl2.gar.corp.intel.com (HELO [10.215.199.118])
 ([10.215.199.118])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 01:32:44 -0800
Message-ID: <ad7e0b9c-c9cb-7b30-d3d5-58335d1a9188@intel.com>
Date: Thu, 10 Nov 2022 15:02:41 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>,
 "Navare, Manasi" <manasi.d.navare@intel.com>
References: <20221103060222.23054-1-swati2.sharma@intel.com>
 <20221103192000.GA2883421@mdnavare-mobl1.jf.intel.com>
 <874jvfau8q.fsf@intel.com>
From: Swati Sharma <swati2.sharma@intel.com>
Organization: Intel
In-Reply-To: <874jvfau8q.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

Thanks Jani/Manasi for the review comments.
Have addressed those in https://patchwork.freedesktop.org/patch/511033/

On 04-Nov-22 3:58 PM, Jani Nikula wrote:
> On Thu, 03 Nov 2022, "Navare, Manasi" <manasi.d.navare@intel.com> wrote:
>> On Thu, Nov 03, 2022 at 11:32:22AM +0530, Swati Sharma wrote:
>>> Lets use RUNTIME_INFO->has_dsc since platforms supporting dsc has this
>>> flag enabled.
>>>
>>> This is done based on the review comments received on
>>> https://patchwork.freedesktop.org/patch/509393/
> 
> I don't think that's necessary. If it were an idea worth crediting, the
> usual way is using Suggested-by: tag.
> 
>>>
>>> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_dp.c   | 6 +++---
>>>   drivers/gpu/drm/i915/display/intel_vdsc.c | 7 ++++++-
>>>   drivers/gpu/drm/i915/display/intel_vdsc.h | 2 ++
>>>   3 files changed, 11 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 7400d6b4c587..eb908da80f2b 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -1012,7 +1012,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>>   	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>>>   	 * integer value since we support only integer values of bpp.
>>>   	 */
>>> -	if (DISPLAY_VER(dev_priv) >= 10 &&
>>> +	if (is_dsc_supported(dev_priv) &&
>>>   	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
>>>   		/*
>>>   		 * TBD pass the connector BPC,
>>> @@ -2906,7 +2906,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
>>>   	intel_dp_set_max_sink_lane_count(intel_dp);
>>>   
>>>   	/* Read the eDP DSC DPCD registers */
>>> -	if (DISPLAY_VER(dev_priv) >= 10)
>>> +	if (is_dsc_supported(dev_priv))
>>>   		intel_dp_get_dsc_sink_cap(intel_dp);
>>>   
>>>   	/*
>>> @@ -4691,7 +4691,7 @@ intel_dp_detect(struct drm_connector *connector,
>>>   	}
>>>   
>>>   	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
>>> -	if (DISPLAY_VER(dev_priv) >= 11)
>>> +	if (is_dsc_supported(dev_priv))
>>>   		intel_dp_get_dsc_sink_cap(intel_dp);
>>>   
>>>   	intel_dp_configure_mst(intel_dp);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> index 269f9792390d..e7c1169538da 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> @@ -338,13 +338,18 @@ static const struct rc_parameters *get_rc_params(u16 compressed_bpp,
>>>   	return &rc_parameters[row_index][column_index];
>>>   }
>>>   
>>> +bool is_dsc_supported(struct drm_i915_private *dev_priv)
>>> +{
>>> +	return RUNTIME_INFO(dev_priv)->has_dsc;
>>> +}
>>> +
> 
> All of the wrappers to runtime/device info members are of the form:
> 
> #define HAS_DSC(__i915)		(RUNTIME_INFO(__i915)->has_dsc)
> 
> in i915_drv.h.
> 
>>>   bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
>>>   {
>>>   	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>>   
>>> -	if (!RUNTIME_INFO(i915)->has_dsc)
>>> +	if (!is_dsc_supported(i915))
>>>   		return false;
>>>   
>>>   	if (DISPLAY_VER(i915) >= 12)
>>
>> In Runtime info, Gen 12 should have Gen 11 runtime has dsc set, so makes
>> this check here redundant.
> 
> As it is, it's not redundant. It's tied to the transcoder check.
> 
> But this could be simplified as:
> 
> 	if (!HAS_DSC(i915))
> 		return false;
> 
> 	if (DISPLAY_VER(i915) == 11 && cpu_transcoder == TRANSCODER_A)
> 		return false;
> 
> 	return true;
> 
> It could be condenced even further, but at the const of losing clarity.
> 
> BR,
> Jani.
> 
> 
>>
>> Manasi
>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
>>> index 8763f00fa7e2..049e8b95fdde 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
>>> @@ -12,7 +12,9 @@ enum transcoder;
>>>   struct intel_crtc;
>>>   struct intel_crtc_state;
>>>   struct intel_encoder;
>>> +struct drm_i915_private;
>>>   
>>> +bool is_dsc_supported(struct drm_i915_private *dev_priv);
>>>   bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
>>>   void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state);
>>>   void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
>>> -- 
>>> 2.25.1
>>>
> 

-- 
~Swati Sharma
