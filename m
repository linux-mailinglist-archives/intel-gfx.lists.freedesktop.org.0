Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F29F69B9410
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 16:11:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AD9710E2E9;
	Fri,  1 Nov 2024 15:11:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MzyJt6mL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FA1310E083;
 Fri,  1 Nov 2024 15:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730473910; x=1762009910;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DdnClrusLW1Q/CdOT9VrFELGEP1Lntp0ezKXbw8n7oM=;
 b=MzyJt6mLyGFUwGvudhiB+MR/t+jng+mtemP9uVmj6qMlrvO+6VTmZ9rc
 DLq3wI85ODfNfWJM0w/EYv/2KTQ1OaimNnlpkOucakVeiph/XaUQ2CR09
 hF9P8/r04JAOlLGo3/HLjsh1ov08cxDoUMeZ3+c9/JTBzERfmHiwz10Bb
 fvuyL7QeOsEIvMObAwX8w4gQFYvjK/ymT35VdVB4lc7BXKLVEaYPRqnf5
 jXzyGm5QTsdNp+k8SyLhWSLcUazlgdjnp6s1aeBUYkLwcROE8RNATXu5W
 IHvXKOoiinMKr3RqLGWJeX11JdjrTa8AzPkeUT+nDAIVFbdjsIaqD02IC w==;
X-CSE-ConnectionGUID: DklqHsCgRVG2pv69573PBQ==
X-CSE-MsgGUID: D5FRJcUvSn6/gf0SdAQucw==
X-IronPort-AV: E=McAfee;i="6700,10204,11243"; a="30355061"
X-IronPort-AV: E=Sophos;i="6.11,250,1725346800"; d="scan'208";a="30355061"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 08:11:50 -0700
X-CSE-ConnectionGUID: TcNLLywCRaK7U4/11O+2fQ==
X-CSE-MsgGUID: rihDgMHBQdy22N9ugkY7RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,250,1725346800"; d="scan'208";a="113820866"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 08:11:48 -0700
Date: Fri, 1 Nov 2024 17:12:21 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com
Subject: Re: [PATCH v2] drm/i915/psr: WA for panels stating bad link status
 after PSR is enabled
Message-ID: <ZyTv1aNCoUVZYBFH@ideak-desk.fi.intel.com>
References: <20241029122415.1789528-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241029122415.1789528-1-jouni.hogander@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 29, 2024 at 02:24:15PM +0200, Jouni Högander wrote:
> We are currently seeing unexpected link trainings with several different
> eDP panels. These are caused by these panels stating bad link status in
> their dpcd registers. This can be observed by doing following test:
> 
> 1. Boot up without Xe module loaded
> 
> 2. Load Xe module with PSR disabled:
>     $ modprobe xe  enable_psr=0
> 
> 3. Read panel link status register
>     $ dpcd_reg read --offset 0x200e --count=1
>     0x200e:  00
> 
> 4. Enable PSR, sleep for 2 seconds and disable PSR again:
> 
>     $ echo 0x1 > /sys/kernel/debug/dri/0/i915_edp_psr_debug
>     $ echo "-1" > /sys/kernel/debug/dri/0000:00:02.0/xe_params/enable_psr
>     $ echo 0x0 > /sys/kernel/debug/dri/0/i915_edp_psr_debug
>     $ sleep 2
>     $ cat /sys/kernel/debug/dri/0/i915_edp_psr_status | grep status
>     $ echo 0x1 > /sys/kernel/debug/dri/0/i915_edp_psr_debug
>     Source PSR/PanelReplay status: DEEP_SLEEP [0x80310030]
> 
> 5. Now read panel link status registers again:
>     $ dpcd_reg read --offset 0x200e --count=1
>     0x200e:  80
> 
> Workaround this by not trusting link status registers after PSR is enabled
> until first short pulse interrupt is received.
> 
> v2:
>   - clear link_ok flag on pipe disable
>   - remove useless comment
>   - modify intel_dp_needs_link_retrain return statement
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

I have some nits below, but the patch looks ok regardless so the Rb
applies with or without those addressed.

