Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB6BA4E4AC
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:02:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5545B10E62C;
	Tue,  4 Mar 2025 16:02:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="mWwauAPO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F3DB10E62A
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 16:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1741104118; x=1741708918; i=info@metux.net;
 bh=OaM+LWQMIWoBJnXRbdUJ6h33XL0aDnyrTuxByQYcRVQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
 References:MIME-Version:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=mWwauAPOcTnPgqmWcAdX5sp/sMGYYgZF6KiTtr5CcrPL4zStqPSfGGmRBlXFewl/
 /SNuG71llv/XUarq77TSI2uWHHskel/+/V9/ZQqDJAwvhT/7woglSEBt3o6uP9qgP
 leE5SHZssdyJb8ZQDY9LzApOlinHVY0xIzjxPwihKhpW8gq/tTUf+WO2UpKlf8gtp
 t4RfkdPbf0D5Dm2ENf9F6WGGfboEEspU5pd1wyS5MIrizEyU7+ZkZc/vWdevqUiqR
 EZUp1Jb6HxUb9htHIYaY3Ga1XhmFoLN207634Zze9tN1dHhfWCYydc7qi7WbxeAjZ
 iM83/yXTZuAde6CvMA==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from x1.localdomain ([77.7.107.91]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mv2tE-1syu0v2IEa-00wbha; Tue, 04 Mar 2025 16:56:41 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 15/16] use dixDestroyPixmap() instead of direct driver call
Date: Tue,  4 Mar 2025 16:58:08 +0100
Message-Id: <20250304155809.30399-16-info@metux.net>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250304155809.30399-1-info@metux.net>
References: <20250304155809.30399-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:7QtobdSp6JqDoSfbO7vX9mKpwvcecG/4vwegiv0lblhyQkyaz7j
 33c1eCIMhr7c8zKkCgZ3Kh7P4EvVaf+yg3yR9xP5JRSwBRW/EBcjE9Rws/kamzky3PIJKEE
 1DqMIXdBjUMh9CrdWhmJ7riY8jkfORB2Y9lzx6tiIZ8qEMdYpRnViWm6VzIZLw15xcIlnBi
 Npx80w2oa+eyZMBD4Nbmg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:B9UYhLo+5Ew=;1yso9AVFg6rB/+qYxi4SB4krFw4
 txKaMwDEFZiMRbwyn0UwPRnw9LmabmkVqbcPtzqOYbZZF9fHtP6AAQq9lk1YjXwPIuqkpeAVa
 xILe5CHOC2scDmwB3UWy3h/3TEDJILJTVmsK7IGjoR5i6JWNKfW4VSgq4pVsK+b+1Xl+PcLJ2
 8T74gf1yUcgTOcpoSc1QnLkqzJD5fFVpI3eUjD6wvxvgHwCQFS764535CQml9zr3GtS2gdlv4
 KkWqVSZcTGrM9EtKXlcIdgHuvQdc4OZfvdPe9oCbCC8kCk8wKOHhmqEjgzdNXbcLYkMTn5N/T
 DjDcF02hr+TJzJWaxQeS0cggiEeFCr7NYRCC720VDnaIZyIwJP1moUkYZxEAqo50iX9kFnXvn
 fJJxTdIFRDHNbG2JWThQc8y0iac8QWM22nPxXWY43dPBSgBZV0RpO1GcNBeHgVa+reKjy7yRs
 +DdnngSMuvncwmm9cHx5XDHL8vA3lFFeNw3waiah14G+gbdOZy1R/gAnjPvTkT0uiwpFUDE4w
 hgY8tBjWIQBPtTX5I3Cy6ap8eGm1WxVIUSyl+j2Em0y4QeJzJHNB4kOW/XhFTlMVozDkFyxj7
 qfuV+AFg9aL7BdPaHBMYJVvnXvkH8fPOXc2gb7BCq7B3wh2LWhKx8rhY7JJL4dRjnaQr3+fJB
 gHOnmWd4TGvIjp0yDmOT6TZEXCgfMAQ76JzCaxpwX25cHNTwHrL4cQzIlsRFjpY7Pw+WBKHE6
 dbo8sc2n3c/dBbNVXV5+AUJ/aZCw+1tSN99CQmQ4v9NhPeRkMlO3uwdZgPLjDepGcBD4PtVSn
 xOR2aS9t75WN7bJn17xHaezrWl7itQ6udoTE+DDDvMC5TVL4bcudUWKJkzVxrLveCAwv4JGYx
 S1Jn0jQ8L8SEMGLKy8ParxyqL2K9+5rnaqqbnhOJ5WobhIqIXJomFDACHL7oxhxrrFVakDN+q
 ISnsh9jAgYyZUctBHhmvUmmK6HPt1SIvbW4nsQ72G7ji74auT73zFSrNFro9M753mCpjSX9vz
 EDTb6EBb1wbyAzgZiJb0qeNHP+gca7AcBy8qyvaufNMwmJHszLeg1ZyDn39bk4uilshAtlrVO
 gg6pdBvWc93TnAR8lg4Mak6Ym/d3mPVkReL5APPGLVPjpFl1Z1RYhaD0hWf+VUsVHpFl3T837
 C7VVnGjffZAoP1nlboftxDKNBqfzCbVq00GBZAWPCaka6s/AQRdHRC33CDqRQdEcMnCqMPZ5p
 nRa17EZuUAvaFCaXeACIsSqAEl9o7cr+LwM0Zt8u3NFqpvlzJHyPP3kriafam06EnmvcdUm+L
 AkcGXhYpdBQ7nBohXEfwAMZBj78If41ax2YDVWVW8NLn8hay40PhWyac5ZJVH+YGL9Oi5MDOs
 fD8QxJyTgK/FU/EQ==
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

