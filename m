Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 981C74D7EF2
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 10:47:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98FEB10E191;
	Mon, 14 Mar 2022 09:47:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36A1A10E191
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 09:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647251228; x=1678787228;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=S0HCnkStLYVtDmD7pPT5oTeeXrGjRr5EEpzxaSikjNs=;
 b=aCSN2KLX4oHRpUG6Xm1KGIyQ2RGP4RNvEKn9CINLI5cA84wvZtBs6p9i
 SkukHo9Vn8LmbL3Kj5Na/Vfm/X+605uQqo8iVEcQ8jHhhaIu4uN/RWUz8
 6z+cIeDFFG+ouCNaIgrx99Jo0hcQnQDVSONHjw4a4tYdZCumpFN4FOhxh
 NKXlgY2yBDKfA2sZnEBTTT/rMvI2A2j6cU32uiZGcbKBVwh5NYjgVcj3o
 bpNa9wQ+VL6S7RAuyYFTARVyvgWsWVo4QxcOVB80CKxKGObn77ldxP7Oi
 oq5dB8AetA24p/XAXBtEIrJBWlXUaTW8BSI3/JfQzKWclWdjoNWlZBb/B w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="316704740"
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="316704740"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 02:47:07 -0700
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="556336261"
Received: from vmanav-mobl.ger.corp.intel.com (HELO localhost) ([10.252.55.47])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 02:47:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220311172428.14685-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
 <20220311172428.14685-5-ville.syrjala@linux.intel.com>
Date: Mon, 14 Mar 2022 11:47:03 +0200
Message-ID: <878rtcx3vs.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 04/16] drm/i915: Simplify
 intel_panel_info()
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
> No need for all this connector type special casing. If the
> connector has a fixed mode just print it, otherwise don't.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 24 +++++++------------
>  1 file changed, 9 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 798bf233a60f..e511500ee26a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -544,11 +544,15 @@ static void intel_encoder_info(struct seq_file *m,
>  	drm_connector_list_iter_end(&conn_iter);
>  }
>=20=20
> -static void intel_panel_info(struct seq_file *m, struct intel_panel *pan=
el)
> +static void intel_panel_info(struct seq_file *m,
> +			     struct intel_connector *connector)
>  {
> -	const struct drm_display_mode *mode =3D panel->fixed_mode;
> +	const struct drm_display_mode *fixed_mode =3D connector->panel.fixed_mo=
de;
>=20=20
> -	seq_printf(m, "\tfixed mode: " DRM_MODE_FMT "\n", DRM_MODE_ARG(mode));
> +	if (!fixed_mode)
> +		return;
> +
> +	seq_printf(m, "\tfixed mode: " DRM_MODE_FMT "\n", DRM_MODE_ARG(fixed_mo=
de));
>  }
>=20=20
>  static void intel_hdcp_info(struct seq_file *m,
> @@ -586,8 +590,6 @@ static void intel_dp_info(struct seq_file *m,
>  	seq_printf(m, "\tDPCD rev: %x\n", intel_dp->dpcd[DP_DPCD_REV]);
>  	seq_printf(m, "\taudio support: %s\n",
>  		   str_yes_no(intel_dp->has_audio));
> -	if (intel_connector->base.connector_type =3D=3D DRM_MODE_CONNECTOR_eDP)
> -		intel_panel_info(m, &intel_connector->panel);
>=20=20
>  	drm_dp_downstream_debug(m, intel_dp->dpcd, intel_dp->downstream_ports,
>  				edid ? edid->data : NULL, &intel_dp->aux);
> @@ -611,12 +613,6 @@ static void intel_hdmi_info(struct seq_file *m,
>  		   str_yes_no(intel_hdmi->has_audio));
>  }
>=20=20
> -static void intel_lvds_info(struct seq_file *m,
> -			    struct intel_connector *intel_connector)
> -{
> -	intel_panel_info(m, &intel_connector->panel);
> -}
> -
>  static void intel_connector_info(struct seq_file *m,
>  				 struct drm_connector *connector)
>  {
> @@ -651,10 +647,6 @@ static void intel_connector_info(struct seq_file *m,
>  		else
>  			intel_dp_info(m, intel_connector);
>  		break;
> -	case DRM_MODE_CONNECTOR_LVDS:
> -		if (encoder->type =3D=3D INTEL_OUTPUT_LVDS)
> -			intel_lvds_info(m, intel_connector);
> -		break;
>  	case DRM_MODE_CONNECTOR_HDMIA:
>  		if (encoder->type =3D=3D INTEL_OUTPUT_HDMI ||
>  		    encoder->type =3D=3D INTEL_OUTPUT_DDI)
> @@ -667,6 +659,8 @@ static void intel_connector_info(struct seq_file *m,
>  	seq_puts(m, "\tHDCP version: ");
>  	intel_hdcp_info(m, intel_connector);
>=20=20
> +	intel_panel_info(m, intel_connector);
> +
>  	seq_printf(m, "\tmodes:\n");
>  	list_for_each_entry(mode, &connector->modes, head)
>  		intel_seq_print_mode(m, 2, mode);

--=20
Jani Nikula, Intel Open Source Graphics Center
