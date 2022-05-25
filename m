Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A03533B60
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 13:11:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7070210EA93;
	Wed, 25 May 2022 11:11:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BFC610E952
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 11:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653477077; x=1685013077;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Ki1Tli2Kp5Fy4laxcv3Pxqs1ex3A5g3OeXfZ6e7x/Ys=;
 b=E+KPrFRSLohv3b/o102AMlo75xPk3XWWy+UhCC6jJlUJIz4Vxd9AjeVR
 6eQuldMi3W1L2LohOuPA9CLzkRHn5t3Rxv6WmfAQvzwZ1XLGnBkNn/5Cm
 tzLIKNUzgVSdXj9xGYclVfNI7bxf4jP0l17bMESljDqDmKXps+EkYvPBj
 vNdPAkgaZ2W2aKhnM3Mq37cpGJLT+TzOJURdHhPRKFlRqxcIz5a9vSz/4
 GtIBspbtjd2hmD7jztdtqUac6Dgr4K9uimDdgaeknr4WB149YyAs4q3w1
 EKJP0XjQ5LgmBvavY4/ok0/UlNcSgdnzXQY1Lknj6XwNGdMy6G0zBgD6U A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="254284435"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="254284435"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:11:16 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="703954849"
Received: from mwardyn-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.149.191])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:11:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-22-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-22-ville.syrjala@linux.intel.com>
Date: Wed, 25 May 2022 14:11:11 +0300
Message-ID: <87leupuasw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 21/26] drm/i915: Add
 intel_panel_highest_mode()
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add a function to get the fixed_mode with the highest clock.
> The plan is to use this for the link bw calculation on seamless
> DRRS panels so that we alwasy end up with the same link params
> regardless of the requested refresh rate. This will allow fastset
> to do seamless refresh rate changes based on userspace request
> instead of having to go for a full modeset.
>
> TODO: the function name isn't great

Agreed.

> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 15 +++++++++++++++
>  drivers/gpu/drm/i915/display/intel_panel.h |  3 +++
>  2 files changed, 18 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 03398feb6676..0121d38fc36c 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -89,6 +89,21 @@ intel_panel_downclock_mode(struct intel_connector *con=
nector,
>  	return best_mode;
>  }
>=20=20
> +const struct drm_display_mode *
> +intel_panel_highest_mode(struct intel_connector *connector,
> +			 const struct drm_display_mode *adjusted_mode)
> +{
> +	const struct drm_display_mode *fixed_mode, *best_mode =3D adjusted_mode;
> +
> +	/* pick the fixed_mode that has the highest clock */
> +	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
> +		if (fixed_mode->clock > best_mode->clock)
> +			best_mode =3D fixed_mode;
> +	}
> +
> +	return best_mode;
> +}
> +
>  int intel_panel_get_modes(struct intel_connector *connector)
>  {
>  	const struct drm_display_mode *fixed_mode;
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm=
/i915/display/intel_panel.h
> index 2e32bb728beb..8a3b84a53c44 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -31,6 +31,9 @@ intel_panel_fixed_mode(struct intel_connector *connecto=
r,
>  const struct drm_display_mode *
>  intel_panel_downclock_mode(struct intel_connector *connector,
>  			   const struct drm_display_mode *adjusted_mode);
> +const struct drm_display_mode *
> +intel_panel_highest_mode(struct intel_connector *connector,
> +			 const struct drm_display_mode *adjusted_mode);
>  int intel_panel_get_modes(struct intel_connector *connector);
>  enum drrs_type intel_panel_drrs_type(struct intel_connector *connector);
>  enum drm_mode_status

--=20
Jani Nikula, Intel Open Source Graphics Center
