Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id K0+NN8pNKWreUQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 13:43:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A01B668E47
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 13:43:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b="jyo/yFGO";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8E7310E575;
	Wed, 10 Jun 2026 11:43:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59A3310E483;
 Wed, 10 Jun 2026 11:43:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1781091768; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=gzlZb4bSFV52eLdMUMh9PyeGOrd9EAvWXGBw2jHcFBez9EqYAjtGB/rBytbYZIUK6a12QL1SlCxeqoIPXF+WzqlsBu4n/yAbJwi+RR3V7M43DIuKsOYChbJdSZvXFNf59VpSiTkU1K1NG9Qnao5wVDw+LS7peRgWb4eELJ9H3pw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1781091768;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=KzcKfN/o2MeODUvVqRl2cwiGf5DJAZJN2X6vhvr6p0k=; 
 b=dJ1XCpFp3xrtGi+Xng/mVdtES2/WZzNzmFiiNSAVW0WLpjerZ5mPw4hJmgDxaiCDx2oY1WcDhdhgiDSBwTe+WCe6yc8iMLFSTotK51j39yI5I+WTHP8RqpoOw9PtS+AKiFxdXij/Cb/hasI2G+Nm6IpwGas9uD6xF7iz9dG0lZI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1781091768; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
 bh=KzcKfN/o2MeODUvVqRl2cwiGf5DJAZJN2X6vhvr6p0k=;
 b=jyo/yFGOjDLNt4JhkO14FnSIQsSy+FTdAqSukJAOK58KWAD816pk2Arn9Z7jNWXm
 WdMv4NJl+kvtBgFV37FFKH7qdVcXN7tUe3ggtGdVIHrpwK/bUoTr4UnAzKE2nvbl0G4
 jX7HgyRw1kEauHhxa6WUd4d+hzfrSqQKD9xSKqgk=
Received: by mx.zohomail.com with SMTPS id 1781091766388431.86406877104446;
 Wed, 10 Jun 2026 04:42:46 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 Daniel Stone <daniel@fooishbar.org>,
 Jani Nikula <jani.nikula@linux.intel.com>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org
Subject: Re: [PATCH v17 21/28] drm/tests: bridge: Add KUnit tests for bridge
 chain format selection
Date: Wed, 10 Jun 2026 13:42:35 +0200
Message-ID: <gnicb4WkT1S4aQIC2G_naw@collabora.com>
In-Reply-To: <04ff70850213ae0f75486b1a27a7edb6fb4e71c3@intel.com>
References: <20260609-color-format-v17-0-35739b5782cc@collabora.com>
 <20260609-color-format-v17-21-35739b5782cc@collabora.com>
 <04ff70850213ae0f75486b1a27a7edb6fb4e71c3@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,fooishbar.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[39];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2A01B668E47

