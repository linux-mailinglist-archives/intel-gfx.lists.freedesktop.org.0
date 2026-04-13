Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AD0ON6gu3mnxogkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 14:10:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 913623F9D2F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 14:10:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 623C810E5DF;
	Tue, 14 Apr 2026 12:10:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="wDi4rylp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4832C10E356;
 Mon, 13 Apr 2026 12:59:45 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-03.galae.net (Postfix) with ESMTPS id E7E274E42982;
 Mon, 13 Apr 2026 12:59:43 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id B42DE5FFB9;
 Mon, 13 Apr 2026 12:59:43 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 05B5810450229; 
 Mon, 13 Apr 2026 14:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1776085182; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=h3FUUOILacuSgM+ABHMGfQupbtWpVZVev0K7QR0S3PA=;
 b=wDi4rylprXYa5KvrF5XClhZwCqdBhIRvrj68umpv0rOZCRw+SHIMqqb9J6A5OlpXFegLXb
 1v1yWAis2ur92VlhEUydt8lyKrp3p55Mm8z+cYDV+L0hnrTR+erxW8efuL3L8dxN5VzCkr
 zU/YVxQzBaq+vUFYst8ScqPRT6rtP+1OJUU/axL3iUbwIQxAhQxyAuWdIIfxwRFUKKgp/6
 th235XxhexkP7slAiEV8kDSum6Qom6jTajuknHPdnSpgRF4Y9gRdntzSjMMsboitxLJD2v
 2oOiT4IQHWd8cguLrclzB4T7Rk0CCw8IEvepPTsgnrO/+IRlae+TSlDZSMjNuQ==
Date: Mon, 13 Apr 2026 14:59:30 +0200
From: Kory Maincent <kory.maincent@bootlin.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Joonas Lahtinen
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
Subject: Re: [PATCH RFC 09/12] drm: Introduce drmm_connector_dp_init() with
 link training state properties
Message-ID: <20260413145930.140ba461@kmaincent-XPS-13-7390>
In-Reply-To: <gmaxonri7y3k43pxsnxfnd23mydgrwsw2322v6m4yjoksqm7aj@4ehgvhzg2ubb>
References: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
 <20260409-feat_link_cap-v1-9-7069e8199ce2@bootlin.com>
 <gmaxonri7y3k43pxsnxfnd23mydgrwsw2322v6m4yjoksqm7aj@4ehgvhzg2ubb>
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
	RCPT_COUNT_TWELVE(0.00)[35];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,redhat.com,virtuousgeek.org,anholt.net,kernel.org,suse.de,linaro.org,ideasonboard.com,kwiboo.se,pengutronix.de,collabora.com,chris-wilson.co.uk,bootlin.com,google.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,bootlin.com:dkim,bootlin.com:url]
X-Rspamd-Queue-Id: 913623F9D2F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 10 Apr 2026 00:53:08 +0300
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> wrote:

> On Thu, Apr 09, 2026 at 07:08:25PM +0200, Kory Maincent wrote:
> > Add a managed DisplayPort connector initialization helper,
> > drmm_connector_dp_init(), modeled after the existing HDMI counterpart
> > drmm_connector_hdmi_init(). Cleanup is handled automatically via a
> > DRM-managed action.
> >=20
> > The helper creates the following immutable connector properties to expo=
se
> > DP link training capabilities and state to userspace:
> >=20
> >   - num_lanes: bitmask of supported lane counts (1, 2, 4)
> >   - link_rate: Array of supported link rates.
> >   - dsc_en: Display Stream Compression supported
> >   - voltage_swingN: per-lane voltage swing level bitmask
> >   - pre-emphasisN: per-lane pre-emphasis level bitmask
> >=20
> > Link rates are passed by the driver in deca-kbps, following the DRM
> > convention, but exposed to userspace in kbps for clarity.
> >=20
> > Two additional helpers are provided to update and reset those properties
> > at runtime:
> >   - drm_connector_dp_set_link_train_properties()
> >   - drm_connector_dp_reset_link_train_properties()
> >=20

...

> > +/**
> > + * struct drm_connector_dp_link_train - DRM DisplayPort link training
> > + * information report
> > + */
> > +struct drm_connector_dp_link_train { =20
>=20
> THese define the current DP state. As such, they definitely make sense
> to be a part of the drm_connector.
> > +	/**
> > +	 * @nlanes: The number of lanes used
> > +	 */
> > +	u8 nlanes;
> > +
> > +	/**
> > +	 * @rates: Link rate value selected in deca-kbps
> > +	 */
> > +	u32 rate;
> > +
> > +	/**
> > +	 * @dsc: Display Stream Compression enabled
> > +	 */
> > +	bool dsc_en;
> > +
> > +	/**
> > +	 * @v_swings: Array listing the bitmask voltage swing level per
> > lanes
> > +	 */
> > +	u8 v_swing[4];
> > +
> > +	/**
> > +	 * @pre_emph: Array listing the bitmask pre-emphasis level per
> > lanes
> > +	 */
> > +	u8 pre_emph[4]; =20
>=20
> Please consider following struct phy_configure_opts_dp (or using it as
> is). Overall, please refer the talk and (more important) the lightning
> resumee at this XDC. I have some bits and pieces ready in spite of that
> proposal, but I didn't have time to finish it.

I didn't know this phy_configure_opts_dp struct. This indeed could make sen=
se
to reuse and modify that structure for our needs.

About your XDC talk. What were the developments you were talking about? Cou=
ld I
have a look at them?

Regards,
--=20
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com
