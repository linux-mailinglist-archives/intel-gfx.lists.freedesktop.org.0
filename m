Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8B829F0E4
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Oct 2020 17:13:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 966316E8C8;
	Thu, 29 Oct 2020 16:13:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B6556E8C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Oct 2020 16:13:43 +0000 (UTC)
IronPort-SDR: c4VOcMjiQyGZV1TPz23Vc5kcRS/z1QNKbt80jA/LtTupIdZf5gnRwZDd4dRos4ZKSuuL6P8HJE
 XodvoBzOkZTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="186250957"
X-IronPort-AV: E=Sophos;i="5.77,430,1596524400"; d="scan'208";a="186250957"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2020 09:12:42 -0700
IronPort-SDR: 5UCptCDZBhAkRIjX2VvtH9NQzhfnFb7eJR1igU13VPuulSN1nDthcaKVV9aTj1E5aC/rGG2MBX
 nL8Y1J+avY4A==
X-IronPort-AV: E=Sophos;i="5.77,430,1596524400"; d="scan'208";a="536725260"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2020 09:12:38 -0700
Date: Thu, 29 Oct 2020 18:12:34 +0200
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20201029161234.GA3795323@ideak-desk.fi.intel.com>
References: <20201028210712.66475-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201028210712.66475-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Force initial atomic check in all
 eDP panels
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 28, 2020 at 02:07:12PM -0700, Jos=E9 Roberto de Souza wrote:
> After commit 00e5deb5c4f5 ("drm/i915: Fix encoder lookup during PSR
> atomic check") dig_port was not being used but while fixing it I
> realized that would be better to mark all CRTCs that has a eDP
> connector as needing to have their state computed.
> The principal reason is that in future we will support PSR in
> multiple panels.
> And this is only forcing the state compute if no register change is
> need our atomic handling will just ignore this CRTC + connector
> during the atomic commit phase.
> =

> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 1576c3722d0b..b5441f0b5b58 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1875,17 +1875,11 @@ void intel_psr_atomic_check(struct drm_connector =
*connector,
>  			    struct drm_connector_state *new_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> -	struct intel_connector *intel_connector;

Arg, compiler didn't warn for this.

> -	struct intel_digital_port *dig_port;
>  	struct drm_crtc_state *crtc_state;
>  =

>  	if (!CAN_PSR(dev_priv) || !new_state->crtc ||
> -	    !dev_priv->psr.force_mode_changed)
> -		return;
> -
> -	intel_connector =3D to_intel_connector(connector);
> -	dig_port =3D enc_to_dig_port(to_intel_encoder(new_state->best_encoder));
> -	if (dev_priv->psr.dp !=3D &dig_port->dp)
> +	    !dev_priv->psr.force_mode_changed ||
> +	    connector->connector_type !=3D DRM_MODE_CONNECTOR_eDP)
>  		return;

Can't you simplify even more by an is_edp && CAN_PSR check in
intel_dp_initial_fastset_check() instead of the psr.force_mode_changed
logic?

>  =

>  	crtc_state =3D drm_atomic_get_new_crtc_state(new_state->state,
> -- =

> 2.29.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
