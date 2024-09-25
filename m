Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6249855D3
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 10:48:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCB0D10E7CC;
	Wed, 25 Sep 2024 08:48:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kZ/1p5/i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FF0B10E7CC;
 Wed, 25 Sep 2024 08:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727254098; x=1758790098;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=FAcNzIrdLOsfUhH4+Fk6qzG2qe0hhL14R7S4IrWd6m0=;
 b=kZ/1p5/it6fjp2THGbOh3gco+JKhKMN6YQbTtp0mLQMmK5TLG2md0d8I
 L9V7YANoRg0dqZr1Jx+GhGPIBPT13aDGUJuYVTiugdCRgdaSMc8V8/Wf5
 bWL9HBZf2mGWrrgXCiGKAjjBNIBHsSGEpLIRrGLqVPEAC4/DlZRQInyhE
 lVplBIqIh5rlJEdO0qjqlQs7cgnm5joFV/zZj4Ibv2FfcNlqtwxn5dZ3C
 PAafZkwjD8XnP3fIIbyz9DbBz3UUmQDjIqyHHIv8Agz1w+bchOKNx58Xi
 2NrkDapsnRYLgfihdcN5ZGuNvro5cUt7SXORRN6ytw4NdwWMkEbFZ4VkK A==;
X-CSE-ConnectionGUID: wCaqDDlATsy4SNtkk5Tt2g==
X-CSE-MsgGUID: 6VpGV5fWT3iNcCLgLXE/dA==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="30079339"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="30079339"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 01:48:18 -0700
X-CSE-ConnectionGUID: pbcZfBfdT3+bF9cT4IVESg==
X-CSE-MsgGUID: qykcfqIESgCopI5kXrVroA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="71787939"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.16])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 01:48:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>, Srikanth V NagaVenkata
 <nagavenkata.srikanth.v@intel.com>, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCHv3 2/3] drm/i915/dp: read Aux RD interval just before
 setting the FFE preset
In-Reply-To: <20240925034432.1777029-3-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240925034432.1777029-1-arun.r.murthy@intel.com>
 <20240925034432.1777029-3-arun.r.murthy@intel.com>
Date: Wed, 25 Sep 2024 11:48:11 +0300
Message-ID: <874j643yr8.fsf@intel.com>
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

On Wed, 25 Sep 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> Figure 3-52: 128b132b DP DPTC LANEx_CHANNEL_EQ_DONE Sequence of
> DP2.1a spec.
> After reading LANEx_CHANNEL_EQ_DONE, read the FFE presets.
> AUX_RD_INTERVAL and then write the new FFE presets.

Nope. That's just not what the figure has.

> Co-developed-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_link_training.c  | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index f41b69840ad9..1bac00e46533 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1419,12 +1419,6 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
>  	for (try = 0; try < max_tries; try++) {
>  		fsleep(delay_us);
>  
> -		/*
> -		 * The delay may get updated. The transmitter shall read the
> -		 * delay before link status during link training.
> -		 */
> -		delay_us = drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
> -
>  		if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status) < 0) {
>  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link status\n");
>  			return false;
> @@ -1451,8 +1445,14 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
>  		if (time_after(jiffies, deadline))
>  			timeout = true; /* try one last time after deadline */
>  
> -		/* Update signal levels and training set as requested. */
>  		intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX, link_status);
> +		/*
> +		 * During LT, Tx shall read AUX_RD_INTERVAL just before writing the new FFE
> +		 * presets.
> +		 */
> +		delay_us = drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);

I said this should be put *above* intel_dp_get_adjust_train(), and you
agreed. There was even a patch to that effect, and that's what I thought
we were going by.

It's both logical and per spec to keep the TX FFE PRESET read and write
together, and AUX RD INTERVAL read *before* them.

Where does the spec say, "read AUX_RD_INTERVAL just before writing the
new FFE presets"? I don't think it does.

The box in figure 3-52 has:

- Read AUX_RD_INTERVAL value

- Adjust the TX_FFE_PRESET_VALUE setting as requested by a
  DPRX/LTTPR_UFP

The "as requested by" part involves reading TX FFE PRESET to know what
the DPRX requested.

I don't see anything wrong in the original comment, just the placement
of the read.

There have been a multitude of different patches with random version
numbers with no changelog and I don't even know what I'm supposed to be
reviewing anymore.

BR,
Jani.


> +
> +		/* Update signal levels and training set as requested. */
>  		if (!intel_dp_update_link_train(intel_dp, crtc_state, DP_PHY_DPRX)) {
>  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to update TX FFE settings\n");
>  			return false;

-- 
Jani Nikula, Intel
