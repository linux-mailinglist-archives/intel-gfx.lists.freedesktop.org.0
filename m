Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 242CF199AA3
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 18:01:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B6406E85B;
	Tue, 31 Mar 2020 16:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E63F6E85B
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 16:01:10 +0000 (UTC)
IronPort-SDR: BCF5K1ySBvOZa9pt3pbYPJh4poSlIgMSlAH3RaLFIe/45tiJ59NYJQ6f4BxLRvv33o/V9IBW6l
 VanV4+ChqDtg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 09:01:09 -0700
IronPort-SDR: ufOYZFT6xI+TJgGSvHkgzIJKw3LB0Aw8xadP0dNi2V71NqPC9VNAI2js5iG4vGRZ29qWE/G4R5
 yhpmrcvK8Hbg==
X-IronPort-AV: E=Sophos;i="5.72,328,1580803200"; d="scan'208";a="422343972"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 09:01:08 -0700
Date: Tue, 31 Mar 2020 19:01:04 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200331160104.GC721@ideak-desk.fi.intel.com>
References: <20200324201429.29153-1-jose.souza@intel.com>
 <20200324201429.29153-6-jose.souza@intel.com>
 <20200328102624.GD12322@ideak-desk.fi.intel.com>
 <c2156b0cbebf8dbcd904ae5d6539d765d078f982.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c2156b0cbebf8dbcd904ae5d6539d765d078f982.camel@intel.com>
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kai.heng.feng@canonical.com" <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 30, 2020 at 11:27:06PM +0300, Souza, Jose wrote:
> On Sat, 2020-03-28 at 12:26 +0200, Imre Deak wrote:
> > On Tue, Mar 24, 2020 at 01:14:29PM -0700, Jos=E9 Roberto de Souza
> > wrote:
> > > As now the cost to lock and use a TC port is higher due the
> > > implementation of the TCCOLD sequences it is worty to hold a
> > > reference of the TC port to avoid all this locking at every
> > > aux transaction part of the DisplayPort detection.
> > =

> > The problem with locking the port for detection is that it would
> > block modesets on the port, which we should avoid. By blocking
> > tc-cold
> =

> It will not block modesets on the port, intel_tc_port_get_link and
> intel_tc_port_put_link gets locks tc_lock, increment or decrement
> tc_link_refcount and then unlock,

The effect of holding a link_refcount is that it's not possible to
update the TC port mode and select the correct TBT/MG PLL for the mode.
This will only be possible in the middle of the modeset sequence where
an active mode is first disabled on the port and that's the place we
don't want to wait for the detect sequence to finish.

So only an active mode should hold a link_refcount, so that it's
guaranteed that a modeset can update the TC port mode to its current
state.

> it would only avoid the TC cold sequences over and over.

Yes, but that would be also avoided by disabling the AUX power well only
with a delay.

>
> > whenever enabling an AUX power well you would avoid the overhead of
> > the
> > PCODE requests for each AUX transfer, since the AUX power refs are
> > dropped asynchronously with a delay.
> =

> Left comments on your proposal in patch 1.
> =

> > =

> > > Cc: Imre Deak <imre.deak@intel.com>
> > > Cc: Cooper Chiou <cooper.chiou@intel.com>
> > > Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 19 ++++++++++++++-----
> > >  1 file changed, 14 insertions(+), 5 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 7f1a4e55cda1..6fbf3beee544 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -6041,6 +6041,7 @@ intel_dp_detect(struct drm_connector
> > > *connector,
> > >  	struct intel_dp *intel_dp =3D
> > > intel_attached_dp(to_intel_connector(connector));
> > >  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> > >  	struct intel_encoder *encoder =3D &dig_port->base;
> > > +	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> > >  	enum drm_connector_status status;
> > >  =

> > >  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
> > > @@ -6049,12 +6050,17 @@ intel_dp_detect(struct drm_connector
> > > *connector,
> > >  		    !drm_modeset_is_locked(&dev_priv-
> > > >drm.mode_config.connection_mutex));
> > >  =

> > >  	/* Can't disconnect eDP */
> > > -	if (intel_dp_is_edp(intel_dp))
> > > +	if (intel_dp_is_edp(intel_dp)) {
> > >  		status =3D edp_detect(intel_dp);
> > > -	else if (intel_digital_port_connected(encoder))
> > > -		status =3D intel_dp_detect_dpcd(intel_dp);
> > > -	else
> > > -		status =3D connector_status_disconnected;
> > > +	} else {
> > > +		if (intel_phy_is_tc(dev_priv, phy))
> > > +			intel_tc_port_get_link(dig_port, 1);
> > > +
> > > +		if (intel_digital_port_connected(encoder))
> > > +			status =3D intel_dp_detect_dpcd(intel_dp);
> > > +		else
> > > +			status =3D connector_status_disconnected;
> > > +	}
> > >  =

> > >  	if (status =3D=3D connector_status_disconnected) {
> > >  		memset(&intel_dp->compliance, 0, sizeof(intel_dp-
> > > >compliance));
> > > @@ -6132,6 +6138,9 @@ intel_dp_detect(struct drm_connector
> > > *connector,
> > >  	if (status !=3D connector_status_connected && !intel_dp->is_mst)
> > >  		intel_dp_unset_edid(intel_dp);
> > >  =

> > > +	if (intel_phy_is_tc(dev_priv, phy))
> > > +		intel_tc_port_put_link(dig_port);
> > > +
> > >  	/*
> > >  	 * Make sure the refs for power wells enabled during detect are
> > >  	 * dropped to avoid a new detect cycle triggered by HPD
> > > polling.
> > > -- =

> > > 2.26.0
> > > =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
