Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0391C2B6A03
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 17:29:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DB7489F77;
	Tue, 17 Nov 2020 16:29:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D52A089F19
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 16:29:54 +0000 (UTC)
IronPort-SDR: Exb+7M1lKV99AuaRz2GadpN84qjby6+krdS7/kMP32P5FcZbkdk1o0XiGanz71UbRRqEq3XgRs
 8DJqGsSmi05A==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="150228903"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="150228903"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 08:29:54 -0800
IronPort-SDR: 1hwZ85gOzqmCKmRrdzCI68J2BjpSHWxe8Krbrm3J0cum5rzd2BmXj+gNII3x0/8+PPCeh8G+Ss
 vtftZIw7Y0Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="368144099"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 17 Nov 2020 08:29:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Nov 2020 18:29:50 +0200
Date: Tue, 17 Nov 2020 18:29:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <20201117162950.GG6112@intel.com>
References: <20201116135913.20782-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201116135913.20782-1-shawn.c.lee@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/lspcon: enter standby mode to
 enhance power saving
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 16, 2020 at 09:59:13PM +0800, Lee Shawn C wrote:
> After system boot up, LSPCON will be configured as PCON mode.
> But it never go into power saving state. Source driver can
> do the following. Then LSPCON can enter standby mode
> automatically to save more power.
> =

> 1. At PCON mode, source driver write 0x2 to DPCD 600h.
> 2. At LS mode, try to disable DP_DUAL_MODE_TMDS_OEN.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 7 ++++++-
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 8 ++++++++
>  drivers/gpu/drm/i915/display/intel_lspcon.h | 1 +
>  3 files changed, 15 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index ec8359f03aaf..7dd16d6bd5ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6536,6 +6536,7 @@ intel_dp_detect(struct drm_connector *connector,
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
>  	struct intel_dp *intel_dp =3D intel_attached_dp(to_intel_connector(conn=
ector));
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	struct intel_lspcon *lspcon =3D dp_to_lspcon(intel_dp);
>  	struct intel_encoder *encoder =3D &dig_port->base;
>  	enum drm_connector_status status;
>  =

> @@ -6632,9 +6633,13 @@ intel_dp_detect(struct drm_connector *connector,
>  	intel_dp_check_service_irq(intel_dp);
>  =

>  out:
> -	if (status !=3D connector_status_connected && !intel_dp->is_mst)
> +	if (status !=3D connector_status_connected && !intel_dp->is_mst) {
>  		intel_dp_unset_edid(intel_dp);
>  =

> +		if (lspcon && lspcon->active)
> +			lspcon_standby(dp_to_dig_port(intel_dp));

We should proably just do this for all DP devices. But I'm not sure if
we can just do it uncoditionally like this. We should perhaps first check
that the connector is not in use. So doing this sort of stuff as part
of the normal init/resume sanitization process might be the better option.

> +	}
> +
>  	/*
>  	 * Make sure the refs for power wells enabled during detect are
>  	 * dropped to avoid a new detect cycle triggered by HPD polling.
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index e37d45e531df..4913ff20d7b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -550,6 +550,14 @@ static bool lspcon_init(struct intel_digital_port *d=
ig_port)
>  	return true;
>  }
>  =

> +void lspcon_standby(struct intel_digital_port *dig_port)
> +{
> +	struct intel_dp *dp =3D &dig_port->dp;
> +
> +	if (drm_dp_dpcd_writeb(&dp->aux, DP_SET_POWER, DP_SET_POWER_D3) <=3D 0)
> +		DRM_DEBUG_KMS("Failed to write EDID checksum\n");

Eh?

> +}
> +
>  void lspcon_resume(struct intel_digital_port *dig_port)
>  {
>  	struct intel_lspcon *lspcon =3D &dig_port->lspcon;
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/dr=
m/i915/display/intel_lspcon.h
> index b03dcb7076d8..658a2e5b22db 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> @@ -16,6 +16,7 @@ struct intel_encoder;
>  struct intel_lspcon;
>  =

>  void lspcon_resume(struct intel_digital_port *dig_port);
> +void lspcon_standby(struct intel_digital_port *dig_port);
>  void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
>  void lspcon_write_infoframe(struct intel_encoder *encoder,
>  			    const struct intel_crtc_state *crtc_state,
> -- =

> 2.17.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
