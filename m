Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E113D99361A
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 20:25:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8309810E058;
	Mon,  7 Oct 2024 18:24:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Q0YdSxlf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com
 [209.85.215.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7757F10E058;
 Mon,  7 Oct 2024 18:24:58 +0000 (UTC)
Received: by mail-pg1-f174.google.com with SMTP id
 41be03b00d2f7-7e9f98f2147so1253741a12.1; 
 Mon, 07 Oct 2024 11:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728325497; x=1728930297; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=bFDLcTVyJue4aGt8CNB0jHaZEUXennWExGDks214Kkg=;
 b=Q0YdSxlfeTzIvvkZoMli/8pWed2ClakgYCKthztJ/GD0Pt8L4D0XfrphkQzPFO9WiI
 X0v6ImJIZIu8gj/uluA21nmozgXEwGl6ArujzKrpThzpwY4uMk1+LnXPlkfOT0ut6/3p
 apZDJ0IL8K8XeakqNzV2uHfdjOCCjg8Xei2KbULMv/s3gkTIvZI9Z7s+HfMIL1V6954R
 IibRinlqnxcwYVUFM7xJ/micVlTVnDcbIOFA+q3/51ChrrgssXwyl7YFRwI3xkPqKSii
 8JH9OfGZrqJ8H0d3CLbQj1PDT6obTyrH7BVgCcp1lDiEt4I9J9u7LC1QmSIlZSA1wkbM
 8zAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728325497; x=1728930297;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=bFDLcTVyJue4aGt8CNB0jHaZEUXennWExGDks214Kkg=;
 b=w2kWFqqTAtQnPYpst4/1vAYCuXnCtC1A79OSNeBN6AIxK9x/Le8ey/wI5f7qNi92g7
 HS6LbpPmQdT7l6FGofbj6DS+5F8de+EC3Da7JpzCrbmObId9o7/anOMwp3Nh0IFNaxQu
 RyCdjMB3jzgEsKkZJQRC7/XD6ZU9ksk4QnFYzMZFf3lE17jFK+gLGZRw/YDR1GhuKCRo
 R7NHclZCeQBKRyiMObyc8L6Yg2Quh/UhQiH6ifVA9aXsWA4Ur5J2pji9O1ZALipHMIkA
 s/dLSgfbDwhOu67X8L7PBpmaVhdTHkEf2Y8yz284RRFGgo73eL+TLoTIGn9AnR4BgzL9
 rMKQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUPJQeHvxj29yMkX/tc9IukAMkyN5qjALKALaUHzNy6KT+hJJ56w0M0YzWOEXFd2s+k5134YJcAK9M=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyL4MxM+/zd3IJKC7QP98zIW5XmnMEyXE4x/YsW7WzfZr5yTUlL
 eH2JSCsnHM0JFWm7Og9TNuO/F+mpT0lopJXu2reDs92MeP1mPBGIh0gZu4+f2fc=
X-Google-Smtp-Source: AGHT+IFfyX4px28yhaDIi/97VIoMW3kggH1Yjp6LoOWQIo0BNxPgzNXSP2xnfO6TsXZdP2KxQvlU9Q==
X-Received: by 2002:a17:90b:390c:b0:2e0:77aa:fecf with SMTP id
 98e67ed59e1d1-2e1e63bb8bemr12494921a91.41.1728325497485; 
 Mon, 07 Oct 2024 11:24:57 -0700 (PDT)
Received: from localhost ([134.134.139.69]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e20b0f6380sm5735303a91.40.2024.10.07.11.24.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2024 11:24:57 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH] drm/i915/display: Don't allow tile4 framebuffer to do hflip
 on display20 or greater
Date: Mon,  7 Oct 2024 21:28:41 +0300
Message-ID: <20241007182841.2104740-1-juhapekka.heikkila@gmail.com>
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

On display ver 20 onwards tile4 is not supported with horizontal flip

Bspec: 69853

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c            | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h            |  1 +
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 11 +++++++++++
 3 files changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 6c2679e6c980..735fba73c9ad 100644
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
index 8240febff84c..d78993e5eb62 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -36,6 +36,7 @@ bool intel_fb_is_ccs_modifier(u64 modifier);
 bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
 bool intel_fb_is_mc_ccs_modifier(u64 modifier);
 bool intel_fb_needs_64k_phys(u64 modifier);
+bool intel_fb_is_tile4_modifier(u64 modifier);
 
 bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
 int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 9207b7e96974..4755a0672739 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1619,6 +1619,17 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 	}
 
+	/*
+	 * Display20 onward tile4 hflip is not supported
+	 */
+	if (rotation & DRM_MODE_REFLECT_X &&
+	    intel_fb_is_tile4_modifier(fb->modifier) &&
+	    DISPLAY_VER(dev_priv) >= 20) {
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

