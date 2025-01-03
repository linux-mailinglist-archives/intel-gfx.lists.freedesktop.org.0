Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B05ABA008C1
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 12:35:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E32010E891;
	Fri,  3 Jan 2025 11:35:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LmWGwdfE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41D1810E88E;
 Fri,  3 Jan 2025 11:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735904147; x=1767440147;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=y9ZRNhmtgwTboqGB65f8GdKqMVQft6Vii100AYjTDIE=;
 b=LmWGwdfEXwrEe6RDBuEAVIng/FSD2xI0/7tN17E2XxEXJ06qxJBc0doC
 6uk+xnMpytoP0nTUGuldMgsZxJ+ouR7ejF+Ycnr+Q3f3GEs4kJ5JCrVGq
 I28B5XoGxPn226oirNYrhk3Sr5ioPaiMb6SD4lOtZ8iWuuaJRTGttsZhE
 g3XAoCuzF8OMsYqq56l/BtE28p3hF8mcbfqd8LYJEvLEyPFJ/B7nWqi9r
 24ab/9CJ3LLIonEDeyKt6RilYMYnDK+oL4h2W9PO1Ep+0FGr/U4HpZTBY
 v7R6y+yPgAXxOwTfyu1Gt/J66uiclt50mEdO9RyEibJDaaR3d7rW/HZfQ w==;
X-CSE-ConnectionGUID: LOHvogpjR8eUF+WIpiljRQ==
X-CSE-MsgGUID: 2awhXzMQQ56Y/zbvold/Aw==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="53562206"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="53562206"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 03:35:46 -0800
X-CSE-ConnectionGUID: arUaZ+BdRgS1g6mhEAKxMw==
X-CSE-MsgGUID: 2jpw3zVASCqucToicY0Z7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="101640811"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 03:35:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 16/16] drm/i915/dp: compute config for 128b/132b SST
 w/o DSC
In-Reply-To: <Z3atDqSwlbpmaZ6k@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1734643485.git.jani.nikula@intel.com>
 <b239079a989ce11d60e9467cb1125bc2033ae0bd.1734643485.git.jani.nikula@intel.com>
 <Z3atDqSwlbpmaZ6k@ideak-desk.fi.intel.com>
Date: Fri, 03 Jan 2025 13:35:41 +0200
Message-ID: <87ed1km8oi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 02 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Thu, Dec 19, 2024 at 11:34:05PM +0200, Jani Nikula wrote:
>> Enable basic 128b/132b SST functionality without compression. Reuse
>> intel_dp_mtp_tu_compute_config() to figure out the TU after we've
>> determined we need to use an UHBR rate.
>> 
>> It's slightly complicated as the M/N computation is done in different
>> places in MST and SST paths, so we need to avoid trashing the values
>> later for UHBR.
>> 
>> If uncompressed UHBR fails, we drop to compressed non-UHBR, which is
>> quite likely to fail as well. We still lack 128b/132b SST+DSC.
>> 
>> We need mst_master_transcoder also for 128b/132b SST. Use cpu_transcoder
>> directly. Enhanced framing is "don't care" for 128b/132b link.
>> 
>> v2: mst_master_transcoder, enhanced framing (Imre)
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 34 +++++++++++++++++--------
>>  1 file changed, 24 insertions(+), 10 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index fba3af338280..d14a42f02ba8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2525,8 +2525,8 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>>  	limits->min_rate = intel_dp_min_link_rate(intel_dp);
>>  	limits->max_rate = intel_dp_max_link_rate(intel_dp);
>>  
>> -	/* FIXME 128b/132b SST support missing */
>> -	if (!is_mst)
>> +	/* FIXME 128b/132b SST+DSC support missing */
>> +	if (!is_mst && dsc)
>>  		limits->max_rate = min(limits->max_rate, 810000);
>>  	limits->min_rate = min(limits->min_rate, limits->max_rate);
>>  
>> @@ -2640,6 +2640,13 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>>  		 */
>>  		ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config,
>>  							conn_state, &limits);
>> +		if (!ret && intel_dp_is_uhbr(pipe_config))
>> +			ret = intel_dp_mtp_tu_compute_config(intel_dp,
>> +							     pipe_config,
>> +							     pipe_config->pipe_bpp,
>> +							     pipe_config->pipe_bpp,
>> +							     conn_state,
>> +							     0, false);
>>  		if (ret)
>>  			dsc_needed = true;
>>  	}
>> @@ -3148,8 +3155,13 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>>  	pipe_config->limited_color_range =
>>  		intel_dp_limited_color_range(pipe_config, conn_state);
>>  
>> -	pipe_config->enhanced_framing =
>> -		drm_dp_enhanced_frame_cap(intel_dp->dpcd);
>> +	if (intel_dp_is_uhbr(pipe_config)) {
>
> Nit: no need for {} here and below.

I like this:

	if (foo)
		action();

but not this:

	if (foo)
		/* comment */
		action();

so I prefer to add the {} for clarity.

Below I think it's just because the action() spans six lines...

>
> The patch looks ok:
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks!

>
>> +		/* 128b/132b SST also needs this */
>> +		pipe_config->mst_master_transcoder = pipe_config->cpu_transcoder;
>> +	} else {
>> +		pipe_config->enhanced_framing =
>> +			drm_dp_enhanced_frame_cap(intel_dp->dpcd);
>> +	}
>>  
>>  	if (pipe_config->dsc.compression_enable)
>>  		link_bpp_x16 = pipe_config->dsc.compressed_bpp_x16;
>> @@ -3180,12 +3192,14 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>>  
>>  	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
>>  
>> -	intel_link_compute_m_n(link_bpp_x16,
>> -			       pipe_config->lane_count,
>> -			       adjusted_mode->crtc_clock,
>> -			       pipe_config->port_clock,
>> -			       intel_dp_bw_fec_overhead(pipe_config->fec_enable),
>> -			       &pipe_config->dp_m_n);
>> +	if (!intel_dp_is_uhbr(pipe_config)) {
>> +		intel_link_compute_m_n(link_bpp_x16,
>> +				       pipe_config->lane_count,
>> +				       adjusted_mode->crtc_clock,
>> +				       pipe_config->port_clock,
>> +				       intel_dp_bw_fec_overhead(pipe_config->fec_enable),
>> +				       &pipe_config->dp_m_n);
>> +	}
>>  
>>  	/* FIXME: abstract this better */
>>  	if (pipe_config->splitter.enable)
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
