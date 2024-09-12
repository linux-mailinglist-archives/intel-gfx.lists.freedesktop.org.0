Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 508FA976C54
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 16:42:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A3D10EBAD;
	Thu, 12 Sep 2024 14:42:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kfXa8cA2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC39C10EBAC;
 Thu, 12 Sep 2024 14:42:14 +0000 (UTC)
Received: by mail-pl1-f180.google.com with SMTP id
 d9443c01a7336-2053a0bd0a6so11264845ad.3; 
 Thu, 12 Sep 2024 07:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1726152134; x=1726756934; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=LzTz3r8DjtWisgRztqwcbHcF11uyio6OOK+ChyJCaqE=;
 b=kfXa8cA2QC/vKEXJvs91WtH3NIwykTyN4Ft30uz2/dplW7H8YfM6UnfNxrKAojrUlv
 bkMydGCYrvUZcaoxWgzn3CLGya5Cwj5Pm1O+/jk4Sw3tJvYlf+ZNDFXuk/HXY5PGzyyc
 21jB6BlY62UMT9ITXJ99j5SB8QOUK60FVyzCDPnCaEKvEamYm79cefd/l95Yul6W3pXS
 zbJ8oLU35ovxlkga8OBm7lTPxXd6bwUbjcl8WnyoKkn3KLMJakHWg7/lUHmZHV0zSUJd
 rbR6YVaLEsEotSHAluYchehKnJeaIGEeJFP+dcB2NnCpPXu7YgZjJEkk7RNBEBlqilim
 A8xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726152134; x=1726756934;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=LzTz3r8DjtWisgRztqwcbHcF11uyio6OOK+ChyJCaqE=;
 b=vhi3WY41/bmwQWYts9fKGh5CennuUtWl3hsM8z5AUtTIFj/obb+EKQxynSWg7yD9O5
 dRuOhBzzmmHJdlqDLc88dDslDT7DRo2OrlydZz+85SQ/yWUoDa4sPG76w1iqJypaL/id
 ZBQSSbBFGIWrbs4hLdabSkBAarLiIucivHD9Ibp8B6+LC8XyfLAqSD8MuEkWkSDOlxto
 7ysqzyBInVDD8UheSvYgui0Wwy2i/wU012+muEntVFiqyWXYPgxxWJ+bw2f3IM4GDdjo
 /VHzuNYLf46vc4doIYZKqJLq1wOX/qE72jyeBmdYhqgxtXabXt9yfCGN1cL6jfphmYBj
 DZWw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVgzH0Sz4eXw9xiU6Cc1M8qxZW1rQPIK5PL7Q5gf5rvHnL+m0Hl2rdnY0B08u07+7/DCS4cvqkLEnw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxXMbyT5oAqjpYUqZJwEu7XdSeCfDSmlnt5LeKJVfUEJulOTRjb
 ZkcywYGQirfNBesLsgbtPHlZqQp5T9PNZZ5xOoD7pag2m7N4cFRRSiLeoD7/
X-Google-Smtp-Source: AGHT+IG2czfrZk63PR324c0o1dJuGMltKbRDKNWucClb9QarB0YsosRmKCFcpFktU2ZibTiyo3kMgA==
X-Received: by 2002:a17:902:c405:b0:206:928c:bfda with SMTP id
 d9443c01a7336-2076e44de6emr36660985ad.56.1726152133791; 
 Thu, 12 Sep 2024 07:42:13 -0700 (PDT)
Received: from localhost ([134.134.137.76]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2076af44f91sm15031575ad.63.2024.09.12.07.42.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Sep 2024 07:42:13 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH] drm/i915/display: Don't allow tile4 framebuffer to do hflip
 on Xe2
Date: Thu, 12 Sep 2024 17:46:06 +0300
Message-ID: <20240912144606.862307-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.45.2
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

On Intel Xe2 hw tile4 is not supported with horizontal flip

bspec 69853

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c            | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h            |  1 +
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 12 ++++++++++++
 3 files changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index d2ff21e98545..c9038d239eb2 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -439,6 +439,19 @@ bool intel_fb_needs_64k_phys(u64 modifier)
 				      INTEL_PLANE_CAP_NEED64K_PHYS);
 }
 
+/**
+ * intel_fb_is_tile4_modifier: Check if a modifier is a tile4 modifier type
+ * @modifier: Modifier to check
+ *
+ * Returns:
+ * Returns %true if @modifier is a tile4 modifier.
+ */
+bool intel_fb_is_tile4_modifier(u64 modifier)
+{
+	return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps,
+				      INTEL_PLANE_CAP_TILING_4);
+}
+
 static bool check_modifier_display_ver_range(const struct intel_modifier_desc *md,
 					     u8 display_ver_from, u8 display_ver_until)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 068f3aee99aa..bff87994cf2c 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -35,6 +35,7 @@ bool intel_fb_is_ccs_modifier(u64 modifier);
 bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
 bool intel_fb_is_mc_ccs_modifier(u64 modifier);
 bool intel_fb_needs_64k_phys(u64 modifier);
+bool intel_fb_is_tile4_modifier(u64 modifier);
 
 bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
 int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 17d4c880ecc4..4de41ab5060a 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1591,6 +1591,18 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 	}
 
+	/*
+	 * Starting with LNL and BMG tile4 hflip is not supported
+	 */
+	if (rotation & DRM_MODE_REFLECT_X &&
+	    intel_fb_is_tile4_modifier(fb->modifier) &&
+	    ((DISPLAY_VER(dev_priv) >= 14 && IS_DGFX(dev_priv)) ||
+	     (DISPLAY_VER(dev_priv) >= 20 && !IS_DGFX(dev_priv)))) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "horizontal flip is not supported with tile4 surface formats\n");
+		return -EINVAL;
+	}
+
 	if (drm_rotation_90_or_270(rotation)) {
 		if (!intel_fb_supports_90_270_rotation(to_intel_framebuffer(fb))) {
 			drm_dbg_kms(&dev_priv->drm,
-- 
2.45.2

