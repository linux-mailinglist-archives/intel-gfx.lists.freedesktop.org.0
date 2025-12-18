Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7E6CCD674
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 20:33:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 570EB10E48F;
	Thu, 18 Dec 2025 19:33:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="W4/oZ3OZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B35010EB37;
 Thu, 18 Dec 2025 19:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1766086399;
 bh=4guomtwQCJEZIp9uKf6HgxDw6KfWCmhXUzEQF1Zr7Xg=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=W4/oZ3OZ3rMuptdXNoGbIWc+Qf7aMoLH2A+DTfCphzZmS3Mf9kBfxEfUPJySiglG5
 i4xNvJgYY/P8A9/0cwYnpWK7+eJXhswIQzd7L9dAalFkuItomdI2BhzWEtU7FHvj+m
 0m4nK1JZA143QLqjmm+D7ok9w3+Mpgo44WbIZBTHaF66c89EsqQU4wHEK9QLxdPPmn
 ES9M6O37+rj7BwoUIk1qZIpcyr6ltUruqZw1zYK1Warigb5l1L7l2SmFDU5Fky3IE4
 iVDQMf19VxSe9CytUm/UVPE0G6cR8A1dLD+7+9gSIctkTTAk5n4eD7atalOkaTQJWQ
 a7m2uqEBm0wMQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [i915-rt v4.1] drm/i915/display: Do not take uncore lock in
 i915_get_vblank_counter
Date: Thu, 18 Dec 2025 20:33:55 +0100
Message-ID: <20251218193355.125055-1-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251218163408.97508-20-dev@lankhorst.se>
References: <20251218163408.97508-20-dev@lankhorst.se>
MIME-Version: 1.0
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

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/intel_de.h       |  8 ++++++
 drivers/gpu/drm/i915/display/intel_vblank.c   |  4 +--
 drivers/gpu/drm/i915/intel_uncore.h           | 26 +++++++++++++------
 .../drm/xe/compat-i915-headers/intel_uncore.h |  7 +++++
 4 files changed, 35 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index a7ce3b875e06c..e4fda91007f0a 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -63,6 +63,14 @@ intel_de_read64_2x32(struct intel_display *display,
 	return val;
 }
 
+static inline u64
+intel_de_read64_2x32_fw(struct intel_display *display,
+			i915_reg_t lower_reg, i915_reg_t upper_reg)
+{
+	return intel_uncore_read64_2x32_fw(__to_uncore(display),
+					   lower_reg, upper_reg);
+}
+
 static inline void
 intel_de_posting_read(struct intel_display *display, i915_reg_t reg)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index a98dd3a436c28..a66f1d8db9fc4 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -110,8 +110,8 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
 	 * we get a low value that's stable across two reads of the high
 	 * register.
 	 */
-	frame = intel_de_read64_2x32(display, PIPEFRAMEPIXEL(display, pipe),
-				     PIPEFRAME(display, pipe));
+	frame = intel_de_read64_2x32_fw(display, PIPEFRAMEPIXEL(display, pipe),
+				        PIPEFRAME(display, pipe));
 
 	pixel = frame & PIPE_PIXEL_MASK;
 	frame = (frame >> PIPE_FRAME_LOW_SHIFT) & 0xffffff;
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index fafc2ca9a2376..507398a562649 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -449,13 +449,28 @@ static inline void intel_uncore_rmw_fw(struct intel_uncore *uncore,
 		intel_uncore_write_fw(uncore, reg, val);
 }
 
+static inline u64
+intel_uncore_read64_2x32_fw(struct intel_uncore *uncore,
+			    i915_reg_t lower_reg, i915_reg_t upper_reg)
+{
+	u32 upper, lower, old_upper, loop = 0;
+	upper = intel_uncore_read_fw(uncore, upper_reg);
+	do {
+		old_upper = upper;
+		lower = intel_uncore_read_fw(uncore, lower_reg);
+		upper = intel_uncore_read_fw(uncore, upper_reg);
+	} while (upper != old_upper && loop++ < 2);
+
+	return (u64)upper << 32 | lower;
+}
+
 static inline u64
 intel_uncore_read64_2x32(struct intel_uncore *uncore,
 			 i915_reg_t lower_reg, i915_reg_t upper_reg)
 {
-	u32 upper, lower, old_upper, loop = 0;
 	enum forcewake_domains fw_domains;
 	unsigned long flags;
+	u64 ret;
 
 	fw_domains = intel_uncore_forcewake_for_reg(uncore, lower_reg,
 						    FW_REG_READ);
@@ -466,17 +481,12 @@ intel_uncore_read64_2x32(struct intel_uncore *uncore,
 	spin_lock_irqsave(&uncore->lock, flags);
 	intel_uncore_forcewake_get__locked(uncore, fw_domains);
 
-	upper = intel_uncore_read_fw(uncore, upper_reg);
-	do {
-		old_upper = upper;
-		lower = intel_uncore_read_fw(uncore, lower_reg);
-		upper = intel_uncore_read_fw(uncore, upper_reg);
-	} while (upper != old_upper && loop++ < 2);
+	ret = intel_uncore_read64_2x32_fw(uncore, lower_reg, upper_reg);
 
 	intel_uncore_forcewake_put__locked(uncore, fw_domains);
 	spin_unlock_irqrestore(&uncore->lock, flags);
 
-	return (u64)upper << 32 | lower;
+	return ret;
 }
 
 static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index d93ddacdf743d..fd6271bcbe03c 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -67,6 +67,13 @@ intel_uncore_read64_2x32(struct intel_uncore *uncore,
 	return (u64)upper << 32 | lower;
 }
 
+static inline u64
+intel_uncore_read64_2x32_fw(struct intel_uncore *uncore,
+			    i915_reg_t i915_lower_reg, i915_reg_t i915_upper_reg)
+{
+	return intel_uncore_read64_2x32(uncore, i915_lower_reg, i915_upper_reg);
+}
+
 static inline void intel_uncore_posting_read(struct intel_uncore *uncore,
 					     i915_reg_t i915_reg)
 {
-- 
2.51.0

