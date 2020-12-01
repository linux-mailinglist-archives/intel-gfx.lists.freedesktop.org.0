Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B612CB0EC
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 00:35:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82C8E6E982;
	Tue,  1 Dec 2020 23:35:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63B196E97C
 for <Intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 23:34:50 +0000 (UTC)
IronPort-SDR: CFBYyDqMOMUHJ7Q+b5b5oNp3qT0z0kRMC8QGQ0iSjm9h4JDjj1g1PAOg2Nh4B5XnN3tm4tH4IU
 +e1zLCmaxeZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="173021539"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="173021539"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 15:34:49 -0800
IronPort-SDR: ax27xNfg3sUizVHQRBoVSfTNVOqpVgXHb+ZQE5m9O+S7Z82Ck1kRjjvU36eMI7IZ4J7TEQCV5n
 2PGh5+qKl0ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="537745416"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga006.fm.intel.com with ESMTP; 01 Dec 2020 15:34:46 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 15:34:06 -0800
Message-Id: <20201201233411.21858-22-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201201233411.21858-1-sean.z.huang@intel.com>
References: <20201201233411.21858-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v3 21/26] drm/i915/pxp: Expose session state for
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
