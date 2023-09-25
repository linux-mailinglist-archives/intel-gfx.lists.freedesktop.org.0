Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD49D7AD228
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 09:45:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24AE910E20D;
	Mon, 25 Sep 2023 07:45:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49D1610E20D
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Sep 2023 07:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695627910; x=1727163910;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=w5qc+YOcdkIbCnbDqPUs6BkhsVY3VUJJx7l9/rk27tQ=;
 b=DJNgCxQqDusswiG5TROienvN4C8Mh1KRppDknGEyCTWm6dIrMnsb/+t2
 R79y0jmiXNOAVjHbB47marjkCoPpQss0uTwBmqup5OYz0d9l9ub+3LjOM
 dqT3ZMUUTJvGIEnhx9g4xMTFWs8+e29OaDv2g2IRhlyXwf9xWMWOZcVVj
 L1pJ4jdrlm/BhuwY7JJtHLVaLiTKZe/3oQKJ3/Mz05jsBgwLxk6WG/Quo
 +MYPzENLlVGcqJ9vidki4R0ckDPF98nb5nEe431QjLEHToiuBrJmAKe4r
 N8xrtApICZZQxiTBdaLpO5Wqwfc1kpYFgdIAi12/Z9+i13Nu5cMLNFQ7Y A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="366250140"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="366250140"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 00:44:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="995285085"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="995285085"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 00:44:45 -0700
Date: Mon, 25 Sep 2023 10:44:41 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZRE6ae3sgPNSozse@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
 <20230914192659.757475-24-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230914192659.757475-24-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 23/25] drm/i915/dp_mst: Allow DSC only
 for sink ports of the first branch device
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

On Thu, Sep 14, 2023 at 10:26:57PM +0300, Imre Deak wrote:
> Atm the driver supports DSC on MST links only by enabling it globally in
> the first branch device UFP's physical DPCD (vs. enabling it per-stream
> in the virtual DPCD right upstream the DPRX). This means the branch
> device will decompress any compressed stream (which it recognizes via
> MSA / SDP compression info), but it does this only for streams going to
> an SST output port. Accordingly allow DSC only for streams going to an
> SST output port of the first branch device.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 26 +++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index b2ac29a157fbd..f24f656d6d02a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -335,6 +335,27 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
>  						       limits);
>  }
>  
> +static bool intel_dp_mst_port_supports_dsc(struct intel_dp *intel_dp,
> +					   struct intel_crtc_state *crtc_state,
> +					   struct drm_connector_state *conn_state)
> +{
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct intel_connector *connector =
> +		to_intel_connector(conn_state->connector);
> +	struct intel_crtc *crtc =
> +		to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	if (connector->port->parent != intel_dp->mst_mgr.mst_primary) {
> +		drm_dbg_kms(&i915->drm,
> +			    "[CRTC:%d:%s] DSC only allowed on sink ports of the first branch device\n",
> +			    crtc->base.base.id, crtc->base.name);
> +
> +		return false;
> +	}
> +
> +	return true;
> +}
> +
>  static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  				       struct intel_crtc_state *pipe_config,
>  				       struct drm_connector_state *conn_state)
> @@ -378,6 +399,11 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  			    str_yes_no(ret),
>  			    str_yes_no(intel_dp->force_dsc_en));
>  
> +		if (!intel_dp_mst_port_supports_dsc(intel_dp,
> +						    pipe_config,
> +						    conn_state))
> +			return -EINVAL;
> +
>  		if (!intel_dp_mst_compute_config_limits(intel_dp,
>  							pipe_config,
>  							true,
> -- 
> 2.37.2
> 
