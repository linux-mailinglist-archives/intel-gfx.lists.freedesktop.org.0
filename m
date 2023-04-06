Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B36D86D9896
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 15:50:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40BEF10EBC7;
	Thu,  6 Apr 2023 13:50:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC55B10EBC7
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 13:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680789041; x=1712325041;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=VBFwR/uzWa4HMTcbX8ugzsaDWkLg3+rH0kwEP7JiSjI=;
 b=QxOaFWCBJOMiwGDYwtN1oy1kRgV8fH1SF5AYAnI0QUahe6zbQe1dcMyE
 Gj350CRn+UCKYq/6K2Vdz2xdDmP0DCtpSsZjz8dqFrCnbmDChuQKWp/Tp
 xrOU3kP6+Xr0rcDFCtRbKaRLAxupHmvnXFjbShjyt4/1N82Q27mQI8kHT
 cbNCNBshzvZLOi+GfGYHIJRINoGmjawnRN9Itq0vM9vMUWspa9Qs6nDy6
 zLBm7G5wUWu10kQAS7CwQuxirAalCWx3PRvwN5AsXRgT/u+zsEabOl1RB
 VgqkSus0362wrxy3O7Ab2yfq7ftiXu4tMpWisUVNkauXLP2CfeO2AOBQy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="407853674"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="407853674"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 06:50:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="811020436"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="811020436"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 06:50:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <874jptz4gm.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230406085802.7381-1-stanislav.lisovskiy@intel.com>
 <877cupz5yr.fsf@intel.com>
 <SN6PR11MB286117F9445FD101280CCF89EF919@SN6PR11MB2861.namprd11.prod.outlook.com>
 <874jptz4gm.fsf@intel.com>
Date: Thu, 06 Apr 2023 16:50:37 +0300
Message-ID: <87pm8hxgpe.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Query compressed bpp properly
 using correct DPCD and DP Spec info
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 06 Apr 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Thu, 06 Apr 2023, "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com> wrote:
>> Not planning to upstream that actually, just for some bug on gitlab.
>> Want to see if that helps the reporter, then at least there is an idea whats the problem.
>
> The issue in drm_edp_dsc_sink_output_bpp() needs to be fixed regardless.

https://patchwork.freedesktop.org/patch/msgid/20230406134615.1422509-1-jani.nikula@intel.com

