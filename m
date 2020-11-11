Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 077FB2AFB8E
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 23:49:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 199CC89FEA;
	Wed, 11 Nov 2020 22:49:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6FB589FEA
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Nov 2020 22:49:30 +0000 (UTC)
IronPort-SDR: W5OPDzHdF7NrOom9fMTR/1gKHychFJ2EUEqzovjke4ei3CGldHDHvMBraQwb7cddhpXZBJ8tK6
 Q8221v5RTJXA==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="231850665"
X-IronPort-AV: E=Sophos;i="5.77,470,1596524400"; d="scan'208";a="231850665"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 14:49:30 -0800
IronPort-SDR: hDchX5zNhSveCS0kqvFBc5hbb21g5GnnJ2vtEzG1CMtqPtNdXvOStwtQO/YiFJH5VoZNHr627T
 Q7Wiz8enIgTQ==
X-IronPort-AV: E=Sophos;i="5.77,470,1596524400"; d="scan'208";a="328282587"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 14:49:30 -0800
Date: Wed, 11 Nov 2020 14:51:50 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201111225150.GA14371@labuser-Z97X-UD5H>
References: <20201106173042.7534-1-ville.syrjala@linux.intel.com>
 <20201106173042.7534-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201106173042.7534-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Pimp the watermark
 documentation a bit
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 06, 2020 at 07:30:39PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Document what each of the "raw" vs. "optimal" vs. "intermediate"
> watermarks do.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Looks good to me

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  .../drm/i915/display/intel_display_types.h    | 48 ++++++++++---------
>  1 file changed, 25 insertions(+), 23 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 6b249969c394..b977e70e34d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -737,25 +737,34 @@ struct g4x_wm_state {
>  =

>  struct intel_crtc_wm_state {
>  	union {
> +		/*
> +		 * raw:
> +		 * The "raw" watermark values produced by the formula
> +		 * given the plane's current state. They do not consider
> +		 * how much FIFO is actually allocated for each plane.
> +		 *
> +		 * optimal:
> +		 * The "optimal" watermark values given the current
> +		 * state of the planes and the amount of FIFO
> +		 * allocated to each, ignoring any previous state
> +		 * of the planes.
> +		 *
> +		 * intermediate:
> +		 * The "intermediate" watermark values when transitioning
> +		 * between the old and new "optimal" values. Used when
> +		 * the watermark registers are single buffered and hence
> +		 * their state changes asynchronously with regards to the
> +		 * actual plane registers. These are essentially the
> +		 * worst case combination of the old and new "optimal"
> +		 * watermarks, which are therefore safe to use when the
> +		 * plane is in either its old or new state.
> +		 */
>  		struct {
> -			/*
> -			 * Intermediate watermarks; these can be
> -			 * programmed immediately since they satisfy
> -			 * both the current configuration we're
> -			 * switching away from and the new
> -			 * configuration we're switching to.
> -			 */
>  			struct intel_pipe_wm intermediate;
> -
> -			/*
> -			 * Optimal watermarks, programmed post-vblank
> -			 * when this state is committed.
> -			 */
>  			struct intel_pipe_wm optimal;
>  		} ilk;
>  =

>  		struct {
> -			/* "raw" watermarks */
>  			struct skl_pipe_wm raw;
>  			/* gen9+ only needs 1-step wm programming */
>  			struct skl_pipe_wm optimal;
> @@ -765,22 +774,15 @@ struct intel_crtc_wm_state {
>  		} skl;
>  =

>  		struct {
> -			/* "raw" watermarks (not inverted) */
> -			struct g4x_pipe_wm raw[NUM_VLV_WM_LEVELS];
> -			/* intermediate watermarks (inverted) */
> -			struct vlv_wm_state intermediate;
> -			/* optimal watermarks (inverted) */
> -			struct vlv_wm_state optimal;
> -			/* display FIFO split */
> +			struct g4x_pipe_wm raw[NUM_VLV_WM_LEVELS]; /* not inverted */
> +			struct vlv_wm_state intermediate; /* inverted */
> +			struct vlv_wm_state optimal; /* inverted */
>  			struct vlv_fifo_state fifo_state;
>  		} vlv;
>  =

>  		struct {
> -			/* "raw" watermarks */
>  			struct g4x_pipe_wm raw[NUM_G4X_WM_LEVELS];
> -			/* intermediate watermarks */
>  			struct g4x_wm_state intermediate;
> -			/* optimal watermarks */
>  			struct g4x_wm_state optimal;
>  		} g4x;
>  	};
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
