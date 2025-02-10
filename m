Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD285A2F62A
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 18:58:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49FD610E37D;
	Mon, 10 Feb 2025 17:58:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lP7pjWRL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4500710E377
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 17:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739210322; x=1770746322;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UWJhwlEt7s0lbvuhdvvsN9FO7NkPoN8T32onlxnbizY=;
 b=lP7pjWRLE2YklIGSzZx3VxPnf5CCW5ZhNzY6jW3xt5F7NBKgd2BCM8Kj
 P0alO0r6OMOJ8T591Nmx/kgqpajZy6R8v9zokP75+SyGWHbWhQJoAh1nU
 sxFe8iHDbFe/qbRcKCKbHlrpOfGm7/oFqqX28O8YUu1sU8lh0x7R0KYxk
 HgobpWRcfLEc1JFe9zZGpDS/ZPFg7gUDdG4v9xuBHJlj6s1FjjIwwIp+Y
 vaWYN61RixxE/fybDrK15EnAOm540mAQ7IT3UDAuEzIGRguYBJYxyRb42
 oDkOCoyolCL+PdS9pSwoXLiq5mW/VfhXKFGH55Hxa0jmiGCiTn2NcVTwz g==;
X-CSE-ConnectionGUID: kfpq5e9JR/Wju4Qw5GENwA==
X-CSE-MsgGUID: kyCgNvtrSPCtXI8fFsxeRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39002990"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="39002990"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 09:58:42 -0800
X-CSE-ConnectionGUID: clZXK/XrTBuM1r+XEox9Gg==
X-CSE-MsgGUID: nz1+ADzPSzOC0GNs7X+ptQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112480685"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 09:58:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Feb 2025 19:58:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH xf86-video-intel 1/7] Fix transposed calloc() arguments
Date: Mon, 10 Feb 2025 19:58:30 +0200
Message-ID: <20250210175836.30984-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250210175836.30984-1-ville.syrjala@linux.intel.com>
References: <20250210175836.30984-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

gcc-14 complains:
../src/legacy/i810/i810_dri.c:281:48: warning: ‘calloc’ sizes specified with ‘sizeof’ in the earlier argument and not in the later argument [-Wcalloc-transposed-args]
...

Fix them all up via cocci:
@@
expression E1, E2;
type T;
@@
(
- calloc(sizeof(T), E2)
+ calloc(E2, sizeof(T))
|
- calloc(sizeof(E1), E2)
+ calloc(E2, sizeof(E1))
)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 src/legacy/i810/i810_dri.c    | 2 +-
 src/legacy/i810/i810_driver.c | 2 +-
 src/sna/sna_display.c         | 4 ++--
 src/sna/sna_glyphs.c          | 4 ++--
 src/uxa/intel_display.c       | 8 ++++----
 src/uxa/intel_present.c       | 2 +-
 src/uxa/uxa-glyphs.c          | 2 +-
 src/uxa/uxa.c                 | 2 +-
 test/basic-copyarea.c         | 3 ++-
 test/basic-fillrect.c         | 3 ++-
 test/basic-putimage.c         | 3 ++-
 test/render-composite-solid.c | 3 ++-
 test/render-copy-alphaless.c  | 3 ++-
 test/render-copyarea.c        | 3 ++-
 test/render-fill-copy.c       | 3 ++-
 test/render-fill.c            | 3 ++-
 test/render-trapezoid-image.c | 3 ++-
 test/render-trapezoid.c       | 3 ++-
 18 files changed, 33 insertions(+), 23 deletions(-)

diff --git a/src/legacy/i810/i810_dri.c b/src/legacy/i810/i810_dri.c
index cca35d663b35..6c747f483ac6 100644
--- a/src/legacy/i810/i810_dri.c
+++ b/src/legacy/i810/i810_dri.c
@@ -278,7 +278,7 @@ I810DRIScreenInit(ScreenPtr pScreen)
    }
    pDRIInfo->SAREASize = SAREA_MAX;
 
