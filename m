Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F2E2CB3B9
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 05:04:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16F5E6EA05;
	Wed,  2 Dec 2020 04:04:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 818476EA05
 for <Intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 04:04:20 +0000 (UTC)
IronPort-SDR: c2W8YQ1coIPemNWwmHwSszU4cTRxcJRYBrJQZj9ZNVi9pKdU5QUvR4nUrt53YIdH/E7ed9geiO
 Ae6CRjTQL9BA==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="237078970"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="237078970"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 20:04:17 -0800
IronPort-SDR: iYIhdSis62MyaWc7/5XWXhU79LSPNeHLtilA59KX1qmgap6tk8Ep0CHFS9vp8A2cSsNfoDbPRU
 PRKshTIpaPaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="549869269"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga005.jf.intel.com with ESMTP; 01 Dec 2020 20:04:17 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 20:03:36 -0800
Message-Id: <20201202040341.31981-22-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201202040341.31981-1-sean.z.huang@intel.com>
References: <20201202040341.31981-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v4 21/26] drm/i915/pxp: Expose session state for
 display protection flip
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement the intel_pxp_gem_object_status() to allow i915 display
querying the current PXP session state. In the design, display
should not perform protection flip on the protected buffers if
there is no PXP session alive.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c | 8 ++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h | 7 +++++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 8134b39c7419..90e6766991c5 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -326,3 +326,11 @@ void intel_pxp_irq_handler(struct intel_gt *gt, u16 iir)
 	i915->pxp.current_events |= events;
 	schedule_work(&i915->pxp.irq_work);
 }
+
+bool intel_pxp_gem_object_status(struct drm_i915_private *i915)
+{
+	if (i915->pxp.ctx && i915->pxp.ctx->flag_display_hm_surface_keys)
+		return true;
+	else
+		return false;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 818e79e9caca..7556ad5c7904 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -116,6 +116,8 @@ int i915_pxp_global_terminate_complete_callback(struct drm_i915_private *i915);
 
 int intel_pxp_init(struct drm_i915_private *i915);
 void intel_pxp_uninit(struct drm_i915_private *i915);
+
+bool intel_pxp_gem_object_status(struct drm_i915_private *i915);
 #else
 static inline int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmfile)
 {
@@ -153,6 +155,11 @@ static inline int intel_pxp_init(struct drm_i915_private *i915)
 static inline void intel_pxp_uninit(struct drm_i915_private *i915)
 {
 }
+
+static inline bool intel_pxp_gem_object_status(struct drm_i915_private *i915)
+{
+	return false;
+}
 #endif
 
 #endif /* __INTEL_PXP_PM_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
