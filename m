Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D3D148B36
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 16:24:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE1AD72AE8;
	Fri, 24 Jan 2020 15:24:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86D6C72AE8
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 15:24:45 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 07:19:30 -0800
X-IronPort-AV: E=Sophos;i="5.70,358,1574150400"; d="scan'208";a="221047513"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 07:19:29 -0800
Date: Fri, 24 Jan 2020 17:19:23 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200124151923.GE32347@ideak-desk.fi.intel.com>
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
 <20200120174728.21095-13-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120174728.21095-13-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 12/17] drm/i915: Move
 intel_atomic_state_free() into intel_atomic.c
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 20, 2020 at 07:47:22PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Move intel_atomic_state_free() next to its counterpart.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

Some exported functions in this file are missing documentation.

> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c  | 11 +++++++++++
>  drivers/gpu/drm/i915/display/intel_atomic.h  |  1 +
>  drivers/gpu/drm/i915/display/intel_display.c | 11 -----------
>  3 files changed, 12 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index 1269f63ea006..1c13423d4945 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -495,6 +495,17 @@ intel_atomic_state_alloc(struct drm_device *dev)
>  	return &state->base;
>  }
>  =

> +void intel_atomic_state_free(struct drm_atomic_state *_state)
> +{
> +	struct intel_atomic_state *state =3D to_intel_atomic_state(_state);
> +
> +	drm_atomic_state_default_release(&state->base);
> +
> +	i915_sw_fence_fini(&state->commit_ready);
> +
> +	kfree(state);
> +}
> +
>  void intel_atomic_state_clear(struct drm_atomic_state *s)
>  {
>  	struct intel_atomic_state *state =3D to_intel_atomic_state(s);
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/dr=
m/i915/display/intel_atomic.h
> index 74c749dbfb4f..88133eea0a17 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
> @@ -45,6 +45,7 @@ void intel_crtc_destroy_state(struct drm_crtc *crtc,
>  void intel_crtc_free_hw_state(struct intel_crtc_state *crtc_state);
>  void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state);
>  struct drm_atomic_state *intel_atomic_state_alloc(struct drm_device *dev=
);
> +void intel_atomic_state_free(struct drm_atomic_state *state);
>  void intel_atomic_state_clear(struct drm_atomic_state *state);
>  =

>  struct intel_crtc_state *
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 63efb8f9c669..3b725764bdcd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -17116,17 +17116,6 @@ intel_user_framebuffer_create(struct drm_device =
*dev,
>  	return fb;
>  }
>  =

> -static void intel_atomic_state_free(struct drm_atomic_state *state)
> -{
> -	struct intel_atomic_state *intel_state =3D to_intel_atomic_state(state);
> -
> -	drm_atomic_state_default_release(state);
> -
> -	i915_sw_fence_fini(&intel_state->commit_ready);
> -
> -	kfree(state);
> -}
> -
>  static enum drm_mode_status
>  intel_mode_valid(struct drm_device *dev,
>  		 const struct drm_display_mode *mode)
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