Direct calls to ScreenRec->DestroyPixmap() blocks cleaning up the wrapping
jungle, so use the proper dix function instead.

See: https://gitlab.freedesktop.org/xorg/xserver/-/issues/1754

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 src/sna/sna_accel.c        |  8 ++++----
 src/sna/sna_display.c      |  6 +++---
 src/sna/sna_display_fake.c |  2 +-
 src/sna/sna_dri2.c         |  2 +-
 src/sna/sna_dri3.c         |  2 +-
 src/sna/sna_driver.c       |  4 ++--
 src/sna/sna_glyphs.c       |  2 +-
 src/sna/sna_render.c       | 14 +++++++-------
 src/sna/sna_video_sprite.c |  4 ++--
 src/uxa/i915_video.c       |  4 ++--
 src/uxa/intel_display.c    | 10 +++++-----
 src/uxa/intel_dri.c        | 14 +++++++-------
 src/uxa/intel_uxa.c        | 10 +++++-----
 src/uxa/uxa-glyphs.c       | 12 ++++++------
 src/uxa/uxa-render.c       | 24 ++++++++++++------------
 src/uxa/uxa.c              |  5 ++---
 16 files changed, 61 insertions(+), 62 deletions(-)

diff --git a/src/sna/sna_accel.c b/src/sna/sna_accel.c
index 90a61ab3..e3c57edd 100644
=2D-- a/src/sna/sna_accel.c
+++ b/src/sna/sna_accel.c
@@ -982,7 +982,7 @@ fallback:

 		if (!screen->ModifyPixmapHeader(pixmap, width, height, depth,
 						bpp, pitch, addr)) {
-			screen->DestroyPixmap(pixmap);
+			dixDestroyPixmap(pixmap, 0);
 			return NULL;
 		}

@@ -6871,10 +6871,10 @@ discard_cow:
 						    box, n, 0)) {
 				DBG(("%s: fallback - accelerated copy boxes failed\n",
 				     __FUNCTION__));
-				tmp->drawable.pScreen->DestroyPixmap(tmp);
+				dixDestroyPixmap(tmp, 0);
 				goto fallback;
 			}
-			tmp->drawable.pScreen->DestroyPixmap(tmp);
+			dixDestroyPixmap(tmp, 0);

 			if (damage)
 				sna_damage_add_to_pixmap(damage, region, dst_pixmap);
@@ -18011,7 +18011,7 @@ sna_set_screen_pixmap(PixmapPtr pixmap)
 	pixmap->refcnt++;

 	if (old_front)
-		screen->DestroyPixmap(old_front);
+		dixDestroyPixmap(old_front, 0);
 }

 static Bool
