Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6354241D3
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 17:50:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2837C6EDB0;
	Wed,  6 Oct 2021 15:50:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFF606EDB0
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 15:50:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="289527439"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="289527439"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 08:50:34 -0700
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="458468113"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 08:50:33 -0700
Date: Wed, 6 Oct 2021 18:50:28 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20211006155028.GC3025323@ideak-desk.fi.intel.com>
References: <20211004170535.4173-1-ville.syrjala@linux.intel.com>
 <20211004170535.4173-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211004170535.4173-4-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 3/5] drm/i915: Print the DP vswing
 adjustment request
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

On Mon, Oct 04, 2021 at 08:05:33PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Print out each DP vswing adjustment request we got from the RX.
> Could help in diagnosing what's going on during link training.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  .../drm/i915/display/intel_dp_link_training.c | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 6bab097cafd2..5657be1461ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -343,14 +343,41 @@ static u8 intel_dp_get_lane_adjust_train(struct intel_dp *intel_dp,
>  	return v | p;
>  }
>  
> +#define TRAIN_REQ_FMT "%d/%d/%d/%d"
> +#define _TRAIN_REQ_VSWING_ARGS(link_status, lane) \
> +	(drm_dp_get_adjust_request_voltage((link_status), (lane)) >> DP_TRAIN_VOLTAGE_SWING_SHIFT)
> +#define TRAIN_REQ_VSWING_ARGS(link_status) \
> +	_TRAIN_REQ_VSWING_ARGS(link_status, 0), \
> +	_TRAIN_REQ_VSWING_ARGS(link_status, 1), \
> +	_TRAIN_REQ_VSWING_ARGS(link_status, 2), \
> +	_TRAIN_REQ_VSWING_ARGS(link_status, 3)
> +#define _TRAIN_REQ_PREEMPH_ARGS(link_status, lane) \
> +	(drm_dp_get_adjust_request_pre_emphasis((link_status), (lane)) >> DP_TRAIN_PRE_EMPHASIS_SHIFT)
> +#define TRAIN_REQ_PREEMPH_ARGS(link_status) \
> +	_TRAIN_REQ_PREEMPH_ARGS(link_status, 0), \
> +	_TRAIN_REQ_PREEMPH_ARGS(link_status, 1), \
> +	_TRAIN_REQ_PREEMPH_ARGS(link_status, 2), \
> +	_TRAIN_REQ_PREEMPH_ARGS(link_status, 3)
> +
>  void
>  intel_dp_get_adjust_train(struct intel_dp *intel_dp,
>  			  const struct intel_crtc_state *crtc_state,
>  			  enum drm_dp_phy dp_phy,
>  			  const u8 link_status[DP_LINK_STATUS_SIZE])
>  {
> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> +	char phy_name[10];
>  	int lane;
>  
> +	drm_dbg_kms(encoder->base.dev, "[ENCODER:%d:%s] lanes: %d, "
> +		    "vswing request: " TRAIN_REQ_FMT ", "
> +		    "pre-emphasis request: " TRAIN_REQ_FMT ", at %s\n",
> +		    encoder->base.base.id, encoder->base.name,
> +		    crtc_state->lane_count,
> +		    TRAIN_REQ_VSWING_ARGS(link_status),
> +		    TRAIN_REQ_PREEMPH_ARGS(link_status),
> +		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)));
> +
>  	for (lane = 0; lane < 4; lane++)
>  		intel_dp->train_set[lane] =
>  			intel_dp_get_lane_adjust_train(intel_dp, crtc_state,
> -- 
> 2.32.0
> 
