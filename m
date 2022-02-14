Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E68D4B48E4
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 11:05:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87FBB10E3B9;
	Mon, 14 Feb 2022 10:05:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBEB610E3B9
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 10:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644833120; x=1676369120;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IL3YihDfuvHQy2k7ONpPOfZoz5LYSI2xsdMMwC8NXdk=;
 b=BoysNoDMFHDeIqNRDVXnjSbOop1LOX2Aye5NIgGS7a5rRD12UwzaSapN
 IVOUVfu+gnh7pUlsiZ1FSeHovc2nWpw1DGRDKNoKla20V2q+y3KBPp8x9
 fU6p7HgTOoQ04JzyOJyL+E9UgOCpkZm5xHyCWtFap7MLqBqDVR4CzkN+Y
 rSruFomzb8q7nZwylhhIf+bDDd3A57k6EeD9r09Pku0oEunbDMcsUE2LW
 gcdYSXEqIQ8GH5gVRuysxbsnq/TMrVf3DX4aIV4uU+gmVnMnu64n0QezV
 1/uaHjP6mPRcTKdIyn6rwFmSfNI469wJnCm0Jng8vg1+bhhd/VRnySKgV w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="230695995"
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="230695995"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 02:05:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="635064689"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 02:05:18 -0800
Date: Mon, 14 Feb 2022 12:05:36 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220214100536.GB24878@intel.com>
References: <20220214091811.13725-1-ville.syrjala@linux.intel.com>
 <20220214091811.13725-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220214091811.13725-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Fix bw atomic check when
 switching between SAGV vs. no SAGV
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 14, 2022 at 11:18:07AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> If the only thing that is changing is SAGV vs. no SAGV but
> the number of active planes and the total data rates end up
> unchanged we currently bail out of intel_bw_atomic_check()
> early and forget to actually compute the new WGV point
> mask and thus won't actually enable/disable SAGV as requested.
> This ends up poorly if we end up running with SAGV enabled
> when we shouldn't. Usually ends up in underruns.
> To fix this let's go through the QGV point mask computation
> if anyone else already added the bw state for us.

Haven't been looking this in a while. Despite we have been
looking like few revisions together still some bugs :(

I thought SAGV vs No SAGV can't change if active planes 
or data rate didn't change? Because it means we probably
still have same ddb allocations, which means SAGV state
will just stay the same.

Stan

> 
> Cc: stable@vger.kernel.org
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Fixes: 20f505f22531 ("drm/i915: Restrict qgv points which don't have enough bandwidth.")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 23aa8e06de18..d72ccee7d53b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -846,6 +846,13 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  	if (num_psf_gv_points > 0)
>  		mask |= REG_GENMASK(num_psf_gv_points - 1, 0) << ADLS_PSF_PT_SHIFT;
>  
> +	/*
> +	 * If we already have the bw state then recompute everything
> +	 * even if pipe data_rate / active_planes didn't change.
> +	 * Other things (such as SAGV) may have changed.
> +	 */
> +	new_bw_state = intel_atomic_get_new_bw_state(state);
> +
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		unsigned int old_data_rate =
> -- 
> 2.34.1
> 
