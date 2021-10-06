Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B7C424197
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 17:44:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AC396E527;
	Wed,  6 Oct 2021 15:44:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90B3B6E527
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 15:44:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="206833993"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="206833993"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 08:44:34 -0700
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="522272758"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 08:44:32 -0700
Date: Wed, 6 Oct 2021 18:44:29 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20211006154429.GA3025323@ideak-desk.fi.intel.com>
References: <20211004170535.4173-1-ville.syrjala@linux.intel.com>
 <20211004170535.4173-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211004170535.4173-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/5] drm/i915: Tweak the DP "max vswing
 reached?" condition
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

On Mon, Oct 04, 2021 at 08:05:31PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Currently we consider the max vswing reached when we transmit a
> the max voltage level, but we don't consider pre-emphasis at all.
> This kinda matches older DP specs that only had some vague text
> about transmitting the maximum voltage swing. Latest versions
> now say something vague about consider the sum of the vswing
> and pre-emphasis fields in the ADJUST_REQUEST_LANE registers.
> Very vague, and super confusing especially the fact that it
> talks about transmitted voltgage swing in the same sentence
> as it say to look at the requested values.
> 
> Also glanced at the link CTS spec, and that one seems to have
> tests that assume contradicting behaviour. Some say to consider
> just the vswing level we transmit, others say to check for
> sum of transmitted vswing+preemph being 3.
> 
> So let's try to take some kind of sane middle ground here.
> I think what could make sense is only consider max vswing
> reached if MAX_SWING_REACHED==1 _and_ vswing+preemph==3.
> That will allow things to go all the way up to vswing 3 +
> pre-emph 0 or vswing 2 + pre-emph 1, depending on what
> the maximum supported vswing is. Only considering the sum
> of vswing+pre-emph doesn't make much sense to me since
> we could terminate too early if the sink requests eg.
> vswing 0 + pre-emph 3. And if we'd stick to the current
> code we could terminate too early of the sink asks for
> vswing 2 + pre-emph 0 when vswing level 3 is not supported.
> 
> Side note: I don't really understand why any of this stuff is
> "specified" at all. There is already a limit of 5 attempts at
> the same vswing+pre-emph level, and a total limit of 10
> attempts. So might as well stick to the same max 5 attempts
> across the board IMO.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  .../drm/i915/display/intel_dp_link_training.c | 22 ++++++++++++++++---
>  1 file changed, 19 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index c052ce14894d..a45569b8c959 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -492,11 +492,27 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
>  {
>  	int lane;
>  
> -	for (lane = 0; lane < crtc_state->lane_count; lane++)
> -		if ((intel_dp->train_set[lane] &
> -		     DP_TRAIN_MAX_SWING_REACHED) == 0)
> +	/*
> +	 * FIXME: The DP spec is very confusing here, also the Link CTS
> +	 * spec seems to have self contradicting tests around this area.
> +	 *
> +	 * In lieu of better ideas let's just stop when we've reached the
> +	 * max supported vswing with its max pre-emphasis, which is either
> +	 * 2+1 or 3+0 depending on whether vswing level 3 is supported or not.
> +	 */
> +	for (lane = 0; lane < crtc_state->lane_count; lane++) {
> +		u8 v = (intel_dp->train_set[lane] & DP_TRAIN_VOLTAGE_SWING_MASK) >>
> +			DP_TRAIN_VOLTAGE_SWING_SHIFT;
> +		u8 p = (intel_dp->train_set[lane] & DP_TRAIN_PRE_EMPHASIS_MASK) >>
> +			DP_TRAIN_PRE_EMPHASIS_SHIFT;
> +
> +		if ((intel_dp->train_set[lane] & DP_TRAIN_MAX_SWING_REACHED) == 0)
>  			return false;
>  
> +		if (v + p != 3)
> +			return false;
> +	}
> +
>  	return true;
>  }
>  
> -- 
> 2.32.0
> 
