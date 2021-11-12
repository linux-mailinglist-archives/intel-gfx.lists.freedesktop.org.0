Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5101B44ED5C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 20:38:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 230956F47B;
	Fri, 12 Nov 2021 19:38:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B59206F472
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Nov 2021 19:38:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10166"; a="233441279"
X-IronPort-AV: E=Sophos;i="5.87,230,1631602800"; d="scan'208";a="233441279"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 11:38:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,230,1631602800"; d="scan'208";a="584078792"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 12 Nov 2021 11:38:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Nov 2021 21:38:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Nov 2021 21:38:05 +0200
Message-Id: <20211112193813.8224-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
References: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/9] drm/i915: Bump DSL linemask to 20 bits
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

Since tgl PIPE_DSL has 20 bits for the scanline. Let's bump our
definition to match. And while at it let's also add the define
for the current field readback.

We can also get rid of the gen2 vs. gen3+ nonsense since none
of the extra bits ever did anything and just always read
as zero.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++--------
 drivers/gpu/drm/i915/i915_irq.c              |  7 ++-----
 drivers/gpu/drm/i915/i915_reg.h              |  4 ++--
 3 files changed, 6 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0ceee8ac6671..6073f94632ab 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -348,16 +348,10 @@ static bool pipe_scanline_is_moving(struct drm_i915_private *dev_priv,
 {
 	i915_reg_t reg = PIPEDSL(pipe);
 	u32 line1, line2;
-	u32 line_mask;
 
-	if (DISPLAY_VER(dev_priv) == 2)
-		line_mask = DSL_LINEMASK_GEN2;
-	else
-		line_mask = DSL_LINEMASK_GEN3;
-
-	line1 = intel_de_read(dev_priv, reg) & line_mask;
+	line1 = intel_de_read(dev_priv, reg) & PIPEDSL_LINE_MASK;
 	msleep(5);
-	line2 = intel_de_read(dev_priv, reg) & line_mask;
+	line2 = intel_de_read(dev_priv, reg) & PIPEDSL_LINE_MASK;
 
 	return line1 != line2;
 }
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 038a9ec563c1..eb8c92324aee 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -836,10 +836,7 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
 	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
 		vtotal /= 2;
 
-	if (DISPLAY_VER(dev_priv) == 2)
-		position = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & DSL_LINEMASK_GEN2;
-	else
-		position = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & DSL_LINEMASK_GEN3;
+	position = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & PIPEDSL_LINE_MASK;
 
 	/*
 	 * On HSW, the DSL reg (0x70000) appears to return 0 if we
@@ -858,7 +855,7 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
 
 		for (i = 0; i < 100; i++) {
 			udelay(1);
-			temp = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & DSL_LINEMASK_GEN3;
+			temp = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & PIPEDSL_LINE_MASK;
 			if (temp != position) {
 				position = temp;
 				break;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 686f0a1b7860..f5d54ed2efc1 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6165,8 +6165,8 @@ enum {
 
 /* Pipe A */
 #define _PIPEADSL		0x70000
-#define   DSL_LINEMASK_GEN2	0x00000fff
-#define   DSL_LINEMASK_GEN3	0x00001fff
+#define   PIPEDSL_CURR_FIELD	REG_BIT(31) /* ctg+ */
+#define   PIPEDSL_LINE_MASK	REG_GENMASK(19, 0)
 #define _PIPEACONF		0x70008
 #define   PIPECONF_ENABLE	(1 << 31)
 #define   PIPECONF_DISABLE	0
-- 
2.32.0

