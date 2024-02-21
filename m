Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4540585FA9D
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 15:01:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13C6D10E944;
	Thu, 22 Feb 2024 14:01:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="feAH+izF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7115B10E77C
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 15:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=metux.net;
 s=s1-ionos; t=1708528327; x=1709133127; i=info@metux.net;
 bh=D1eKWT/rCGANmIQdQ1pxaDZSfTCfeBkvzxi3o2g/U68=;
 h=X-UI-Sender-Class:From:To:Subject:Date:In-Reply-To:References;
 b=feAH+izFnVluUaGVo1tNsYOloOz65yQyrK7cVX11Vu8F+0fGowX+8b6eK2z9F3mL
 WmiUth//K31W43EBAXgvubTkPuDu8+lfuC7u4ct4qcYyJ1WVnEySgjp/glCrYMcgT
 KgxXr9oA4+V9+JJ6P5MoAgpN5SGv8blusjUYClIIt+OzI54zUUUOSP+aT4h4kMlyb
 0I0bBbZ7kbziAL/9mw6AGHBziCLt3M6oKgCVZd6U8hyJ6OIDScbKkW/ZJqE3U3X3g
 QPywRpMIhi0ZeNPya3LYy+APICikG/ShlAs8p/uxd1H/ZaTwD/JntX/FU3wRKNdEy
 iPu94t4TYM30ZpvTYg==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from orion.localdomain ([77.4.30.125]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MxmBi-1qiMkA29qo-00zH1L for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb
 2024 16:07:04 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] sna: stop using obsolete type aliases
Date: Wed, 21 Feb 2024 16:06:54 +0100
Message-Id: <20240221150656.30539-2-info@metux.net>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240221150656.30539-1-info@metux.net>
References: <20240221150656.30539-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:8AAZEVZDAGigzPhbDymAwOlDouKDCX4jc7KJPYZFMmORB7k2raf
 gfC0jDNm2vQHgTYl0Pp3bg+Xb4Ay0IMoIh1Y56Zi9Yu4z2C7tyR3EiRffCNxf74j2B4+wnT
 ZfbLqki2CYRqTFHa7t2zyxXMdUvARqduhBoTYKCZiCv6+4cyTSgMUwdShiRRarX4dos/X+L
 LWACOXtBqXxWQvhpA8aUg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:bivo7U5IC7A=;R1vZOe4g61yaaujCB5LYnFOaRqZ
 XTKHZJMVAX2hdsk6PQeoHL0fcY6fEkPVESeEU2VrGYoYg7PGk2J0nR+QYgpVe0+UNPEGswX/+
 g+XCCZTJ31a7GuJKBgBftpMWmCix01QlOVuU1qv7+rwsPo+D9gZD/19i50u+Uu8nwTOpFOZcF
 6IUuBtEFfw1T0sPNQ2cFii+08lyw2n6miI89uBeiOOxkco1+n9aNz7cUERrbPHryWFH6xSQ5H
 1dbgBvxgFPdPfOx6zYGdKBtD9seA5WXx+sSqEXtbTM79BKOOJklgVGL2DbcCSfOpcJGvbyvRO
 r9niRkZo9XyhtZnKA4ZUtiu6rHh6MUPr+HGSAmnsZiBjlNsD+qdilGwq144Ze7ZdR15VbEclA
 hEgP/ALBDKMwQplyJOxKWscM3UpMMDvtsvTpNo4AiTnp/DlYSvCiHtpgrR6Q/9NYWwsizI3hY
 q+AtNLSYNiBLIPVSdIZyv/GnzxIw32PKNZkQDdscf01m9GAGxn8fnVNLR5F2F1Nwwfwhgapp6
 Fi8WZ/zAez9rjJbusKKWnVj+PnRXBjli9gvV+H7+12TNKlLjPLQzY1VnCryXlnxz3SnodShoT
 xzkKx6YwG5YEWl6/y+Gprmj+j5bf7HQ8VH1Vj5BNixuAuMOdSkO9TGVhV1DhO8ERI8FfqsMNP
 EUM55/fKuIUAwQ+pa5Wahau6ssalc0oG3WbKu5RzslYWA4Mg3/108G5geEBukERMd/vc+hss2
 NnYRRFGmHJ8Vf2vFAzw4zjBecVVMI4sbT7jw246ynqQKaZ4Muy2HMw=
X-Mailman-Approved-At: Thu, 22 Feb 2024 14:01:06 +0000
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
index 15df51f6..3ff3d2fe 100644
=2D-- a/src/sna/sna_display.c
+++ b/src/sna/sna_display.c
@@ -208,7 +208,7 @@ struct sna_crtc {
 	bool hwcursor;
 	bool flip_pending;

-	struct pict_f_transform cursor_to_fb, fb_to_cursor;
+	struct pixman_f_transform cursor_to_fb, fb_to_cursor;

 	RegionRec crtc_damage;
 	uint16_t shadow_bo_width, shadow_bo_height;
@@ -2376,7 +2376,7 @@ static bool use_shadow(struct sna *sna, xf86CrtcPtr =
crtc)
 {
 	RRTransformPtr transform;
 	PictTransform crtc_to_fb;
-	struct pict_f_transform f_crtc_to_fb, f_fb_to_crtc;
+	struct pixman_f_transform f_crtc_to_fb, f_fb_to_crtc;
 	unsigned pitch_limit;
 	BoxRec b;

@@ -2846,7 +2846,7 @@ affine_is_pixel_exact(const struct pixman_f_transfor=
m *t)
 static void sna_crtc_randr(xf86CrtcPtr crtc)
 {
 	struct sna_crtc *sna_crtc =3D to_sna_crtc(crtc);
-	struct pict_f_transform f_crtc_to_fb, f_fb_to_crtc;
+	struct pixman_f_transform f_crtc_to_fb, f_fb_to_crtc;
 	PictTransform crtc_to_fb;
 	PictFilterPtr filter;
 	xFixed *params;
@@ -6666,7 +6666,7 @@ sna_set_cursor_position(ScrnInfoPtr scrn, int x, int=
 y)
 		if (crtc->transform_in_use) {
 			int xhot =3D sna->cursor.ref->bits->xhot;
 			int yhot =3D sna->cursor.ref->bits->yhot;
-			struct pict_f_vector v, hot;
+			struct pixman_f_vector v, hot;

 			v.v[0] =3D x + xhot + .5;
 			v.v[1] =3D y + yhot + .5;
=2D-
2.39.2