> ---
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      | 40 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_psr.h      |  1 +
>  4 files changed, 45 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 2bb1fa64da2f..f0b7d7262961 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1618,6 +1618,8 @@ struct intel_psr {
>  	u32 dc3co_exit_delay;
>  	struct delayed_work dc3co_work;
>  	u8 entry_setup_frames;
> +
> +	bool link_ok;
>  };
>  
>  struct intel_dp {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9dd4610c749a..2212a9d97121 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5011,7 +5011,8 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
>  		return true;
>  
>  	/* Retrain if link not ok */
> -	return !intel_dp_link_ok(intel_dp, link_status);
> +	return !intel_dp_link_ok(intel_dp, link_status) &&
> +		!intel_psr_link_ok(intel_dp);
>  }
>  
>  bool intel_dp_has_connector(struct intel_dp *intel_dp,
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 880ea845207f..7695225b3745 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2013,6 +2013,15 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
>  	intel_dp->psr.enabled = true;
>  	intel_dp->psr.paused = false;
>  
> +	/*
> +	 * Link_ok is sticky and set here on PSR enable. We can assume link
> +	 * training is complete as we never continue to PSR enable with
> +	 * untrained link. Link_ok is kept as set until first short pulse
> +	 * interrupt. This is targeted to workaround panels stating bad link
> +	 * after PSR is enabled.
> +	 */
> +	intel_dp->psr.link_ok = true;
> +
>  	intel_psr_activate(intel_dp);
>  }
>  
> @@ -2172,6 +2181,8 @@ void intel_psr_disable(struct intel_dp *intel_dp,
>  
>  	intel_psr_disable_locked(intel_dp);
>  
> +	intel_dp->psr.link_ok = false;
> +
>  	mutex_unlock(&intel_dp->psr.lock);
>  	cancel_work_sync(&intel_dp->psr.work);
>  	cancel_delayed_work_sync(&intel_dp->psr.dc3co_work);
> @@ -3462,6 +3473,8 @@ void intel_psr_short_pulse(struct intel_dp *intel_dp)
>  
>  	mutex_lock(&psr->lock);
>  
> +	psr->link_ok = false;
> +
>  	if (!psr->enabled)
>  		goto exit;
>  
> @@ -3521,6 +3534,33 @@ bool intel_psr_enabled(struct intel_dp *intel_dp)
>  	return ret;
>  }
>  
> +/**
> + * intel_psr_link_ok - return psr->link_ok

The above could explain a bit more.

> + * @intel_dp: struct intel_dp
> + *
> + * We are seeing unexpected link re-trainings with some panels. This is caused
> + * by panel stating bad link status after PSR is enabled. Code checking link
> + * status can call this to ensure it can ignore bad link status stated by the
> + * panel I.e. if panel is stating bad link and intel_psr_link_ok is stating link
> + * is ok caller should rely on latter.
> + *
> + * Return value of link_ok

And the above one-liner too.

> + */
> +bool intel_psr_link_ok(struct intel_dp *intel_dp)
> +{
> +	bool ret;
> +
> +	if ((!CAN_PSR(intel_dp) && !CAN_PANEL_REPLAY(intel_dp)) ||
> +	    !intel_dp_is_edp(intel_dp))

IIUC psr.link_ok would never get set if !CAN_PSR() &&
!CAN_PANEL_REPLAY(), so could just rely on psr.link_ok being always
valid if intel_dp_is_edp()?

> +		return false;
> +
> +	mutex_lock(&intel_dp->psr.lock);
> +	ret = intel_dp->psr.link_ok;
> +	mutex_unlock(&intel_dp->psr.lock);
> +
> +	return ret;
> +}
> +
>  /**
>   * intel_psr_lock - grab PSR lock
>   * @crtc_state: the crtc state
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index 5f26f61f82aa..956be263c09e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -59,6 +59,7 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
>  void intel_psr_pause(struct intel_dp *intel_dp);
>  void intel_psr_resume(struct intel_dp *intel_dp);
>  bool intel_psr_needs_block_dc_vblank(const struct intel_crtc_state *crtc_state);
> +bool intel_psr_link_ok(struct intel_dp *intel_dp);
>  
>  void intel_psr_lock(const struct intel_crtc_state *crtc_state);
>  void intel_psr_unlock(const struct intel_crtc_state *crtc_state);
> -- 
> 2.34.1
> 
