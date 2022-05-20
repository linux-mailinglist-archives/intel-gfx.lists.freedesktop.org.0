Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EC552E644
	for <lists+intel-gfx@lfdr.de>; Fri, 20 May 2022 09:28:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2890F11AD50;
	Fri, 20 May 2022 07:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1BBB11AC2D
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 May 2022 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653031713; x=1684567713;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D2hcEaGqPbm/2AG+0XWFQAIZm7RVJi6hY6FrFhEbJtw=;
 b=ef1HJZadl2o6rvkm7JzjUkTH/nYI5053WtdpBkryscyALQf1nzgV8yxe
 yJlLdIrmoArqsIeZgeLDS3XExSnUqL6TLHoZIlPpDz38IKIrimsJVwFBe
 SntVbaoNTEdnsCDFMDK8flVMZTpQOFPFfcERo0+3XZpgeHBGR4ctMhKFJ
 78R2iRlcqIobjqiKCayWbb5Aa+hiiZ74BWJbm8MdpphcXxRfVwP0jHsZN
 ShCAUEJ38egX/Eu5TbFukD22ryUc2SAly0habqwIvDAI+gmpa8TxkfzbU
 nHiS0UwTVYIEQM3wi34XfqlNWS0Qh2lXMrvx0Pis5BKPBUL0Fmorhn0Dp w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10352"; a="253038409"
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="253038409"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2022 00:28:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="743365386"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 20 May 2022 00:28:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 20 May 2022 00:28:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 20 May 2022 00:28:31 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.2308.027;
 Fri, 20 May 2022 00:28:31 -0700
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v1 2/2] drm/i915: Reject the atomic modeset
 if an associated Type-C port is disconnected
Thread-Index: AQHYaQTzXwLlPdkwqEG7fOawjIhIF60huRWAgAJ0k8CAAlpRgP///4Ww
Date: Fri, 20 May 2022 07:28:31 +0000
Message-ID: <a0e6dca24e6a4b92b5870592aaeff05a@intel.com>
References: <20220516085402.3591249-1-vivek.kasireddy@intel.com>
 <20220516085402.3591249-3-vivek.kasireddy@intel.com>
 <YoIfQQLpeKnVHzEp@ideak-desk.fi.intel.com>
 <6117cb32773745e980bc02bfab96bb21@intel.com>
 <YoYnzRo6gbF416Ek@ideak-desk.fi.intel.com>
In-Reply-To: <YoYnzRo6gbF416Ek@ideak-desk.fi.intel.com>
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

> On Wed, May 18, 2022 at 10:04:14AM +0300, Kasireddy, Vivek wrote:
> > Hi Imre,
> >
> > > On Mon, May 16, 2022 at 01:54:02AM -0700, Vivek Kasireddy wrote:
> > > > Although, doing a modeset on any disconnected connector might be fu=
tile,
> > > > it can be particularly problematic if the connector is a Type-C por=
t
> > > > without a sink. And, the spec only says "Display software must not =
use
> > > > a disconnected port" while referring to the Type-C DDI seqeuence, i=
t does
> > > > not spell out what happens if such an attempt is made. Experimental=
 results
