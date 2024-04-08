Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB8A89BC61
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 11:53:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AD6B10FE33;
	Mon,  8 Apr 2024 09:53:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SGYiZGO0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE89F10E856
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 09:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712569988; x=1744105988;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=s7dt2NVdTEpYC9/kVnOULsZt5pm9LjxWpTkw+QVFXm4=;
 b=SGYiZGO0BJHuZC5j6SKTabo8g7XjnB6D/QpfH/Audjco+0Dwxj0GEcta
 GYOvnLUeStY6pruDcSWBYAqwmNMPSmeM9JTqzwBfNX9DVFFDYdl9ZGurw
 iprlMUicni1H0bW5ABwlVE7Ih+u58kEnEXFZrU9t5DDmt3JyvSuRsOBww
 mfORcVXejNRoVOXpFtn0vZUaTYUEkkB8VucfsK/IsLotNysaSZJSVwvLn
 95VbIejlBOmd4AsQIPJ/VPfJq+rXhsvmYm4bdUVvTMc1iZNLAyc3Di1Ri
 j7GfkHJ3sovFgSRsKcaW8KUyF3vE+jLCWi4HLpDpJV5Q7KDki8j16dL49 g==;
X-CSE-ConnectionGUID: xkTRBFRLQ6mELGyse8CZTQ==
X-CSE-MsgGUID: 7mIvNJW4QEmAGEi1aCtmzw==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="30330987"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="30330987"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 02:52:57 -0700
X-CSE-ConnectionGUID: 1XRBhMZbRtOvHdMJABMb7g==
X-CSE-MsgGUID: 32CVGljiQqKbmd6fXp2tGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="24532112"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.71])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 02:52:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/915/lspcon: Reduce dmesg errors during
 lspcon_init failure
In-Reply-To: <20240408050558.865396-4-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240408050558.865396-1-ankit.k.nautiyal@intel.com>
 <20240408050558.865396-4-ankit.k.nautiyal@intel.com>
Date: Mon, 08 Apr 2024 12:52:52 +0300
Message-ID: <87v84s9o5n.fsf@intel.com>
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

On Mon, 08 Apr 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Currently lspcon_resume calls lspcon_init and in case of failure we get
> error messages from lspcon_init and then again from lspcon_resume.
>
> Just have a single error message in lspcon_init and convert all other
> errors as dbg messages.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 27 +++++++++++----------
>  1 file changed, 14 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
> index 16ee0dc179f7..3c3bc80e32f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -680,24 +680,30 @@ bool lspcon_init(struct intel_digital_port *dig_port)
>  		return false;
>  
>  	if (!lspcon_set_pcon_mode(lspcon)) {
> -		drm_err(&i915->drm, "LSPCON mode change to PCON failed\n");
> -		return false;
> +		drm_dbg_kms(&i915->drm, "LSPCON mode change to PCON failed\n");
> +		goto lspcon_init_failed;
>  	}
>  
>  	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0) {
> -		drm_err(&i915->drm, "LSPCON DPCD read failed\n");
> -		return false;
> +		drm_dbg_kms(&i915->drm, "LSPCON DPCD read failed\n");
> +		goto lspcon_init_failed;
>  	}
>  
>  	if (!lspcon_detect_vendor(lspcon)) {
> -		drm_err(&i915->drm, "LSPCON vendor detection failed\n");
> -		return false;
> +		drm_dbg_kms(&i915->drm, "LSPCON vendor detection failed\n");
> +		goto lspcon_init_failed;

Why not just keep all of the above as drm_err(), adding all the relevant
info there...

>  	}
>  
>  	connector->ycbcr_420_allowed = true;
>  	lspcon->active = true;
>  	drm_dbg_kms(&i915->drm, "Success: LSPCON init\n");
>  	return true;
> +
> +lspcon_init_failed:
> +	drm_err(&i915->drm, "LSPCON init failed on port %c\n",
> +		port_name(dig_port->base.port));
> +
> +	return false;

And dropping this change altogheter? Why would we need both the debug
message and the error? Just have one error message?

With that change,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  }
>  
>  u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
> @@ -718,13 +724,8 @@ void lspcon_resume(struct intel_digital_port *dig_port)
>  	if (!intel_bios_encoder_is_lspcon(dig_port->base.devdata))
>  		return;
>  
> -	if (!lspcon->active) {
> -		if (!lspcon_init(dig_port)) {
> -			drm_err(&i915->drm, "LSPCON init failed on port %c\n",
> -				port_name(dig_port->base.port));
> -			return;
> -		}
> -	}
> +	if (!lspcon->active && !lspcon_init(dig_port))
> +		return;
>  
>  	expected_mode = lspcon_get_expected_mode(lspcon);
>  	if (expected_mode == DRM_LSPCON_MODE_PCON)

-- 
Jani Nikula, Intel
