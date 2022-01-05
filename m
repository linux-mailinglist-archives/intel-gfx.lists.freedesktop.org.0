Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C933748509A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 11:05:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE09810E88A;
	Wed,  5 Jan 2022 10:05:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C18EC10E88A
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 10:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641377125; x=1672913125;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r1aJwn3f488wyUMYV9cuTnX7Mc/FGT9ad8XyZckbdGM=;
 b=ejdHyxscIJQVfAxDySFfCTzbu9AXYPqcHA5ZxczNsEyNNlna9oxu2hkl
 adW6if17GR69YFCq3gfpAOVyry+r/GJZvYFxUCz0IHezgWmzY+ngWHbmh
 Tvbs7khSDUa8DSzFGam+QhGzM92zyU77Y9ODHj4qrsC/ZEwULNpM1sguf
 Ak3I86iQXaFHvLM38pbsWewaogaIVZcw3yvYAXugn3M8RRinhRMiihE7w
 aTThVrxKWkWoSz3+i4Z0wYZx52uZCs4KhFIgSa8PfUZCB7AvmqZG3dNu1
 xQX/B48/IErx3n1LQAxe0b7nGLMBnv1On81VI3eQVRjE9mT/8E0nf9sBV Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="242209180"
X-IronPort-AV: E=Sophos;i="5.88,263,1635231600"; d="scan'208";a="242209180"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 02:05:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,263,1635231600"; d="scan'208";a="620987847"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 02:05:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 12:05:19 +0200
Message-Id: <20220105100520.976092-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: move i915_reg_read_ioctl
 declaration to intel_uncore.h
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Declarations should be where the implementation is.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h     | 3 ---
 drivers/gpu/drm/i915/intel_uncore.h | 7 ++++++-
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index beeb42a14aae..e5183743fe93 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1778,9 +1778,6 @@ mkwrite_device_info(struct drm_i915_private *dev_priv)
 	return (struct intel_device_info *)INTEL_INFO(dev_priv);
 }
 
-int i915_reg_read_ioctl(struct drm_device *dev, void *data,
-			struct drm_file *file);
-
 static inline int intel_hws_csb_write_index(struct drm_i915_private *i915)
 {
 	if (GRAPHICS_VER(i915) >= 11)
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 210fe2a71612..3a87bbd906f8 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -32,10 +32,12 @@
 
 #include "i915_reg.h"
 
+struct drm_device;
+struct drm_file;
 struct drm_i915_private;
+struct intel_gt;
 struct intel_runtime_pm;
 struct intel_uncore;
-struct intel_gt;
 
 struct intel_uncore_mmio_debug {
 	spinlock_t lock; /** lock is also taken in irq contexts. */
@@ -455,4 +457,7 @@ static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
 #define raw_reg_write(base, reg, value) \
 	writel(value, base + i915_mmio_reg_offset(reg))
 
+int i915_reg_read_ioctl(struct drm_device *dev, void *data,
+			struct drm_file *file);
+
 #endif /* !__INTEL_UNCORE_H__ */
-- 
2.30.2

