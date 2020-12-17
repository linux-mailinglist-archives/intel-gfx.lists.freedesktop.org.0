Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF262DDAFD
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 22:49:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDFCE89A16;
	Thu, 17 Dec 2020 21:49:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6631F89A16
 for <Intel-gfx@lists.freedesktop.org>; Thu, 17 Dec 2020 21:49:35 +0000 (UTC)
IronPort-SDR: 6HQj5IV5ytGBo8wlMnhBDMfkk0dDQr1V668SzS1RBVj5YU4U7y0E1WSpkhr6lygcrO1N1Zr/5M
 EZlj41LTQIuw==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="236906277"
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="236906277"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 13:49:32 -0800
IronPort-SDR: wVEr9VC+ugg5kMTQV/0TjbrON3IiX7lTXMFV603hD1e7b3kCeodoteQkWIrzqgA2J7kQmv4vTy
 W67fImTQimRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="342780463"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga006.jf.intel.com with ESMTP; 17 Dec 2020 13:49:32 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 17 Dec 2020 13:49:27 -0800
Message-Id: <20201217214931.13340-10-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201217214931.13340-1-sean.z.huang@intel.com>
References: <20201217214931.13340-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v11 09/13] drm/i915/pxp: Expose session state for
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
 drivers/gpu/drm/i915/pxp/intel_pxp.c | 9 +++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h | 8 ++++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 884e9c367911..a36f73bae480 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -140,3 +140,12 @@ void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 	pxp->current_events |= events;
 	schedule_work(&pxp->irq_work);
 }
+
+bool intel_pxp_gem_object_status(struct drm_i915_private *i915)
+{
+	if (i915->gt.pxp.ctx.inited &&
+	    i915->gt.pxp.ctx.flag_display_hm_surface_keys)
+		return true;
+	else
+		return false;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index cdaa6ce6fdca..976baf9b08e3 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -29,6 +29,8 @@ enum pxp_protection_modes {
 	PROTECTION_MODE_ALL
 };
 
+struct drm_i915_private;
+
 #ifdef CONFIG_DRM_I915_PXP
 void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir);
 int i915_pxp_teardown_required_callback(struct intel_pxp *pxp);
@@ -36,6 +38,7 @@ int i915_pxp_global_terminate_complete_callback(struct intel_pxp *pxp);
 
 void intel_pxp_init(struct intel_pxp *pxp);
 void intel_pxp_fini(struct intel_pxp *pxp);
+bool intel_pxp_gem_object_status(struct drm_i915_private *i915);
 #else
 static inline void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 {
@@ -58,6 +61,11 @@ static inline void intel_pxp_init(struct intel_pxp *pxp)
 static inline void intel_pxp_fini(struct intel_pxp *pxp)
 {
 }
+
+static inline bool intel_pxp_gem_object_status(struct drm_i915_private *i915)
+{
+	return false;
+}
 #endif
 
 #endif /* __INTEL_PXP_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
