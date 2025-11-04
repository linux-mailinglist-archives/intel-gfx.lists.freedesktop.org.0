Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8729C2FF42
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 09:36:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACD6810E56C;
	Tue,  4 Nov 2025 08:36:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="TYlCxKSI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE59810E565;
 Tue,  4 Nov 2025 08:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1762245408;
 bh=0eIelrLCgvItLKJTaYXGJPRomkuTZ6Fb/nXo41fHTdc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TYlCxKSIo1/9MnI5a5BFRn39DloMwDXoV4DzFj23CzAcrziMCxguajzFVFWl2Xkpy
 LSXKG0K8xwRtYJRK9R0IVK+R/PoeZnm4x7zQ0qOIVaCpQsjQgmYfwr/9WpsO9U1KtV
 kt0uGo7naJBT/+ljWMU+wvM/rTfBX881X3W4EZMbMIKftYDSQRa0CoV9XoTXNdgyT9
 6PDscq/sWO4/k8bDF+HVOgUV6GlY9g+t7TURBWDmUH9Rd4Okqx2HYmhrJIvw/m2Tg9
 q7zEPtXcKc4PIFB2A5gZDfmffzEHPyn4b8Ntxc82rXw6c9Qv1Wc2/7jsjU6IMDrHW1
 uBsiUqbeFa2tw==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: linux-rt-devel@lists.linux.dev, Maarten Lankhorst <dev@lankhorst.se>,
 Mario Kleiner <mario.kleiner.de@gmail.com>,
 Mike Galbraith <umgwanakikbuti@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Subject: [PATCH v2 5/7] drm/i915/display: Make icl_dsi_frame_update use _fw too
Date: Tue,  4 Nov 2025 09:36:29 +0100
Message-ID: <20251104083634.670753-6-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251104083634.670753-1-dev@lankhorst.se>
References: <20251104083634.670753-1-dev@lankhorst.se>
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

Don't use the dmc lock inside the vblank critical section,
not even as last call.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/icl_dsi.c                | 4 ++--
 drivers/gpu/drm/i915/display/intel_de.h               | 6 ++++++
 drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h | 2 ++
 3 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 70d4c1bc70fc3..e52b434ac8f11 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -243,8 +243,8 @@ void icl_dsi_frame_update(struct intel_crtc_state *crtc_state)
 	else
 		return;
 
-	intel_de_rmw(display, DSI_CMD_FRMCTL(port), 0,
-		     DSI_FRAME_UPDATE_REQUEST);
+	intel_de_rmw_fw(display, DSI_CMD_FRMCTL(port), 0,
+			DSI_FRAME_UPDATE_REQUEST);
 }
 
 static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 9ecdcf6b73e4d..15f606a4a2e9d 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -214,6 +214,12 @@ intel_de_write_fw(struct intel_display *display, i915_reg_t reg, u32 val)
 	intel_uncore_write_fw(__to_uncore(display), reg, val);
 }
 
+static inline void
+intel_de_rmw_fw(struct intel_display *display, i915_reg_t reg, u32 clear, u32 set)
+{
+	intel_uncore_rmw_fw(__to_uncore(display), reg, clear, set);
+}
+
 static inline u32
 intel_de_read_notrace(struct intel_display *display, i915_reg_t reg)
 {
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index d012f02bc84f7..57d5ffabf2d52 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -91,6 +91,8 @@ static inline u32 intel_uncore_rmw(struct intel_uncore *uncore,
 	return xe_mmio_rmw32(__compat_uncore_to_mmio(uncore), reg, clear, set);
 }
 
+#define intel_uncore_rmw_fw intel_uncore_rmw
+
 static inline int intel_wait_for_register(struct intel_uncore *uncore,
 					  i915_reg_t i915_reg, u32 mask,
 					  u32 value, unsigned int timeout)
-- 
2.51.0

