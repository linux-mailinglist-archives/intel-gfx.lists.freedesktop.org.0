Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BE060FA93
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 16:39:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74C4110E657;
	Thu, 27 Oct 2022 14:39:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B77D10E657
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 14:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666881592; x=1698417592;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=U68yAmRdDbeopclea4MrNpT5//vNzAPsh/mRNap50ng=;
 b=VH00Gwhfaoi/6zlx0tgMpWM+jMdHOaGDUkubgEZwXVW1ytBdk0HTjuSv
 qSIM4mFMkrXHxMQHBcHbODkYBa3kpB/6rax4NimGhLNfqrntIsWFAEDXj
 l9iJFZ+IhVB8jfjqV9L4GxLBwiTh2FxzTcId8TuTA7+QoeNGm+o7DDG5z
 qnlPJZ0XafolQp4yy3JMhVk4kPjJ4x9kTyJViv1iYE8uG8mY+F0/LE3Gh
 3mvF3ZlTmsgCstlFK7/aAgifCp+Zq29n7/E6gI6Rk5iN3buqn4lM+JOeL
 F76P9eM7ASTzM97n5E+/pYklGukTB5v9GzbeYot3n7tip98ZzJnkTjh3f w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="394555576"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="394555576"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:37:14 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="634928495"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="634928495"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.147])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:37:12 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221026101134.20865-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
 <20221026101134.20865-4-ville.syrjala@linux.intel.com>
Date: Thu, 27 Oct 2022 17:37:08 +0300
Message-ID: <87mt9hcoyz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915/sdvo: Grab mode_config.mutex
 during LVDS init to avoid WARNs
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 26 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> drm_mode_probed_add() is unhappy about being called w/o
> mode_config.mutex. Grab it during LVDS fixed mode setup
> to silence the WARNs.
>
> Cc: stable@vger.kernel.org
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7301
> Fixes: aa2b88074a56 ("drm/i915/sdvo: Fix multi function encoder stuff")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index ccf81d616cb4..1eaaa7ec580e 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2899,8 +2899,12 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo=
, int device)
>  	intel_panel_add_vbt_sdvo_fixed_mode(intel_connector);
>=20=20
>  	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
> +		mutex_lock(&i915->drm.mode_config.mutex);
> +
>  		intel_ddc_get_modes(connector, &intel_sdvo->ddc);
>  		intel_panel_add_edid_fixed_modes(intel_connector, false);
> +
> +		mutex_unlock(&i915->drm.mode_config.mutex);
>  	}
>=20=20
>  	intel_panel_init(intel_connector);

--=20
Jani Nikula, Intel Open Source Graphics Center
