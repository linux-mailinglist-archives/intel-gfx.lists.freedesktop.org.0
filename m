Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JyfGvck2WmnmggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 18:27:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C67233DA621
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 18:27:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AE1B10E98D;
	Fri, 10 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eWuybfay";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C89410E98B;
 Fri, 10 Apr 2026 16:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775838451; x=1807374451;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=IHrh+GDST0ffvb9fJgkO4xud4pnrUR86nT8oGDk1Bxw=;
 b=eWuybfayaGn1wwAe23CjAyg12nnc0bjJUCOo2SS6hg1Q6RE1h42/HHfz
 U3YTNCUj4qi/ec5j4w7RPdCmb/QkmIXIR14xSHPRQI0aODbpbZ/UdyNZV
 bhUA6EgwCcz0EIRmPlaNgBshPQCoISH3Yl8bfBNwKk5MFNGG5uoHTzVyH
 t3vgzK3p7t4gGh9xkg54V3/aEBClZDa6YgEIJjOrOTgWnfqq9y6Zt615L
 weBA+jZtmXyMO00pEFXYzCHHJP4i6Jm4MEDHiNX3OjUp3CmkUFe6xaZhw
 avMqIY/df7wiJ7Li3srOQKdJCe1Es1SRCgju4OMoo+ZFHmBF+tqLWkFLk Q==;
X-CSE-ConnectionGUID: 1bIOXreQR+WoQkbgsMs9Sw==
X-CSE-MsgGUID: zyHOWOKESEql72EGWZ58fQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76933467"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="76933467"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 09:27:07 -0700
X-CSE-ConnectionGUID: 4/fIzqdnQ+CpUdSv9Sm0GA==
X-CSE-MsgGUID: eGq97sFQSFWZyxYa7Ez6/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="225962466"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 09:26:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Kory Maincent <kory.maincent@bootlin.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Dave
 Airlie <airlied@redhat.com>, Jesse Barnes <jbarnes@virtuousgeek.org>, Eric
 Anholt <eric@anholt.net>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Chun-Kuang Hu
 <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Chris Wilson
 <chris@chris-wilson.co.uk>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Mark Yacoub
 <markyacoub@google.com>, Sean Paul <seanpaul@google.com>, Louis Chauvet
 <louis.chauvet@bootlin.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Simona Vetter
 <simona.vetter@ffwll.ch>, Kory Maincent <kory.maincent@bootlin.com>
Subject: Re: [PATCH RFC 10/12] drm/i915/display/dp: Adopt dp_connector
 helpers to expose link training state
In-Reply-To: <20260409-feat_link_cap-v1-10-7069e8199ce2@bootlin.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
 <20260409-feat_link_cap-v1-10-7069e8199ce2@bootlin.com>