> > > > have shown that this can lead to serious issues including a system =
hang.
> > > > Therefore, reject the atomic modeset if we detect that the Type-C p=
ort
> > > > is not connected.
> > > >
> > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_atomic.c | 20 +++++++++++++++++=
+++
> > > >  1 file changed, 20 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > > index 40da7910f845..40576964b8c1 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > > @@ -114,6 +114,8 @@ int intel_digital_connector_atomic_set_property=
(struct
> > > drm_connector *connector,
> > > >  int intel_digital_connector_atomic_check(struct drm_connector *con=
n,
> > > >  					 struct drm_atomic_state *state)
> > > >  {
> > > > +	struct drm_device *dev =3D conn->dev;
> > > > +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > > >  	struct drm_connector_state *new_state =3D
> > > >  		drm_atomic_get_new_connector_state(state, conn);
> > > >  	struct intel_digital_connector_state *new_conn_state =3D
> > > > @@ -122,6 +124,10 @@ int intel_digital_connector_atomic_check(struc=
t
> > > drm_connector *conn,
> > > >  		drm_atomic_get_old_connector_state(state, conn);
> > > >  	struct intel_digital_connector_state *old_conn_state =3D
> > > >  		to_intel_digital_connector_state(old_state);
> > > > +	struct intel_encoder *encoder =3D
> > > > +		intel_attached_encoder(to_intel_connector(conn));
> > > > +	struct intel_digital_port *dig_port =3D
> > > > +		encoder ? enc_to_dig_port(encoder) : NULL;
> > > >  	struct drm_crtc_state *crtc_state;
> > > >
> > > >  	intel_hdcp_atomic_check(conn, old_state, new_state);
> > > > @@ -131,6 +137,20 @@ int intel_digital_connector_atomic_check(struc=
t
> drm_connector *conn,
> > > >
> > > >  	crtc_state =3D drm_atomic_get_new_crtc_state(state, new_state->cr=
tc);
> > > >
> > > > +	/*
> > > > +	 * The spec says that it is not safe to use a disconnected Type-C=
 port.
> > > > +	 * Therefore, check to see if this connector is connected and rej=
ect
> > > > +	 * the modeset if there is no sink detected.
> > > > +	 */
> > > > +	if (dig_port && !dig_port->connected(encoder) &&
> > >
> > > This check is racy, as right after dig_port->connected() returns true=
,
> > > the port can become disconnected.
> >
> > [Kasireddy, Vivek] Given that, do you think the only way to reliably de=
termine
> > if the Type-C port has a sink is to check the live status and ignore di=
g_port->tc_mode?
> >
> > If that is the case, should I just add a function pointer to dig_port t=
o call
> > tc_port_live_status_mask()? Or, should I just change intel_tc_port_conn=
ected()
> > to ignore dig_port->tc_mode like below:
> > @@ -764,8 +764,7 @@ bool intel_tc_port_connected(struct intel_encoder *=
encoder)
> >
> >         intel_tc_port_lock(dig_port);
> >
> > -       is_connected =3D tc_port_live_status_mask(dig_port) &
> > -                      BIT(dig_port->tc_mode);
> > +       is_connected =3D tc_port_live_status_mask(dig_port);
> >
> > Or, are there any other elegant ways that you can think of to determine=
 whether
> > a tc port has a sink or not?
>=20
> I meant that I don't think there is a way to prevent a modeset on a
> disconnected port.
But we need to find a way right given that the spec clearly states that the=
 driver
must not use or access (PHY/FIA registers of) a disconnected tc port.=20

> Live status is what provides the connected state, but
> it can change right after it is read out.
Does this change happen after giving up the ownership (in icl_tc_phy_discon=
nect)?
But shouldn't we distinguish between the cases where we are deliberately di=
sconnecting
the phy for power-savings reason vs when the port actually becomes disconne=
cted?
The port can still be considered connected in the former case right?

Under what other situations would the live status change or become unreliab=
le
after the port has a connected sink? And, since we rely on SDEISR to detect=
 the
live status for tc legacy ports, could this not be considered reliable?

Thanks,
Vivek

>=20
> > Thanks,
> > Vivek
> >
> > >
> > > > +	    intel_phy_is_tc(dev_priv,
> > > > +	    intel_port_to_phy(dev_priv, encoder->port))) {
> > > > +		drm_dbg_atomic(&dev_priv->drm,
> > > > +			       "[CONNECTOR:%d:%s] is not connected; rejecting the
> > > modeset\n",
> > > > +			       conn->base.id, conn->name);
> > > > +		return -EINVAL;
> > > > +	}
> > > > +
> > > >  	/*
> > > >  	 * These properties are handled by fastset, and might not end
> > > >  	 * up in a modeset.
> > > > --
> > > > 2.35.1
> > > >
