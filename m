Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4BE5FD519
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 08:46:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2771A10E1BF;
	Thu, 13 Oct 2022 06:46:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEEDA10E1BF
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 06:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665643583; x=1697179583;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=AWRfyE6SGb+ezmpAcxGgz0XFAbC6pnEQegP4uE4G5Xc=;
 b=nj7xlRVhyPzS6nKaRxUzfpec0wSmJQiGFZA8QsO6t05eesRIznE5h0HV
 goI/wSVF4cQjPIOkPl7qVu9Ra6x29GPvk8L3mgco8QGyreGGJJz1hYHNL
 cdKekVErvm3bMcQvAl/YXz32DqWMrtFOiYjohyXHhxLwFKGlzK0ijpsj4
 T6urhq/DE/7gKFF+/FPlNrIdIzBtcLwogbhLTj6dIecnTHkG00vd4ro3p
 vie/QP65AyuIfkMlxwRj7Mb27gkfU6M4yXxTVRvRqRB11fn/KQWVIgqq4
 Adf+62fpm/67Fmw77gBDit2EVtDAO/9DNAk/+PC8rc+3JFRFF/KlQxxkT w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="366994727"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="366994727"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 23:46:22 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="622044868"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="622044868"
Received: from ndenisov-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.197])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 23:46:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221006225413.27731-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221006225413.27731-1-ville.syrjala@linux.intel.com>
Date: Thu, 13 Oct 2022 09:46:27 +0300
Message-ID: <8735bste4c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Allow panel fixed modes to have
 differing sync polarities
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

On Fri, 07 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Apparently some panels declare multiple modes with random
> sync polarities. Seems a bit weird, but looks like Windows/GOP
> doesn't care, so let follow suit and accept alternate fixed
> modes regardless of their sync polarities.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6968
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 2b4b359b8342..fdeb1cd608c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -82,12 +82,16 @@ static bool is_alt_drrs_mode(const struct drm_display=
_mode *mode,
>  		mode->clock !=3D preferred_mode->clock;
>  }
>=20=20
> +#define DRM_MODE_FLAG_SYNC_MASK (DRM_MODE_FLAG_PHSYNC | \
> +				 DRM_MODE_FLAG_NHSYNC | \
> +				 DRM_MODE_FLAG_PVSYNC | \
> +				 DRM_MODE_FLAG_NVSYNC)

Maybe not the best to name the macro in the DRM_MODE_* "namespace"?

Other than that,

Acked-by: Jani Nikula <jani.nikula@intel.com>


> +
>  static bool is_alt_fixed_mode(const struct drm_display_mode *mode,
>  			      const struct drm_display_mode *preferred_mode)
>  {
> -	return drm_mode_match(mode, preferred_mode,
> -			      DRM_MODE_MATCH_FLAGS |
> -			      DRM_MODE_MATCH_3D_FLAGS) &&
> +	return (mode->flags & ~DRM_MODE_FLAG_SYNC_MASK) =3D=3D
> +		(preferred_mode->flags & ~DRM_MODE_FLAG_SYNC_MASK) &&
>  		mode->hdisplay =3D=3D preferred_mode->hdisplay &&
>  		mode->vdisplay =3D=3D preferred_mode->vdisplay;
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