Date: Fri, 10 Apr 2026 19:26:53 +0300
Message-ID: <e253ca4fa0b493032a7b35a0a20689b9d9e0c4e7@intel.com>
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[bootlin.com,intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,redhat.com,virtuousgeek.org,anholt.net,kernel.org,suse.de,linaro.org,ideasonboard.com,kwiboo.se,pengutronix.de,collabora.com,chris-wilson.co.uk];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[35];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: C67233DA621
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 09 Apr 2026, Kory Maincent <kory.maincent@bootlin.com> wrote:
> Switch the i915 DP connector initialization from drmm_connector_init()
> to drmm_connector_dp_init(), providing the source link capabilities
> (supported lane counts, link rates, DSC support, voltage swing and
> pre-emphasis levels).
>
> Add intel_dp_report_link_train() to collect the negotiated link
> parameters (rate, lane count, DSC enable, per-lane voltage swing and
> pre-emphasis) and report them via drm_connector_dp_set_link_train_properties()
> once link training completes successfully.
>
> Reset the link training properties via
> drm_connector_dp_reset_link_train_properties() when the connector is
> reported as disconnected or when the display device is disabled, so
> the exposed state always reflects the current link status.
>
> Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c            | 31 +++++++++++++++++++---
>  .../gpu/drm/i915/display/intel_dp_link_training.c  | 25 +++++++++++++++++
>  2 files changed, 52 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2af64de9c81de..641406bdc0cc9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -45,6 +45,7 @@
>  #include <drm/display/drm_hdmi_helper.h>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_crtc.h>
> +#include <drm/drm_dp_connector.h>
>  #include <drm/drm_edid.h>
>  #include <drm/drm_fixed.h>
>  #include <drm/drm_managed.h>
> @@ -6337,8 +6338,10 @@ intel_dp_detect(struct drm_connector *_connector,
>  	drm_WARN_ON(display->drm,
>  		    !drm_modeset_is_locked(&display->drm->mode_config.connection_mutex));
>  
> -	if (!intel_display_device_enabled(display))
> +	if (!intel_display_device_enabled(display)) {
> +		drm_connector_dp_reset_link_train_properties(_connector);
>  		return connector_status_disconnected;
> +	}
>  
>  	if (!intel_display_driver_check_access(display))
>  		return connector->base.status;
> @@ -6388,6 +6391,8 @@ intel_dp_detect(struct drm_connector *_connector,
>  
>  		intel_dp_tunnel_disconnect(intel_dp);
>  
> +		drm_connector_dp_reset_link_train_properties(_connector);
> +
>  		goto out_unset_edid;
>  	}
>  
> @@ -7162,10 +7167,12 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  			struct intel_connector *connector)
>  {
>  	struct intel_display *display = to_intel_display(dig_port);
> +	struct drm_connector_dp_link_train_caps link_caps;
>  	struct intel_dp *intel_dp = &dig_port->dp;
>  	struct intel_encoder *encoder = &dig_port->base;
>  	struct drm_device *dev = encoder->base.dev;
>  	enum port port = encoder->port;
> +	u32 *rates;
>  	int type;
>  
>  	if (drm_WARN(dev, dig_port->max_lanes < 1,
> @@ -7213,8 +7220,25 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  		    type == DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
>  		    encoder->base.base.id, encoder->base.name);
>  
> -	drmm_connector_init(dev, &connector->base, &intel_dp_connector_funcs,
> -			    type, &intel_dp->aux.ddc);
> +	intel_dp_set_source_rates(intel_dp);
> +	link_caps.nlanes = DRM_DP_1LANE | DRM_DP_2LANE | DRM_DP_4LANE;
> +	link_caps.nrates = intel_dp->num_source_rates;
> +	rates = kzalloc_objs(*rates, intel_dp->num_source_rates);
> +	if (!rates)
> +		goto fail;
> +
> +	for (int i = 0; i < intel_dp->num_source_rates; i++)
> +		rates[i] = intel_dp->source_rates[i];
> +
> +	link_caps.rates = rates;
> +	link_caps.dsc = true;

You have a source, you have a sink, and you have a link between the two.

Source rates do not reflect the link rates common between source and
sink.

DSC depends on source and sink, and it's not statically "true" for
either, and depends on a bunch of things.

BR,
Jani.

> +	link_caps.v_swings = DRM_DP_VOLTAGE_SWING_LEVEL_MASK;
> +	link_caps.pre_emphs = DRM_DP_PRE_EMPH_LEVEL_MASK;
> +
> +	drmm_connector_dp_init(dev, &connector->base, &intel_dp_connector_funcs,
> +			       &link_caps, type, &intel_dp->aux.ddc);
> +	kfree(rates);
> +
>  	drm_connector_helper_add(&connector->base, &intel_dp_connector_helper_funcs);
>  
>  	if (drmm_add_action_or_reset(dev, intel_connector_destroy, connector)) {
> @@ -7240,7 +7264,6 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  	if (!intel_edp_init_connector(intel_dp, connector))
>  		goto fail;
>  
> -	intel_dp_set_source_rates(intel_dp);
>  	intel_dp_set_common_rates(intel_dp);
>  	intel_dp_reset_link_params(intel_dp);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 54c585c59b900..c2fd46a323650 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -25,6 +25,7 @@
>  #include <linux/iopoll.h>
>  
>  #include <drm/display/drm_dp_helper.h>
> +#include <drm/drm_dp_connector.h>
>  #include <drm/drm_print.h>
>  
>  #include "intel_display_core.h"
> @@ -1116,6 +1117,27 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
>  	return sink_status & DP_INTRA_HOP_AUX_REPLY_INDICATION ? 1 : 0;
>  }
>  
> +static void intel_dp_report_link_train(struct intel_dp *intel_dp)
> +{
> +	struct intel_connector *connector = intel_dp->attached_connector;
> +	struct drm_connector_dp_link_train dp_link_train;
> +
> +	dp_link_train.rate = intel_dp->link_rate;
> +	dp_link_train.nlanes = intel_dp->lane_count;
> +	dp_link_train.dsc_en = connector->dp.dsc_decompression_enabled;
> +
> +	for (int i = 0; i < intel_dp->lane_count; i++) {
> +		int v_swing_level = (intel_dp->train_set[i] &
> +				     DP_TRAIN_VOLTAGE_SWING_MASK) >> DP_TRAIN_VOLTAGE_SWING_SHIFT;
> +		int pre_emph_level = (intel_dp->train_set[i] &
> +				      DP_TRAIN_PRE_EMPHASIS_MASK) >> DP_TRAIN_PRE_EMPHASIS_SHIFT;
> +		dp_link_train.v_swing[i] = 1 << v_swing_level;
> +		dp_link_train.pre_emph[i] = 1 << pre_emph_level;
> +	}
> +
> +	drm_connector_dp_set_link_train_properties(&connector->base, &dp_link_train);
> +}
> +
>  /**
>   * intel_dp_stop_link_train - stop link training
>   * @intel_dp: DP struct
> @@ -1144,6 +1166,9 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
>  	intel_dp_program_link_training_pattern(intel_dp, crtc_state, DP_PHY_DPRX,
>  					       DP_TRAINING_PATTERN_DISABLE);
>  
> +	if (!intel_dp->is_mst)
> +		intel_dp_report_link_train(intel_dp);
> +
>  	if (intel_dp_is_uhbr(crtc_state)) {
>  		ret = poll_timeout_us(ret = intel_dp_128b132b_intra_hop(intel_dp, crtc_state),
>  				      ret == 0,

-- 
Jani Nikula, Intel