diff --git a/src/sna/sna_display.c b/src/sna/sna_display.c
index d4adf34f..33a7e70f 100644
=2D-- a/src/sna/sna_display.c
+++ b/src/sna/sna_display.c
@@ -6046,7 +6046,7 @@ sna_mode_resize(ScrnInfoPtr scrn, int width, int hei=
ght)
 	screen->SetScreenPixmap(new_front);
 	assert(screen->GetScreenPixmap(screen) =3D=3D new_front);
 	assert(sna->front =3D=3D new_front);
-	screen->DestroyPixmap(new_front); /* owned by screen now */
+	dixDestroyPixmap(new_front, 0); /* owned by screen now */

 	scrn->virtualX =3D width;
 	scrn->virtualY =3D height;
@@ -8918,7 +8918,7 @@ sna_crtc_redisplay__fallback(xf86CrtcPtr crtc, Regio=
nPtr region, struct kgem_bo
 free_src:
 	FreePicture(src, None);
 free_pixmap:
-	screen->DestroyPixmap(pixmap);
+	dixDestroyPixmap(pixmap, 0);
 }

 static void
@@ -9028,7 +9028,7 @@ sna_crtc_redisplay__composite(xf86CrtcPtr crtc, Regi=
onPtr region, struct kgem_bo
 free_src:
 	FreePicture(src, None);
 free_pixmap:
-	screen->DestroyPixmap(pixmap);
+	dixDestroyPixmap(pixmap, 0);
 }

 static void
diff --git a/src/sna/sna_display_fake.c b/src/sna/sna_display_fake.c
index 401e9a06..ed26199c 100644
=2D-- a/src/sna/sna_display_fake.c
+++ b/src/sna/sna_display_fake.c
@@ -215,7 +215,7 @@ sna_mode_resize(ScrnInfoPtr scrn, int width, int heigh=
t)
 	assert(screen->GetScreenPixmap(screen) =3D=3D new_front);
 	assert(to_sna_from_screen(screen)->front =3D=3D new_front);

-	screen->DestroyPixmap(new_front);
+	dixDestroyPixmap(new_front, 0);

 	return TRUE;
 }
diff --git a/src/sna/sna_dri2.c b/src/sna/sna_dri2.c
index ee4b89db..f5f47554 100644
=2D-- a/src/sna/sna_dri2.c
+++ b/src/sna/sna_dri2.c
@@ -934,7 +934,7 @@ static void _sna_dri2_destroy_buffer(struct sna *sna,
 		sna_watch_flush(sna, -1);

 		sna_pixmap_set_buffer(pixmap, NULL);
-		pixmap->drawable.pScreen->DestroyPixmap(pixmap);
+		dixDestroyPixmap(pixmap, 0);
 	}

 	sna_dri2_cache_bo(sna, draw,
diff --git a/src/sna/sna_dri3.c b/src/sna/sna_dri3.c
index ce4970ae..cea1efc7 100644
=2D-- a/src/sna/sna_dri3.c
+++ b/src/sna/sna_dri3.c
@@ -284,7 +284,7 @@ static PixmapPtr sna_dri3_pixmap_from_fd(ScreenPtr scr=
een,
 	return pixmap;

 free_pixmap:
-	screen->DestroyPixmap(pixmap);
+	dixDestroyPixmap(pixmap, 0);
 free_bo:
 	kgem_bo_destroy(&sna->kgem, bo);
 	return NULL;
diff --git a/src/sna/sna_driver.c b/src/sna/sna_driver.c
index 137f29e8..66e8731e 100644
=2D-- a/src/sna/sna_driver.c
+++ b/src/sna/sna_driver.c
@@ -266,7 +266,7 @@ static Bool sna_create_screen_resources(ScreenPtr scre=
en)
 	screen->SetScreenPixmap(new_front);
 	assert(screen->GetScreenPixmap(screen) =3D=3D new_front);
 	assert(sna->front =3D=3D new_front);
-	screen->DestroyPixmap(new_front); /* transfer ownership to screen */
+	dixDestroyPixmap(new_front, 0); /* transfer ownership to screen */

 	sna_mode_set_primary(sna);

@@ -1011,7 +1011,7 @@ static Bool sna_early_close_screen(CLOSE_SCREEN_ARGS=
_DECL)
 	}

 	if (sna->front) {
-		screen->DestroyPixmap(sna->front);
+		dixDestroyPixmap(sna->front, 0);
 		sna->front =3D NULL;
 	}

diff --git a/src/sna/sna_glyphs.c b/src/sna/sna_glyphs.c
index ebc061b5..a3894518 100644
=2D-- a/src/sna/sna_glyphs.c
+++ b/src/sna/sna_glyphs.c
@@ -260,7 +260,7 @@ bool sna_glyphs_create(struct sna *sna)
 						serverClient, &error);
 		}

