Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA8F643560
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 21:13:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0975510E299;
	Mon,  5 Dec 2022 20:13:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9B3F10E299
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 20:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670271178; x=1701807178;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uerQ+lAVt7mkaO8Dxg88aV59W/BeCNdLS6yDtGiq0TM=;
 b=ENx1KeynRzmbTcUMElqlr9q9ixiiOqbr+1TsUk820FXYEyCt+wanZml/
 W27Pq56/xxrApN2Ln18KINYiNg7+fwOz72OWAjsN8eD6NWAhaIhogHZOm
 n8auVenQf8bixyvKmtmUXwrlOE50S/ao/tnu2PlFo1z10tqwxZ8wO1tX5
 xHQxtX8JcKIEdq3vnjTdZ6mSyRSxX3A3iUFYzFdaBXxFfmTAqXiwIeONB
 miNuiv6IrcJG6OuM/PNQgXEmE/tq+W+VMjo69Mb6QZI4uInVdOwGc3Pzf
 4PNf++NZP3GUIZhTuWl86yZc0/Xgx5KuT16uvm9IsczWDPuHSEbDeGzHU A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="318314810"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="318314810"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 12:12:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="891107053"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="891107053"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.203])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 12:12:57 -0800
Date: Mon, 5 Dec 2022 12:13:09 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20221205201309.GA1208376@mdnavare-mobl1.jf.intel.com>
References: <20221202134412.21943-1-ville.syrjala@linux.intel.com>
 <20221202134412.21943-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221202134412.21943-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/vrr: Make registers latch in a
 consitent place on icl/tgl
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

On Fri, Dec 02, 2022 at 03:44:09PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Account for the framestart delay when calculating the "pipeline full"
> value for icl/tgl vrr. This puts the start of vblank (ie. where the
> double bufferd registers get latched) to a consistent place regardless
> of what framestart delay value is used. framestart delay does not
> change where start of vblank occurs in non-vrr mode and I can't see
> any reason why we'd want different behaviour in vrr mode.
> 
> Currently framestart delay is always set to 1, and the hardcoded 4
> scanlines in the code means we're currently delaying the start of
> vblank by three extra lines. And with framestart delay set to 4 we'd
> have no extra delay.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

So now basically if we want to delay the vblank, then we will need to
update framestart_delay to somethin other than 1.
Currently with framestart_delay = 1, there is no vblank delay, its just
vrr.vmin - vdisplay so the vblank start right after?

Is this the correct understanding?

Anyway, if this logic is validated to work then should be fine.
Basically this will only impact display <13, so as long as we dont
regress anything on TGL then we should be good.

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 13 ++-----------
>  1 file changed, 2 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 7b1357e82b69..6655dd2c1684 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -153,18 +153,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  		crtc_state->vrr.guardband =
>  			crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay;
>  	} else {
> -		/*
> -		 * FIXME: s/4/framestart_delay/ to get consistent
> -		 * earliest/latest points for register latching regardless
> -		 * of the framestart_delay used?
> -		 *
> -		 * FIXME: this really needs the extra scanline to provide consistent
> -		 * behaviour for all framestart_delay values. Otherwise with
> -		 * framestart_delay==4 we will end up extending the min vblank by
> -		 * one extra line.
> -		 */
>  		crtc_state->vrr.pipeline_full =
> -			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay - 4 - 1);
> +			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay -
> +			    crtc_state->framestart_delay - 1);
>  	}
>  
>  	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> -- 
> 2.37.4
> 
