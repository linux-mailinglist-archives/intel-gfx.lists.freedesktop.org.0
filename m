Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC0C196508
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2020 11:27:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7612D6EACF;
	Sat, 28 Mar 2020 10:27:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E14D6EACF
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Mar 2020 10:27:30 +0000 (UTC)
IronPort-SDR: ew/+S5L/0G7/wNboxTn8DSIGXySNF06KWI2UbBtl6K3JwUUtl6ELHsDh9Z5+tCOAf6h2oIVlfg
 ddCR6pXhk+tw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2020 03:27:30 -0700
IronPort-SDR: H3dj2nfgczmVNmSvNwmA/dx+caJCzQuSaX4VjpT2+E8ZZxxcUfbR6EOQjgOtRgGOGzXNATuBrZ
 pNUpL0lmMw5A==
X-IronPort-AV: E=Sophos;i="5.72,316,1580803200"; d="scan'208";a="241176911"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2020 03:27:28 -0700
Date: Sat, 28 Mar 2020 12:26:24 +0200
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200328102624.GD12322@ideak-desk.fi.intel.com>
References: <20200324201429.29153-1-jose.souza@intel.com>
 <20200324201429.29153-6-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324201429.29153-6-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 6/6] drm/i915/dp: Get TC link reference
 during DP detection
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
Reply-To: imre.deak@intel.com
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 24, 2020 at 01:14:29PM -0700, Jos=E9 Roberto de Souza wrote:
> As now the cost to lock and use a TC port is higher due the
> implementation of the TCCOLD sequences it is worty to hold a reference
> of the TC port to avoid all this locking at every aux transaction
> part of the DisplayPort detection.

The problem with locking the port for detection is that it would block
modesets on the port, which we should avoid. By blocking tc-cold
whenever enabling an AUX power well you would avoid the overhead of the
PCODE requests for each AUX transfer, since the AUX power refs are
dropped asynchronously with a delay.

> =

> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 7f1a4e55cda1..6fbf3beee544 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6041,6 +6041,7 @@ intel_dp_detect(struct drm_connector *connector,
>  	struct intel_dp *intel_dp =3D intel_attached_dp(to_intel_connector(conn=
ector));
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>  	struct intel_encoder *encoder =3D &dig_port->base;
> +	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>  	enum drm_connector_status status;
>  =

>  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
> @@ -6049,12 +6050,17 @@ intel_dp_detect(struct drm_connector *connector,
>  		    !drm_modeset_is_locked(&dev_priv->drm.mode_config.connection_mutex=
));
>  =

>  	/* Can't disconnect eDP */
> -	if (intel_dp_is_edp(intel_dp))
> +	if (intel_dp_is_edp(intel_dp)) {
>  		status =3D edp_detect(intel_dp);
> -	else if (intel_digital_port_connected(encoder))
> -		status =3D intel_dp_detect_dpcd(intel_dp);
> -	else
> -		status =3D connector_status_disconnected;
> +	} else {
> +		if (intel_phy_is_tc(dev_priv, phy))
> +			intel_tc_port_get_link(dig_port, 1);
> +
> +		if (intel_digital_port_connected(encoder))
> +			status =3D intel_dp_detect_dpcd(intel_dp);
> +		else
> +			status =3D connector_status_disconnected;
> +	}
>  =

>  	if (status =3D=3D connector_status_disconnected) {
>  		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
> @@ -6132,6 +6138,9 @@ intel_dp_detect(struct drm_connector *connector,
>  	if (status !=3D connector_status_connected && !intel_dp->is_mst)
>  		intel_dp_unset_edid(intel_dp);
>  =

> +	if (intel_phy_is_tc(dev_priv, phy))
> +		intel_tc_port_put_link(dig_port);
> +
>  	/*
>  	 * Make sure the refs for power wells enabled during detect are
>  	 * dropped to avoid a new detect cycle triggered by HPD polling.
> -- =

> 2.26.0
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