-		screen->DestroyPixmap(pixmap);
+		dixDestroyPixmap(pixmap, 0);
 		if (!picture)
 			goto bail;

diff --git a/src/sna/sna_render.c b/src/sna/sna_render.c
index 904d4400..a0fdabcb 100644
=2D-- a/src/sna/sna_render.c
+++ b/src/sna/sna_render.c
@@ -875,7 +875,7 @@ cleanup_src:
 cleanup_dst:
 	FreePicture(tmp_dst, 0);
 cleanup_tmp:
-	screen->DestroyPixmap(tmp);
+	dixDestroyPixmap(tmp, 0);
 	return ret;
 }

@@ -1348,7 +1348,7 @@ sna_render_picture_convolve(struct sna *sna,
 		tmp =3D CreatePicture(0, &pixmap->drawable,
 				PictureMatchFormat(screen, depth, channel->pict_format),
 				0, NULL, serverClient, &error);
-	screen->DestroyPixmap(pixmap);
+	dixDestroyPixmap(pixmap, 0);
 	if (tmp =3D=3D NULL)
 		return -1;

@@ -1429,7 +1429,7 @@ sna_render_picture_flatten(struct sna *sna,
 	tmp =3D CreatePicture(0, &pixmap->drawable,
 			    PictureMatchFormat(screen, 32, PICT_a8r8g8b8),
 			    0, NULL, serverClient, &error);
-	screen->DestroyPixmap(pixmap);
+	dixDestroyPixmap(pixmap, 0);
 	if (tmp =3D=3D NULL)
 		return false;

@@ -1811,7 +1811,7 @@ sna_render_picture_convert(struct sna *sna,
 						       channel->pict_format),
 				    0, NULL, serverClient, &error);
 		if (dst =3D=3D NULL) {
-			screen->DestroyPixmap(tmp);
+			dixDestroyPixmap(tmp, 0);
 			return 0;
 		}

@@ -1822,7 +1822,7 @@ sna_render_picture_convert(struct sna *sna,
 				    0, NULL, serverClient, &error);
 		if (src =3D=3D NULL) {
 			FreePicture(dst, 0);
-			screen->DestroyPixmap(tmp);
+			dixDestroyPixmap(tmp, 0);
 			return 0;
 		}

@@ -1839,7 +1839,7 @@ sna_render_picture_convert(struct sna *sna,

 		channel->bo =3D __sna_pixmap_get_bo(tmp);
 		kgem_bo_reference(channel->bo);
-		screen->DestroyPixmap(tmp);
+		dixDestroyPixmap(tmp, 0);
 	} else {
 		pixman_image_t *src, *dst;
 		void *ptr;
@@ -2173,7 +2173,7 @@ copy_overlap(struct sna *sna, uint8_t alu,
 				      draw, bo, dst_dx, dst_dy,
 				      box, n, 0));

-	screen->DestroyPixmap(tmp);
+	dixDestroyPixmap(tmp, 0);
 	return ret;
 }
 bool
diff --git a/src/sna/sna_video_sprite.c b/src/sna/sna_video_sprite.c
index 2d012b95..7d9a13e1 100644
=2D-- a/src/sna/sna_video_sprite.c
+++ b/src/sna/sna_video_sprite.c
@@ -666,7 +666,7 @@ off:
 			}

 			if (!sna->render.video(sna, video, &frame, &r, scaled)) {
-				screen->DestroyPixmap(scaled);
+				dixDestroyPixmap(scaled, 0);
 				ret =3D BadAlloc;
 				goto err;
 			}
