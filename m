Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5620A2980A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 18:53:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B103810E380;
	Wed,  5 Feb 2025 17:53:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z5+ctIN9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1F3010E24A;
 Wed,  5 Feb 2025 17:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738777998; x=1770313998;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LGstk+tPHDPTakl1DGX0DAThb/Y2nQdLB/pZwbCQA7o=;
 b=Z5+ctIN9m237n/X2Roj7SUw/7MssSjq2e34zlg9yv0qaKCpcXARtH+Cb
 Uu/3YJVgSOt1gwp4Y3ku4p/s6hzsDYiQ2xHa6DrBkvUMWYOyATB+8flaF
 XP+M2fVUaihB4rRZJKSTGqCqX3w6FPP4p/Iua63tApCnsSACP821bov2I
 lt4ErsLFzcxXgn0u8DZyfKPyrkV2i8jWdeSff9FwCK3+x3fp5jrRIpVMj
 RdSdfDW6EJtX+0sHwdHqWw1GjF/Kk48aznRxQwD4IWlNWJnWZaQRHoAJg
 cyeFO07D5FLwPVetJcdB35fWRK0WWSoBrM2Rhq4HfyW/qJkqPAnWhfXtN Q==;
X-CSE-ConnectionGUID: w6Qq1m26RoSMEBsOm6abGw==
X-CSE-MsgGUID: FW+wC0J2RVGKIhmM2bgqSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39054952"
X-IronPort-AV: E=Sophos;i="6.13,262,1732608000"; d="scan'208";a="39054952"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 09:53:17 -0800
X-CSE-ConnectionGUID: GLhgdZH+Q5yZDUMayCdC8w==
X-CSE-MsgGUID: 3PA0GhzeTH2IG5CvEcYTLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,262,1732608000"; d="scan'208";a="116018410"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 09:53:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 4/6] drm/i915/lspcon: change signature of
 lspcon_wait_pcon_mode()
In-Reply-To: <Z6KbmjHjZkkRajai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1738677489.git.jani.nikula@intel.com>
 <84a00791d3d7ee4e34c1224ef7471918546635aa.1738677489.git.jani.nikula@intel.com>
 <Z6KbmjHjZkkRajai@intel.com>
Date: Wed, 05 Feb 2025 19:53:12 +0200
Message-ID: <87wme42s8n.fsf@intel.com>
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

On Tue, 04 Feb 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Feb 04, 2025 at 03:58:41PM +0200, Jani Nikula wrote:
>> Switch from struct intel_lspcon to struct intel_digital_port to unify.
>
> in the previous patch and in this one I'm asking myself if we
> are not going to the opposite direction that we should...
> and make the lspcon component to use lspcon structs as entry
> but looking to the patch itself the code gets cleaner because
> digport is an information that is broadly available. So, let's
> continue:

I had mostly similar thoughts, and conclusions, and settled on this.

> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed the series to din.

BR,
Jani.

>
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c     | 3 +--
>>  drivers/gpu/drm/i915/display/intel_lspcon.c | 4 +++-
>>  drivers/gpu/drm/i915/display/intel_lspcon.h | 4 +---
>>  3 files changed, 5 insertions(+), 6 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 2db7741c25bd..14d81538c912 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -3501,7 +3501,6 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
>>  		ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, mode);
>>  	} else {
>>  		struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> -		struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
>>  
>>  		lspcon_resume(dig_port);
>>  
>> @@ -3520,7 +3519,7 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
>>  		}
>>  
>>  		if (ret == 1 && intel_lspcon_active(dig_port))
>> -			lspcon_wait_pcon_mode(lspcon);
>> +			lspcon_wait_pcon_mode(dig_port);
>>  	}
>>  
>>  	if (ret != 1)
>> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
>> index 2dd2b700b0f3..45b63fea3642 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
>> @@ -656,8 +656,10 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
>>  	return val;
>>  }
>>  
>> -void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon)
>> +void lspcon_wait_pcon_mode(struct intel_digital_port *dig_port)
>>  {
>> +	struct intel_lspcon *lspcon = &dig_port->lspcon;
>> +
>>  	lspcon_wait_mode(lspcon, DRM_LSPCON_MODE_PCON);
>>  }
>>  
>> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
>> index 18cc15e5221d..20581af1ddb2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
>> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
>> @@ -8,18 +8,16 @@
>>  
>>  #include <linux/types.h>
>>  
>> -struct drm_connector;
>>  struct drm_connector_state;
>>  struct intel_crtc_state;
>>  struct intel_digital_port;
>>  struct intel_encoder;
>> -struct intel_lspcon;
>>  
>>  bool lspcon_init(struct intel_digital_port *dig_port);
>>  bool intel_lspcon_active(struct intel_digital_port *dig_port);
>>  bool lspcon_detect_hdr_capability(struct intel_digital_port *dig_port);
>>  void lspcon_resume(struct intel_digital_port *dig_port);
>> -void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
>> +void lspcon_wait_pcon_mode(struct intel_digital_port *dig_port);
>>  void lspcon_write_infoframe(struct intel_encoder *encoder,
>>  			    const struct intel_crtc_state *crtc_state,
>>  			    unsigned int type,
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
