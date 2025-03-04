Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F37A4E4AE
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:02:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D9AD10E323;
	Tue,  4 Mar 2025 16:02:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="AdAPQNfG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B3B810E62D
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 16:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1741104123; x=1741708923; i=info@metux.net;
 bh=X/nFQJql+na/DqwwbynG0M7lUDIV3DZ4s+yKQ+ouU/0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
 References:MIME-Version:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=AdAPQNfGbmboidUZDzDDrfCP+dDI7RGkqPzA21dbYjBBCr9I62V85R8sapYfDkHC
 Le1k5OJfbOio2OwsbN8khHJLzuz9Taxx1uUg0IU3sg6KJcMS1xgnec6Ng+IEHyDFc
 RbE2492Y4q5h4CendzktYOhjqwxXGw+aic3usGfSih4XWNu95uYkLm2tqVxjxJ3Yo
 /g02vu2PMmM7AdHWTkzpgmLK7QOlMSJ1TS4+cx/eaKwca/kd7B6kC35jT5w7Le3oi
 mfvKlTGB7jev62rHRHiOnEWs/CtyC5UdsLajbTCTyPyu+yVeqJLqo2guZewPNGq6F
 3sZGxHg8xYkHCctm0g==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from x1.localdomain ([77.7.107.91]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MeTkC-1tFKvp2gzc-00lBNV; Tue, 04 Mar 2025 16:56:29 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 02/16] sna: stop using obsolete type aliases
Date: Tue,  4 Mar 2025 16:57:55 +0100
Message-Id: <20250304155809.30399-3-info@metux.net>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250304155809.30399-1-info@metux.net>
References: <20250304155809.30399-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:Y7a2XpL5xzh5yXVg4vrPgGExH9JWE0rSkhEvrDopDjegZft0mAZ
 a4nmt+XUOAs5LMG/S3lwNBdmuucNxXj45gwTyumwXyFiDpiawFVqP9R3GAILw0PyhYq7Uca
 CL2Cdx9GAy70wdDgnVlMxl4lj9zxPmTDKEXaxx0mKHr60bB6HqZN7R49SXfHvVfvMrMr5Zq
 bmdsfhhP+GEEJXcyOAMUg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:6XQOeC/W7n0=;tQpSUFeIVa79lL4AeieQ8F7pZJz
 V2KIegE+MItBKLzvnsXnRMGcIDFE9nbczA+k9+PGlafSc0MEFjKiKrvVOYpFjC1SfiVPogVw9
 6wyiMo68x6TbEMPtBcLa6vhOY+0NkUutRLQJCX9xpn2ZMDl7Xdz3YhaF+ClSfAppU5+Ysyv0I
 foE0wEq7ETMM+NHWZBHTUZG4KoH++lOoY8T90rrgLSPlY03zAQIr6Yyl7QUVCjN7UcEDntUWX
 /9EnTQm0OVyBwOOrBB6l+erLsXY3WdQHYjqAhWkqethbawnauG31Sqwq5+HnETwSby1po3xo1
 MxYG21q00qhnyMoIqOKkyxW20HFA0x+763oASVT/f4vvP9KPOGkq3XxFIT0MocIx87wf5D3rP
 LiwheOVW7kQJgg106HncgeIpdVL5y+6EGzkwF52dVqsbChqsK9fY5fa+fufLlGF2oZQzFAjxP
 x7hG5AbToDDFAUKlk9umMk8TXoOvprn/WpZjFH3hgh8zUGQPTUt+yN/xnjY22TntxkHwhW8Gd
 tewEFn6E+DXeHm92MN/UVL1ioIYM+MhMO+LZ65LR6LgQk0t3vUIX3AeBsdV1AOC57E4zgpv2V
 3611yw/Qd4P9CpOxh7xj9IzifFXlcpHEfJktnU4ZeaEbgcU6Pfr8VNYKDTpiIhvQX4t3AtyLn
 Fr0kVE7dzYkO+5r4n/k0L/sQ3dJLrsBCYdL61KOzOOxv/phoD7NDOVoeiht7NVGE75XfTtbL9
 vqzhfY6ZSqkjo8I/AyfYZoTBamTgJcmBfUZjA2C+toA/6Sqej9Rs2/xFze2i+onT7gxTQ647x
 8N62iprCEaW7pwP4aRzGWJJeQ1aA08jqNalW7elATc5jKuSgkv/BBFF5NALLdDsuIWlUN/XNM
 J+pY9KjCyMSg+vBZJk5Bac+MEq6AKC4rFrflCKkF4lw55WFVFLzhZoUcMZYtJNAQLMVxYqgqh
 VSo/Q7hkBV5gJRa01Ewycnd/d1ijjQYz6adqnTqwfUL735dTmPHyYrTPr1GIsLu/BDoFFHtC9
 XVuDRRmDbsBUrDl4dGlpuUVfW00nGWdl4vdZENxSeexSjBmIdnR/o9I5sji/LgbgswXEYNhyF
 JB4+8OntCRO7ubtCfqz8OJ5RsuIUu9HTYLasKchjAp7pPeE/NSJ8Kp1TuksbqbBB6o3ScUjE+
 YC8fJPkHCLixzW82xGUWM+E/8I670wTbG3ECtV19jn0tURFxC6A6XEQ3lgVHw+aTi9JD9w3Nb
 /NOsb1ilQypvuXJNanewhR3YErgY31YlMFsXeR5jvpxT+JRk3UqpCNkVL2hOCYLFBZ//N3faD
 S0WdGjhK+Q345f5ZghTjkIZKt+4n4qXb9GSlyHGjBoKbl92/xP7lKY7IBZWshdCr5DaWPIdiO
 QGEBv9zxneacdT+g==
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

