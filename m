Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 682BA21E55A
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 03:50:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19FF26E86F;
	Tue, 14 Jul 2020 01:50:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F2DD6E86F;
 Tue, 14 Jul 2020 01:50:52 +0000 (UTC)
IronPort-SDR: DbKPap4oapn3C3GcJyzRD2FYsDt9nm5PmZ2nVkSACpjLSTKwTMfRYGv5AUIp2/AG2sOTIxrcFw
 jiZuIFJg9skw==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="136245068"
X-IronPort-AV: E=Sophos;i="5.75,349,1589266800"; d="scan'208";a="136245068"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 18:50:51 -0700
IronPort-SDR: 5GYEK13dXAcw+t+BmCQHF6fSEnWNBaiZsE+jziB8wPQ0y1/x+JxnwMsm2KDpROwgcfN+GIAKFs
 N4ccjTZjZOfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,349,1589266800"; d="scan'208";a="307680195"
Received: from unknown (HELO karthik-2012-Client-Platform.iind.intel.com)
 ([10.223.74.217])
 by fmsmga004.fm.intel.com with ESMTP; 13 Jul 2020 18:50:48 -0700
From: Karthik B S <karthik.b.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 06:57:22 +0530
Message-Id: <20200714012725.18383-3-karthik.b.s@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200714012725.18383-1-karthik.b.s@intel.com>
References: <20200714012725.18383-1-karthik.b.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 2/5] drm/i915: Add support for async flips in
 I915
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
Cc: paulo.r.zanoni@intel.com, dri-devel@lists.freedesktop.org,
 daniel.vetter@intel.com, harry.wentland@amd.com, nicholas.kazlauskas@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Set the Async Address Update Enable bit in plane ctl
when async flip is requested.

v2: -Move the Async flip enablement to individual patch (Paulo)

v3: -Rebased.

v4: -Add separate plane hook for async flip case (Ville)

Signed-off-by: Karthik B S <karthik.b.s@intel.com>
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  6 +++++
 drivers/gpu/drm/i915/display/intel_sprite.c  | 25 ++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h              |  1 +
 3 files changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d2c04770dd6a..aa0eebeca7ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4765,6 +4765,12 @@ u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
 	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
 	u32 plane_ctl;
 
+	/* During Async flip, no other updates are allowed */
+	if (crtc_state->uapi.async_flip) {
+		plane_ctl |= PLANE_CTL_ASYNC_FLIP;
+		return plane_ctl;
+	}
+
 	plane_ctl = PLANE_CTL_ENABLE;
 
 	if (INTEL_GEN(dev_priv) < 10 && !IS_GEMINILAKE(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index d03860fef2d7..7cffdb48e6df 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -603,6 +603,24 @@ icl_program_input_csc(struct intel_plane *plane,
 			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 2), 0x0);
 }
 
+static void
+skl_program_async_surface_address(struct drm_i915_private *dev_priv,
+				  const struct intel_plane_state *plane_state,
+				  enum pipe pipe, enum plane_id plane_id,
+				  u32 surf_addr)
+{
+	unsigned long irqflags;
+	u32 plane_ctl = plane_state->ctl;
+
+	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
+
+	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
+	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
+			  intel_plane_ggtt_offset(plane_state) + surf_addr);
+
+	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
+}
+
 static void
 skl_program_plane(struct intel_plane *plane,
 		  const struct intel_crtc_state *crtc_state,
@@ -631,6 +649,13 @@ skl_program_plane(struct intel_plane *plane,
 	u32 keymsk, keymax;
 	u32 plane_ctl = plane_state->ctl;
 
+	/* During Async flip, no other updates are allowed */
+	if (crtc_state->uapi.async_flip) {
+		skl_program_async_surface_address(dev_priv, plane_state,
+						  pipe, plane_id, surf_addr);
+		return;
+	}
+
 	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
 
 	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3c4480172e84..879aaeaf093a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6916,6 +6916,7 @@ enum {
 #define   PLANE_CTL_TILED_X			(1 << 10)
 #define   PLANE_CTL_TILED_Y			(4 << 10)
 #define   PLANE_CTL_TILED_YF			(5 << 10)
+#define   PLANE_CTL_ASYNC_FLIP			(1 << 9)
 #define   PLANE_CTL_FLIP_HORIZONTAL		(1 << 8)
 #define   PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE	(1 << 4) /* TGL+ */
 #define   PLANE_CTL_ALPHA_MASK			(0x3 << 4) /* Pre-GLK */
-- 
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