@@ -685,7 +685,7 @@ off:
 			frame.height =3D frame.image.y2;
 			frame.pitch[0] =3D frame.bo->pitch;

-			screen->DestroyPixmap(scaled);
+			dixDestroyPixmap(scaled, 0);
 			cache_bo =3D false;
 		}

diff --git a/src/uxa/i915_video.c b/src/uxa/i915_video.c
index a2fb50cf..6f7ae91e 100644
=2D-- a/src/uxa/i915_video.c
+++ b/src/uxa/i915_video.c
@@ -79,7 +79,7 @@ I915DisplayVideoTextured(ScrnInfoPtr scrn,
 			return;

 		if (intel_uxa_get_pixmap_bo(target) =3D=3D NULL) {
-			screen->DestroyPixmap(target);
+			dixDestroyPixmap(target, 0);
 			return;
 		}

@@ -485,7 +485,7 @@ I915DisplayVideoTextured(ScrnInfoPtr scrn,
 			FreeScratchGC(gc);
 		}

-		target->drawable.pScreen->DestroyPixmap(target);
+		dixDestroyPixmap(target, 0);
 	}

 	intel_uxa_debug_flush(scrn);
diff --git a/src/uxa/intel_display.c b/src/uxa/intel_display.c
index 2a544779..17198ffc 100644
=2D-- a/src/uxa/intel_display.c
+++ b/src/uxa/intel_display.c
@@ -563,7 +563,7 @@ intel_create_pixmap_header(ScreenPtr pScreen, int widt=
h, int height, int depth,
                 {
                         return pixmap;
                 }
-                (*pScreen->DestroyPixmap) (pixmap);
+                dixDestroyPixmap(pixmap, 0);
         }
         return NullPixmap;
 }
@@ -620,7 +620,7 @@ intel_crtc_shadow_destroy(xf86CrtcPtr crtc, PixmapPtr =
rotate_pixmap, void *data)

 	if (rotate_pixmap) {
                 intel_set_pixmap_bo(rotate_pixmap, NULL);
-                rotate_pixmap->drawable.pScreen->DestroyPixmap(rotate_pix=
map);
+                dixDestroyPixmap(rotate_pixmap, 0);
 	}

 	if (data) {
@@ -2408,7 +2408,7 @@ intel_create_pixmap_for_bo(ScreenPtr pScreen, dri_bo=
 *bo,
 					 width, height,
 					 depth, bpp,
 					 pitch, NULL)) {
-		pScreen->DestroyPixmap(pixmap);
+		dixDestroyPixmap(pixmap, 0);
 		return NullPixmap;
 	}

@@ -2515,9 +2515,9 @@ void intel_copy_fb(ScrnInfoPtr scrn)
 #endif

 cleanup_dst:
-	(*pScreen->DestroyPixmap)(dst);
+	dixDestroyPixmap(dst, 0);
 cleanup_src:
-	(*pScreen->DestroyPixmap)(src);
+	dixDestroyPixmap(src, 0);
 }

 void
diff --git a/src/uxa/intel_dri.c b/src/uxa/intel_dri.c
index d91ed295..ddce265c 100644
=2D-- a/src/uxa/intel_dri.c
+++ b/src/uxa/intel_dri.c
@@ -210,7 +210,7 @@ I830DRI2CreateBuffers(DrawablePtr drawable, unsigned i=
nt *attachments,
 			    intel_get_pixmap_bo(pixmap) =3D=3D NULL)
 			{
 				if (pixmap)
-					screen->DestroyPixmap(pixmap);
+					dixDestroyPixmap(pixmap, 0);
 				goto unwind;
 			}
 		}
@@ -228,7 +228,7 @@ I830DRI2CreateBuffers(DrawablePtr drawable, unsigned i=
nt *attachments,

 		if ((buffers[i].name =3D pixmap_flink(pixmap)) =3D=3D 0) {
 			/* failed to name buffer */
-			screen->DestroyPixmap(pixmap);
+			dixDestroyPixmap(pixmap, 0);
 			goto unwind;
 		}
 	}
