Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAF782703B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 14:49:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E438110E28F;
	Mon,  8 Jan 2024 13:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EC8010E1F9
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jan 2024 18:14:56 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id
 2adb3069b0e04-50e5a9bcec9so11563617e87.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Jan 2024 10:14:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1704219294; x=1704824094; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=k/A+JX+gSfhqaQ/chEF63QWa1VziWKekkFakx7Ab2jo=;
 b=b1IMQmeVH/WDl4XSNh8FQY36kdod8JWmPbgUIar/ya2dbN29l7B5SCGnBA4frRoAmu
 zolBQcrOtIrmELfTFszthLP0OU/gN2opWNsWfTmOYikC8Mxedea83jViFvSWMoEjLOKq
 QuB9Ky3esQ1mCXbkX5hUf8sGOvZ71s7B4cfoVstMpGoOPlWbRjl0IPhmbeQYOduYPjqa
 jTf8JP8aJaLPzmVsHGi6975Ddvb5mK6U6QSdpJihaRT9QqqtTdCAmuGrJRrqDWN4XEq3
 c58ke6ndhYdbC2qKjpxrxekSY7Qn4pDU70OYkL+CGBTJjmpRAlPkycr4I+x5YeKSO2aD
 sVAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704219294; x=1704824094;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=k/A+JX+gSfhqaQ/chEF63QWa1VziWKekkFakx7Ab2jo=;
 b=P3x/p5ejz44JSNGDNj/KaVhokKTqlBcQ/ICMhRffdJ7pV/tr1w5uFQJ2vdbizfgUKr
 AphB5ql71m59crH2JQCqCdPlqHSu0Jay9DfUuahwlvWfUTMrjQkc1mqdqFtahgJVm6pA
 m/Zf7PSMlxJstX+BKgFTbPAseEDJpgjB64pNMUrISNMH1yZbQ1Eb0xvpNxUVKysRba1Y
 1aEDddrvlXmXdRl5pwTymW++xovugLNohNKT7fAgSIrCq2HKo1lzD42fDE84L2Pf8VrR
 TrY+Fgo49Z/l/Ia98LR6Ws3J19uaBjdU6VGosIMo3U1TkyOw8chWQbXITYAvN9jlApk8
 SeyQ==
X-Gm-Message-State: AOJu0YyGueFnZucxyDtYJzhiCA6ObjGoCuhzUoqF9sld8vRWZAOpONem
 SzlRX1kfNPoVhNEGC29T8CMoSIZrf47jyZ0s
X-Google-Smtp-Source: AGHT+IEiRuSn1FuFD4GqiGGQvAeQqRvxA2ewTHvszQUlP2rZbLBb03rfNKCjZeb3JI3TX4T4jJQG7w==
X-Received: by 2002:a05:6512:3d0c:b0:50e:74e2:af58 with SMTP id
 d12-20020a0565123d0c00b0050e74e2af58mr8448700lfv.52.1704219294019; 
 Tue, 02 Jan 2024 10:14:54 -0800 (PST)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 v1-20020a056512348100b0050e79e8e817sm2768408lfr.86.2024.01.02.10.14.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jan 2024 10:14:53 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/xe/display: Disable aux ccs framebuffers
Date: Tue,  2 Jan 2024 20:14:49 +0200
Message-Id: <20240102181449.3822365-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 08 Jan 2024 13:49:22 +0000
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

Aux ccs framebuffers don't work on Xe driver hence disable them
from plane capabilities until they are fixed. Flat ccs framebuffers
work and they are left enabled. Here is separated plane capabilities
check on i915 so it can behave differencly depending on the driver.

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/933
Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../gpu/drm/i915/display/intel_plane_caps.c   | 68 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_plane_caps.h   | 14 ++++
 .../drm/i915/display/skl_universal_plane.c    | 61 +----------------
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 23 +++++++
 5 files changed, 107 insertions(+), 60 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_plane_caps.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_plane_caps.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index e777686190ca..c5e3c2dd0a01 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -302,6 +302,7 @@ i915-y += \
 	display/intel_overlay.o \
 	display/intel_pch_display.o \
 	display/intel_pch_refclk.o \
+	display/intel_plane_caps.o \
 	display/intel_plane_initial.o \
 	display/intel_pmdemand.o \
 	display/intel_psr.o \