>
> BR,
> Jani.
>
>
>>
>> ________________________________________
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Thursday, April 6, 2023 12:59 PM
>> To: Lisovskiy, Stanislav; intel-gfx@lists.freedesktop.org
>> Cc: Manasi Navare
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info
>>
>> On Thu, 06 Apr 2023, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
>>> Currently we seem to be using wrong DPCD register for reading compressed bpps,
>>> reading min/max input bpc instead of compressed bpp.
>>> Fix that, so that we now apply min/max compressed bpp limitations we get
>>> from DP Spec Table 2-157 DP v2.0 and/or correspondent DPCD register
>>> DP_DSC_MAX_BITS_PER_PIXEL_LOW/HIGH.
>>>
>>> This might also allow us to get rid of an ugly compressed bpp recalculation,
>>> which we had to add to make some MST hubs usable.
>>>
>>> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 76 ++++++++++++++-------
>>>  1 file changed, 52 insertions(+), 24 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> index a88b852c437c..9479c7e0b269 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> @@ -174,6 +174,50 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
>>>       return 0;
>>>  }
>>>
>>> +static u16 dsc_max_sink_compressed_bppx16(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE],
>>> +                                       struct intel_crtc_state *pipe_config,
>>> +                                       int bpc)
>>> +{
>>> +     u16 max_bppx16 = dsc_dpcd[DP_DSC_MAX_BITS_PER_PIXEL_LOW - DP_DSC_SUPPORT] |
>>> +                      (dsc_dpcd[DP_DSC_MAX_BITS_PER_PIXEL_HI - DP_DSC_SUPPORT] &
>>> +                       DP_DSC_MAX_BITS_PER_PIXEL_HI_MASK << DP_DSC_MAX_BITS_PER_PIXEL_HI_SHIFT);
>>
>> This duplicates drm_edp_dsc_sink_output_bpp().
>>
>> Both have operator precedence wrong, leading to the high byte always
>> being ignored. For example, sink reported max bpp of 32 turns to 0, and
>> 24 turns to 8.
>>
>> Broken since 2018. 0575650077ea ("drm/dp: DRM DP helper/macros to get DP
>> sink DSC parameters").
>>
>> The definition of DP_DSC_MAX_BITS_PER_PIXEL_HI_SHIFT is misleading wrt
>> all of our regular usage. We should never have a FOO_MASK << FOO_SHIFT
>> in code, the MASK should always be already shifted in place. Here we do,
>> because the shift is not for shifting the mask in place, it's for
>> combining the high and low bytes. But I don't really think
>> DP_DSC_MAX_BITS_PER_PIXEL_HI_SHIFT should exist, at all.
>>
>> BR,
>> Jani.
>>
>>
>>
>>> +
>>> +     if (max_bppx16)
>>> +             return max_bppx16;
>>> +     /*
>>> +      * If support not given in DPCD 67h, 68h use the Maximum Allowed bit rate
>>> +      * values as given in spec Table 2-157 DP v2.0
>>> +      */
>>> +     switch (pipe_config->output_format) {
>>> +     case INTEL_OUTPUT_FORMAT_RGB:
>>> +     case INTEL_OUTPUT_FORMAT_YCBCR444:
>>> +             return bpc << 4;
>>> +     case INTEL_OUTPUT_FORMAT_YCBCR420:
>>> +             return (3 * (bpc / 2)) << 4;
>>> +     default:
>>> +             MISSING_CASE(pipe_config->output_format);
>>> +             break;
>>> +     }
>>> +
>>> +     return 0;
>>> +}
>>> +
>>> +static u16 dsc_min_compressed_bppx16(struct intel_crtc_state *pipe_config)
>>> +{
>>> +     switch (pipe_config->output_format) {
>>> +     case INTEL_OUTPUT_FORMAT_RGB:
>>> +     case INTEL_OUTPUT_FORMAT_YCBCR444:
>>> +             return 8 << 4;
>>> +     case INTEL_OUTPUT_FORMAT_YCBCR420:
>>> +             return 6 << 4;
>>> +     default:
>>> +             MISSING_CASE(pipe_config->output_format);
>>> +             break;
>>> +     }
>>> +
>>> +     return 0;
>>> +}
>>> +
>>>  static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>>>                                               struct intel_crtc_state *crtc_state,
>>>                                               struct drm_connector_state *conn_state,
>>> @@ -191,8 +235,6 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>>>       u8 dsc_bpc[3] = {0};
>>>       int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
>>>       u8 dsc_max_bpc;
>>> -     bool need_timeslot_recalc = false;
>>> -     u32 last_compressed_bpp;
>>>
>>>       /* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
>>>       if (DISPLAY_VER(i915) >= 12)
>>> @@ -228,6 +270,14 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>>>       if (max_bpp > sink_max_bpp)
>>>               max_bpp = sink_max_bpp;
>>>
>>> +     /* Get Min/Max compressed bpp's for those Input Bpps we got for source/sink */
>>> +     max_bpp = min(max_bpp, dsc_max_sink_compressed_bppx16(intel_dp->dsc_dpcd, crtc_state, max_bpp / 3) >> 4);
>>> +     min_bpp = max(min_bpp, dsc_min_compressed_bppx16(crtc_state) >> 4);
>>> +
>>> +     /* Align compressed bpps according to our own constraints */
>>> +     max_bpp = intel_dp_dsc_nearest_valid_bpp(i915, max_bpp, crtc_state->pipe_bpp);
>>> +     min_bpp = intel_dp_dsc_nearest_valid_bpp(i915, min_bpp, crtc_state->pipe_bpp);
>>> +
>>>       slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, max_bpp,
>>>                                                    min_bpp, limits,
>>>                                                    conn_state, 2 * 3, true);
>>> @@ -235,28 +285,6 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>>>       if (slots < 0)
>>>               return slots;
>>>
>>> -     last_compressed_bpp = crtc_state->dsc.compressed_bpp;
>>> -
>>> -     crtc_state->dsc.compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915,
>>> -                                                                     last_compressed_bpp,
>>> -                                                                     crtc_state->pipe_bpp);
>>> -
>>> -     if (crtc_state->dsc.compressed_bpp != last_compressed_bpp)
>>> -             need_timeslot_recalc = true;
>>> -
>>> -     /*
>>> -      * Apparently some MST hubs dislike if vcpi slots are not matching precisely
>>> -      * the actual compressed bpp we use.
>>> -      */
>>> -     if (need_timeslot_recalc) {
>>> -             slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
>>> -                                                          crtc_state->dsc.compressed_bpp,
>>> -                                                          crtc_state->dsc.compressed_bpp,
>>> -                                                          limits, conn_state, 2 * 3, true);
>>> -             if (slots < 0)
>>> -                     return slots;
>>> -     }
>>> -
>>>       intel_link_compute_m_n(crtc_state->dsc.compressed_bpp,
>>>                              crtc_state->lane_count,
>>>                              adjusted_mode->crtc_clock,
>>
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
