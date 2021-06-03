Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F72D39A2BD
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 16:04:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 922F66F47C;
	Thu,  3 Jun 2021 14:04:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A66316F47B
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 14:04:05 +0000 (UTC)
IronPort-SDR: et+6klI6cgzYq42bbwd/TUa+O/G+AE62eeyHP5ap9HQF7WqSSBilvu/Ff++mLQY66lfY9slPPS
 PlZjeksS3hhw==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="267912740"
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="267912740"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 07:04:03 -0700
IronPort-SDR: +wNQJl2Lh3iopkScusp3CgshH13PIRCtuol/A47xrOFyyAD71tg8JHmvr1pc1wPQBnrhrVjQ2k
 nk7vQFb5azYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="400518837"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 03 Jun 2021 07:04:03 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 3 Jun 2021 07:04:02 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 3 Jun 2021 19:33:59 +0530
Received: from bgsmsx606.gar.corp.intel.com ([10.67.234.8]) by
 BGSMSX606.gar.corp.intel.com ([10.67.234.8]) with mapi id 15.01.2242.008;
 Thu, 3 Jun 2021 19:33:59 +0530
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/dsc: abstract helpers to get bigjoiner
 primary/secondary crtc
Thread-Index: AQHXWHQE8bxMEnaiZkqOPSmtg/Au2asCUX7A
Date: Thu, 3 Jun 2021 14:03:59 +0000
Message-ID: <8ce66244b0e14dfead6fc26e98a98aa7@intel.com>
References: <20210603122842.22496-1-jani.nikula@intel.com>
In-Reply-To: <20210603122842.22496-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dsc: abstract helpers to get
 bigjoiner primary/secondary crtc
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



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, June 3, 2021 5:59 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; Navare, Manasi D
> <manasi.d.navare@intel.com>; Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Subject: [PATCH 1/2] drm/i915/dsc: abstract helpers to get bigjoiner
> primary/secondary crtc
> 
> Add a single point of truth for figuring out the primary/secondary crtc for
> bigjoiner instead of duplicating the magic pipe +/- 1 in multiple places.
> 
> Also fix the pipe validity checks to properly take non-contiguous pipes into
> account. The current checks may theoretically overflow
> i915->pipe_to_crtc_mapping[pipe], albeit with a warning, due to fused
> off pipes, as INTEL_NUM_PIPES() returns the actual number of pipes on the
> platform, and the check is for INTEL_NUM_PIPES() == pipe + 1.
> 
> Prefer primary/secondary terminology going forward.
> 
> Fixes: 8a029c113b17 ("drm/i915/dp: Modify VDSC helpers to configure DSC for
> Bigjoiner slave")
> Fixes: d961eb20adb6 ("drm/i915/bigjoiner: atomic commit changes for
> uncompressed joiner")
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Changes look good to me.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  7 ++--
>  drivers/gpu/drm/i915/display/intel_vdsc.c    | 42 ++++++++++++++------
>  drivers/gpu/drm/i915/display/intel_vdsc.h    |  2 +
>  3 files changed, 35 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index caf0414e0b50..1b213ed42396 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9603,7 +9603,6 @@ static int intel_atomic_check_bigjoiner(struct
> intel_atomic_state *state,
>  					struct intel_crtc_state *old_crtc_state,
>  					struct intel_crtc_state
> *new_crtc_state)  {
> -	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
>  	struct intel_crtc_state *slave_crtc_state, *master_crtc_state;
>  	struct intel_crtc *slave, *master;
> 
> @@ -9619,15 +9618,15 @@ static int intel_atomic_check_bigjoiner(struct
> intel_atomic_state *state,
>  	if (!new_crtc_state->bigjoiner)
>  		return 0;
> 
> -	if (1 + crtc->pipe >= INTEL_NUM_PIPES(dev_priv)) {
> +	slave = intel_dsc_get_bigjoiner_secondary(crtc);
> +	if (!slave) {
>  		DRM_DEBUG_KMS("[CRTC:%d:%s] Big joiner configuration
> requires "
>  			      "CRTC + 1 to be used, doesn't exist\n",
>  			      crtc->base.base.id, crtc->base.name);
>  		return -EINVAL;
>  	}
> 
> -	slave = new_crtc_state->bigjoiner_linked_crtc =
> -		intel_get_crtc_for_pipe(dev_priv, crtc->pipe + 1);
> +	new_crtc_state->bigjoiner_linked_crtc = slave;
>  	slave_crtc_state = intel_atomic_get_crtc_state(&state->base, slave);
>  	master = crtc;
>  	if (IS_ERR(slave_crtc_state))
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 19cd9531c115..1fd81bd3ea09 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -1106,6 +1106,32 @@ static i915_reg_t dss_ctl2_reg(const struct
> intel_crtc_state *crtc_state)
>  	return is_pipe_dsc(crtc_state) ? ICL_PIPE_DSS_CTL2(pipe) : DSS_CTL2;  }
> 
> +struct intel_crtc *
> +intel_dsc_get_bigjoiner_secondary(const struct intel_crtc
> +*primary_crtc) {
> +	struct drm_i915_private *i915 = to_i915(primary_crtc->base.dev);
> +	enum pipe pipe = primary_crtc->pipe + 1;
> +
> +	if (drm_WARN_ON(&i915->drm, pipe >= I915_MAX_PIPES ||
> +			!(INTEL_INFO(i915)->pipe_mask & BIT(pipe))))
> +		return NULL;
> +
> +	return intel_get_crtc_for_pipe(i915, pipe); }
> +
> +struct intel_crtc *
> +intel_dsc_get_bigjoiner_primary(const struct intel_crtc
> +*secondary_crtc) {
> +	struct drm_i915_private *i915 = to_i915(secondary_crtc->base.dev);
> +	enum pipe pipe = secondary_crtc->pipe - 1;
> +
> +	if (drm_WARN_ON(&i915->drm, pipe <= INVALID_PIPE ||
> +			!(INTEL_INFO(i915)->pipe_mask & BIT(pipe))))
> +		return NULL;
> +
> +	return intel_get_crtc_for_pipe(i915, pipe); }
> +
>  void intel_uncompressed_joiner_enable(const struct intel_crtc_state
> *crtc_state)  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -1178,15 +1204,11 @@ void intel_uncompressed_joiner_get_config(struct
> intel_crtc_state *crtc_state)
>  	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc_state));
>  	if (dss_ctl1 & UNCOMPRESSED_JOINER_MASTER) {
>  		crtc_state->bigjoiner = true;
> -		if (!WARN_ON(INTEL_NUM_PIPES(dev_priv) == crtc->pipe + 1))
> -			crtc_state->bigjoiner_linked_crtc =
> -				intel_get_crtc_for_pipe(dev_priv, crtc->pipe +
> 1);
> +		crtc_state->bigjoiner_linked_crtc =
> +intel_dsc_get_bigjoiner_secondary(crtc);
>  	} else if (dss_ctl1 & UNCOMPRESSED_JOINER_SLAVE) {
>  		crtc_state->bigjoiner = true;
>  		crtc_state->bigjoiner_slave = true;
> -		if (!WARN_ON(crtc->pipe == PIPE_A))
> -			crtc_state->bigjoiner_linked_crtc =
> -				intel_get_crtc_for_pipe(dev_priv, crtc->pipe -
> 1);
> +		crtc_state->bigjoiner_linked_crtc =
> +intel_dsc_get_bigjoiner_primary(crtc);
>  	}
>  }
> 
> @@ -1224,13 +1246,9 @@ void intel_dsc_get_config(struct intel_crtc_state
> *crtc_state)
> 
>  		if (!(dss_ctl1 & MASTER_BIG_JOINER_ENABLE)) {
>  			crtc_state->bigjoiner_slave = true;
> -			if (!WARN_ON(crtc->pipe == PIPE_A))
> -				crtc_state->bigjoiner_linked_crtc =
> -					intel_get_crtc_for_pipe(dev_priv, crtc-
> >pipe - 1);
> +			crtc_state->bigjoiner_linked_crtc =
> +intel_dsc_get_bigjoiner_primary(crtc);
>  		} else {
> -			if (!WARN_ON(INTEL_NUM_PIPES(dev_priv) == crtc-
> >pipe + 1))
> -				crtc_state->bigjoiner_linked_crtc =
> -					intel_get_crtc_for_pipe(dev_priv, crtc-
> >pipe + 1);
> +			crtc_state->bigjoiner_linked_crtc =
> +intel_dsc_get_bigjoiner_secondary(crtc);
>  		}
>  	}
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h
> b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index fe4d45561253..da95944f4de2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -22,5 +22,7 @@ void intel_uncompressed_joiner_get_config(struct
> intel_crtc_state *crtc_state);  void intel_dsc_get_config(struct intel_crtc_state
> *crtc_state);  enum intel_display_power_domain
> intel_dsc_power_domain(const struct intel_crtc_state *crtc_state);
> +struct intel_crtc *intel_dsc_get_bigjoiner_primary(const struct
> +intel_crtc *secondary_crtc); struct intel_crtc
> +*intel_dsc_get_bigjoiner_secondary(const struct intel_crtc
> +*primary_crtc);
> 
>  #endif /* __INTEL_VDSC_H__ */
> --
> 2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
