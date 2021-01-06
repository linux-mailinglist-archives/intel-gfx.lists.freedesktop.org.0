Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2412A2EC69C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 00:12:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7738A6E3AA;
	Wed,  6 Jan 2021 23:12:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AF7E6E314
 for <Intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 23:12:24 +0000 (UTC)
IronPort-SDR: e1st5ECBm6s/Z/GTMO7brhlKM7Eu2H4yv3mpV/NCOqn0zQQc+EL+4hGy+J/fy7t6321gNUZ80M
 d8Q53FGMOIpw==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="195900074"
X-IronPort-AV: E=Sophos;i="5.79,328,1602572400"; d="scan'208";a="195900074"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 15:12:23 -0800
IronPort-SDR: Hh/O6bDYyO5poqo0xVPQd2a1DEuJuu1Cw6KUELubkTrvzn6PLIB2VQL5d2KwysObO5WQbs/Pgc
 vmKCYqCF5aAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,328,1602572400"; d="scan'208";a="567566127"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga006.fm.intel.com with ESMTP; 06 Jan 2021 15:12:23 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed,  6 Jan 2021 15:12:19 -0800
Message-Id: <20210106231223.8323-10-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210106231223.8323-1-sean.z.huang@intel.com>
References: <20210106231223.8323-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v19 09/13] drm/i915/pxp: Expose session state for
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
there is no PXP session alive. And Implement the funciton to set
the protected flag for gem context.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c | 21 +++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h | 18 ++++++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 23d4cfc1fb1f..a28a459532c2 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -158,3 +158,24 @@ void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
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
+
+int intel_pxp_gem_context_set_protected(struct drm_i915_private *i915,
+					unsigned long *user_flags,
+					u32 protected_bit)
+{
+	if (!user_flags || !protected_bit ||
+	    !intel_pxp_arb_session_is_in_play(&i915->gt.pxp))
+		return -EINVAL;
+
+	set_bit(protected_bit, user_flags);
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index cdaa6ce6fdca..ff1c1c0e720c 100644
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
@@ -36,6 +38,10 @@ int i915_pxp_global_terminate_complete_callback(struct intel_pxp *pxp);
 
 void intel_pxp_init(struct intel_pxp *pxp);
 void intel_pxp_fini(struct intel_pxp *pxp);
+bool intel_pxp_gem_object_status(struct drm_i915_private *i915);
+int intel_pxp_gem_context_set_protected(struct drm_i915_private *i915,
+					unsigned long *user_flag,
+					u32 protected_bit);
 #else
 static inline void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 {
@@ -58,6 +64,18 @@ static inline void intel_pxp_init(struct intel_pxp *pxp)
 static inline void intel_pxp_fini(struct intel_pxp *pxp)
 {
 }
+
+static inline bool intel_pxp_gem_object_status(struct drm_i915_private *i915)
+{
+	return false;
+}
+
+static inline int intel_pxp_gem_context_set_protected(struct drm_i915_private *i915,
+						      unsigned long *user_flag,
+						      u32 protected_bit)
+{
+	return 0;
+}
 #endif
 
 #endif /* __INTEL_PXP_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
