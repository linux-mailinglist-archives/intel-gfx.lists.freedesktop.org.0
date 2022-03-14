Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 566514D7EEE
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 10:44:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D23710E28A;
	Mon, 14 Mar 2022 09:44:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 239DB10E1FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 09:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647251092; x=1678787092;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=2SuogBJGnf6+NW08vaqh5TqoQ+guXcHfijl18+SKE0M=;
 b=CUO3wrom32Qz+cvVdYMX7tv714ziCMbl82Y6xBuOap5ZSL2RmLnB0dgc
 xMyDkieZkU75LDFaqIwKgZ8nU0ULRYe2G8WS9oYWE4YXl97mXs29JRgOO
 5RaOZISxICGbmMJYd0RoPABnVYhXbDsc7UhQMx5LJqQvMa2FYXDI0J5ta
 VlZam9YB5/bgYARTaaPiLFbLeQOYQCYI7HEmlQoe8ZSbWkLqvjUgRJ71s
 /ajumBRai4dCccmRdQqSj8t65e60rdSeGY5ITfkmZLQRNavYQDltQarXe
 4kQr5TK5e5Q176CKfa3FVMx/t8Xteh+1WJ8asNCGoNfboAKSe6Q5ndzDC Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="280740494"
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="280740494"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 02:44:51 -0700
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="539895893"
Received: from vmanav-mobl.ger.corp.intel.com (HELO localhost) ([10.252.55.47])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 02:44:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220311172428.14685-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
 <20220311172428.14685-4-ville.syrjala@linux.intel.com>
Date: Mon, 14 Mar 2022 11:44:47 +0200
Message-ID: <87bky8x3zk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 03/16] drm/i915/lvds: Pass fixed_mode to
 compute_is_dual_link_lvds()
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
> We want to eventually get rid of the connector->panel.fixed_mode
> pointer so avoid using it during LVDS setup. Since this all
> happens during the encoder init we already have the fixed_mode
> around, just pass that in.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_lvds.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index 9fced37bed70..dd7292d3c88e 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -784,7 +784,8 @@ bool intel_is_dual_link_lvds(struct drm_i915_private =
*dev_priv)
>  	return encoder && to_lvds_encoder(&encoder->base)->is_dual_link;
>  }
>=20=20
> -static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_en=
coder)
> +static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_en=
coder,
> +				      const struct drm_display_mode *fixed_mode)
>  {
>  	struct drm_device *dev =3D lvds_encoder->base.base.dev;
>  	unsigned int val;
> @@ -795,7 +796,7 @@ static bool compute_is_dual_link_lvds(struct intel_lv=
ds_encoder *lvds_encoder)
>  		return dev_priv->params.lvds_channel_mode =3D=3D 2;
>=20=20
>  	/* single channel LVDS is limited to 112 MHz */
> -	if (lvds_encoder->attached_connector->panel.fixed_mode->clock > 112999)
> +	if (fixed_mode->clock > 112999)
>  		return true;
>=20=20
>  	if (dmi_check_system(intel_dual_link_lvds))
> @@ -1004,7 +1005,7 @@ void intel_lvds_init(struct drm_i915_private *dev_p=
riv)
>  	intel_panel_init(&intel_connector->panel, fixed_mode, downclock_mode);
>  	intel_backlight_setup(intel_connector, INVALID_PIPE);
>=20=20
> -	lvds_encoder->is_dual_link =3D compute_is_dual_link_lvds(lvds_encoder);
> +	lvds_encoder->is_dual_link =3D compute_is_dual_link_lvds(lvds_encoder, =
fixed_mode);
>  	drm_dbg_kms(&dev_priv->drm, "detected %s-link lvds configuration\n",
>  		    lvds_encoder->is_dual_link ? "dual" : "single");

--=20
Jani Nikula, Intel Open Source Graphics Center