diff --git a/drivers/gpu/drm/i915/display/intel_plane_caps.c b/drivers/gpu/drm/i915/display/intel_plane_caps.c
new file mode 100644
index 000000000000..6206ae11f296
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_plane_caps.c
@@ -0,0 +1,68 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "intel_fb.h"
+#include "intel_plane_caps.h"
+
+static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
+				 enum pipe pipe, enum plane_id plane_id)
+{
+	/* Wa_22011186057 */
+	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
+		return false;
+
+	if (DISPLAY_VER(i915) >= 11)
+		return true;
+
+	if (IS_GEMINILAKE(i915))
+		return pipe != PIPE_C;
+
+	return pipe != PIPE_C &&
+		(plane_id == PLANE_PRIMARY ||
+		 plane_id == PLANE_SPRITE0);
+}
+
+static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
+				   enum plane_id plane_id)
+{
+	if (DISPLAY_VER(i915) < 12)
+		return false;
+
+	/* Wa_14010477008 */
+	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
+	    (IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_D0)))
+		return false;
+
+	/* Wa_22011186057 */
+	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
+		return false;
+
+	return plane_id < PLANE_SPRITE4;
+}
+
+u8 skl_get_plane_caps(struct drm_i915_private *i915,
+		      enum pipe pipe, enum plane_id plane_id)
+{
+	u8 caps = INTEL_PLANE_CAP_TILING_X;
+
+	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
+		caps |= INTEL_PLANE_CAP_TILING_Y;
+	if (DISPLAY_VER(i915) < 12)
+		caps |= INTEL_PLANE_CAP_TILING_Yf;
+	if (HAS_4TILE(i915))
+		caps |= INTEL_PLANE_CAP_TILING_4;
+
+	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
+		caps |= INTEL_PLANE_CAP_CCS_RC;
+		if (DISPLAY_VER(i915) >= 12)
+			caps |= INTEL_PLANE_CAP_CCS_RC_CC;
+	}
+
+	if (gen12_plane_has_mc_ccs(i915, plane_id))
+		caps |= INTEL_PLANE_CAP_CCS_MC;
+
+	return caps;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_plane_caps.h b/drivers/gpu/drm/i915/display/intel_plane_caps.h
new file mode 100644
index 000000000000..60a941c76f23
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_plane_caps.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_PLANE_CAPS_H__
+#define __INTEL_PLANE_CAPS_H__
+
+#include "intel_display_types.h"
+
+u8 skl_get_plane_caps(struct drm_i915_private *i915,
+		      enum pipe pipe, enum plane_id plane_id);
+
+#endif /* __INTEL_PLANE_CAPS_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 511dc1544854..f2fd3833c61d 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -17,6 +17,7 @@
 #include "intel_fb.h"
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
+#include "intel_plane_caps.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 #include "skl_scaler.h"
@@ -2242,66 +2243,6 @@ skl_plane_disable_flip_done(struct intel_plane *plane)
 	spin_unlock_irq(&i915->irq_lock);
 }
 
-static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
-				 enum pipe pipe, enum plane_id plane_id)
-{
-	/* Wa_22011186057 */
-	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
-		return false;
-
-	if (DISPLAY_VER(i915) >= 11)
-		return true;
-
-	if (IS_GEMINILAKE(i915))
-		return pipe != PIPE_C;
-
-	return pipe != PIPE_C &&
-		(plane_id == PLANE_PRIMARY ||
-		 plane_id == PLANE_SPRITE0);
-}
-
-static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
-				   enum plane_id plane_id)
-{
-	if (DISPLAY_VER(i915) < 12)
-		return false;
-
-	/* Wa_14010477008 */
-	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
-		(IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_D0)))
-		return false;
-
-	/* Wa_22011186057 */
-	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
-		return false;
-
-	return plane_id < PLANE_SPRITE4;
-}
-
-static u8 skl_get_plane_caps(struct drm_i915_private *i915,
-			     enum pipe pipe, enum plane_id plane_id)
-{
-	u8 caps = INTEL_PLANE_CAP_TILING_X;
-
-	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
-		caps |= INTEL_PLANE_CAP_TILING_Y;
-	if (DISPLAY_VER(i915) < 12)
-		caps |= INTEL_PLANE_CAP_TILING_Yf;
-	if (HAS_4TILE(i915))
-		caps |= INTEL_PLANE_CAP_TILING_4;
-
-	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
-		caps |= INTEL_PLANE_CAP_CCS_RC;
-		if (DISPLAY_VER(i915) >= 12)
-			caps |= INTEL_PLANE_CAP_CCS_RC_CC;
-	}
-
-	if (gen12_plane_has_mc_ccs(i915, plane_id))
-		caps |= INTEL_PLANE_CAP_CCS_MC;
-
-	return caps;
-}
-
 struct intel_plane *
 skl_universal_plane_create(struct drm_i915_private *dev_priv,
 			   enum pipe pipe, enum plane_id plane_id)
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index ccf83c12b545..425c6e6744a6 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -15,6 +15,7 @@
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "intel_frontbuffer.h"
+#include "intel_plane_caps.h"
 #include "intel_plane_initial.h"
 
 static bool
@@ -289,3 +290,25 @@ void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
 
 	plane_config_fini(&plane_config);
 }
+
+u8 skl_get_plane_caps(struct drm_i915_private *i915,
+		      enum pipe pipe, enum plane_id plane_id)
+{
+	u8 caps = INTEL_PLANE_CAP_TILING_X;
+
+	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
+		caps |= INTEL_PLANE_CAP_TILING_Y;
+	if (DISPLAY_VER(i915) < 12)
+		caps |= INTEL_PLANE_CAP_TILING_Yf;
+	if (HAS_4TILE(i915))
+		caps |= INTEL_PLANE_CAP_TILING_4;
+
+	if (HAS_FLAT_CCS(i915)) {
+		caps |= INTEL_PLANE_CAP_CCS_RC | INTEL_PLANE_CAP_CCS_RC_CC;
+
+		if (plane_id < PLANE_SPRITE4)
+			caps |= INTEL_PLANE_CAP_CCS_MC;
+	}
+
+	return caps;
+}
-- 
2.25.1

