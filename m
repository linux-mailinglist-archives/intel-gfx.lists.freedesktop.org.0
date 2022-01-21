Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C33B498122
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 14:32:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E60F510EB13;
	Mon, 24 Jan 2022 13:32:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D9EA10E53F
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 22:23:29 +0000 (UTC)
Received: from sobremesa.fritz.box (unknown
 [IPv6:2a02:8010:65b5:0:bbb0:f8ec:7bc9:dbe4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: alarumbe)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 31D451F465DD;
 Fri, 21 Jan 2022 22:23:28 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1642803808;
 bh=n+0IEGxkng9ZHqSYt8vH77lbfgL8OX72/a/UvCZz9Hw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YvS0Tt00ofjJ6d9dqEswahPuaWiKg3AyrhgP1WuKUUlJf2i6YPScyr7LvvVK49H0v
 p3WxfJAiY1ZIAYX8kHjYfuqPfmcuE5W1gcR78aheEeWUz+904TakYHTNOZJMTnqWEJ
 dan1tL44GadrsGqePzp/+gte/LMci7Vyh3X1JUj8I0pEATXyTYiTUDbR+rZS8Cko2X
 tEzmYT4i5N0MlCFNbU6BRI8h8g2fRpuwSfddqU7uk7+g0jHHsxnn6rCaSe+6qeHnUc
 WLQP/ir0fLDVlR42nmpP6C7Z89TnWUFGzHnDY/NZcFZ/cnoFKukYIIiy5pGkqhJtUQ
 vkBGHlqfqbhNQ==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch, ramalingam.c@intel.com, intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 22:22:49 +0000
Message-Id: <20220121222252.3296117-3-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220121222252.3296117-1-adrian.larumbe@collabora.com>
References: <20220121222252.3296117-1-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 24 Jan 2022 13:32:09 +0000
Subject: [Intel-gfx] [RFC PATCH 2/5] drm/i915/flat-CCS: Add flat CCS plane
 capabilities and modifiers
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
Cc: adrian.larumbe@collabora.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Adds frame buffer support code for flat-CCS devices, like DG2. A flat-CCS
modifier is attached to a fb object that contains the original bo by means
of the drmModeAddFB2WithModifiers drm API call.

Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 36 ++++++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_fb.h |  1 +
 2 files changed, 33 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 72040f580911..6f998d1956bb 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -158,19 +158,24 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 	{
 		.modifier = I915_FORMAT_MOD_4_TILED_DG2_MC_CCS,
 		.display_ver = { 13, 14 },
-		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC,
+		.plane_caps = INTEL_PLANE_CAP_TILING_4 |
+				INTEL_PLANE_CAP_CCS_MC |
+				INTEL_PLANE_CAP_DG2_CCS,
 	}, {
 		.modifier = I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC,
 		.display_ver = { 13, 14 },
-		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC_CC,
-
+		.plane_caps = INTEL_PLANE_CAP_TILING_4 |
+				INTEL_PLANE_CAP_CCS_RC_CC |
+				INTEL_PLANE_CAP_DG2_CCS,
 		.ccs.cc_planes = BIT(1),
 
 		FORMAT_OVERRIDE(gen12_flat_ccs_cc_formats),
 	}, {
 		.modifier = I915_FORMAT_MOD_4_TILED_DG2_RC_CCS,
 		.display_ver = { 13, 14 },
-		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC,
+		.plane_caps = INTEL_PLANE_CAP_TILING_4 |
+				INTEL_PLANE_CAP_CCS_RC |
+				INTEL_PLANE_CAP_DG2_CCS,
 	}, {
 		.modifier = I915_FORMAT_MOD_4_TILED,
 		.display_ver = { 13, 14 },
@@ -313,6 +318,20 @@ bool intel_fb_is_ccs_modifier(u64 modifier)
 				      INTEL_PLANE_CAP_CCS_MASK);
 }
 
+/**
+ * if (intel_fb_is_dg2_ccs_modifier): Check if a modifier is a DG2 CCS modifier type
+ * @modifier: Modifier to check
+ *
+ * Returns:
+ * Returns %true if @modifier is a render, render with color clear or
+ * media compression modifier compatible with DG2 devices.
+ */
+bool intel_fb_is_dg2_ccs_modifier(u64 modifier)
+{
+	return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps,
+				      INTEL_PLANE_CAP_DG2_CCS);
+}
+
 /**
  * intel_fb_is_rc_ccs_cc_modifier: Check if a modifier is an RC CCS CC modifier type
  * @modifier: Modifier to check
@@ -2000,6 +2019,15 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		intel_fb->dpt_vm = vm;
 	}
 
+	/*
+	 * In devices with flat CCS support, a compressed buffer object
+	 * will need to shuffle its CCS block back and forth between lmem
+	 * and smem at object migration events.
+	 */
+	if (intel_fb_is_dg2_ccs_modifier(fb->modifier) && HAS_FLAT_CCS(dev_priv))
+		if (!i915_gem_object_migratable(obj) && i915_gem_object_is_lmem(obj))
+			obj->flat_css.enabled = true;
+
 	ret = drm_framebuffer_init(&dev_priv->drm, fb, &intel_fb_funcs);
 	if (ret) {
 		drm_err(&dev_priv->drm, "framebuffer init failed %d\n", ret);
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 12386f13a4e0..5bd74ff9a449 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -28,6 +28,7 @@ struct intel_plane_state;
 #define INTEL_PLANE_CAP_TILING_Y	BIT(4)
 #define INTEL_PLANE_CAP_TILING_Yf	BIT(5)
 #define INTEL_PLANE_CAP_TILING_4	BIT(6)
+#define INTEL_PLANE_CAP_DG2_CCS		BIT(7)
 
 bool intel_fb_is_ccs_modifier(u64 modifier);
 bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
-- 
2.34.1

