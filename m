Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B35DA7D6A37
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 13:32:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EF5610E07E;
	Wed, 25 Oct 2023 11:32:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9723C10E07E
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 11:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698233571; x=1729769571;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=q31ETyqDv/nx0+acZaIGAL1lnyeoPJ5wbW1bFeM4RAQ=;
 b=Y375ImhIM4aYIJ0beW/uARO6Kv4F0ntcsWVzAiJ1gkf49nohDpim03S1
 u1tqHriXu3E1qQ3xGMlu6D0XlwpIfRTL3ArCJakVXBk7AS43u9nxljTbf
 1o1lWQLybK3xNii0HQmyDIyIrwS4H/eJ4ccVIq4vpLU9+A/L1Ltf/tssU
 BhU1V9Pb9inPQ70Wy3BKHIOoK6sKGV74I7WBYBJIMmwVS6NSkQpOjarUR
 2exYw5Y9w6LzEfmChMsTNZxvq9Rm3ftJ0krkVx6jF8hL0MfXqC7p6fwOK
 e/RzjIYbgQ+J+9ftJ6pEjjnMnumTOGaSnTC7/TEmgJigI8xWXkOFWr8u3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="5902552"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="5902552"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 04:32:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="793818444"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="793818444"
Received: from dtorrice-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.33.83])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 04:32:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231025083338.929123-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231025083338.929123-1-suraj.kandpal@intel.com>
Date: Wed, 25 Oct 2023 14:32:46 +0300
Message-ID: <87ttqf7x9d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: Additional conditions to
 enable hdcp
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

On Wed, 25 Oct 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> When we dock a monitor we end up with a enable and disable connector
> cycle but if hdcp content is running we get the userspace in
> enabled state and driver maintaing a undesired state which causes
> the content to stop playing and we only enabe hdcp if the userspace
> state in desired. This patch fixes that.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    | 14 ++++++++++++--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++++++++--
>  2 files changed, 21 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 9151d5add960..3dbf2d545f24 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3242,6 +3242,10 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>  			     const struct intel_crtc_state *crtc_state,
>  			     const struct drm_connector_state *conn_state)
>  {
> +	struct intel_connector *connector =
> +		to_intel_connector(conn_state->connector);
> +	struct intel_hdcp *hdcp = &connector->hdcp;
> +
>  	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
>  
>  	if (!intel_crtc_is_bigjoiner_slave(crtc_state))
> @@ -3259,9 +3263,15 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>  	else
>  		intel_enable_ddi_dp(state, encoder, crtc_state, conn_state);
>  
> -	/* Enable hdcp if it's desired */
> +	/*
> +	 * Enable hdcp if it's desired or if userspace is enabled and
> +	 * driver set its state to undesired
> +	 */
>  	if (conn_state->content_protection ==
> -	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
> +	    DRM_MODE_CONTENT_PROTECTION_DESIRED ||
> +	    (conn_state->content_protection ==
> +	    DRM_MODE_CONTENT_PROTECTION_ENABLED && hdcp->value ==
> +	    DRM_MODE_CONTENT_PROTECTION_UNDESIRED))

Why don't we move all of this inside intel_hdcp.c to not pollute
intel_ddi.c with the logic?

>  		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 7b4628f4f124..008ff14fad18 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -788,6 +788,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  	struct intel_digital_port *dig_port = intel_mst->primary;
>  	struct intel_dp *intel_dp = &dig_port->dp;
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> +	struct intel_hdcp *hdcp = &connector->hdcp;
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct drm_dp_mst_topology_state *mst_state =
>  		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst_mgr);
> @@ -836,9 +837,15 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  
>  	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  
> -	/* Enable hdcp if it's desired */
> +	/*
> +	 * Enable hdcp if it's desired or if userspace is enabled and
> +	 * driver set its state to undesired
> +	 */
>  	if (conn_state->content_protection ==
> -	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
> +	    DRM_MODE_CONTENT_PROTECTION_DESIRED ||
> +	    (conn_state->content_protection ==
> +	    DRM_MODE_CONTENT_PROTECTION_ENABLED && hdcp->value ==
> +	    DRM_MODE_CONTENT_PROTECTION_UNDESIRED))

Ditto. This is just copy-paste here anyway.

>  		intel_hdcp_enable(state, encoder, pipe_config, conn_state);
>  }

-- 
Jani Nikula, Intel
