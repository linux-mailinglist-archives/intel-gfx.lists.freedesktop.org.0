Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0244852B2C4
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 09:04:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37D2710E8E8;
	Wed, 18 May 2022 07:04:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4C0910E8E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 07:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652857455; x=1684393455;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pxXkZGmPEHCYsTHmsTsaxn+pRGvuN0HvN0IibgkrlUo=;
 b=S9HCXGnO4xSxkl83gkanZjyqbvNFso5ZFRpZf1/UDL+dBSkDN7ubIKBr
 RAo/RGe8+R6HfjQN3rmwN24BMTo1ri66g0L3VlGhD2crcLZwX217eTiie
 iqERjrG+0GyMCIi6nTyqX/nvYBbxbbdWLamSRwwBrW8cq3AeOIkp29/GN
 OPcUhUH5hnXk3CWwmSqk/0prRKw/FTauOnAuiZwd07ycCDgEA32cBYmBZ
 PkXxz8tVtO1e+3pL9iZBoCOxWxnALgLznup5wn8SrECrvCXbsPP+jjF34
 8W2cPhVpi09CUZ5+l8MW4qnFadWYpotk+2vNz+YphdVNYqAizJrk+aO04 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="332135358"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="332135358"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 00:04:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="605747034"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga001.jf.intel.com with ESMTP; 18 May 2022 00:04:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 18 May 2022 00:04:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 18 May 2022 00:04:14 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.2308.027;
 Wed, 18 May 2022 00:04:14 -0700
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v1 2/2] drm/i915: Reject the atomic modeset
 if an associated Type-C port is disconnected
Thread-Index: AQHYaQTzXwLlPdkwqEG7fOawjIhIF60huRWAgAJ0k8A=
Date: Wed, 18 May 2022 07:04:14 +0000
Message-ID: <6117cb32773745e980bc02bfab96bb21@intel.com>
References: <20220516085402.3591249-1-vivek.kasireddy@intel.com>
 <20220516085402.3591249-3-vivek.kasireddy@intel.com>
 <YoIfQQLpeKnVHzEp@ideak-desk.fi.intel.com>
In-Reply-To: <YoIfQQLpeKnVHzEp@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Imre,

> On Mon, May 16, 2022 at 01:54:02AM -0700, Vivek Kasireddy wrote:
> > Although, doing a modeset on any disconnected connector might be futile=
,
> > it can be particularly problematic if the connector is a Type-C port
> > without a sink. And, the spec only says "Display software must not use
> > a disconnected port" while referring to the Type-C DDI seqeuence, it do=
es
> > not spell out what happens if such an attempt is made. Experimental res=
ults
> > have shown that this can lead to serious issues including a system hang=
.
> > Therefore, reject the atomic modeset if we detect that the Type-C port
> > is not connected.
> >
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_atomic.c | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c
> b/drivers/gpu/drm/i915/display/intel_atomic.c
> > index 40da7910f845..40576964b8c1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > @@ -114,6 +114,8 @@ int intel_digital_connector_atomic_set_property(str=
uct
> drm_connector *connector,
> >  int intel_digital_connector_atomic_check(struct drm_connector *conn,
> >  					 struct drm_atomic_state *state)
> >  {
> > +	struct drm_device *dev =3D conn->dev;
> > +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> >  	struct drm_connector_state *new_state =3D
> >  		drm_atomic_get_new_connector_state(state, conn);
> >  	struct intel_digital_connector_state *new_conn_state =3D
> > @@ -122,6 +124,10 @@ int intel_digital_connector_atomic_check(struct
> drm_connector *conn,
> >  		drm_atomic_get_old_connector_state(state, conn);
> >  	struct intel_digital_connector_state *old_conn_state =3D
> >  		to_intel_digital_connector_state(old_state);
> > +	struct intel_encoder *encoder =3D
> > +		intel_attached_encoder(to_intel_connector(conn));
> > +	struct intel_digital_port *dig_port =3D
> > +		encoder ? enc_to_dig_port(encoder) : NULL;
> >  	struct drm_crtc_state *crtc_state;
> >
> >  	intel_hdcp_atomic_check(conn, old_state, new_state);
> > @@ -131,6 +137,20 @@ int intel_digital_connector_atomic_check(struct
> drm_connector *conn,
> >
> >  	crtc_state =3D drm_atomic_get_new_crtc_state(state, new_state->crtc);
> >
> > +	/*
> > +	 * The spec says that it is not safe to use a disconnected Type-C por=
t.
> > +	 * Therefore, check to see if this connector is connected and reject
> > +	 * the modeset if there is no sink detected.
> > +	 */
> > +	if (dig_port && !dig_port->connected(encoder) &&
>=20
> This check is racy, as right after dig_port->connected() returns true,
> the port can become disconnected.
[Kasireddy, Vivek] Given that, do you think the only way to reliably determ=
ine
if the Type-C port has a sink is to check the live status and ignore dig_po=
rt->tc_mode?=20

If that is the case, should I just add a function pointer to dig_port to ca=
ll
tc_port_live_status_mask()? Or, should I just change intel_tc_port_connecte=
d()
to ignore dig_port->tc_mode like below:
@@ -764,8 +764,7 @@ bool intel_tc_port_connected(struct intel_encoder *enco=
der)

        intel_tc_port_lock(dig_port);

-       is_connected =3D tc_port_live_status_mask(dig_port) &
-                      BIT(dig_port->tc_mode);
+       is_connected =3D tc_port_live_status_mask(dig_port);

Or, are there any other elegant ways that you can think of to determine whe=
ther=20
a tc port has a sink or not?

Thanks,
Vivek

>=20
> > +	    intel_phy_is_tc(dev_priv,
> > +	    intel_port_to_phy(dev_priv, encoder->port))) {
> > +		drm_dbg_atomic(&dev_priv->drm,
> > +			       "[CONNECTOR:%d:%s] is not connected; rejecting the
> modeset\n",
> > +			       conn->base.id, conn->name);
> > +		return -EINVAL;
> > +	}
> > +
> >  	/*
> >  	 * These properties are handled by fastset, and might not end
> >  	 * up in a modeset.
> > --
> > 2.35.1
> >
