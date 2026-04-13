Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKufLqYu3mnxogkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 14:10:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F32F83F9D1A
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 14:10:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C84E10E422;
	Tue, 14 Apr 2026 12:10:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="syyNFaz4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76E9B10E450;
 Mon, 13 Apr 2026 12:34:17 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-02.galae.net (Postfix) with ESMTPS id A959C1A31E4;
 Mon, 13 Apr 2026 12:34:15 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 6D14A5FFB9;
 Mon, 13 Apr 2026 12:34:15 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 10AAC10450229; 
 Mon, 13 Apr 2026 14:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1776083654; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=W8Wq0XFDTnCET+9d1u1+KkWzNdxSiwKVtLFGfiPbxXY=;
 b=syyNFaz4M5CS3w/qw5wtQg2RUzkQnw7q8wpoWJoj2F/6PjYErOhqgA15EFQePTJFBA4UUF
 LSoYPrX+6nQZSqeG+B4U4C4xWZ1ulEKEh0Ey4sQyQWMzsQ6tAryHHJei5nGcYHXOoxDecC
 MEHdbtnzQcIZmpBy0guw4bo6EI9a3soHuL6Iia5wgs5TjoAu7fZyVJG+ga+5ODGi/+U2VG
 5Hif4ZnGHGfMoRaK7RFojvStP0nVD+NWuhg11+AM9pkSYzPTLZPJvgxhSIVupZBkt6H3R8
 zRfNZdNIdvMsN5cINpliwzzvjzglbX6zYtJZaEhq4n3qR6E/vUiX3TK/CIPkKw==
Date: Mon, 13 Apr 2026 14:34:02 +0200
From: Kory Maincent <kory.maincent@bootlin.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Dave
 Airlie <airlied@redhat.com>, Jesse Barnes <jbarnes@virtuousgeek.org>, Eric
 Anholt <eric@anholt.net>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Chun-Kuang Hu
 <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Matthias
 Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>, Mark Yacoub <markyacoub@google.com>, Sean
 Paul <seanpaul@google.com>, Louis Chauvet <louis.chauvet@bootlin.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Simona Vetter <simona.vetter@ffwll.ch>
Subject: Re: [PATCH RFC 10/12] drm/i915/display/dp: Adopt dp_connector
 helpers to expose link training state
Message-ID: <20260413143402.76f5c3c9@kmaincent-XPS-13-7390>
In-Reply-To: <e253ca4fa0b493032a7b35a0a20689b9d9e0c4e7@intel.com>
References: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
 <20260409-feat_link_cap-v1-10-7069e8199ce2@bootlin.com>
 <e253ca4fa0b493032a7b35a0a20689b9d9e0c4e7@intel.com>
Organization: bootlin
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Mailman-Approved-At: Tue, 14 Apr 2026 12:10:11 +0000
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,redhat.com,virtuousgeek.org,anholt.net,kernel.org,suse.de,linaro.org,ideasonboard.com,kwiboo.se,pengutronix.de,collabora.com,chris-wilson.co.uk,bootlin.com,google.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,bootlin.com:dkim,bootlin.com:email,bootlin.com:url]
X-Rspamd-Queue-Id: F32F83F9D1A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 10 Apr 2026 19:26:53 +0300
Jani Nikula <jani.nikula@linux.intel.com> wrote:

