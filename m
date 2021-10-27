Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF97943D17D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 21:14:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F230C6E54C;
	Wed, 27 Oct 2021 19:14:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11BFC6E54C
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 19:14:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="217155000"
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="217155000"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 12:14:06 -0700
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="665114205"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 12:14:06 -0700
Date: Wed, 27 Oct 2021 12:26:47 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com
Message-ID: <20211027192642.GA22973@labuser-Z97X-UD5H>
References: <20211027095316.9579-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211027095316.9579-1-vandita.kulkarni@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Fix the usage of uncompressed
 bpp
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

On Wed, Oct 27, 2021 at 03:23:16PM +0530, Vandita Kulkarni wrote:
> DP 1.4 spec limits max compression bpp to
> uncompressed bpp -1, which is supported from
> XELPD onwards.
> Instead of uncompressed bpp, max dsc input bpp
> was being used to limit the max compression bpp.

So the input Pipe BPP which is the uncompressed bpp is decided by the input bpc
and when this was initially written, we had designed it to respect the max_req_bpc by the user.
So that is what we use to decide the input bpc and hence the pipe_bpp
This input pipe_bpp decides the compressed bpp that we calculate based on all the supported output bpps
which are supported all the way upto uncompressed_output_bpp - 1.

So I dont see the need to change the logic here. Moreover I dont see any change in the dsc_compute_bpp function
So I dont understand the purpose of introducing the new max_dsc_pipe_bpp variable here

Manasi

> 
> Fixes: 831d5aa96c97 ("drm/i915/xelpd: Support DP1.4 compression BPPs")
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9d8132dd4cc5..1f7e666ae490 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1322,7 +1322,7 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>  	const struct drm_display_mode *adjusted_mode =
>  		&pipe_config->hw.adjusted_mode;
> -	int pipe_bpp;
> +	int pipe_bpp, max_dsc_pipe_bpp;
>  	int ret;
>  
>  	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
> @@ -1331,7 +1331,8 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
>  		return -EINVAL;
>  
> -	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
> +	pipe_bpp = pipe_config->pipe_bpp;
> +	max_dsc_pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
>  
>  	/* Min Input BPC for ICL+ is 8 */
>  	if (pipe_bpp < 8 * 3) {
> @@ -1345,7 +1346,7 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  	 * Optimize this later for the minimum possible link rate/lane count
>  	 * with DSC enabled for the requested mode.
>  	 */
> -	pipe_config->pipe_bpp = pipe_bpp;
> +	pipe_config->pipe_bpp = max_dsc_pipe_bpp;
>  	pipe_config->port_clock = limits->max_rate;
>  	pipe_config->lane_count = limits->max_lane_count;
>  
> -- 
> 2.32.0
> 
