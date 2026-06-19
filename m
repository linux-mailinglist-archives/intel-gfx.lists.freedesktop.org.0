Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /I16DB+BNWo1yAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 19:49:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C306A74E0
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 19:49:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=Y2f7a2do;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=bootlin.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B62F510E0E0;
	Fri, 19 Jun 2026 17:49:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD5F510E10C;
 Fri, 19 Jun 2026 17:49:15 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-02.galae.net (Postfix) with ESMTPS id 374481A0106;
 Fri, 19 Jun 2026 17:49:14 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id F0FFC601B7;
 Fri, 19 Jun 2026 17:49:13 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 24D13106C81BC; 
 Fri, 19 Jun 2026 19:49:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1781891352; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=EcWQEfyndcVQ4O8u6JJ3iRTBsxvYF5kPlllHHSPe0M4=;
 b=Y2f7a2dojfShmm5ayybMiftPF+oIJHP2g2W5ToLaGoJ4n6yTNSwkUNg5izmHKQF6SYkeMG
 yHi/YcOu7iyOYSmPfhOsKORTKqc1LEZg6u4xM1ErPvdncIlw5My/rkedYa6Zdj1LAJmhnG
 hSR6hiXdUKYxu6EkvhLfkemaShh8KZJldAvAp1ifr7bi23gDfabjersMxRQTdgzYVi9xNU
 5hhw+tuuip9xPZC5hYIyjEYzIjJxfo03veVzZJQZTn73KFIlkxipK+S2l3ALJnCyxMdBAL
 9kxP6cCKVik5s2eBRbBtj7YbRSqJNBojsZl189ArNq+C7H1l7+V4rztAHVwRAw==
Date: Fri, 19 Jun 2026 19:49:03 +0200
From: Kory Maincent <kory.maincent@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Jani Nikula
 <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Andrzej Hajda <andrzej.hajda@intel.com>, Neil
 Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli
 <luca.ceresoli@bootlin.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Matthias Brugger
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Dmitry Baryshkov
 <lumag@kernel.org>, Daniel Stone <daniels@collabora.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Mark Yacoub
 <markyacoub@google.com>, Sean Paul <seanpaul@google.com>, Manasi Navare
 <navaremanasi@google.com>, Drew Davenport <ddavenport@google.com>, Louis
 Chauvet <louis.chauvet@bootlin.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH RFC v2 0/4] Add support for DisplayPort link training
 information report
Message-ID: <20260619194903.691023e9@kmaincent-XPS-13-7390>
In-Reply-To: <20260619-feat_link_cap-v2-0-a3dec4c02ad9@bootlin.com>
References: <20260619-feat_link_cap-v2-0-a3dec4c02ad9@bootlin.com>
Organization: bootlin
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,linaro.org,ideasonboard.com,kwiboo.se,bootlin.com,pengutronix.de,collabora.com];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 86C306A74E0

Hello

On Fri, 19 Jun 2026 16:08:42 +0200
Kory Maincent <kory.maincent@bootlin.com> wrote:

> DisplayPort link training negotiates the physical-layer parameters needed
> for a reliable connection: lane count, link rate, and optionally Display
> Stream Compression (DSC). Currently, each driver exposes this state in
> its own way, often through driver-specific debugfs entries, with no
> standard interface for userspace diagnostic and monitoring tools.
>=20
> This series introduces generic, managed and unmanaged DisplayPort
> connector initialization helpers, for exposing DP link capabilities and
> state as standard sysfs entries, modeled after the existing HDMI helper
> drmm_connector_hdmi_init().
>=20
> The aim of such development is to guide users to select the most suitable
> DisplayPort connector for their needs. For example, if you have a USB-C
> hub with lesser capabilities than your computer=E2=80=99s native DisplayP=
ort
> connector (such as HBR2 versus HBR3 support), the system could recommend
> connecting high-resolution displays directly to the computer=E2=80=99s po=
rt
> instead of through the hub to ensure optimal performance.
>=20
> These new drmm_connector_dp_init() and drm_connector_dp_init_with_ddc()
> helpers initialize a DP connector and expose link training capabilities
> and state to userspace via sysfs attributes under dp_link.
>=20
> Additional helpers are provided to manage link capabilities and parameters
> at runtime.
>=20
> Two drivers are updated as reference implementations: i915 (direct
> connector path) and MediaTek (via the bridge connector framework using a
> new DRM_BRIDGE_OP_DP flag).
>=20
> The changes updating the i915 driver to use DRM managed resources have be=
en
> removed due to cleanup path issues. The core problem is that some functio=
ns
> do not consistently propagate errors through their call paths (whether th=
is
> is intentional or not) making it difficult to properly handle cleanup of
> DRM objects (planes, encoders, connectors). A potential solution would be
> to implement something similar to devres_group for each DRM object type,
> but this represents a substantial undertaking that falls outside the scope
> of this patch series.
>=20
> The MST case in i915 driver is not supported yet.

I have seen and fixed the reviews from Sashiko.
I prefer to wait for human reviews about the core design before sending a v=
3, so
don't hesitate to look at the series. Mainly the first patch which tackle c=
ore
DRM changes.

Regards,
--=20
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com
