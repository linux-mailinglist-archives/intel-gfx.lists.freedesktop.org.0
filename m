Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CBDBB63F4
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Oct 2025 10:38:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C35A010E1E5;
	Fri,  3 Oct 2025 08:37:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="CuR8mkvw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 553E310E0DF;
 Fri,  3 Oct 2025 08:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I/zMUlj7fT7EOl1nqd5o1txDqsOUXr7ulX9vvYSomSU=; b=CuR8mkvwnOfr/HQPFe8aLZSdr1
 GzX92Dj0yPW0+XAoRdHb5xv0I5dCM55PESCoYq4mdnXuWeeiFCXoAFbECq40M0NtQu8be6H+C7Un+
 /ibcFcx5OT3+DcZEw6TgyMQo/Gtv1gDXm5zg5v54vRXwJ2cF6zuCFWiOJZM3tVusjmp3IvusGWUOw
 pcWL/q7GjWsaO8kPAC3aEBqOgkWIifhlYPoNmwgn4j0KepbmuBOqOonx0RJehd3lU0HVY0Wmw2TOa
 RvKSKKZVFItzSWMzy9tUKQTFNCL/DcwWP+8o+xe0QD0MkzqGQGGD+Y7vitFBpclsnIiwTyeuhOfN7
 LAHx+77w==;
Received: from [84.66.36.92] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1v4bIX-003mKT-TE; Fri, 03 Oct 2025 10:37:53 +0200
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 igt-dev@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH i-g-t] lib/igt_fb/intel: Use correct MOCS for displayable
 surfaces
Date: Fri,  3 Oct 2025 09:37:46 +0100
Message-ID: <20251003083746.36461-1-tvrtko.ursulin@igalia.com>
X-Mailer: git-send-email 2.48.0
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

Using the uncached MOCS for displayable surfaces is not always correct,
especially when CCS compression is used with which some platforms require
a special uncached entry, otherwise writes get unexpectedly cached.

Lets copy the knowledge of what is the correct MOCS for displayable
surfaces from Mesa and add some new helpers to get it.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 lib/igt_fb.c       |  2 +-
 lib/intel_bufops.c |  2 ++
 lib/intel_mocs.c   | 21 +++++++++++++++++++--
 lib/intel_mocs.h   |  2 ++
 4 files changed, 24 insertions(+), 3 deletions(-)

diff --git a/lib/igt_fb.c b/lib/igt_fb.c
index 03ede3a6fa20..b5a16f9cbe90 100644
--- a/lib/igt_fb.c
+++ b/lib/igt_fb.c
@@ -2712,7 +2712,7 @@ igt_fb_create_intel_buf(int fd, struct buf_ops *bops,
 				    fb->strides[0],
 				    region,
 				    intel_get_pat_idx_uc(fd),
-				    DEFAULT_MOCS_INDEX);
+				    DISPLAYABLE_MOCS_INDEX);
 	intel_buf_set_name(buf, name);
 
 	/* only really needed for proper CCS handling */
diff --git a/lib/intel_bufops.c b/lib/intel_bufops.c
index 475b0d1f7b10..1196069a500f 100644
--- a/lib/intel_bufops.c
+++ b/lib/intel_bufops.c
@@ -1008,6 +1008,8 @@ static void __intel_buf_init(struct buf_ops *bops,
 	buf->pat_index = pat_index;
 	if (mocs_index == DEFAULT_MOCS_INDEX)
 		mocs_index = intel_get_uc_mocs_index(bops->fd);
+	else if (mocs_index == DISPLAYABLE_MOCS_INDEX)
+		mocs_index = intel_get_displayable_mocs_index(bops->fd);
 	buf->mocs_index = mocs_index;
 	IGT_INIT_LIST_HEAD(&buf->link);
 
diff --git a/lib/intel_mocs.c b/lib/intel_mocs.c
index e0c33c31c088..eefe83cf2116 100644
--- a/lib/intel_mocs.c
+++ b/lib/intel_mocs.c
@@ -9,12 +9,14 @@
 struct drm_intel_mocs_index {
 	uint8_t uc_index;
 	uint8_t wb_index;
+	uint8_t external_index;
 	uint8_t defer_to_pat_index;
 };
 
 static void get_mocs_index(int fd, struct drm_intel_mocs_index *mocs)
 {
 	uint16_t devid = intel_get_drm_devid(fd);
+	unsigned int ip_ver = intel_graphics_ver(devid);
 
 	/*
 	 * Gen >= 12 onwards don't have a setting for PTE,
@@ -23,25 +25,31 @@ static void get_mocs_index(int fd, struct drm_intel_mocs_index *mocs)
 	 * This helper function is providing current UC as well
 	 * as WB MOCS index based on platform.
 	 */
-	if (intel_graphics_ver(devid) >= IP_VER(20, 0)) {
+	if (ip_ver >= IP_VER(20, 0)) {
 		mocs->uc_index = 3;
 		mocs->wb_index = 4;
+		mocs->external_index = 1;
 		mocs->defer_to_pat_index = 0;
 	} else if (IS_METEORLAKE(devid)) {
 		mocs->uc_index = 5;
 		mocs->wb_index = 1;
+		mocs->external_index = 14;
 	} else if (IS_DG2(devid)) {
 		mocs->uc_index = 1;
 		mocs->wb_index = 3;
+		mocs->external_index = 3;
 	} else if (IS_DG1(devid)) {
 		mocs->uc_index = 1;
 		mocs->wb_index = 5;
-	} else if (IS_GEN12(devid)) {
+		mocs->external_index = 5;
+	} else if (ip_ver >= IP_VER(12, 0)) {
 		mocs->uc_index = 3;
 		mocs->wb_index = 2;
+		mocs->external_index = 61;
 	} else {
 		mocs->uc_index = I915_MOCS_PTE;
 		mocs->wb_index = I915_MOCS_CACHED;
+		mocs->external_index = I915_MOCS_PTE;
 	}
 }
 
@@ -63,6 +71,15 @@ uint8_t intel_get_uc_mocs_index(int fd)
 	return mocs.uc_index;
 }
 
+uint8_t intel_get_displayable_mocs_index(int fd)
+{
+	struct drm_intel_mocs_index mocs;
+
+	get_mocs_index(fd, &mocs);
+
+	return mocs.external_index;
+}
+
 uint8_t intel_get_defer_to_pat_mocs_index(int fd)
 {
 	struct drm_intel_mocs_index mocs;
diff --git a/lib/intel_mocs.h b/lib/intel_mocs.h
index 8597286d259d..394bb41be042 100644
--- a/lib/intel_mocs.h
+++ b/lib/intel_mocs.h
@@ -9,9 +9,11 @@
 #include <stdint.h>
 
 #define DEFAULT_MOCS_INDEX ((uint8_t)-1)
+#define DISPLAYABLE_MOCS_INDEX ((uint8_t)-2)
 
 uint8_t intel_get_wb_mocs_index(int fd);
 uint8_t intel_get_uc_mocs_index(int fd);
+uint8_t intel_get_displayable_mocs_index(int fd);
 uint8_t intel_get_defer_to_pat_mocs_index(int fd);
 
 #endif /* _INTEL_MOCS_H */
-- 
2.48.0

