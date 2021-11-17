Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B58454EDE
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 22:02:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B9166E85B;
	Wed, 17 Nov 2021 21:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEEA96E85B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 21:01:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="214773957"
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="214773957"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 13:01:43 -0800
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="495092112"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 13:01:42 -0800
Date: Wed, 17 Nov 2021 13:15:01 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20211117211501.GA633@labuser-Z97X-UD5H>
References: <20211117183103.27418-1-ville.syrjala@linux.intel.com>
 <20211117183103.27418-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211117183103.27418-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Fix framestart_delay commens
 in VRR code
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

On Wed, Nov 17, 2021 at 08:31:03PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Since I originally wrote these comments we decided to change our
> definition of framestart_delay from 0-3 to 1-4. Adjust the comments
> to match that new convention. The actual code was adjusted already.
> 
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index db1c3902fc2d..139e8936edc5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -60,7 +60,7 @@ intel_vrr_check_modeset(struct intel_atomic_state *state)
>   * Between those two points the vblank exit starts (and hence registers get
>   * latched) ASAP after a push is sent.
>   *
> - * framestart_delay is programmable 0-3.
> + * framestart_delay is programmable 1-4.
>   */
>  static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_state)
>  {
> @@ -138,13 +138,13 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			i915->window2_delay;
>  	else
>  		/*
> -		 * FIXME: s/4/framestart_delay+1/ to get consistent
> +		 * FIXME: s/4/framestart_delay/ to get consistent
>  		 * earliest/latest points for register latching regardless
>  		 * of the framestart_delay used?
>  		 *
>  		 * FIXME: this really needs the extra scanline to provide consistent
>  		 * behaviour for all framestart_delay values. Otherwise with
> -		 * framestart_delay==3 we will end up extending the min vblank by
> +		 * framestart_delay==4 we will end up extending the min vblank by
>  		 * one extra line.
>  		 */
>  		crtc_state->vrr.pipeline_full =
> -- 
> 2.32.0
> 
