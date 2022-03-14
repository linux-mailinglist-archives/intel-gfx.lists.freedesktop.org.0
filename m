Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD834D7F86
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 11:11:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB56310E265;
	Mon, 14 Mar 2022 10:11:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECED410E265
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 10:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647252667; x=1678788667;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=4DMbXCNqZx14/RDMa6BjG7rXDsSZAKkqCb+b2dxP7/Y=;
 b=QSnlVqHE7phTIsJjUijVG+uK/kovr3zA2opm2J00BWAUt4cAQpzi6RIa
 mCLIuYgoJkdO5HP7X/j1Be95UO9zp9ZIDZYNOcSfqtInalxE/3KQnxUdk
 NUOqP7RZOjL9vVtkcMzXfBWXPXLmatwosC1NJILmqz5e4e28g4Z66KqZt
 i0ZWPSWQJQzBjOLmWHvNzxxWv4nSbnFsgg7K8k10VDcVK4GSFL1J933Ir
 c+mT5kzWCht6fuNRWZ6HWubPMdvkXIip1e1eM2AFG3RlyF4hJyVbce9+A
 9yF5jQafLQfvhEYlNhZDHUDFqZczw3XHXIkhTn4cN1qwpt4AaveGtb0zG w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="235933137"
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="235933137"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 03:11:07 -0700
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="556344391"
Received: from vmanav-mobl.ger.corp.intel.com (HELO localhost) ([10.252.55.47])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 03:11:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220311172428.14685-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
 <20220311172428.14685-9-ville.syrjala@linux.intel.com>
Date: Mon, 14 Mar 2022 12:11:03 +0200
Message-ID: <87r174vo7c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 08/16] drm/i915: Introduce
 intel_panel_preferred_fixed_mode()
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

On Fri, 11 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> There are a couple of cases where we essentially just want to
> get/check the preferred fixed mode of the panel. Add a small
> helper for that to abstract away the direct pointer lookup.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c    | 3 ++-
>  drivers/gpu/drm/i915/display/intel_panel.c | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_panel.h | 2 ++
>  drivers/gpu/drm/i915/display/intel_sdvo.c  | 2 +-
>  4 files changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 3c97cd5853cc..2709a8c08cee 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -582,8 +582,9 @@ static bool intel_dp_can_link_train_fallback_for_edp(=
struct intel_dp *intel_dp,
>  						     int link_rate,
>  						     u8 lane_count)
>  {
> +	/* FIXME figure out what we actually want here */
>  	const struct drm_display_mode *fixed_mode =3D
> -		intel_dp->attached_connector->panel.fixed_mode;
> +		intel_panel_preferred_fixed_mode(intel_dp->attached_connector);
>  	int mode_rate, max_rate;
>=20=20
>  	mode_rate =3D intel_dp_link_required(fixed_mode->clock, 18);
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 222328d4e7a1..3ca37766ccb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -45,6 +45,12 @@ bool intel_panel_use_ssc(struct drm_i915_private *i915)
>  		&& !(i915->quirks & QUIRK_LVDS_SSC_DISABLE);
>  }
>=20=20
> +const struct drm_display_mode *
> +intel_panel_preferred_fixed_mode(struct intel_connector *connector)
> +{
> +	return connector->panel.fixed_mode;
> +}
> +
>  const struct drm_display_mode *
>  intel_panel_fixed_mode(struct intel_connector *connector,
>  		       const struct drm_display_mode *mode)
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm=
/i915/display/intel_panel.h
> index 051b86450156..88e6f5c217d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -25,6 +25,8 @@ enum drm_connector_status
>  intel_panel_detect(struct drm_connector *connector, bool force);
>  bool intel_panel_use_ssc(struct drm_i915_private *i915);
>  const struct drm_display_mode *
> +intel_panel_preferred_fixed_mode(struct intel_connector *connector);
> +const struct drm_display_mode *
>  intel_panel_fixed_mode(struct intel_connector *connector,
>  		       const struct drm_display_mode *mode);
>  const struct drm_display_mode *
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 04487b03b640..6e0a4f48d84d 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2932,7 +2932,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo,=
 int device)
>  		}
>  	}
>=20=20
> -	if (!intel_connector->panel.fixed_mode)
> +	if (!intel_panel_preferred_fixed_mode(intel_connector))
>  		goto err;
>=20=20
>  	return true;

--=20
Jani Nikula, Intel Open Source Graphics Center
