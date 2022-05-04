Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7C051AD7F
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 21:07:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B54310E741;
	Wed,  4 May 2022 19:07:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B644310E663
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 19:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651691235; x=1683227235;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uRBDJhBWvwmzRQU4G8l3ns5n/xsMC9s+clXRghCdd2A=;
 b=DlyLsF3/8nDR4bEqDFWg+w4lNljNsRy03M0y4M9rJ6IxAf6sqlNcLg1m
 vCeTK/8qw+IQ1LaxltNIUtf680Z0eFKCIwM+vOa68TUhm4plMO0tgoPXQ
 sOojlft+3XDAypCtJ9RS15aGhBr2qeVuMIPmFsRkdZZi96ZyUttHWU3xo
 q0e0goATSusNwX97INBxq1w4Iq4f1XOSG7XKAGGYqtZLgf7GNusEEs8Oe
 cta4nsycpbgqcmZL09WhZq078VG5WlOyuTMRGB7nmSWqz5xZLhLVleZNr
 7ZeAQ2dUiX7bF9kRC2az7PwrnXWqIGAiF2m3cNYbuGA4DjZ2Ajec2gM6f g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="249854466"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="249854466"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 12:07:15 -0700
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="517162811"
Received: from unknown (HELO josouza-mobl2.fso.intel.com) ([10.230.18.139])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 12:07:14 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 12:07:45 -0700
Message-Id: <20220504190756.466270-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/12] drm/i915: Drop IPC from display 13 and
 newer
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

This feature is supported from display 9 to display 12 and was
incorrectly being applied to DG2 and Alderlake-P.

While at is also taking the oportunity to drop it from
intel_device_info struct as a display check is more simple
and less prone to be left enabled in future platforms.

BSpec: 50039
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 3 ++-
 drivers/gpu/drm/i915/i915_pci.c          | 3 ---
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 2dddc27a1b0ed..695b35cd6b5e4 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1344,7 +1344,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
  */
 #define NEEDS_COMPACT_PT(dev_priv) (INTEL_INFO(dev_priv)->needs_compact_pt)
 
-#define HAS_IPC(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ipc)
+#define HAS_IPC(dev_priv)		 (DISPLAY_VER(dev_priv) >= 9 && \
+					  DISPLAY_VER(dev_priv) <= 12)
 
 #define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
 #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 498708b33924f..c4f9c805cffd1 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -646,7 +646,6 @@ static const struct intel_device_info chv_info = {
 	.display.has_dmc = 1, \
 	.has_gt_uc = 1, \
 	.display.has_hdcp = 1, \
-	.display.has_ipc = 1, \
 	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
 	.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */ \
@@ -712,7 +711,6 @@ static const struct intel_device_info skl_gt4_info = {
 	.has_reset_engine = 1, \
 	.has_snoop = true, \
 	.has_coherent_ggtt = false, \
-	.display.has_ipc = 1, \
 	HSW_PIPE_OFFSETS, \
 	IVB_CURSOR_OFFSETS, \
 	IVB_COLORS, \
@@ -955,7 +953,6 @@ static const struct intel_device_info adl_s_info = {
 	.display.has_fpga_dbg = 1,						\
 	.display.has_hdcp = 1,							\
 	.display.has_hotplug = 1,						\
-	.display.has_ipc = 1,							\
 	.display.has_psr = 1,							\
 	.display.ver = 13,							\
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),	\
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index e7d2cf7d65c85..c9660b4282d9e 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -180,7 +180,6 @@ enum intel_ppgtt_type {
 	func(has_hdcp); \
 	func(has_hotplug); \
 	func(has_hti); \
-	func(has_ipc); \
 	func(has_modular_fia); \
 	func(has_overlay); \
 	func(has_psr); \
-- 
2.36.0