-   if (!(pI810DRI = (I810DRIPtr) calloc(sizeof(I810DRIRec), 1))) {
+   if (!(pI810DRI = (I810DRIPtr) calloc(1, sizeof(I810DRIRec)))) {
       DRIDestroyInfoRec(pI810->pDRIInfo);
       pI810->pDRIInfo = NULL;
       return FALSE;
diff --git a/src/legacy/i810/i810_driver.c b/src/legacy/i810/i810_driver.c
index 778b1a415274..c0de514e6a7c 100644
--- a/src/legacy/i810/i810_driver.c
+++ b/src/legacy/i810/i810_driver.c
@@ -1544,7 +1544,7 @@ I810ScreenInit(SCREEN_INIT_ARGS_DECL)
    pI810 = I810PTR(scrn);
    hwp = VGAHWPTR(scrn);
 
-   pI810->LpRing = calloc(sizeof(I810RingBuffer),1);
+   pI810->LpRing = calloc(1, sizeof(I810RingBuffer));
    if (!pI810->LpRing) {
      xf86DrvMsg(scrn->scrnIndex, X_ERROR,
 		"Could not allocate lpring data structure.\n");
diff --git a/src/sna/sna_display.c b/src/sna/sna_display.c
index d4fa7b0bc759..e4a26ac53437 100644
--- a/src/sna/sna_display.c
+++ b/src/sna/sna_display.c
@@ -3793,7 +3793,7 @@ sna_crtc_add(ScrnInfoPtr scrn, unsigned id, int index)
 
 	DBG(("%s(%d): is-zaphod? %d\n", __FUNCTION__, id, is_zaphod(scrn)));
 
-	sna_crtc = calloc(sizeof(struct sna_crtc), 1);
+	sna_crtc = calloc(1, sizeof(struct sna_crtc));
 	if (sna_crtc == NULL)
 		return false;
 
@@ -5321,7 +5321,7 @@ sna_output_add(struct sna *sna, unsigned id, unsigned serial)
 		possible_crtcs >>= ffs(zaphod_crtcs) - 1;
 	}
 
-	sna_output = calloc(sizeof(struct sna_output), 1);
+	sna_output = calloc(1, sizeof(struct sna_output));
 	if (!sna_output)
 		return -1;
 
diff --git a/src/sna/sna_glyphs.c b/src/sna/sna_glyphs.c
index ebc061b5a8a8..285ded82128a 100644
--- a/src/sna/sna_glyphs.c
+++ b/src/sna/sna_glyphs.c
@@ -269,8 +269,8 @@ bool sna_glyphs_create(struct sna *sna)
 
 		cache->count = cache->evict = 0;
 		cache->picture = picture;
-		cache->glyphs = calloc(sizeof(struct sna_glyph *),
-				       GLYPH_CACHE_SIZE);
+		cache->glyphs = calloc(GLYPH_CACHE_SIZE,
+				       sizeof(struct sna_glyph *));
 		if (!cache->glyphs)
 			goto bail;
 
diff --git a/src/uxa/intel_display.c b/src/uxa/intel_display.c
index 409cbbcf7901..fc8e0811fd4a 100644
--- a/src/uxa/intel_display.c
+++ b/src/uxa/intel_display.c
@@ -313,7 +313,7 @@ intel_crtc_apply(xf86CrtcPtr crtc)
 	int fb_id, x, y;
 	int i, ret = FALSE;
 
-	output_ids = calloc(sizeof(uint32_t), xf86_config->num_output);
+	output_ids = calloc(xf86_config->num_output, sizeof(uint32_t));
 	if (!output_ids)
 		return FALSE;
 
@@ -734,7 +734,7 @@ intel_crtc_init(ScrnInfoPtr scrn, struct intel_mode *mode, drmModeResPtr mode_re
 	xf86CrtcPtr crtc;
 	struct intel_crtc *intel_crtc;
 
-	intel_crtc = calloc(sizeof(struct intel_crtc), 1);
+	intel_crtc = calloc(1, sizeof(struct intel_crtc));
 	if (intel_crtc == NULL)
 		return;
 
@@ -1542,7 +1542,7 @@ intel_output_init(ScrnInfoPtr scrn, struct intel_mode *mode, drmModeResPtr mode_
 			return;
 		}
 	}
-	kencoders = calloc(sizeof(drmModeEncoderPtr), koutput->count_encoders);
+	kencoders = calloc(koutput->count_encoders, sizeof(drmModeEncoderPtr));
 	if (!kencoders) {
 		goto out_free_encoders;
 	}
@@ -1558,7 +1558,7 @@ intel_output_init(ScrnInfoPtr scrn, struct intel_mode *mode, drmModeResPtr mode_
 		goto out_free_encoders;
 	}
 
-	intel_output = calloc(sizeof(struct intel_output), 1);
+	intel_output = calloc(1, sizeof(struct intel_output));
 	if (!intel_output) {
 		xf86OutputDestroy(output);
 		goto out_free_encoders;
diff --git a/src/uxa/intel_present.c b/src/uxa/intel_present.c
index b21e5c41072f..d92aebc68e12 100644
--- a/src/uxa/intel_present.c
+++ b/src/uxa/intel_present.c
@@ -168,7 +168,7 @@ intel_present_queue_vblank(RRCrtcPtr                    crtc,
 	int                                     ret;
 	uint32_t                                seq;
 
-	event = calloc(sizeof(struct intel_present_vblank_event), 1);
+	event = calloc(1, sizeof(struct intel_present_vblank_event));
 	if (!event)
 		return BadAlloc;
 	event->event_id = event_id;
diff --git a/src/uxa/uxa-glyphs.c b/src/uxa/uxa-glyphs.c
index d24ba5187870..98f02ffc442a 100644
--- a/src/uxa/uxa-glyphs.c
+++ b/src/uxa/uxa-glyphs.c
@@ -190,7 +190,7 @@ static Bool uxa_realize_glyph_caches(ScreenPtr pScreen)
 		ValidatePicture(picture);
 
 		cache->picture = picture;
-		cache->glyphs = calloc(sizeof(GlyphPtr), GLYPH_CACHE_SIZE);
+		cache->glyphs = calloc(GLYPH_CACHE_SIZE, sizeof(GlyphPtr));
 		if (!cache->glyphs)
 			goto bail;
 
diff --git a/src/uxa/uxa.c b/src/uxa/uxa.c
index b682dfd9f7f7..3a474ff6ef8b 100644
--- a/src/uxa/uxa.c
+++ b/src/uxa/uxa.c
@@ -470,7 +470,7 @@ Bool uxa_driver_init(ScreenPtr screen, uxa_driver_t * uxa_driver)
 	if (!dixRegisterPrivateKey(&uxa_screen_index, PRIVATE_SCREEN, 0))
 	    return FALSE;
 #endif
-	uxa_screen = calloc(sizeof(uxa_screen_t), 1);
+	uxa_screen = calloc(1, sizeof(uxa_screen_t));
 
 	if (!uxa_screen) {
 		LogMessage(X_WARNING,
diff --git a/test/basic-copyarea.c b/test/basic-copyarea.c
index a1ef34913176..c70b6a65536e 100644
--- a/test/basic-copyarea.c
+++ b/test/basic-copyarea.c
@@ -154,7 +154,8 @@ static void area_tests(struct test *t, int reps, int sets, enum target target)
 {
 	struct test_target tt;
 	XImage image;
-	uint32_t *cells = calloc(sizeof(uint32_t), t->out.width*t->out.height);
+	uint32_t *cells = calloc(t->out.width * t->out.height,
+				 sizeof(uint32_t));
 	int r, s, x, y;
 
 	printf("Testing area sets (%s): ", test_target_name(target));
diff --git a/test/basic-fillrect.c b/test/basic-fillrect.c
index 80c219c7b731..967caacb48bf 100644
--- a/test/basic-fillrect.c
+++ b/test/basic-fillrect.c
@@ -124,7 +124,8 @@ static void area_tests(struct test *t, int reps, int sets, enum target target)
 {
 	struct test_target tt;
 	XImage image;
-	uint32_t *cells = calloc(sizeof(uint32_t), t->out.width*t->out.height);
+	uint32_t *cells = calloc(t->out.width * t->out.height,
+				 sizeof(uint32_t));
 	int r, s, x, y;
 
 	printf("Testing area sets (%s): ", test_target_name(target));
diff --git a/test/basic-putimage.c b/test/basic-putimage.c
index e252fe3fe2b4..2a96e7cf1e31 100644
--- a/test/basic-putimage.c
+++ b/test/basic-putimage.c
@@ -144,7 +144,8 @@ static void area_tests(struct test *t, int reps, int sets, enum target target, i
 {
 	struct test_target tt;
 	XImage image;
-	uint32_t *cells = calloc(sizeof(uint32_t), t->out.width*t->out.height);
+	uint32_t *cells = calloc(t->out.width * t->out.height,
+				 sizeof(uint32_t));
 	int r, s, x, y;
 
 	printf("Testing area sets (%s %s shm): ",
diff --git a/test/render-composite-solid.c b/test/render-composite-solid.c
index 9d779be2e808..4751c0c60eb0 100644
--- a/test/render-composite-solid.c
+++ b/test/render-composite-solid.c
@@ -109,7 +109,8 @@ static void area_tests(struct test *t, int reps, int sets, enum target target)
 {
 	struct test_target tt;
 	XImage image;
-	uint32_t *cells = calloc(sizeof(uint32_t), t->out.width*t->out.height);
+	uint32_t *cells = calloc(t->out.width * t->out.height,
+				 sizeof(uint32_t));
 	int r, s, x, y;
 
 	printf("Testing area sets (%s): ", test_target_name(target));
diff --git a/test/render-copy-alphaless.c b/test/render-copy-alphaless.c
index 01c74a7ee912..5ba31291154e 100644
--- a/test/render-copy-alphaless.c
+++ b/test/render-copy-alphaless.c
@@ -139,7 +139,8 @@ static void area_tests(struct test *t, int reps, int sets, enum target target)
 {
 	struct test_target tt;
 	XImage image;
-	uint32_t *cells = calloc(sizeof(uint32_t), t->out.width*t->out.height);
+	uint32_t *cells = calloc(t->out.width * t->out.height,
+				 sizeof(uint32_t));
 	int r, s, x, y;
 
 	printf("Testing area sets (%s): ", test_target_name(target));
diff --git a/test/render-copyarea.c b/test/render-copyarea.c
index a202ddeb2711..ee7ff34e83b8 100644
--- a/test/render-copyarea.c
+++ b/test/render-copyarea.c
@@ -158,7 +158,8 @@ static void area_tests(struct test *t, int reps, int sets, enum target target)
 {
 	struct test_target tt;
 	XImage image;
-	uint32_t *cells = calloc(sizeof(uint32_t), t->out.width*t->out.height);
+	uint32_t *cells = calloc(t->out.width * t->out.height,
+				 sizeof(uint32_t));
 	int r, s, x, y;
 
 	printf("Testing area sets (%s): ", test_target_name(target));
diff --git a/test/render-fill-copy.c b/test/render-fill-copy.c
index b5b475a081d6..0cbbe8c93866 100644
--- a/test/render-fill-copy.c
+++ b/test/render-fill-copy.c
@@ -131,7 +131,8 @@ static void area_tests(struct test *t, int reps, int sets, enum target target)
 {
 	struct test_target tt;
 	XImage image;
-	uint32_t *cells = calloc(sizeof(uint32_t), t->out.width*t->out.height);
+	uint32_t *cells = calloc(t->out.width * t->out.height,
+				 sizeof(uint32_t));
 	int r, s, x, y;
 
 	printf("Testing area sets (%s): ", test_target_name(target));
diff --git a/test/render-fill.c b/test/render-fill.c
index 37c9d8583249..153104649d02 100644
--- a/test/render-fill.c
+++ b/test/render-fill.c
@@ -101,7 +101,8 @@ static void area_tests(struct test *t, int reps, int sets, enum target target)
 {
 	struct test_target tt;
 	XImage image;
-	uint32_t *cells = calloc(sizeof(uint32_t), t->out.width*t->out.height);
+	uint32_t *cells = calloc(t->out.width * t->out.height,
+				 sizeof(uint32_t));
 	int r, s, x, y;
 
 	printf("Testing area sets (%s): ", test_target_name(target));
diff --git a/test/render-trapezoid-image.c b/test/render-trapezoid-image.c
index 452b4ec99a95..0a84ef887eee 100644
--- a/test/render-trapezoid-image.c
+++ b/test/render-trapezoid-image.c
@@ -265,7 +265,8 @@ static void area_tests(struct test *t, int reps, int sets, enum target target, i
 {
 	struct test_target tt;
 	XImage image;
-	uint32_t *cells = calloc(sizeof(uint32_t), t->out.width*t->out.height);
+	uint32_t *cells = calloc(t->out.width * t->out.height,
+				 sizeof(uint32_t));
 	int r, s, x, y;
 
 	printf("Testing area sets (%s using %s source): ",
diff --git a/test/render-trapezoid.c b/test/render-trapezoid.c
index f15a78e3bdc0..38713a5fc8ff 100644
--- a/test/render-trapezoid.c
+++ b/test/render-trapezoid.c
@@ -151,7 +151,8 @@ static void area_tests(struct test *t, int reps, int sets, enum target target)
 {
 	struct test_target tt;
 	XImage image;
-	uint32_t *cells = calloc(sizeof(uint32_t), t->out.width*t->out.height);
+	uint32_t *cells = calloc(t->out.width * t->out.height,
+				 sizeof(uint32_t));
 	int r, s, x, y;
 
 	printf("Testing area sets (%s): ", test_target_name(target));
-- 
2.45.3

