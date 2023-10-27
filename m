Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5E47D931D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 11:09:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6198A10E957;
	Fri, 27 Oct 2023 09:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F03BC10E962
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 09:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698397751; x=1729933751;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YEVpCWnp5HL/tmyFsb6RLkVoU3DZkzXYDhAS7nDMvfY=;
 b=C2UgXxEsqDLHW/Z6N4SECVq1/gn60IgrVqsM9JhSEPrpRaxpvw161R/U
 OLWn3Gna9TBQ5hQVPTfya6gOUsPeoZNS555I/DAoF9pnjlUcAw+g9cSmB
 Qet47zgeT2zctwMZTdb1E9cw4nNJSoxk1ZuOTf1bAZI0FYC4LJwxzLkxE
 luGai0Aud6bWVRg87sBAHCIjXKPaU03X67p+9Tk1b6bFGxKN5LSbjiJ1L
 ntk8o888PzIOOiDVGda/63y8JtnGJ7R7J56RvPWtZfyN1VWzbkRNOh0+u
 w6OOqmXKCvyriqsBoinUgSFsQAv08iHA5peGAhIBXw/CEe2NCTUWRIlfm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="372788974"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="372788974"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 02:09:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="736028778"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="736028778"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 02:08:57 -0700
Date: Fri, 27 Oct 2023 12:08:53 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZTt+Jac1tEpTTmdi@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-27-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024010925.3949910-27-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 26/29] drm/i915/dp_mst: Force modeset CRTC
 if DSC toggling requires it
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

On Tue, Oct 24, 2023 at 04:09:22AM +0300, Imre Deak wrote:
> Enabling / disabling DSC decompression in the branch device downstream
> of the source may reset the while branch device. To avoid this while the

"may reset the whOle branch device" I guess?

> streams are still active, force a modeset on all CRTC/ports connected to
> this branch device.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  4 ++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  | 72 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp_mst.h  |  2 +
>  3 files changed, 78 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 22f88389035bd..a33e5bbf5165a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6490,6 +6490,10 @@ int intel_atomic_check(struct drm_device *dev,
>  		if (!new_crtc_state->hw.enable || intel_crtc_needs_modeset(new_crtc_state))
>  			continue;
>  
> +		if (intel_dp_mst_crtc_needs_modeset(state, crtc))
> +			intel_modeset_pipes_in_mask_early(state, "MST topology",
> +							  BIT(crtc->pipe));
> +
>  		if (intel_dp_mst_is_slave_trans(new_crtc_state)) {
>  			enum transcoder master = new_crtc_state->mst_master_transcoder;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 9f4894c2e7860..d4dcfb2c09b2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1606,3 +1606,75 @@ int intel_dp_mst_add_topology_state_for_crtc(struct intel_atomic_state *state,
>  
>  	return 0;
>  }
> +
> +static struct intel_connector *
> +get_connector_in_state_for_crtc(struct intel_atomic_state *state,
> +				const struct intel_crtc *crtc)
> +{
> +	struct drm_connector_state *old_conn_state;
> +	struct drm_connector_state *new_conn_state;
> +	struct drm_connector *_connector;
> +	int i;
> +
> +	for_each_oldnew_connector_in_state(&state->base, _connector,
> +					   old_conn_state, new_conn_state, i) {
> +		struct intel_connector *connector =
> +			to_intel_connector(_connector);
> +
> +		if (old_conn_state->crtc == &crtc->base ||
> +		    new_conn_state->crtc == &crtc->base)
> +			return connector;
> +	}
> +
> +	return NULL;
> +}
> +
> +bool intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
> +				     struct intel_crtc *crtc)
> +{
> +	const struct intel_connector *crtc_connector;
> +	const struct drm_connector_state *conn_state;
> +	const struct drm_connector *_connector;
> +	int i;
> +
> +	if (!intel_crtc_has_type(intel_atomic_get_new_crtc_state(state, crtc),
> +				 INTEL_OUTPUT_DP_MST))
> +		return false;
> +
> +	crtc_connector = get_connector_in_state_for_crtc(state, crtc);
> +
> +	if (!crtc_connector)
> +		/* None of the connectors in the topology needs modeset */
> +		return false;
> +
> +	for_each_new_connector_in_state(&state->base, _connector, conn_state, i) {
> +		const struct intel_connector *connector =
> +			to_intel_connector(_connector);
> +		const struct intel_crtc_state *new_crtc_state =
> +			intel_atomic_get_new_crtc_state(state, crtc);
> +		const struct intel_crtc_state *old_crtc_state =
> +			intel_atomic_get_old_crtc_state(state, crtc);
> +
> +		if (connector->mst_port != crtc_connector->mst_port)
> +			continue;
> +
> +		if (!intel_crtc_needs_modeset(new_crtc_state))
> +			continue;
> +
> +		if (old_crtc_state->dsc.compression_enable ==
> +		    new_crtc_state->dsc.compression_enable)
> +			continue;
> +
> +		/*
> +		 * Toggling the compression flag because of this stream in the first
> +		 * downstream branch device's UFP DPCD may reset the whole branch
> +		 * device. To avoid the reset while other streams are also
> +		 * active modeset the whole MST topology in this case.
> +		 */
> +		if (connector->dp.dsc_decompression_aux ==
> +		    &connector->mst_port->aux)
> +			return true;
> +	}
> +
> +	return false;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> index f1815bb722672..fc5e85776a858 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> @@ -22,5 +22,7 @@ bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_state);
>  bool intel_dp_mst_source_support(struct intel_dp *intel_dp);
>  int intel_dp_mst_add_topology_state_for_crtc(struct intel_atomic_state *state,
>  					     struct intel_crtc *crtc);
> +bool intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
> +				     struct intel_crtc *crtc);
>  
>  #endif /* __INTEL_DP_MST_H__ */
> -- 
> 2.39.2
> 
