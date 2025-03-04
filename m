Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CFEA4E4AF
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:02:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9094D10E631;
	Tue,  4 Mar 2025 16:02:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="DW0f62sz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFC7A10E2C0
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 16:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1741104122; x=1741708922; i=info@metux.net;
 bh=zalcM5vW0g63hpfjf7PAH4NChq2Q9vGyt70xSL4yk2U=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
 References:MIME-Version:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=DW0f62szdJaSb1Uy4mnatGG4L3G0XczTRUEJ0hwc3mokszdbY/7PVP3GCOLJy7xl
 +c+NAx1/p/ehNaS5GV6oRn/uEOj3XkH0dbhquwIPWqRiMfcN79VwDeanqWvLe2emF
 +iOnaTpBR8Ys0lw2rsNwtlQuCiJCJa5gpYA2DThi+QLF7CO+x87/XHOEE4yb86EGT
 plRhNf2QmbMwM7b89B2UcaRb//XtV3ffZAYmvjqKINmuln06R9kxL9vLTy/ONXiTB
 F/x9XDLwJ/ylEtrdjdlSjB+w24j71dACmcBtT1YHJNS7h250M0bv/UcgIiKM7+x6H
 f99d/La/+B6rwegavA==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from x1.localdomain ([77.7.107.91]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MGQWr-1u3Vuu1lhV-00504C; Tue, 04 Mar 2025 16:56:33 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 10/16] use XNFalloc() instead of xnfalloc
Date: Tue,  4 Mar 2025 16:58:03 +0100
Message-Id: <20250304155809.30399-11-info@metux.net>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250304155809.30399-1-info@metux.net>
References: <20250304155809.30399-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:eXpWTM71deySlmffsPrEiX1r0YgHtZklikPuXxU4s+NkYkbFLIT
 pUbSywka7W8thbYdGgu39fc4olzMvI+JrL/pon3J2wTbCqeYgCc31rOd76Qf9q+CT+badY8
 ZEQ4TOwLnf/3g/MmTW06TuTmJjfRPDWkEml09Ga+B3eNErnrF/7FiV/gjfIOmtfYijG3o5R
 i4W9ARnTY1ljHnQnu6pGA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Ld2tNX4fjL8=;ZnOu49Ih0DeLAebEqogUmPfwTyw
 ehP+2AA9gyyXVlFlk/2UbAbpRL66qb4aReamx4mFMZ1/6G2gRA0VGY2Zl/zqmtxPLvkJE6Kcv
 X1Cfuh6PD6pvD2v/34F4GgcDFWkTZbNRDYoCIQBw2gv+teHLXu+WJqOKvFvrWuUtr5LchW6Pn
 EuWIw4Q+FuO2Xi57sSW4YWeJqBWfX++qvRYVt5vinQ3IR707H8R7VtYsPI6muLGXBPI+8ty0o
 uHtNxxTG4gSIsbfW/y0xwB5jL72yGEUSZvS8ibA0eFDSDpzygQdCiETzYjEPnDbZAWlX1BQc6
 rSsfuQ4nTlACKZKw3dT7iAJ6zPSVevTgf/JCs2pnCCTg1On042+2YlSDU6s79K0Eo7gEGHHHe
 qwunoagqZt3rmtzQEYYsNEaVnjDrQ+JH2o2ZvKGOLnbgt8vBG8XiVqdYcUN/uP+OT2TYiY39l
 ervPLPTPk5pDovRDHWV6vkD0sF24nSrm0WSmq9bmO+RLeRQLwAxINlPyHN+YgKr73Mm6Nz6zl
 QXTwDQ1ZiMEgPRPu5hv4PmCzDeL80RAx811LWHHj1Xz32kjZPJud3URu304LKIaQ/yb2DGBj4
 GMsJLE3WzLdd9mqyhVzzG57Svu1xEQfjr3CGdvTgX2MEYwnHS5qepgZKvIiSjkaqAIzml/qO5
 wXO30VYNDwXbc92lGW9LwfE2mnWRKvODWq19VXXcUkjXdrj7E+hXNmxGTxcnuFjhNtKvKqgtP
 x2/OlOGuPl2zmO1vhmJgAPOCF/FGGFpnGZT/n1L4W7cACC5qGk6WA0I/YTEP5LhJViiVEYYFo
 GfcIBDnaIKh5bYF3h+J9xDyXryuSPPMC2bq7Zn5IzcwtQgG8lMtCqs6wP3ZsHYA6hPuZsaIlx
 TAwHkBRhXB245mv9fnAE8xLyk6Dbjv5zwzWpykChoVQXBXg0F2DYQeJB+8gkLgG6pyxr2ZFQy
 bYU+h4Kjl2rb4kJpPXpufK8b4BKF3msWMR+1TZaWCTDjVUc2BVz6yRYXaLRW+1s1lDJgCJuzi
 bOGBmFlq2dSfmXohGE0IxPYyGplp6fzWoh/t4KzwIxNn0TdaHdADdU5uA5O3tzCNKZcnKyKeP
 iRieP/F43nyxpriT0tn8SpGQz0/FWPn47jeYTjdXdWYRmApxvPwyQoczp9bB6fYq6MhiR23ka
 bODxxPgwfISVgCNOfAvxrt4Vs8PpaheU8bnkAOKyAOnETg+ZKq9TibfyQKqO2CPfGCKsJzCxd
 G7YRAlcWONk+xNODr9aenCnp+wTRtK7z3JFrQIX1elnl9enTE7V8oDYZOA7e6wCqeoKOCRtbU
 Yc3hX/TBu9QvtI3hoc+HMKAr/GD5aQHpbk5BPkkQyy7zPB8zj/FPlRIF+AfzOKl1fRDt+AWJg
 6vn3QYPpLLAWWhuQ==
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

