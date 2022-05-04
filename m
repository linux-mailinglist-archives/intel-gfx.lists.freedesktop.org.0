Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2112951AD80
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 21:07:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E64B610E663;
	Wed,  4 May 2022 19:07:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC41610E663
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 19:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651691237; x=1683227237;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vmAvINCidzX0FAemJehmlCkc3yeshRITxYAhjwgM5dc=;
 b=CSNV6kffq16C1nLVxF+BHgxGEU/ElmubkBMVMlhf1pPjGopSj/YNbxlW
 rJmgeHrqLxel8hQ/LKauHH76oLoPMuHn6IwyYBet+yQvlvPhu9Y8lGhU+
 ybtvr2Q9U7GNn6f396eY+BjhwvBnB9kzY3w28Wyqe9dsbAJU/lHO0zWn6
 vNi/YcZ4jsbRZ9/lO5GO8qgsBm7MCAvl5UtXlXjaGOHYjR6QYGgBQO3F6
 1auOfBGUIiemYlXJKDro/vqfrzt9DZ1x8oSiAJa2zPthwTT9h4u08Hvnn
 Z7aeIK/yTotXS7bmmuwyOH/ypCCXjHVuWbQrRwXJA/6bZSugUgq6GyFpg Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="249854470"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="249854470"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 12:07:16 -0700
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="517162816"
Received: from unknown (HELO josouza-mobl2.fso.intel.com) ([10.230.18.139])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 12:07:15 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 12:07:46 -0700
Message-Id: <20220504190756.466270-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220504190756.466270-1-jose.souza@intel.com>
References: <20220504190756.466270-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/12] drm/i915/display: Disable DSB for DG2 and
 Alderlake-P
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

Commit 99510e1afb48 ("drm/i915: Disable DSB usage for now") disabled
DSB for all display 12 platforms because it is not properly
programming gamma LUT but left display 13 platforms with it enabled
what I believe is not intentional.

kms_color@pipe-a-gamma test is still passing on TGL with DSB enabled
like reported in https://gitlab.freedesktop.org/drm/intel/-/issues/3916
and got the same behavior on Alderlake-P.

So here disabling DSB for all platforms and to avoid this mistake in
future platforms dropping the it from intel_device_info struct.

Fixes: 99510e1afb48 ("drm/i915: Disable DSB usage for now")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 3 ++-
 drivers/gpu/drm/i915/i915_pci.c          | 4 +---
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 695b35cd6b5e4..d23180d1b10cb 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -937,7 +937,8 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 
 #define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)->revision)
 
-#define HAS_DSB(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dsb)
+/* FIXME: LUT load is broken with DSB */
+#define HAS_DSB(dev_priv)	(DISPLAY_VER(i915) >= 12 && 0)
 
 #define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->step.display_step)
 #define INTEL_GRAPHICS_STEP(__i915) (RUNTIME_INFO(__i915)->step.graphics_step)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index c4f9c805cffd1..fc3e7c8bc69d1 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -870,8 +870,7 @@ static const struct intel_device_info jsl_info = {
 	}, \
 	TGL_CURSOR_OFFSETS, \
 	.has_global_mocs = 1, \
-	.has_pxp = 1, \
-	.display.has_dsb = 0 /* FIXME: LUT load is broken with DSB */
+	.has_pxp = 1
 
 static const struct intel_device_info tgl_info = {
 	GEN12_FEATURES,
@@ -947,7 +946,6 @@ static const struct intel_device_info adl_s_info = {
 	.display.has_ddi = 1,							\
 	.display.has_dmc = 1,							\
 	.display.has_dp_mst = 1,						\
-	.display.has_dsb = 1,							\
 	.display.has_dsc = 1,							\
 	.display.fbc_mask = BIT(INTEL_FBC_A),					\
 	.display.has_fpga_dbg = 1,						\
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index c9660b4282d9e..d16515cea22fd 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -173,7 +173,6 @@ enum intel_ppgtt_type {
 	func(has_dmc); \
 	func(has_ddi); \
 	func(has_dp_mst); \
-	func(has_dsb); \
 	func(has_dsc); \
 	func(has_fpga_dbg); \
 	func(has_gmch); \
-- 
2.36.0

