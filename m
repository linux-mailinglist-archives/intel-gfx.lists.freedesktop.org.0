Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE01151C3B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 15:31:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 117B86E82E;
	Tue,  4 Feb 2020 14:31:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A53526E82E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 14:31:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 06:31:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="225518530"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 04 Feb 2020 06:30:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Feb 2020 16:30:57 +0200
Date: Tue, 4 Feb 2020 16:30:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200204143057.GO13686@intel.com>
References: <20200204112927.17391-1-anshuman.gupta@intel.com>
 <20200204112927.17391-6-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204112927.17391-6-anshuman.gupta@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: Get right max plane stride
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

On Tue, Feb 04, 2020 at 04:59:25PM +0530, Anshuman Gupta wrote:
> intel_plane_fb_max_stride should return the max stride of
> primary plane for first available pipe in intel device info
> pipe_mask.
> =

> changes since RFC:
> - Introduced a helper to get first intel_crtc intel_get_first_crtc. [Vill=
e]
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c       | 5 +++--
>  drivers/gpu/drm/i915/display/intel_display_types.h | 6 ++++++
>  2 files changed, 9 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 7c51eb3faeb3..0dcf400f6954 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2706,9 +2706,10 @@ u32 intel_plane_fb_max_stride(struct drm_i915_priv=
ate *dev_priv,
>  =

>  	/*
>  	 * We assume the primary plane for pipe A has
> -	 * the highest stride limits of them all.
> +	 * the highest stride limits of them all,
> +	 * if in case pipe A is disabled, use the first pipe from pipe_mask.
>  	 */
> -	crtc =3D intel_get_crtc_for_pipe(dev_priv, PIPE_A);
> +	crtc =3D intel_get_first_crtc(dev_priv);
>  	if (!crtc)
>  		return 0;
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 80a6460da852..1f295c89061a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1423,6 +1423,12 @@ vlv_pipe_to_channel(enum pipe pipe)
>  	}
>  }
>  =

> +static inline struct intel_crtc *
> +intel_get_first_crtc(struct drm_i915_private *dev_priv)
> +{
> +	return to_intel_crtc(drm_crtc_from_index(&dev_priv->drm, 0));
> +}
> +
>  static inline struct intel_crtc *
>  intel_get_crtc_for_pipe(struct drm_i915_private *dev_priv, enum pipe pip=
e)
>  {
> -- =

> 2.24.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
