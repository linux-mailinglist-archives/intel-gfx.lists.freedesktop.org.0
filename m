Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4EBC46F84
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 14:41:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F9D510E3C3;
	Mon, 10 Nov 2025 13:41:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=kapsi.fi header.i=@kapsi.fi header.b="E7oLjhmb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2247 seconds by postgrey-1.36 at gabe;
 Sat, 08 Nov 2025 16:32:24 UTC
Received: from mail.kapsi.fi (mail-auth.kapsi.fi [91.232.154.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F17EB10E1C9;
 Sat,  8 Nov 2025 16:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
 s=20161220; h=References:In-Reply-To:Cc:To:Subject:Message-ID:From:
 Content-Type:Date:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AJLrbcvUxDGiG+fC01cibEhHY2BxutAq/NwW724RGyg=; b=E7oLjhmbnju/7SJHrocAE9rAiZ
 aONQamNy0Ilck9rAWu/lfyJUEsUP+aELSjVAUyxsIu/q3qENv6Fa5e/mQPexbapFUFV13Kol2oOLB
 XASmnWSVaJUv/+nm5rikZUb3dU4MWeLqFNyoJ2Meqq61KQTZpZWTxMXvxMYJxIg8vO2+TXMQ+n176
 Wx7uB20kHb36mqGWbB019b5E+SFiKR4brZp5Z2ZchVz1z8AqeQcWuWXIE1+eTDBIMNt6Hs3NZPZMf
 L06gndg0E5+e0D81DQabdHLZIriguADYrp3y0ivdbFpX0vOI8Ngm0kao4slDf/n72QOgq12KY0YEr
 nn9yX1kw==;
Received: from webng-int-gw.kapsi.fi ([91.232.154.203] helo=rainloop.kapsi.fi)
 by mail.kapsi.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.96)
 (envelope-from <jyri.sarha@iki.fi>) id 1vHlHB-001aDs-1i;
 Sat, 08 Nov 2025 17:54:53 +0200
MIME-Version: 1.0
Date: Sat, 08 Nov 2025 15:54:51 +0000
Content-Type: multipart/alternative;
 boundary="4d9a0345-69ce-4c20-bbb6-be0771085d9f-1"
From: "Jyri Sarha" <jyri.sarha@iki.fi>
Message-ID: <9d5bc82dc6f18adebc784df345b2a948703e3949@iki.fi>
TLS-Required: No
Subject: Re: [PATCH 4/6] drm/tidss: use drm_crtc_vblank_crtc()
To: "Jani Nikula" <jani.nikula@intel.com>, dri-devel@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com, "Jyri Sarha"
 <jyri.sarha@iki.fi>, "Tomi Valkeinen" <tomi.valkeinen@ideasonboard.com>
In-Reply-To: <ffd5ebe03391b3c01e616c0c844a4b8ddecede36.1762513240.git.jani.nikula@intel.com>
References: <cover.1762513240.git.jani.nikula@intel.com>
 <ffd5ebe03391b3c01e616c0c844a4b8ddecede36.1762513240.git.jani.nikula@intel.com>
X-SA-Exim-Connect-IP: 91.232.154.203
X-SA-Exim-Mail-From: jyri.sarha@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
X-Mailman-Approved-At: Mon, 10 Nov 2025 13:41:03 +0000
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

--4d9a0345-69ce-4c20-bbb6-be0771085d9f-1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

November 7, 2025 at 1:04 PM, "Jani Nikula" <jani.nikula@intel.com mailto:=
jani.nikula@intel.com?to=3D%22Jani%20Nikula%22%20%3Cjani.nikula%40intel.c=
om%3E > wrote:


>=20
>=20We have drm_crtc_vblank_crtc() to get the struct drm_vblank_crtc poin=
ter
> for a crtc. Use it instead of poking at dev->vblank[] directly.
>=20
>=20Cc: Jyri Sarha <jyri.sarha@iki.fi>
> Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>=20
Acked-by:=C2=A0Jyri Sarha <jyri.sarha@iki.fi mailto:jyri.sarha@iki.fi >

Thanks,.
Jyri
---
 drivers/gpu/drm/tidss/tidss_crtc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/tidss/tidss_crtc.c b/drivers/gpu/drm/tidss/t=
idss_crtc.c
index 411b1a25e29c..8f81eb560b9e 100644
--- a/drivers/gpu/drm/tidss/tidss_crtc.c
+++ b/drivers/gpu/drm/tidss/tidss_crtc.c
@@ -248,8 +248,7 @@ static void tidss_crtc_atomic_enable(struct drm_crtc =
*crtc,
 dispc_vp_enable(tidss->dispc, tcrtc->hw_videoport);
=20
=20if (crtc->state->event) {
- unsigned int pipe =3D drm_crtc_index(crtc);
- struct drm_vblank_crtc *vblank =3D &ddev->vblank[pipe];
+ struct drm_vblank_crtc *vblank =3D drm_crtc_vblank_crtc(crtc);
=20
 vblank->time =3D ktime_get();
=20
--=20
2.47.3
--4d9a0345-69ce-4c20-bbb6-be0771085d9f-1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><meta http-equiv=3D"Content-Type" content=3D"t=
ext/html; charset=3Dutf-8"></head><body><div><br><br></div><p>November 7,=
 2025 at 1:04 PM, "Jani Nikula" &lt;<a href=3D"mailto:jani.nikula@intel.c=
om?to=3D%22Jani%20Nikula%22%20%3Cjani.nikula%40intel.com%3E" target=3D"_b=
lank" tabindex=3D"-1">jani.nikula@intel.com</a>&gt; wrote:</p><blockquote=
>We have drm_crtc_vblank_crtc() to get the struct drm_vblank_crtc pointer=
<br>for a crtc. Use it instead of poking at dev-&gt;vblank[] directly.<br=
><br>Cc: Jyri Sarha &lt;jyri.sarha@iki.fi&gt;<br>Cc: Tomi Valkeinen &lt;t=
omi.valkeinen@ideasonboard.com&gt;<br>Signed-off-by: Jani Nikula &lt;jani=
.nikula@intel.com&gt;</blockquote><div><br></div><div>Acked-by:=C2=A0Jyri=
 Sarha &lt;<a href=3D"mailto:jyri.sarha@iki.fi">jyri.sarha@iki.fi</a>&gt;=
<br></div><div><br></div><div>Thanks,.</div><div>Jyri</div><div><br>---<b=
r> drivers/gpu/drm/tidss/tidss_crtc.c | 3 +--<br> 1 file changed, 1 inser=
tion(+), 2 deletions(-)<br><br>diff --git a/drivers/gpu/drm/tidss/tidss_c=
rtc.c b/drivers/gpu/drm/tidss/tidss_crtc.c<br>index 411b1a25e29c..8f81eb5=
60b9e 100644<br>--- a/drivers/gpu/drm/tidss/tidss_crtc.c<br>+++ b/drivers=
/gpu/drm/tidss/tidss_crtc.c<br>@@ -248,8 +248,7 @@ static void tidss_crtc=
_atomic_enable(struct drm_crtc *crtc,<br> 	dispc_vp_enable(tidss-&gt;disp=
c, tcrtc-&gt;hw_videoport);<br> <br> 	if (crtc-&gt;state-&gt;event) {<br>=
-		unsigned int pipe =3D drm_crtc_index(crtc);<br>-		struct drm_vblank_cr=
tc *vblank =3D &amp;ddev-&gt;vblank[pipe];<br>+		struct drm_vblank_crtc *=
vblank =3D drm_crtc_vblank_crtc(crtc);<br> <br> 		vblank-&gt;time =3D kti=
me_get();<br> <br>-- <br>2.47.3</div></body></html>
--4d9a0345-69ce-4c20-bbb6-be0771085d9f-1--