The Xserver has been moved to using pixman for all matrix operations, back=
 in
2008, but left some #define's so drivers still compile. Since 1.5 decades =
have
passed now, it's time to fix remaining drivers still using the old name, s=
o
we can drop these #define's from the Xserver includes.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 src/sna/sna_display.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/src/sna/sna_display.c b/src/sna/sna_display.c
index d4fa7b0b..d33a88af 100644
=2D-- a/src/sna/sna_display.c
+++ b/src/sna/sna_display.c
@@ -208,7 +208,7 @@ struct sna_crtc {
 	bool hwcursor;
 	bool flip_pending;

-	struct pict_f_transform cursor_to_fb, fb_to_cursor;
+	struct pixman_f_transform cursor_to_fb, fb_to_cursor;

 	RegionRec crtc_damage;
 	uint16_t shadow_bo_width, shadow_bo_height;
@@ -2383,7 +2383,7 @@ static bool use_shadow(struct sna *sna, xf86CrtcPtr =
crtc)
 {
 	RRTransformPtr transform;
 	PictTransform crtc_to_fb;
-	struct pict_f_transform f_crtc_to_fb, f_fb_to_crtc;
+	struct pixman_f_transform f_crtc_to_fb, f_fb_to_crtc;
 	unsigned pitch_limit;
 	BoxRec b;

@@ -2853,7 +2853,7 @@ affine_is_pixel_exact(const struct pixman_f_transfor=
m *t)
 static void sna_crtc_randr(xf86CrtcPtr crtc)
 {
 	struct sna_crtc *sna_crtc =3D to_sna_crtc(crtc);
-	struct pict_f_transform f_crtc_to_fb, f_fb_to_crtc;
+	struct pixman_f_transform f_crtc_to_fb, f_fb_to_crtc;
 	PictTransform crtc_to_fb;
 	PictFilterPtr filter;
 	xFixed *params;
@@ -6674,7 +6674,7 @@ sna_set_cursor_position(ScrnInfoPtr scrn, int x, int=
 y)
 		if (crtc->transform_in_use) {
 			int xhot =3D sna->cursor.ref->bits->xhot;
 			int yhot =3D sna->cursor.ref->bits->yhot;
-			struct pict_f_vector v, hot;
+			struct pixman_f_vector v, hot;

 			v.v[0] =3D x + xhot + .5;
 			v.v[1] =3D y + yhot + .5;
=2D-
2.39.5