@@ -237,7 +237,7 @@ I830DRI2CreateBuffers(DrawablePtr drawable, unsigned i=
nt *attachments,

 unwind:
 	while (i--)
-		screen->DestroyPixmap(privates[i].pixmap);
+		dixDestroyPixmap(privates[i].pixmap, 0);
 	free(privates);
 	free(buffers);
 	return NULL;
@@ -252,7 +252,7 @@ I830DRI2DestroyBuffers(DrawablePtr drawable, DRI2Buffe=
rPtr buffers, int count)

 	for (i =3D 0; i < count; i++) {
 		private =3D buffers[i].driverPrivate;
-		screen->DestroyPixmap(private->pixmap);
+		dixDestroyPixmap(private->pixmap, 0);
 	}

 	if (buffers) {
@@ -353,7 +353,7 @@ I830DRI2CreateBuffer(DrawablePtr drawable, unsigned in=
t attachment,
 					      hint);
 		if (pixmap =3D=3D NULL || intel_get_pixmap_bo(pixmap) =3D=3D NULL) {
 			if (pixmap)
-				screen->DestroyPixmap(pixmap);
+				dixDestroyPixmap(pixmap, 0);
 			free(privates);
 			free(buffer);
 			return NULL;
@@ -371,7 +371,7 @@ I830DRI2CreateBuffer(DrawablePtr drawable, unsigned in=
t attachment,

 	if ((buffer->name =3D pixmap_flink(pixmap)) =3D=3D 0) {
 		/* failed to name buffer */
-		screen->DestroyPixmap(pixmap);
+		dixDestroyPixmap(pixmap, 0);
 		free(privates);
 		free(buffer);
 		return NULL;
@@ -386,7 +386,7 @@ static void I830DRI2DestroyBuffer(DrawablePtr drawable=
, DRI2Buffer2Ptr buffer)
 		I830DRI2BufferPrivatePtr private =3D buffer->driverPrivate;
 		if (--private->refcnt =3D=3D 0) {
 			ScreenPtr screen =3D private->pixmap->drawable.pScreen;
-			screen->DestroyPixmap(private->pixmap);
+			dixDestroyPixmap(private->pixmap, 0);

 			free(private);
 			free(buffer);
diff --git a/src/uxa/intel_uxa.c b/src/uxa/intel_uxa.c
index ec32a723..3ab70a30 100644
=2D-- a/src/uxa/intel_uxa.c
+++ b/src/uxa/intel_uxa.c
@@ -811,7 +811,7 @@ static Bool intel_uxa_put_image(PixmapPtr pixmap,
 				return FALSE;

 			if (!intel_uxa_pixmap_is_offscreen(scratch)) {
-				screen->DestroyPixmap(scratch);
+				dixDestroyPixmap(scratch, 0);
 				return FALSE;
 			}

@@ -830,7 +830,7 @@ static Bool intel_uxa_put_image(PixmapPtr pixmap,
 					ret =3D FALSE;
 			}

-			(*screen->DestroyPixmap)(scratch);
+			dixDestroyPixmap(scratch, 0);
 			return ret;
 		}
 	}
@@ -896,13 +896,13 @@ static Bool intel_uxa_get_image(PixmapPtr pixmap,
 			return FALSE;

 		if (!intel_uxa_pixmap_is_offscreen(scratch)) {
-			screen->DestroyPixmap(scratch);
+			dixDestroyPixmap(scratch, 0);
 			return FALSE;
 		}

 		gc =3D GetScratchGC(pixmap->drawable.depth, screen);
 		if (!gc) {
-			screen->DestroyPixmap(scratch);
+			dixDestroyPixmap(scratch, 0);
 			return FALSE;
 		}

@@ -923,7 +923,7 @@ static Bool intel_uxa_get_image(PixmapPtr pixmap,
 	ret =3D intel_uxa_pixmap_get_image(pixmap, x, y, w, h, dst, dst_pitch);

 	if (scratch)
-		scratch->drawable.pScreen->DestroyPixmap(scratch);
+		dixDestroyPixmap(scratch, 0);

 	return ret;
 }
diff --git a/src/uxa/uxa-glyphs.c b/src/uxa/uxa-glyphs.c
index d24ba518..ac33178d 100644
=2D-- a/src/uxa/uxa-glyphs.c
+++ b/src/uxa/uxa-glyphs.c
@@ -172,7 +172,7 @@ static Bool uxa_realize_glyph_caches(ScreenPtr pScreen=
)
 			goto bail;
 		if (!uxa_pixmap_is_offscreen(pixmap)) {
 			/* Presume shadow is in-effect */
-			pScreen->DestroyPixmap(pixmap);
+			dixDestroyPixmap(pixmap, 0);
 			uxa_unrealize_glyph_caches(pScreen);
 			return TRUE;
 		}
@@ -182,7 +182,7 @@ static Bool uxa_realize_glyph_caches(ScreenPtr pScreen=
)
 					CPComponentAlpha, &component_alpha,
 					serverClient, &error);

-		pScreen->DestroyPixmap(pixmap);
+		dixDestroyPixmap(pixmap, 0);

 		if (!picture)
 			goto bail;
@@ -293,7 +293,7 @@ uxa_glyph_cache_upload_glyph(ScreenPtr screen,
 		      x, y);

 	if (scratch !=3D pGlyphPixmap)
-		screen->DestroyPixmap(scratch);
+		dixDestroyPixmap(scratch, 0);

 	FreeScratchGC(gc);
 }
@@ -769,7 +769,7 @@ uxa_glyphs_via_mask(CARD8 op,
 		return 1;

 	if (!uxa_pixmap_is_offscreen(pixmap)) {
-		screen->DestroyPixmap(pixmap);
+		dixDestroyPixmap(pixmap, 0);
 		return -1;
 	}

@@ -780,7 +780,7 @@ uxa_glyphs_via_mask(CARD8 op,
 	if (!white_pixmap) {
 		if (white)
 			FreePicture(white, 0);
-		screen->DestroyPixmap(pixmap);
+		dixDestroyPixmap(pixmap, 0);
 		return -1;
 	}

@@ -790,7 +790,7 @@ uxa_glyphs_via_mask(CARD8 op,
 	mask =3D CreatePicture(0, &pixmap->drawable,
 			      maskFormat, CPComponentAlpha,
 			      &component_alpha, serverClient, &error);
-	screen->DestroyPixmap(pixmap);
+	dixDestroyPixmap(pixmap, 0);

 	if (!mask) {
 		FreePicture(white, 0);
diff --git a/src/uxa/uxa-render.c b/src/uxa/uxa-render.c
index 0c3e8560..ea3e9d4a 100644
=2D-- a/src/uxa/uxa-render.c
+++ b/src/uxa/uxa-render.c
@@ -479,7 +479,7 @@ uxa_picture_for_pixman_format(ScreenPtr screen,
 		return 0;

 	if (!uxa_pixmap_is_offscreen(pixmap)) {
-		screen->DestroyPixmap(pixmap);
+		dixDestroyPixmap(pixmap, 0);
 		return 0;
 	}

@@ -488,7 +488,7 @@ uxa_picture_for_pixman_format(ScreenPtr screen,
 						   PIXMAN_FORMAT_DEPTH(format),
 						   format),
 				0, 0, serverClient, &error);
-	screen->DestroyPixmap(pixmap);
+	dixDestroyPixmap(pixmap, 0);
 	if (!picture)
 		return 0;

@@ -592,7 +592,7 @@ uxa_create_solid(ScreenPtr screen, uint32_t color)
 		return 0;

 	if (!uxa_prepare_access((DrawablePtr)pixmap, UXA_ACCESS_RW)) {
-		(*screen->DestroyPixmap)(pixmap);
+		dixDestroyPixmap(pixmap, 0);
 		return 0;
 	}
 	*((uint32_t *)pixmap->devPrivate.ptr) =3D color;
@@ -601,7 +601,7 @@ uxa_create_solid(ScreenPtr screen, uint32_t color)
 	picture =3D CreatePicture(0, &pixmap->drawable,
 				PictureMatchFormat(screen, 32, PICT_a8r8g8b8),
 				CPRepeat, &repeat, serverClient, &error);
-	(*screen->DestroyPixmap)(pixmap);
+	dixDestroyPixmap(pixmap, 0);

 	return picture;
 }
@@ -828,13 +828,13 @@ uxa_acquire_drawable(ScreenPtr pScreen,

 	/* Skip the copy if the result remains in memory and not a bo */
 	if (!uxa_pixmap_is_offscreen(pPixmap)) {
-		pScreen->DestroyPixmap(pPixmap);
+		dixDestroyPixmap(pPixmap, 0);
 		return 0;
 	}

 	pGC =3D GetScratchGC(depth, pScreen);
 	if (!pGC) {
-		pScreen->DestroyPixmap(pPixmap);
+		dixDestroyPixmap(pPixmap, 0);
 		return 0;
 	}

@@ -846,7 +846,7 @@ uxa_acquire_drawable(ScreenPtr pScreen,
 	pDst =3D CreatePicture(0, &pPixmap->drawable,
 			     PictureMatchFormat(pScreen, depth, pSrc->format),
 			     0, 0, serverClient, &error);
-	pScreen->DestroyPixmap(pPixmap);
+	dixDestroyPixmap(pPixmap, 0);
 	if (!pDst)
 		return 0;

@@ -978,7 +978,7 @@ uxa_try_driver_composite(CARD8 op,

 		gc =3D GetScratchGC(depth, screen);
 		if (!gc) {
-			screen->DestroyPixmap(pixmap);
+			dixDestroyPixmap(pixmap, 0);
 			return 0;
 		}

@@ -993,7 +993,7 @@ uxa_try_driver_composite(CARD8 op,
 		localDst =3D CreatePicture(0, &pixmap->drawable,
 					 PictureMatchFormat(screen, depth, pDst->format),
 					 0, 0, serverClient, &error);
-		screen->DestroyPixmap(pixmap);
+		dixDestroyPixmap(pixmap, 0);

 		if (!localDst)
 			return 0;
@@ -1238,7 +1238,7 @@ uxa_try_magic_two_pass_composite_helper(CARD8 op,

 		gc =3D GetScratchGC(depth, screen);
 		if (!gc) {
-			screen->DestroyPixmap(pixmap);
+			dixDestroyPixmap(pixmap, 0);
 			return 0;
 		}

@@ -1253,7 +1253,7 @@ uxa_try_magic_two_pass_composite_helper(CARD8 op,
 		localDst =3D CreatePicture(0, &pixmap->drawable,
 					 PictureMatchFormat(screen, depth, pDst->format),
 					 0, 0, serverClient, &error);
-		screen->DestroyPixmap(pixmap);
+		dixDestroyPixmap(pixmap, 0);

 		if (!localDst)
 			return 0;
@@ -1574,7 +1574,7 @@ uxa_create_alpha_picture(ScreenPtr pScreen,
 		return 0;
 	pPicture =3D CreatePicture(0, &pPixmap->drawable, pPictFormat,
 				 0, 0, serverClient, &error);
-	(*pScreen->DestroyPixmap) (pPixmap);
+	dixDestroyPixmap(pPixmap, 0);
 	return pPicture;
 }

diff --git a/src/uxa/uxa.c b/src/uxa/uxa.c
index b682dfd9..125dc0c4 100644
=2D-- a/src/uxa/uxa.c
+++ b/src/uxa/uxa.c
@@ -191,7 +191,7 @@ uxa_validate_gc(GCPtr pGC, unsigned long changes, Draw=
ablePtr pDrawable)

 #ifdef FB_24_32BIT
 	if ((changes & GCTile) && fbGetRotatedPixmap(pGC)) {
-		(*pGC->pScreen->DestroyPixmap) (fbGetRotatedPixmap(pGC));
+		dixDestroyPixmap(fbGetRotatedPixmap(pGC), 0);
 		fbGetRotatedPixmap(pGC) =3D 0;
 	}

@@ -205,8 +205,7 @@ uxa_validate_gc(GCPtr pGC, unsigned long changes, Draw=
ablePtr pDrawable)
 			    pNewTile->drawable.bitsPerPixel !=3D
 			    pDrawable->bitsPerPixel) {
 				if (pNewTile)
-					(*pGC->pScreen->
-					 DestroyPixmap) (pNewTile);
+					dixDestroyPixmap(pNewTile, 0);
 				/* fb24_32ReformatTile will do direct access
 				 * of a newly-allocated pixmap.  This isn't a
 				 * problem yet, since we don't put pixmaps in
=2D-
2.39.5

