Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iP15DwadGWoOyAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 16:04:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E131B6033E8
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 16:04:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58E5E10FFA0;
	Fri, 29 May 2026 14:04:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="PzF0txoY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 033D610FF9D;
 Fri, 29 May 2026 14:04:50 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id BB16240B73;
 Fri, 29 May 2026 14:04:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E97FA1F00893;
 Fri, 29 May 2026 14:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1780063489;
 bh=uvb5N2t0ImORcoosIY39Tpj5MtrUeKYq4hi4uWxUSeU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=PzF0txoYlN14C5R/lIRWeNek2EP4bG+AH1WlPwfb072fXV3CLH6nq3c2LNyM5bl+x
 MPE8VuJmFglQF2ykVzaI+Q3QYY1oUXPPLMMWbYFrjrGjbnvxhmYmyRWVZBFK7QTKls
 9f1aEeJMylDnsegbfl3ejKp77Q+9FZutTFtSEIOjlyUevHQMsFJpETzJbtd98nsjMk
 CWQ7MkxmiivOJTUgd4ddF7VmVczKW3lXfh4AQPIJI0RADND+G+uavoXDjpUpiSNoRv
 JO76wQoVwSZR5UyLm6wnAap0vfnQfGgLjHimxMZdvzN92VqZbBfdyjElIwDI24AgyR
 XcAyoEiKW6k1Q==
Date: Fri, 29 May 2026 16:04:46 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Adrien Grassein <adrien.grassein@gmail.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Pengyu Luo <mitltlatltl@gmail.com>, Nikita Travkin <nikita@trvn.ru>, 
 Yongxing Mou <yongxing.mou@oss.qualcomm.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, 
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: Re: [PATCH RESEND v3 1/6] drm/connector: report IRQ_HPD events to
 drm_connector_oob_hotplug_event()
Message-ID: <20260529-screeching-rugged-shellfish-4dcde3@houat>
References: <20260513-hpd-irq-events-v3-0-086857017f16@oss.qualcomm.com>
 <20260513-hpd-irq-events-v3-1-086857017f16@oss.qualcomm.com>
 <20260521-funny-astonishing-mackerel-cc5a01@penduick>
 <vpd5hyote5wspmlpad64kf5peoy5g7wv6c7xjn6ammcmjtai7r@q2tarmr5aoqn>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="igbxyj2yvssgkryc"
Content-Disposition: inline
In-Reply-To: <vpd5hyote5wspmlpad64kf5peoy5g7wv6c7xjn6ammcmjtai7r@q2tarmr5aoqn>
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
X-Spamd-Result: default: False [-1.41 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[42];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[linux.intel.com,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,ursulin.net,baylibre.com,googlemail.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,trvn.ru,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: E131B6033E8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--igbxyj2yvssgkryc
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH RESEND v3 1/6] drm/connector: report IRQ_HPD events to
 drm_connector_oob_hotplug_event()
MIME-Version: 1.0

On Thu, May 21, 2026 at 03:05:11PM +0300, Dmitry Baryshkov wrote:
> On Thu, May 21, 2026 at 09:47:29AM +0200, Maxime Ripard wrote:
> > On Wed, May 13, 2026 at 09:23:21PM +0300, Dmitry Baryshkov wrote:
> > > The DisplayPort standard defines a special kind of events called IRQ.
> > > These events are used to notify DP Source about the events on the Sink
> > > side. It is extremely important for DP MST handling, where the MST
> > > events are reported through this IRQ.
> > >=20
> > > In case of the USB-C DP AltMode there is no actual HPD pulse, but the
> > > events are ported through the bits in the AltMode VDOs.
> > >=20
> > > Extend the drm_connector_oob_hotplug_event() interface and report IRQ
> > > events to the DisplayPort Sink drivers.
> > >=20
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > > ---
> > >  drivers/gpu/drm/drm_connector.c          |  5 ++++-
> > >  drivers/usb/typec/altmodes/displayport.c | 15 +++++++++++----
> > >  include/drm/drm_connector.h              | 19 ++++++++++++++++++-
> > >  3 files changed, 33 insertions(+), 6 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_co=
nnector.c
> > > index 47dc53c4a738..edee9daccd51 100644
> > > --- a/drivers/gpu/drm/drm_connector.c
> > > +++ b/drivers/gpu/drm/drm_connector.c
> > > @@ -3510,6 +3510,8 @@ struct drm_connector *drm_connector_find_by_fwn=
ode(struct fwnode_handle *fwnode)
> > >   * drm_connector_oob_hotplug_event - Report out-of-band hotplug even=
t to connector
> > >   * @connector_fwnode: fwnode_handle to report the event on
> > >   * @status: hot plug detect logical state
> > > + * @extra_status: additional information provided by the sink withou=
t changing
> > > + * the HPD state (or in addition to such a change).
> > >   *
> > >   * On some hardware a hotplug event notification may come from outsi=
de the display
> > >   * driver / device. An example of this is some USB Type-C setups whe=
re the hardware
> > > @@ -3520,7 +3522,8 @@ struct drm_connector *drm_connector_find_by_fwn=
ode(struct fwnode_handle *fwnode)
> > >   * a drm_connector reference through calling drm_connector_find_by_f=
wnode().
> > >   */
> > >  void drm_connector_oob_hotplug_event(struct fwnode_handle *connector=
_fwnode,
> > > -				     enum drm_connector_status status)
> > > +				     enum drm_connector_status status,
> > > +				     enum drm_connector_status_extra extra_status)
> > >  {
> > >  	struct drm_connector *connector;
> > > =20
> > > diff --git a/drivers/usb/typec/altmodes/displayport.c b/drivers/usb/t=
ypec/altmodes/displayport.c
> > > index 35d9c3086990..7182a8e2e710 100644
> > > --- a/drivers/usb/typec/altmodes/displayport.c
> > > +++ b/drivers/usb/typec/altmodes/displayport.c
> > > @@ -189,7 +189,9 @@ static int dp_altmode_status_update(struct dp_alt=
mode *dp)
> > >  	} else {
> > >  		drm_connector_oob_hotplug_event(dp->connector_fwnode,
> > >  						hpd ? connector_status_connected :
> > > -						      connector_status_disconnected);
> > > +						      connector_status_disconnected,
> > > +						(hpd && irq_hpd) ? DRM_CONNECTOR_DP_IRQ_HPD :
> > > +								   DRM_CONNECTOR_NO_EXTRA_STATUS);
> >=20
> > Since the extra status itself, and what the options mean, are DP specif=
ic, do we really want to
> > extend drm_connector_oob_hotplug_event()? I think I'd prefer to have a =
DP specific variant, with its
> > own set of parameters.
>=20
> I can try arguing that drm_connector_oob_hotplug_event() is DP-specific,
> there are no other users for it, only the DP AltMode driver.
>=20
> Anyway, do you just mean new API here or new API and a new connector
> callback?

If drm_connector_oob_hotplug_event is truly only used for DP, then I
don't mind keeping it as is but we should make it more obvious and
document it, both in the function documentation, but also by having a
better name for the extra status. drm_connector_dp_oob_status maybe?

Maxime

--igbxyj2yvssgkryc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCahmc9AAKCRAnX84Zoj2+
djO+AX9GD3UDymFlG73wL8mTckVK3mCkw2t3NcDn6047apScJWb1XRrN+lO8trM6
73C+84cBfRq9ZR8HId0E6cdzLBqaHSBYmjoTlzIx0kiwM44c3apdybiB2SfFjOBv
SX2rCZoICg==
=Fbz6
-----END PGP SIGNATURE-----

--igbxyj2yvssgkryc--
