Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0E9557C82
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 15:09:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3DC410E10D;
	Thu, 23 Jun 2022 13:09:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6435410E10D
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 13:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655989750; x=1687525750;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CZXgZ3gJVdBSqj7yAYZU+ObrIBaYUvD9MpIscm0Kszo=;
 b=JOIPlyVnKXE+8AtBtzgEWBB3oa5YwZHwUJYtdzVnfuZJ9/ZWBbi0BH9b
 KapHlL00HKNKMsWORis39Tq6a4O1HNwMpFkWHKuh4vRXbVbSjWq6DBl9J
 f+3vv36z0N2qkI2znMRf1KEKLTyn+UXFp/JGFaGqGFVLyYWnKchZj+PWs
 x33Inct1WLLXn9IvaSORDllUyiCzQ3KTjMLArtsc9Z5XI6d494DWCRz5f
 C6jKyecVuLBupqeVmL1/8jmpYcejsRLJBI8TM79e3Yqzi9HjIq+3dsjr6
 Xb6L1vcmnE5/rOhVRZr7PbmkF2GnjluqVKasE4cZqife5idOhNGgDR2Vl w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="260529310"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="260529310"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 06:09:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="586149483"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga007.jf.intel.com with SMTP; 23 Jun 2022 06:09:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jun 2022 16:09:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jun 2022 16:08:53 +0300
Message-Id: <20220623130900.26078-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
References: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/9] drm/i195: Move pipe_offsets[] & co. to
 INTEL_INFO->display
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

The display register offsets are display stuff so stick
into the display portion of the device info.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c          | 44 ++++++++++++------------
 drivers/gpu/drm/i915/i915_reg.h          | 18 +++++-----
 drivers/gpu/drm/i915/intel_device_info.h | 10 +++---
 3 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 212a958fd8bd..50dd46981e86 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -38,43 +38,43 @@
 	.display.ver = (x)
 
 #define I845_PIPE_OFFSETS \