On Wednesday, 10 June 2026 12:32:29 Central European Summer Time Jani Nikul=
a wrote:
> On Tue, 09 Jun 2026, Nicolas Frattaroli <nicolas.frattaroli@collabora.com=
> wrote:
> > diff --git a/drivers/gpu/drm/tests/drm_bridge_test.c b/drivers/gpu/drm/=
tests/drm_bridge_test.c
> > index 64b665580a88..92f142ca6695 100644
> > --- a/drivers/gpu/drm/tests/drm_bridge_test.c
> > +++ b/drivers/gpu/drm/tests/drm_bridge_test.c
> > @@ -2,15 +2,23 @@
> >  /*
> >   * Kunit test for drm_bridge functions
> >   */
> > +#include <linux/cleanup.h>
> > +#include <linux/media-bus-format.h>
> > +
> >  #include <drm/drm_atomic_state_helper.h>
> > +#include <drm/drm_atomic_uapi.h>
> >  #include <drm/drm_bridge.h>
> >  #include <drm/drm_bridge_connector.h>
> >  #include <drm/drm_bridge_helper.h>
> > +#include <drm/drm_edid.h>
> >  #include <drm/drm_kunit_helpers.h>
> > +#include <drm/drm_managed.h>
> > =20
> >  #include <kunit/device.h>
> >  #include <kunit/test.h>
> > =20
> > +#include "drm_kunit_edid.h"
>=20
> So here's the problem with adding *any* arrays into headers: every
> compilation unit that includes them duplicates all the arrays. It's only
> really okay for single use.
>=20
> And, in this case, most of the included arrays are unused, leading to
> build failures:
>=20
>   CC [M]  drivers/gpu/drm/tests/drm_bridge_test.o
> In file included from ../drivers/gpu/drm/tests/drm_bridge_test.c:21:
> ../drivers/gpu/drm/tests/drm_kunit_edid.h:958:28: error: =E2=80=98test_ed=
id_hdmi_4k_rgb_yuv420_dc_max_340mhz=E2=80=99 defined but not used [-Werror=
=3Dunused-const-variable=3D]
>   958 | static const unsigned char test_edid_hdmi_4k_rgb_yuv420_dc_max_34=
0mhz[] =3D {
>       |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~
> ../drivers/gpu/drm/tests/drm_kunit_edid.h:726:28: error: =E2=80=98test_ed=
id_hdmi_1080p_rgb_yuv_dc_max_340mhz=E2=80=99 defined but not used [-Werror=
=3Dunused-const-variable=3D]
>   726 | static const unsigned char test_edid_hdmi_1080p_rgb_yuv_dc_max_34=
0mhz[] =3D {
>       |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~
> ../drivers/gpu/drm/tests/drm_kunit_edid.h:612:28: error: =E2=80=98test_ed=
id_hdmi_1080p_rgb_yuv_dc_max_200mhz=E2=80=99 defined but not used [-Werror=
=3Dunused-const-variable=3D]
>   612 | static const unsigned char test_edid_hdmi_1080p_rgb_yuv_dc_max_20=
0mhz[] =3D {
>       |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~
> ../drivers/gpu/drm/tests/drm_kunit_edid.h:498:28: error: =E2=80=98test_ed=
id_hdmi_1080p_rgb_max_340mhz=E2=80=99 defined but not used [-Werror=3Dunuse=
d-const-variable=3D]
>   498 | static const unsigned char test_edid_hdmi_1080p_rgb_max_340mhz[] =
=3D {
>       |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ../drivers/gpu/drm/tests/drm_kunit_edid.h:390:28: error: =E2=80=98test_ed=
id_hdmi_1080p_rgb_max_200mhz_hdr=E2=80=99 defined but not used [-Werror=3Du=
nused-const-variable=3D]
>   390 | static const unsigned char test_edid_hdmi_1080p_rgb_max_200mhz_hd=
r[] =3D {
>       |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ../drivers/gpu/drm/tests/drm_kunit_edid.h:271:28: error: =E2=80=98test_ed=
id_hdmi_1080p_rgb_max_200mhz=E2=80=99 defined but not used [-Werror=3Dunuse=
d-const-variable=3D]
>   271 | static const unsigned char test_edid_hdmi_1080p_rgb_max_200mhz[] =
=3D {
>       |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ../drivers/gpu/drm/tests/drm_kunit_edid.h:163:28: error: =E2=80=98test_ed=
id_hdmi_1080p_rgb_max_100mhz=E2=80=99 defined but not used [-Werror=3Dunuse=
d-const-variable=3D]
>   163 | static const unsigned char test_edid_hdmi_1080p_rgb_max_100mhz[] =
=3D {
>       |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ../drivers/gpu/drm/tests/drm_kunit_edid.h:57:28: error: =E2=80=98test_edi=
d_dvi_1080p=E2=80=99 defined but not used [-Werror=3Dunused-const-variable=
=3D]
>    57 | static const unsigned char test_edid_dvi_1080p[] =3D {
>       |                            ^~~~~~~~~~~~~~~~~~~
> cc1: all warnings being treated as errors
>=20
> This breaks the build for me, I don't know how it didn't for any of you.

It broke the build for me in the past[1], but then I couldn't repro
it anymore when challenged on my fix[2].

>=20
> Reverting these two fixes it:
>=20
> ce1d0139adac ("drm/tests: bridge: Add test for HDMI output bus formats he=
lper")
> 082fbc179c01 ("drm/tests: bridge: Add KUnit tests for bridge chain format=
 selection")
>=20
> I think the proper fix would be to move the arrays into a .c file, and
> only have declarations in the headers. But that needs to happen real
> soon or the commits need to be reverted.

If you don't want __maybe_unused, then sure, I'll move them into a new
=2Ec file. Though I think the two are roughly equivalent in that I don't
think anyone is really trying to minimise the size of their KUnit
binaries.

I'll send a patch to move them to a .c

[1]: https://lore.kernel.org/dri-devel/20260121-color-format-v7-20-ef790dae=
780c@collabora.com/
[2]: https://lore.kernel.org/dri-devel/20260210-didactic-okapi-of-modernism=
=2Dff00d9@houat/

Kind regards,
Nicolas Frattaroli

>=20
> BR,
> Jani.
>=20
>=20
>=20




