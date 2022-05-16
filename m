Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCC45280F9
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 11:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 567E5112483;
	Mon, 16 May 2022 09:43:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59656112483
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 09:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652694183; x=1684230183;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=p4J0LYe5pCBZ4MPCyouhQApCZIVs8fbPQZXd3/4DyZY=;
 b=N1mm+QuI+zU9CGgubA9uTavPoatJctkQ5XTh0/0PChJnZua0Md4ResRf
 n1PDNwDVZ+HVNb6HvmJVQ3FH8I2ADlhDrxJ+1U3LyvciowCkkfsGTY1rY
 ur26e/Zz42jaz/o3EP4noGqxmfyFo2G6XP/TYWH2nw4IqgxP3Y9EVxydz
 uX5rMZBZN7LmNwFql/eVRNK7n7bXiu+EAjGCvc8jP5uxF53eWi3umHMzy
 n+EZvz8BNOPN+r/qFNaVGL5pUUCxXtzSwNBZyGarYydASGdrp4QwEz/dc
 DMgVnS4bz7gHsSEsprbwWiTUZ4ie1UM8t3XS4v20S302gXwHNIz5k50P3 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="258353456"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="258353456"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 02:42:59 -0700
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="741163219"
Received: from jrozansk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.130.253])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 02:42:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220516085402.3591249-3-vivek.kasireddy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220516085402.3591249-1-vivek.kasireddy@intel.com>
 <20220516085402.3591249-3-vivek.kasireddy@intel.com>
Date: Mon, 16 May 2022 12:42:55 +0300
Message-ID: <87ilq5hkyo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v1 2/2] drm/i915: Reject the atomic modeset
 if an associated Type-C port is disconnected
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

On Mon, 16 May 2022, Vivek Kasireddy <vivek.kasireddy@intel.com> wrote:
> Although, doing a modeset on any disconnected connector might be futile,
> it can be particularly problematic if the connector is a Type-C port
> without a sink. And, the spec only says "Display software must not use
> a disconnected port" while referring to the Type-C DDI seqeuence, it does
> not spell out what happens if such an attempt is made. Experimental resul=
ts
> have shown that this can lead to serious issues including a system hang.
> Therefore, reject the atomic modeset if we detect that the Type-C port
> is not connected.
>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index 40da7910f845..40576964b8c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -114,6 +114,8 @@ int intel_digital_connector_atomic_set_property(struc=
t drm_connector *connector,
>  int intel_digital_connector_atomic_check(struct drm_connector *conn,
>  					 struct drm_atomic_state *state)
>  {
> +	struct drm_device *dev =3D conn->dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);

Please replace the above two with:

	struct drm_i915_private *i915 =3D to_i915(conn->dev);

Please don't add drm_device local vars, and please name new struct
drm_i915_private pointers i915.

BR,
Jani.

>  	struct drm_connector_state *new_state =3D
>  		drm_atomic_get_new_connector_state(state, conn);
>  	struct intel_digital_connector_state *new_conn_state =3D
> @@ -122,6 +124,10 @@ int intel_digital_connector_atomic_check(struct drm_=
connector *conn,
>  		drm_atomic_get_old_connector_state(state, conn);
>  	struct intel_digital_connector_state *old_conn_state =3D
>  		to_intel_digital_connector_state(old_state);
> +	struct intel_encoder *encoder =3D
> +		intel_attached_encoder(to_intel_connector(conn));
> +	struct intel_digital_port *dig_port =3D
> +		encoder ? enc_to_dig_port(encoder) : NULL;
>  	struct drm_crtc_state *crtc_state;
>=20=20
>  	intel_hdcp_atomic_check(conn, old_state, new_state);
> @@ -131,6 +137,20 @@ int intel_digital_connector_atomic_check(struct drm_=
connector *conn,
>=20=20
>  	crtc_state =3D drm_atomic_get_new_crtc_state(state, new_state->crtc);
>=20=20
> +	/*
> +	 * The spec says that it is not safe to use a disconnected Type-C port.
> +	 * Therefore, check to see if this connector is connected and reject
> +	 * the modeset if there is no sink detected.
> +	 */
> +	if (dig_port && !dig_port->connected(encoder) &&
> +	    intel_phy_is_tc(dev_priv,
> +	    intel_port_to_phy(dev_priv, encoder->port))) {
> +		drm_dbg_atomic(&dev_priv->drm,
> +			       "[CONNECTOR:%d:%s] is not connected; rejecting the modeset\n",
> +			       conn->base.id, conn->name);
> +		return -EINVAL;
> +	}
> +
>  	/*
>  	 * These properties are handled by fastset, and might not end
>  	 * up in a modeset.

--=20
Jani Nikula, Intel Open Source Graphics Center
