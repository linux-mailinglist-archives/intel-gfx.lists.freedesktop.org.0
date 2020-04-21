Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E371B1EE3
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 08:39:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 469CA6E29B;
	Tue, 21 Apr 2020 06:39:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 051B46E29B
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 06:39:16 +0000 (UTC)
IronPort-SDR: d3EWfqUaUCk9nWpMxcTZr3GFPdS77uote7r6zwKpuyCfaBzm2+OHLfFoOeP9lS3NUk9Vj4gK0j
 ttQ8GYul+X+A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 23:39:16 -0700
IronPort-SDR: kiL6/he0OB9joQ8ukz1EXhpSqVjN1WTOPACOaTcDV+pw1nhKBr7Oe3wUDdJtD5tb6UPAfKGWRU
 OHhF9l47VhkQ==
X-IronPort-AV: E=Sophos;i="5.72,409,1580803200"; d="scan'208";a="429419407"
Received: from parkernx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.46.80])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 23:39:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Shankar\, Uma" <uma.shankar@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F82487B55@BGSMSX104.gar.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200420131632.23283-1-jani.nikula@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F82487B55@BGSMSX104.gar.corp.intel.com>
Date: Tue, 21 Apr 2020 09:39:12 +0300
Message-ID: <878sip1gxb.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/audio: fix compressed_bpp check
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 20 Apr 2020, "Shankar, Uma" <uma.shankar@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@intel.com>
>> Sent: Monday, April 20, 2020 6:47 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Gupta, Anshuman
>> <anshuman.gupta@intel.com>; Shankar, Uma <uma.shankar@intel.com>
>> Subject: [PATCH] drm/i915/audio: fix compressed_bpp check
>> 
>> The early check for compressed_bpp being zero is too early, as it is hit also when
>> DSC is not enabled. Move the checks down to where the values are actually needed.
>> This is a paranoid check for a situation that should not happen, so we don't really
>> care about handling it gracefully apart from not oopsing.
>
> Looks Good to me. Thanks Jani.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Thanks for the review, pushed to dinq.

BR,
Jani.

>
>> Fixes: 48b8b04c791d ("drm/i915/display: Enable DP Display Audio WA")
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1750
>> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_audio.c | 15 +++++----------
>>  1 file changed, 5 insertions(+), 10 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
>> b/drivers/gpu/drm/i915/display/intel_audio.c
>> index 2663e71059af..36aaee8536f1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_audio.c
>> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
>> @@ -542,6 +542,10 @@ static unsigned int get_hblank_early_enable_config(struct
>> intel_encoder *encoder
>>  		    h_active, crtc_state->port_clock, crtc_state->lane_count,
>>  		    vdsc_bpp, cdclk);
>> 
>> +	if (WARN_ON(!crtc_state->port_clock || !crtc_state->lane_count ||
>> +		    !crtc_state->dsc.compressed_bpp || !i915->cdclk.hw.cdclk))
>> +		return 0;
>> +
>>  	link_clks_available = ((((h_total - h_active) *
>>  			       ((crtc_state->port_clock * ROUNDING_FACTOR) /
>>  				pixel_clk)) / ROUNDING_FACTOR) - 28); @@ -
>> 597,21 +601,12 @@ static void enable_audio_dsc_wa(struct intel_encoder
>> *encoder,
>>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>  	enum pipe pipe = crtc->pipe;
>> -	unsigned int hblank_early_prog, samples_room, h_active;
>> +	unsigned int hblank_early_prog, samples_room;
>>  	unsigned int val;
>> 
>>  	if (INTEL_GEN(i915) < 11)
>>  		return;
>> 
>> -	h_active = crtc_state->hw.adjusted_mode.hdisplay;
>> -
>> -	if (!(h_active && crtc_state->port_clock && crtc_state->lane_count &&
>> -	      crtc_state->dsc.compressed_bpp && i915->cdclk.hw.cdclk)) {
>> -		drm_err(&i915->drm, "Null Params rcvd for hblank early
>> enabling\n");
>> -		WARN_ON(1);
>> -		return;
>> -	}
>> -
>>  	val = intel_de_read(i915, AUD_CONFIG_BE);
>> 
>>  	if (INTEL_GEN(i915) == 11)
>> --
>> 2.20.1
>

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