xnfalloc is just an alias for XNFalloc() that doesn't seem to serve
any practical purpose, so it can go away once all drivers stopped using it=
.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 src/sna/sna_video_overlay.c   | 2 +-
 src/sna/sna_video_sprite.c    | 2 +-
 src/sna/sna_video_textured.c  | 2 +-
 src/uxa/intel_uxa_video.c     | 2 +-
 src/uxa/intel_video_overlay.c | 4 ++--
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/src/sna/sna_video_overlay.c b/src/sna/sna_video_overlay.c
index 07964871..5989b261 100644
=2D-- a/src/sna/sna_video_overlay.c
+++ b/src/sna/sna_video_overlay.c
@@ -723,7 +723,7 @@ void sna_video_overlay_setup(struct sna *sna, ScreenPt=
r screen)
 	adaptor->pScreen =3D screen;
 	adaptor->name =3D (char *)"Intel(R) Video Overlay";
 	adaptor->nEncodings =3D 1;
-	adaptor->pEncodings =3D xnfalloc(sizeof(XvEncodingRec));
+	adaptor->pEncodings =3D XNFalloc(sizeof(XvEncodingRec));
 	adaptor->pEncodings[0].id =3D 0;
 	adaptor->pEncodings[0].pScreen =3D screen;
 	adaptor->pEncodings[0].name =3D (char *)"XV_IMAGE";
diff --git a/src/sna/sna_video_sprite.c b/src/sna/sna_video_sprite.c
index db3865b9..2d012b95 100644
=2D-- a/src/sna/sna_video_sprite.c
+++ b/src/sna/sna_video_sprite.c
@@ -854,7 +854,7 @@ void sna_video_sprite_setup(struct sna *sna, ScreenPtr=
 screen)
 	adaptor->pScreen =3D screen;
 	adaptor->name =3D (char *)"Intel(R) Video Sprite";
 	adaptor->nEncodings =3D 1;
-	adaptor->pEncodings =3D xnfalloc(sizeof(XvEncodingRec));
+	adaptor->pEncodings =3D XNFalloc(sizeof(XvEncodingRec));
 	adaptor->pEncodings[0].id =3D 0;
 	adaptor->pEncodings[0].pScreen =3D screen;
 	adaptor->pEncodings[0].name =3D (char *)"XV_IMAGE";
