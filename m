Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sH3YHHracGnCaQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 14:54:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FA357FD1
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 14:54:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B008310E7EE;
	Wed, 21 Jan 2026 13:54:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="RbhOTMuw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 370F210E7E9;
 Wed, 21 Jan 2026 13:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1769003638;
 bh=c0Nq6WMe6i9uPq9xx7/xcLBj1jJ2NMuInbAqT05sKhI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RbhOTMuwuMmMVcR6881vG6QWHADXQTkqqlUx/a6GdsYdh1wEoFeZdYr3EtqFp1ABK
 /q3jFhfoBsBJD/y4tkEyYfLBhv/cf5GjvYh2dzEKcKEPkStmqPplpcnjzCEUYcn51w
 zQzfhnh/C/PqXRt2ZVm4oSgGjp85HDH51mVkJMDvcPx/VLBK6poTMxPJvzgBTKEN9a
 wdAer714lOOoC9zl0tWWRpqAIak/+Kz6GRMPZERBr+L+NtABO+RiQ1fDQR6KD/3d9G
 fCHH8P3Y9h72QN+LfclNknEJWnQLC9SfFSFMeeLO2AWr17B3dmbSGgWOAZSa6wbQoo
 pYB4Uq0W94lFQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Maarten Lankhorst <dev@lankhorst.se>
Subject: [i915-rt v5 18/21] drm/i915/display: Do not take uncore lock in
 i915_get_vblank_counter
Date: Wed, 21 Jan 2026 14:53:14 +0100
Message-ID: <20260121135318.651622-19-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260121135318.651622-1-dev@lankhorst.se>
References: <20260121135318.651622-1-dev@lankhorst.se>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lankhorst.se:email,lankhorst.se:dkim,lankhorst.se:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Queue-Id: 24FA357FD1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index e204c260b9aef..749127ae7794c 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -109,8 +109,8 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
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
index c05d4c4292d3c..b0cca68a46148 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -65,6 +65,13 @@ intel_uncore_read64_2x32(struct intel_uncore *uncore,
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

