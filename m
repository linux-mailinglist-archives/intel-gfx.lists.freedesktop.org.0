Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF222B5B9F
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 10:18:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3D756E150;
	Tue, 17 Nov 2020 09:18:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA8326E150
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 09:18:23 +0000 (UTC)
IronPort-SDR: RAzmgwhd0WtfYwOTyOm/jQ/U9ycB4RvwugLstgLwWeRP+QheFpr9KD9L1mfbX0YeS9BJHWiYHR
 t60KeDRl21vQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="170991898"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="170991898"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 01:18:22 -0800
IronPort-SDR: z7FCosD3Apd7vf2nfq2O+jsIp11qvJEhUKKfsKMLeMBVD8uJcuJRchhO2LCaX4eIsRYsmcNOJi
 LtQ4VZvCkwhw==
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="475853060"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 01:18:20 -0800
Date: Tue, 17 Nov 2020 11:19:00 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201117091900.GA30333@intel.com>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
 <20201113220358.24794-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201113220358.24794-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 01/23] drm/i915: Copy the plane hw state
 directly for Y planes
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

On Sat, Nov 14, 2020 at 12:03:36AM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> When doing the plane state copy from the UV plane to the Y plane
> let's just copy the hw state directly instead of using the original
> uapi state. The UV plane has already had its uapi state copied into
> its hw state, so this extra detour via the uapi state for the Y plane
> is pointless.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 12 ++++++++++++
>  drivers/gpu/drm/i915/display/intel_atomic_plane.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_display.c      |  2 +-
>  3 files changed, 15 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index 3334ff253600..f47558efb3c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -265,6 +265,18 @@ void intel_plane_copy_uapi_to_hw_state(struct intel_=
plane_state *plane_state,
>  	plane_state->hw.scaling_filter =3D from_plane_state->uapi.scaling_filte=
r;
>  }
>  =

> +void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
> +			       const struct intel_plane_state *from_plane_state)
> +{
> +	intel_plane_clear_hw_state(plane_state);
> +
> +	memcpy(&plane_state->hw, &from_plane_state->hw,
> +	       sizeof(plane_state->hw));
> +
> +	if (plane_state->hw.fb)
> +		drm_framebuffer_get(plane_state->hw.fb);
> +}
> +
>  void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
>  			       struct intel_plane_state *plane_state)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.h
> index 59dd1fbb02ea..24a3a148aa62 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -25,6 +25,8 @@ unsigned int intel_plane_data_rate(const struct intel_c=
rtc_state *crtc_state,
>  				   const struct intel_plane_state *plane_state);
>  void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_s=
tate,
>  				       const struct intel_plane_state *from_plane_state);
> +void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
> +			       const struct intel_plane_state *from_plane_state);
>  void intel_update_plane(struct intel_plane *plane,
>  			const struct intel_crtc_state *crtc_state,
>  			const struct intel_plane_state *plane_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 03577ee5d9b7..62d96e6946e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -12754,7 +12754,7 @@ static int icl_check_nv12_planes(struct intel_crt=
c_state *crtc_state)
>  		memcpy(linked_state->color_plane, plane_state->color_plane,
>  		       sizeof(linked_state->color_plane));
>  =

> -		intel_plane_copy_uapi_to_hw_state(linked_state, plane_state);
> +		intel_plane_copy_hw_state(linked_state, plane_state);
>  		linked_state->uapi.src =3D plane_state->uapi.src;
>  		linked_state->uapi.dst =3D plane_state->uapi.dst;
>  =

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