-	.pipe_offsets = { \
+	.display.pipe_offsets = { \
 		[TRANSCODER_A] = PIPE_A_OFFSET,	\
 	}, \
-	.trans_offsets = { \
+	.display.trans_offsets = { \
 		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
 	}
 
 #define I9XX_PIPE_OFFSETS \
-	.pipe_offsets = { \
+	.display.pipe_offsets = { \
 		[TRANSCODER_A] = PIPE_A_OFFSET,	\
 		[TRANSCODER_B] = PIPE_B_OFFSET, \
 	}, \
-	.trans_offsets = { \
+	.display.trans_offsets = { \
 		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
 		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
 	}
 
 #define IVB_PIPE_OFFSETS \
-	.pipe_offsets = { \
+	.display.pipe_offsets = { \
 		[TRANSCODER_A] = PIPE_A_OFFSET,	\
 		[TRANSCODER_B] = PIPE_B_OFFSET, \
 		[TRANSCODER_C] = PIPE_C_OFFSET, \
 	}, \
-	.trans_offsets = { \
+	.display.trans_offsets = { \
 		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
 		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
 		[TRANSCODER_C] = TRANSCODER_C_OFFSET, \
 	}
 
 #define HSW_PIPE_OFFSETS \
-	.pipe_offsets = { \
+	.display.pipe_offsets = { \
 		[TRANSCODER_A] = PIPE_A_OFFSET,	\
 		[TRANSCODER_B] = PIPE_B_OFFSET, \
 		[TRANSCODER_C] = PIPE_C_OFFSET, \
 		[TRANSCODER_EDP] = PIPE_EDP_OFFSET, \
 	}, \
-	.trans_offsets = { \
+	.display.trans_offsets = { \
 		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
 		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
 		[TRANSCODER_C] = TRANSCODER_C_OFFSET, \
@@ -82,44 +82,44 @@
 	}
 
 #define CHV_PIPE_OFFSETS \
-	.pipe_offsets = { \
+	.display.pipe_offsets = { \
 		[TRANSCODER_A] = PIPE_A_OFFSET, \
 		[TRANSCODER_B] = PIPE_B_OFFSET, \
 		[TRANSCODER_C] = CHV_PIPE_C_OFFSET, \
 	}, \
-	.trans_offsets = { \
+	.display.trans_offsets = { \
 		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
 		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
 		[TRANSCODER_C] = CHV_TRANSCODER_C_OFFSET, \
 	}
 
 #define I845_CURSOR_OFFSETS \
-	.cursor_offsets = { \
+	.display.cursor_offsets = { \
 		[PIPE_A] = CURSOR_A_OFFSET, \
 	}
 
 #define I9XX_CURSOR_OFFSETS \
-	.cursor_offsets = { \
+	.display.cursor_offsets = { \
 		[PIPE_A] = CURSOR_A_OFFSET, \
 		[PIPE_B] = CURSOR_B_OFFSET, \
 	}
 
 #define CHV_CURSOR_OFFSETS \
-	.cursor_offsets = { \
+	.display.cursor_offsets = { \
 		[PIPE_A] = CURSOR_A_OFFSET, \
 		[PIPE_B] = CURSOR_B_OFFSET, \
 		[PIPE_C] = CHV_CURSOR_C_OFFSET, \
 	}
 
 #define IVB_CURSOR_OFFSETS \
-	.cursor_offsets = { \
+	.display.cursor_offsets = { \
 		[PIPE_A] = CURSOR_A_OFFSET, \
 		[PIPE_B] = IVB_CURSOR_B_OFFSET, \
 		[PIPE_C] = IVB_CURSOR_C_OFFSET, \
 	}
 
 #define TGL_CURSOR_OFFSETS \
-	.cursor_offsets = { \
+	.display.cursor_offsets = { \
 		[PIPE_A] = CURSOR_A_OFFSET, \
 		[PIPE_B] = IVB_CURSOR_B_OFFSET, \
 		[PIPE_C] = IVB_CURSOR_C_OFFSET, \
@@ -809,7 +809,7 @@ static const struct intel_device_info cml_gt2_info = {
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
 		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
-	.pipe_offsets = { \
+	.display.pipe_offsets = { \
 		[TRANSCODER_A] = PIPE_A_OFFSET, \
 		[TRANSCODER_B] = PIPE_B_OFFSET, \
 		[TRANSCODER_C] = PIPE_C_OFFSET, \
@@ -817,7 +817,7 @@ static const struct intel_device_info cml_gt2_info = {
 		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET, \
 		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET, \
 	}, \
-	.trans_offsets = { \
+	.display.trans_offsets = { \
 		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
 		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
 		[TRANSCODER_C] = TRANSCODER_C_OFFSET, \
@@ -862,7 +862,7 @@ static const struct intel_device_info jsl_info = {
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
 		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
-	.pipe_offsets = { \
+	.display.pipe_offsets = { \
 		[TRANSCODER_A] = PIPE_A_OFFSET, \
 		[TRANSCODER_B] = PIPE_B_OFFSET, \
 		[TRANSCODER_C] = PIPE_C_OFFSET, \
@@ -870,7 +870,7 @@ static const struct intel_device_info jsl_info = {
 		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET, \
 		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET, \
 	}, \
-	.trans_offsets = { \
+	.display.trans_offsets = { \
 		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
 		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
 		[TRANSCODER_C] = TRANSCODER_C_OFFSET, \
@@ -938,7 +938,7 @@ static const struct intel_device_info adl_s_info = {
 };
 
 #define XE_LPD_CURSOR_OFFSETS \
-	.cursor_offsets = { \
+	.display.cursor_offsets = { \
 		[PIPE_A] = CURSOR_A_OFFSET, \
 		[PIPE_B] = IVB_CURSOR_B_OFFSET, \
 		[PIPE_C] = IVB_CURSOR_C_OFFSET, \
@@ -967,7 +967,7 @@ static const struct intel_device_info adl_s_info = {
 	.display.has_psr = 1,							\
 	.display.ver = 13,							\
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),	\
-	.pipe_offsets = {							\
+	.display.pipe_offsets = {						\
 		[TRANSCODER_A] = PIPE_A_OFFSET,					\
 		[TRANSCODER_B] = PIPE_B_OFFSET,					\
 		[TRANSCODER_C] = PIPE_C_OFFSET,					\
@@ -975,7 +975,7 @@ static const struct intel_device_info adl_s_info = {
 		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET,				\
 		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET,				\
 	},									\
-	.trans_offsets = {							\
+	.display.trans_offsets = {						\
 		[TRANSCODER_A] = TRANSCODER_A_OFFSET,				\
 		[TRANSCODER_B] = TRANSCODER_B_OFFSET,				\
 		[TRANSCODER_C] = TRANSCODER_C_OFFSET,				\
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 932bd6aa4a0a..2ef3bd20e3b9 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -161,16 +161,16 @@
  * Device info offset array based helpers for groups of registers with unevenly
  * spaced base offsets.
  */
-#define _MMIO_PIPE2(pipe, reg)		_MMIO(INTEL_INFO(dev_priv)->pipe_offsets[pipe] - \
-					      INTEL_INFO(dev_priv)->pipe_offsets[PIPE_A] + (reg) + \
-					      DISPLAY_MMIO_BASE(dev_priv))
-#define _TRANS2(tran, reg)		(INTEL_INFO(dev_priv)->trans_offsets[(tran)] - \
-					 INTEL_INFO(dev_priv)->trans_offsets[TRANSCODER_A] + (reg) + \
-					 DISPLAY_MMIO_BASE(dev_priv))
+#define _MMIO_PIPE2(pipe, reg)		_MMIO(INTEL_INFO(dev_priv)->display.pipe_offsets[(pipe)] - \
+					      INTEL_INFO(dev_priv)->display.pipe_offsets[PIPE_A] + \
+					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
+#define _TRANS2(tran, reg)		(INTEL_INFO(dev_priv)->display.trans_offsets[(tran)] - \
+					 INTEL_INFO(dev_priv)->display.trans_offsets[TRANSCODER_A] + \
+					 DISPLAY_MMIO_BASE(dev_priv) + (reg))
 #define _MMIO_TRANS2(tran, reg)		_MMIO(_TRANS2(tran, reg))
-#define _CURSOR2(pipe, reg)		_MMIO(INTEL_INFO(dev_priv)->cursor_offsets[(pipe)] - \
-					      INTEL_INFO(dev_priv)->cursor_offsets[PIPE_A] + (reg) + \
-					      DISPLAY_MMIO_BASE(dev_priv))
+#define _CURSOR2(pipe, reg)		_MMIO(INTEL_INFO(dev_priv)->display.cursor_offsets[(pipe)] - \
+					      INTEL_INFO(dev_priv)->display.cursor_offsets[PIPE_A] + \
+					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
 
 #define __MASKED_FIELD(mask, value) ((mask) << 16 | (value))
 #define _MASKED_FIELD(mask, value) ({					   \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index a5f0e5eac6a6..4ca8c83dca59 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -239,14 +239,14 @@ struct intel_device_info {
 #define DEFINE_FLAG(name) u8 name:1
 		DEV_INFO_DISPLAY_FOR_EACH_FLAG(DEFINE_FLAG);
 #undef DEFINE_FLAG
+
+		/* Register offsets for the various display pipes and transcoders */
+		int pipe_offsets[I915_MAX_TRANSCODERS];
+		int trans_offsets[I915_MAX_TRANSCODERS];
+		int cursor_offsets[I915_MAX_PIPES];
 	} display;
 
 
-	/* Register offsets for the various display pipes and transcoders */
-	int pipe_offsets[I915_MAX_TRANSCODERS];
-	int trans_offsets[I915_MAX_TRANSCODERS];
-	int cursor_offsets[I915_MAX_PIPES];
-
 	struct color_luts {
 		u32 degamma_lut_size;
 		u32 gamma_lut_size;
-- 
2.35.1

