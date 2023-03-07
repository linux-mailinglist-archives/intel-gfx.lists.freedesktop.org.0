Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 392646AD9EC
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 10:10:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B44310E3B4;
	Tue,  7 Mar 2023 09:10:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECC5B10E38D;
 Tue,  7 Mar 2023 09:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678180232; x=1709716232;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Y4XTt8JOiekzHuxr2J3AtSG9CTN8kT2WAr+nxw5RI9g=;
 b=PjcjHxKsCL6tT4VHM0r0o2qPzR35xs1wPv3bu7R6/m1cfHWzqcS18HVc
 7ITYcrzd4Os+tCdTVi8EkAaSHgn0nUyfT6gW2NFYI9U0i/Pl8lt7FtFW5
 1pR2A5lxseZNMs3gNn3DrvvPc/Gilx01HhroI5EEDkVbmv3R+8tzWdqBJ
 kOnlyEOaGNXr1Ls9WUSGfUoO97q7HrYpwk34QCawqFOqnKiDqGZUFIdm9
 DHLkpVkKMHZ+xT3+PdQAdFn5XdCeJowq0JYPaJfy0rcepjv2nZCx+c2I2
 rf/d1rms4xRtKG094DvQoaZzu3KgzqiCOYNMJ2gLHktaaKT4n4xlwm9sq A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="333274863"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="333274863"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 01:10:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="850631360"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="850631360"
Received: from sbarnes-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.236])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 01:10:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
In-Reply-To: <87o7p5rkpn.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230302081532.765821-1-arun.r.murthy@intel.com>
 <20230302081532.765821-3-arun.r.murthy@intel.com>
 <87o7p5rkpn.fsf@intel.com>
Date: Tue, 07 Mar 2023 11:10:24 +0200
Message-ID: <87lek9rkov.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCHv4 2/2] i915/display/dp: SDP CRC16 for
 128b132b link layer
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

On Tue, 07 Mar 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> On Thu, 02 Mar 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
>> Enable SDP error detection configuration, this will set CRC16 in
>> 128b/132b link layer.
>> For Display version 13 a hardware bit31 in register VIDEO_DIP_CTL is
>> added to enable/disable SDP CRC applicable for DP2.0 only, but the
>> default value of this bit will enable CRC16 in 128b/132b hence
>> skipping this write.
>> Corrective actions on SDP corruption is yet to be defined.
>>
>> v2: Moved the CRC enable to link training init(Jani N)
>> v3: Moved crc enable to ddi pre enable <Jani N>
>> v4: Separate function for SDP CRC16 (Jani N)
>>
>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

PS. I've queued retest on this one, need to wait for results before
applying.


>
>> ---
>>  drivers/gpu/drm/i915/display/intel_ddi.c      |  4 ++++
>>  .../drm/i915/display/intel_dp_link_training.c | 20 +++++++++++++++++++
>>  .../drm/i915/display/intel_dp_link_training.h |  2 ++
>>  3 files changed, 26 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index e5979427b38b..127b3035f92d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -2519,6 +2519,10 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
>>  {
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>  
>> +	if (HAS_DP20(dev_priv))
>> +		intel_dp_128b132b_sdp_crc16(enc_to_intel_dp(encoder),
>> +					    crtc_state);
>> +
>>  	if (DISPLAY_VER(dev_priv) >= 12)
>>  		tgl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
>>  	else
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> index 3d3efcf02011..35d31e4efab9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -1454,3 +1454,23 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
>>  	if (!passed)
>>  		intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
>>  }
>> +
>> +void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
>> +				 const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> +
>> +	/*
>> +	 * VIDEO_DIP_CTL register bit 31 should be set to '0' to not
>> +	 * disable SDP CRC. This is applicable for Display version 13.
>> +	 * Default value of bit 31 is '0' hence discarding the write
>> +	 * TODO: Corrective actions on SDP corruption yet to be defined
>> +	 */
>> +	if (intel_dp_is_uhbr(crtc_state))
>> +		/* DP v2.0 SCR on SDP CRC16 for 128b/132b Link Layer */
>> +		drm_dp_dpcd_writeb(&intel_dp->aux,
>> +				   DP_SDP_ERROR_DETECTION_CONFIGURATION,
>> +				   DP_SDP_CRC16_128B132B_EN);
>> +
>> +	drm_dbg_kms(&i915->drm, "DP2.0 SDP CRC16 for 128b/132b enabled\n");
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
>> index 7fa1c0833096..2c8f2775891b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
>> @@ -39,4 +39,6 @@ static inline u8 intel_dp_training_pattern_symbol(u8 pattern)
>>  	return pattern & ~DP_LINK_SCRAMBLING_DISABLE;
>>  }
>>  
>> +void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
>> +				 const struct intel_crtc_state *crtc_state);
>>  #endif /* __INTEL_DP_LINK_TRAINING_H__ */

-- 
Jani Nikula, Intel Open Source Graphics Center
