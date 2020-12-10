Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F21AC2D5F11
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 16:09:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FB636EA8E;
	Thu, 10 Dec 2020 15:09:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE5926EA8E
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 15:09:02 +0000 (UTC)
IronPort-SDR: p1aa2uuw0aMO9dPhkxtke5MM3HjZSZEUcRyWwxVcahd7j96O1oShIWg17iOy33D9q+ldqNcn/F
 8WZiZzDne4fw==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="174412428"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="174412428"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 07:09:01 -0800
IronPort-SDR: VYBjECK7MLRyuetcYa/nSkXg+BcikBdz6xktSTzrPlFdRslMg0iFN3wHaYR7RzMC2edTf69HRQ
 tq3zQcdl5oRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="319409543"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 10 Dec 2020 07:08:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Dec 2020 17:08:58 +0200
Date: Thu, 10 Dec 2020 17:08:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <X9I6CtmnjTNy2R7Z@intel.com>
References: <20201210041755.29088-1-airlied@gmail.com>
 <20201210041755.29088-3-airlied@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210041755.29088-3-airlied@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/display: move
 to_intel_frontbuffer to header
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

On Thu, Dec 10, 2020 at 02:17:48PM +1000, Dave Airlie wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> This will be used for some refactoring in other files, so move it
> first.
> =

> Signed-off-by: Dave Airlie <airlied@redhat.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c       | 6 ------
>  drivers/gpu/drm/i915/display/intel_display_types.h | 6 ++++++
>  2 files changed, 6 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 80103211f407..62e22d832cab 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3611,12 +3611,6 @@ static void intel_plane_disable_noatomic(struct in=
tel_crtc *crtc,
>  	intel_disable_plane(plane, crtc_state);
>  }
>  =

> -static struct intel_frontbuffer *
> -to_intel_frontbuffer(struct drm_framebuffer *fb)
> -{
> -	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;
> -}
> -
>  static void
>  intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
>  			     struct intel_initial_plane_config *plane_config)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 8c4afad68a44..dfe573c8b5ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1805,4 +1805,10 @@ static inline u32 intel_plane_ggtt_offset(const st=
ruct intel_plane_state *state)
>  	return i915_ggtt_offset(state->vma);
>  }
>  =

> +static inline struct intel_frontbuffer *
> +to_intel_frontbuffer(struct drm_framebuffer *fb)
> +{
> +	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;
> +}
> +
>  #endif /*  __INTEL_DISPLAY_TYPES_H__ */
> -- =

> 2.27.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
