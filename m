Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4826985E6C4
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 19:55:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AFC110E7B5;
	Wed, 21 Feb 2024 18:55:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="Hyb5d0ql";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C94F10E7B4
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 18:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=metux.net;
 s=s1-ionos; t=1708541751; x=1709146551; i=info@metux.net;
 bh=D1eKWT/rCGANmIQdQ1pxaDZSfTCfeBkvzxi3o2g/U68=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=Hyb5d0ql1gp738Ic47kft5lSLYWmf2M/CI3HtjR/zgt2D9aO9VQgyExuyhNzZgC2
 Qbnq4DgdukfTeOhOrgVNQIqKZsWboZtRAPw9QNbHWIzUOTHIdLPXAAyM489Q5197z
 BPnb7Jd18sb6sCentGCf8vkMNo8yaPHKnD/0QTaJV6EFvEVTpAA4nYAlIe8F/t8IE
 +bj3jQj2g/3m0sAUs7zOfySBEO8tP8y5u1EjyH0eBMBwUHWOWfu7UGEo7xABSXbTi
 Cfr/RrttumThWngO6WnrpYG6hNBUEHOQdPtokIEDTIU/zJzzIywkMgmnZOaSDv5tE
 9tEUgbiOIHxDHGPVew==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from orion.localdomain ([77.4.30.125]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MSI6i-1rWEzm3KDA-00ShdF for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb
 2024 19:55:50 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 1/6] sna: stop using obsolete type aliases
Date: Wed, 21 Feb 2024 19:55:45 +0100
Message-Id: <20240221185550.11943-1-info@metux.net>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:6Mh8CTUqD/IucbNhXTyoAVevnrq/nOTJ/ECdiNQLKbbIsby8quz
 JOjcL0XkaU8zYbmhiiqAtIyEIKIZWenX/hc5uVPe9RiW+vHiO1zsyofkTYV/dyzqO3pE3Fm
 Ji8c0zLtV+a43mgF431hHp5fNwysFJcnoFsp9bpy5zNgrpbZAJSHDX3FnarKOMAvWH7Vo6r
 AyYOVW/FeGtn2a7H8MIRA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:YTE49d5YQno=;XKBErL9EuLePfq7/Wid3AnOwodt
 lRKnoM3s8j/Gk5c5UyzvtXhuD4150MbnfCroNlLRg6iZADS1gsstNdOq8ZagrPx77l0/mHD+r
 kKZUDLyq5AMjo2UmRLo58GFiKWcNq1/aYtyYStdjgn8cb7yJr1Y3ZG36nDMcHkl9xOO9Q3L3H
 bK8oBfXFVq8mFp9QwptKR+nYefnW1VY9bcM2EymLtc5g5bmsyQnzlE1sh4BcFDrEXPNo/qkrW
 CXuKfohGkGjI0EgHzBJ0f8/EL5v/1V/OU7F16RLg5/Iqty5gJh9u31cGTTp4ZjIlgkTdUiBe9
 ml807EtzwkwCAEUULa3HoxjUY4mRZMXaX0RdABYkfy1xDN2rVwNfGbVhiUX/RS+vJulO3xkhv
 8/gfeLIlEUaVbF16JR1iHklS4kro+qoiDOGMTo5yUacVa3rlh4y2ajKNKvrIHpmfs04+PAom3
 NPm6AEGoeYWXcHTw6W+zVXGA/KwGuBlkYeXrvIUHIfgggP2u08kt8adBgFG9r1o6glX4/nhy0
 YcRNW4iak0knnrSbtcIUGFv6jWma8UXHNtlMxnkhtAHhzG+7YxThPxeckfShIIqwzDQpma84t
 r2yq7H0lj9KVsZjdyJwkK9XvLviJt3pFHedAvt+401r+1Lr1jcXxnbyZsMuXhnJ/4R8u6IpSq
 2wglkerGvcpZffIBNifnJ/nu8x+ifLqBVjiawMXLeLfri8ZqYLv32QwXGiTlC82jwPd9CHzgd
 WEVcmnvMkjbTNNW/e2gLnZ3BCdCmdrhSAXRHH8gzR7sBkjNWeLr8Ak=
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