diff --git a/src/sna/sna_video_textured.c b/src/sna/sna_video_textured.c
index 6e30461d..0b3330f2 100644
=2D-- a/src/sna/sna_video_textured.c
+++ b/src/sna/sna_video_textured.c
@@ -414,7 +414,7 @@ void sna_video_textured_setup(struct sna *sna, ScreenP=
tr screen)
 	adaptor->pScreen =3D screen;
 	adaptor->name =3D (char *)"Intel(R) Textured Video";
 	adaptor->nEncodings =3D 1;
-	adaptor->pEncodings =3D xnfalloc(sizeof(XvEncodingRec));
+	adaptor->pEncodings =3D XNFalloc(sizeof(XvEncodingRec));
 	adaptor->pEncodings[0].id =3D 0;
 	adaptor->pEncodings[0].pScreen =3D screen;
 	adaptor->pEncodings[0].name =3D (char *)"XV_IMAGE";
diff --git a/src/uxa/intel_uxa_video.c b/src/uxa/intel_uxa_video.c
index 8287be4b..8e0eb4a2 100644
=2D-- a/src/uxa/intel_uxa_video.c
+++ b/src/uxa/intel_uxa_video.c
@@ -339,7 +339,7 @@ XF86VideoAdaptorPtr intel_uxa_video_setup_image_textur=
ed(ScreenPtr screen)
 	adapt->flags =3D 0;
 	adapt->name =3D "Intel(R) Textured Video";
 	adapt->nEncodings =3D 1;
-	adapt->pEncodings =3D xnfalloc(sizeof(intel_xv_dummy_encoding));
+	adapt->pEncodings =3D XNFalloc(sizeof(intel_xv_dummy_encoding));
 	memcpy(adapt->pEncodings, intel_xv_dummy_encoding, sizeof(intel_xv_dummy=
_encoding));
 	adapt->nFormats =3D NUM_FORMATS;
 	adapt->pFormats =3D intel_xv_formats;
diff --git a/src/uxa/intel_video_overlay.c b/src/uxa/intel_video_overlay.c
index 8e0eb7af..35f615c2 100644
=2D-- a/src/uxa/intel_video_overlay.c
+++ b/src/uxa/intel_video_overlay.c
@@ -465,7 +465,7 @@ XF86VideoAdaptorPtr intel_video_overlay_setup_image(Sc=
reenPtr screen)
 	adapt->flags =3D VIDEO_OVERLAID_IMAGES /*| VIDEO_CLIP_TO_VIEWPORT */ ;
 	adapt->name =3D "Intel(R) Video Overlay";
 	adapt->nEncodings =3D 1;
-	adapt->pEncodings =3D xnfalloc(sizeof(intel_xv_dummy_encoding));
+	adapt->pEncodings =3D XNFalloc(sizeof(intel_xv_dummy_encoding));
 	memcpy(adapt->pEncodings, intel_xv_dummy_encoding, sizeof(intel_xv_dummy=
_encoding));
 	if (IS_845G(intel) || IS_I830(intel)) {
 		adapt->pEncodings->width =3D IMAGE_MAX_WIDTH_LEGACY;
@@ -483,7 +483,7 @@ XF86VideoAdaptorPtr intel_video_overlay_setup_image(Sc=
reenPtr screen)
 	if (INTEL_INFO(intel)->gen >=3D 030)
 		adapt->nAttributes +=3D GAMMA_ATTRIBUTES;	/* has gamma */
 	adapt->pAttributes =3D
-	    xnfalloc(sizeof(XF86AttributeRec) * adapt->nAttributes);
+	    XNFalloc(sizeof(XF86AttributeRec) * adapt->nAttributes);
 	/* Now copy the attributes */
 	att =3D adapt->pAttributes;
 	memcpy((char *)att, (char *)intel_xv_attributes,
=2D-
2.39.5

