Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCE16E1DBE
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 10:06:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 409C610E180;
	Fri, 14 Apr 2023 08:06:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C13610E180
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 08:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681459586; x=1712995586;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QIp22VFMd9si7TtFAs9C6wx8fqSKE444T9a1XjLTs4Y=;
 b=XLq2O3MjggDR3x2m1N3HUfuC7PXJd+B5lbVQspGVR+OgtmYolPWIbFax
 xMOwPqVQ+jwZ7PyAscC4Trd4uw7pROrHhQOgcZe5yyn9LifYyIKICZzJT
 rDE3/hsOwpU06xQggREeOoyTZTjDF6sHM6jS2WtVqt4cPQlATivxli+8J
 4daVul3jmQqhtnTZ9yUXUNn3MNNuwYA5eGJhjdYfXX91oVcM+CNSntBgj
 0vfsbQ+NIgMlu3TXriUgWWuTq14vE5TsyEUBubSzVCosVG2lkAU0XpDkn
 +sU8EOJYZSCuLlQh2WBep9EsLU2hgGhhwN8iaDJfdTB4ianfUHIGcTq3j A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="346241043"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="346241043"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 01:06:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="779096104"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="779096104"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 14 Apr 2023 01:06:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 Apr 2023 11:06:22 +0300
Date: Fri, 14 Apr 2023 11:06:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Message-ID: <ZDkJfoX2ToZo/Vj2@intel.com>
References: <20230414072345.1041605-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230414072345.1041605-1-suraj.kandpal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: PCH display HPD IRQ is
 not detected with default filter value
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

On Fri, Apr 14, 2023 at 12:53:45PM +0530, Suraj Kandpal wrote:
> On TGP, the RTC (always running) was reduced from 3MHz to 32KHz.
> As a result of this change, when HPD active going low pulse or HPD IRQ
> is presented and the refclk (19.2MHz) is not toggling already toggling,
> there is a 60 to 90us synchronization delay which effectively reduces
> the duration of the IRQ pulse to less than the programmed 500us filter
> value and the hot plug interrupt is NOT registered.
> Program 0xC7204 (PP_CONTROL) bit #0 to '1' to enable workaround and clear
> to disable it.
> Driver shall enable this WA when external display is connected and
> remove WA when display is unplugged or before going into sleep to allow
> CS entry.
> Driver shall not enable WA when eDP is connected.
> Wa_1508796671:adls
> 
> Cc: Arun Murthy <arun.r.murthy@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 19 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_pps.c |  1 +
>  drivers/gpu/drm/i915/i915_drv.h          |  2 ++
>  3 files changed, 22 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8e16745275f6..f93895d99fd1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4689,6 +4689,7 @@ intel_dp_detect(struct drm_connector *connector,
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  	struct intel_encoder *encoder = &dig_port->base;
>  	enum drm_connector_status status;
> +	int32_t pp;
>  
>  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
>  		    connector->base.id, connector->name);
> @@ -4792,6 +4793,22 @@ intel_dp_detect(struct drm_connector *connector,
>  						 status,
>  						 intel_dp->dpcd,
>  						 intel_dp->downstream_ports);
> +
> +	/*
> +	 * WA_150879661:adls
> +	 * Driver shall enable this WA when external display is connected
> +	 * and remove WA when display is unplugged
> +	 */
> +	if (IS_ALDERLAKE_S(dev_priv)) {
> +		if (status == connector_status_connected &&
> +		    !dev_priv->edp_present)
> +			pp = PANEL_POWER_ON;
> +		else if (status == connector_status_disconnected)
> +			pp = 0;
> +
> +		intel_de_rmw(dev_priv, _MMIO(PCH_PPS_BASE + 4), 1, pp);
> +	}

This whole w/a is just utter nonsense. The better fix would be to 
adjust the SHPD_FILTER length. There was some internal discussion 
around this the last time it was raised, but the only clear conclusion
was to reduce the default SHPD_FILTER from 500 to 250 usec (which is
what the DP spec actually cals for) on future hw.

We already adjust that SHPD_FILTER down a little bit on some PCHs
(due to some other w/a presumably), but I think just dropping it
further to ~400 usec (if we don't want to go all the way down to
250 on old hw as well) should cover this issue.

> +
>  	return status;
>  }
>  
> @@ -5489,6 +5506,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  	if (!intel_edp_init_connector(intel_dp, intel_connector)) {
>  		intel_dp_aux_fini(intel_dp);
>  		goto fail;
> +	} else {
> +		dev_priv->edp_present = true;
>  	}
>  
>  	intel_dp_set_source_rates(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 24b5b12f7732..21538338af3d 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1726,4 +1726,5 @@ void assert_pps_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
>  	I915_STATE_WARN(panel_pipe == pipe && locked,
>  			"panel assertion failure, pipe %c regs locked\n",
>  			pipe_name(pipe));
> +
>  }
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 6254aa977398..ebe16aee0ca8 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -352,6 +352,8 @@ struct drm_i915_private {
>  	/* The TTM device structure. */
>  	struct ttm_device bdev;
>  
> +	bool edp_present;
> +
>  	I915_SELFTEST_DECLARE(struct i915_selftest_stash selftest;)
>  
>  	/*
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