> On Thu, 09 Apr 2026, Kory Maincent <kory.maincent@bootlin.com> wrote:
> > Switch the i915 DP connector initialization from drmm_connector_init()
> > to drmm_connector_dp_init(), providing the source link capabilities
> > (supported lane counts, link rates, DSC support, voltage swing and
> > pre-emphasis levels).
> >
> > Add intel_dp_report_link_train() to collect the negotiated link
> > parameters (rate, lane count, DSC enable, per-lane voltage swing and
> > pre-emphasis) and report them via
> > drm_connector_dp_set_link_train_properties() once link training complet=
es
> > successfully.
> >
> > Reset the link training properties via
> > drm_connector_dp_reset_link_train_properties() when the connector is
> > reported as disconnected or when the display device is disabled, so
> > the exposed state always reflects the current link status.
> >
> > Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c            | 31
> > +++++++++++++++++++--- .../gpu/drm/i915/display/intel_dp_link_training.=
c  |
> > 25 +++++++++++++++++ 2 files changed, 52 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c index
> > 2af64de9c81de..641406bdc0cc9 100644 ---
> > a/drivers/gpu/drm/i915/display/intel_dp.c +++
> > b/drivers/gpu/drm/i915/display/intel_dp.c @@ -45,6 +45,7 @@
> >  #include <drm/display/drm_hdmi_helper.h>
> >  #include <drm/drm_atomic_helper.h>
> >  #include <drm/drm_crtc.h>
> > +#include <drm/drm_dp_connector.h>
> >  #include <drm/drm_edid.h>
> >  #include <drm/drm_fixed.h>
> >  #include <drm/drm_managed.h>
> > @@ -6337,8 +6338,10 @@ intel_dp_detect(struct drm_connector *_connector,
> >  	drm_WARN_ON(display->drm,
> >  		    !drm_modeset_is_locked(&display->drm->mode_config.connection_mut=
ex));
> > =20
> > -	if (!intel_display_device_enabled(display))
> > +	if (!intel_display_device_enabled(display)) {
> > +		drm_connector_dp_reset_link_train_properties(_connector);
> >  		return connector_status_disconnected;
> > +	}
> > =20
> >  	if (!intel_display_driver_check_access(display))
> >  		return connector->base.status;
> > @@ -6388,6 +6391,8 @@ intel_dp_detect(struct drm_connector *_connector,
> > =20
> >  		intel_dp_tunnel_disconnect(intel_dp);
> > =20
> > +		drm_connector_dp_reset_link_train_properties(_connector);
> > +
> >  		goto out_unset_edid;
> >  	}
> > =20
> > @@ -7162,10 +7167,12 @@ intel_dp_init_connector(struct intel_digital_po=
rt
> > *dig_port, struct intel_connector *connector)
> >  {
> >  	struct intel_display *display =3D to_intel_display(dig_port);
> > +	struct drm_connector_dp_link_train_caps link_caps;
> >  	struct intel_dp *intel_dp =3D &dig_port->dp;
> >  	struct intel_encoder *encoder =3D &dig_port->base;
> >  	struct drm_device *dev =3D encoder->base.dev;
> >  	enum port port =3D encoder->port;
> > +	u32 *rates;
> >  	int type;
> > =20
> >  	if (drm_WARN(dev, dig_port->max_lanes < 1,
> > @@ -7213,8 +7220,25 @@ intel_dp_init_connector(struct intel_digital_port
> > *dig_port, type =3D=3D DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
> >  		    encoder->base.base.id, encoder->base.name);
> > =20
> > -	drmm_connector_init(dev, &connector->base,
> > &intel_dp_connector_funcs,
> > -			    type, &intel_dp->aux.ddc);
> > +	intel_dp_set_source_rates(intel_dp);
> > +	link_caps.nlanes =3D DRM_DP_1LANE | DRM_DP_2LANE | DRM_DP_4LANE;
> > +	link_caps.nrates =3D intel_dp->num_source_rates;
> > +	rates =3D kzalloc_objs(*rates, intel_dp->num_source_rates);
> > +	if (!rates)
> > +		goto fail;
> > +
> > +	for (int i =3D 0; i < intel_dp->num_source_rates; i++)
> > +		rates[i] =3D intel_dp->source_rates[i];
> > +
> > +	link_caps.rates =3D rates;
> > +	link_caps.dsc =3D true; =20
>=20
> You have a source, you have a sink, and you have a link between the two.
>=20
> Source rates do not reflect the link rates common between source and
> sink.
>=20
> DSC depends on source and sink, and it's not statically "true" for
> either, and depends on a bunch of things.

At init, we are reporting the capabilities of the source. So we list every
link rates that the source can achieve and we report that the source is DSC
capable which it is IIUC the code. Or maybe I am missing something?

Regards,
--=20
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com
