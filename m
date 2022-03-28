Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F504E94BB
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 13:31:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F38710E5A3;
	Mon, 28 Mar 2022 11:30:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C376710E18D
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 11:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648467057; x=1680003057;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=w3Y6dVqwZXLeyRm28DHqKWk/icCKwTa1SHTPt1hsdH4=;
 b=f8CONnnAgEu3J3Gl1tY3sAyqf93YTVVZEabOZbM+JcfKWUHpCGKlp3L/
 Gd0AYaZfFimtWKCuIbFUBlfpnteiDUo3LSUJ5VSSOuuooiKyDW9r+HEP5
 xeEbkt3xePICPlEAEibbql9alhpGIoZ1+ct9/ShS4QXNNqOgiGbwu+Ox7
 y/foLwGgbMBnNNHtepWK9+v2wMgGkiNSNONcrf9HrCWXAn5fygYLw6Kfz
 9tnK8tynKdRDZ+od52zcCjvMv/RQpyAavr8r8HHfSoUCKwaj8ZtgOQY64
 BYUKylti7qhK1+jhGZWCEpXl03bjAk+e0Su0hksrPZXTxOkzqBmfeuTjz Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="322161166"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="322161166"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:30:57 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="545924179"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:30:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220323182935.4701-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
 <20220323182935.4701-6-ville.syrjala@linux.intel.com>
Date: Mon, 28 Mar 2022 14:30:47 +0300
Message-ID: <87tubie2l4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915: Rename
 intel_panel_vbt_fixed_mode()
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

On Wed, 23 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Rename intel_panel_vbt_fixed_mode() to
> intel_panel_vbt_lfp_fixed_mode() to be more descriptive.
> We'll have another VBT fixed mode function soon and we
> don't want to confuse the two.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Never really been thrilled about the lfp acronym, but *shrug*.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c     | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c    | 2 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c  | 2 +-
>  drivers/gpu/drm/i915/display/intel_panel.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_panel.h | 2 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c     | 2 +-
>  6 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index b4fda29b04b5..44f4c65522b9 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -2050,7 +2050,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>  	intel_connector_attach_encoder(intel_connector, encoder);
>=20=20
>  	mutex_lock(&dev->mode_config.mutex);
> -	fixed_mode =3D intel_panel_vbt_fixed_mode(intel_connector);
> +	fixed_mode =3D intel_panel_vbt_lfp_fixed_mode(intel_connector);
>  	mutex_unlock(&dev->mode_config.mutex);
>=20=20
>  	if (!fixed_mode) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index d62123b9d0d3..e882a04a4cb1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5055,7 +5055,7 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>=20=20
>  	/* fallback to VBT if available for eDP */
>  	if (!fixed_mode)
> -		fixed_mode =3D intel_panel_vbt_fixed_mode(intel_connector);
> +		fixed_mode =3D intel_panel_vbt_lfp_fixed_mode(intel_connector);
>  	mutex_unlock(&dev->mode_config.mutex);
>=20=20
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index d068e0607153..c3f017c3740c 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -974,7 +974,7 @@ void intel_lvds_init(struct drm_i915_private *dev_pri=
v)
>  		goto out;
>=20=20
>  	/* Failed to get EDID, what about VBT? */
> -	fixed_mode =3D intel_panel_vbt_fixed_mode(intel_connector);
> +	fixed_mode =3D intel_panel_vbt_lfp_fixed_mode(intel_connector);
>  	if (fixed_mode)
>  		goto out;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 2ba51222d156..bd606d0b1c24 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -246,7 +246,7 @@ intel_panel_edid_fixed_mode(struct intel_connector *c=
onnector)
>  }
>=20=20
>  struct drm_display_mode *
> -intel_panel_vbt_fixed_mode(struct intel_connector *connector)
> +intel_panel_vbt_lfp_fixed_mode(struct intel_connector *connector)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
>  	struct drm_display_info *info =3D &connector->base.display_info;
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm=
/i915/display/intel_panel.h
> index 579200270825..9704ac81fe3e 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -47,6 +47,6 @@ intel_panel_edid_downclock_mode(struct intel_connector =
*connector,
>  struct drm_display_mode *
>  intel_panel_edid_fixed_mode(struct intel_connector *connector);
>  struct drm_display_mode *
> -intel_panel_vbt_fixed_mode(struct intel_connector *connector);
> +intel_panel_vbt_lfp_fixed_mode(struct intel_connector *connector);
>=20=20
>  #endif /* __INTEL_PANEL_H__ */
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index da0af425ed94..dc43cb8ecb86 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1980,7 +1980,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  	intel_connector_attach_encoder(intel_connector, intel_encoder);
>=20=20
>  	mutex_lock(&dev->mode_config.mutex);
> -	fixed_mode =3D intel_panel_vbt_fixed_mode(intel_connector);
> +	fixed_mode =3D intel_panel_vbt_lfp_fixed_mode(intel_connector);
>  	mutex_unlock(&dev->mode_config.mutex);
>=20=20
>  	if (!fixed_mode) {

--=20
Jani Nikula, Intel Open Source Graphics Center
