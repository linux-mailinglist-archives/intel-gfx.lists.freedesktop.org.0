Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F28A2E9047
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 07:01:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDB4989613;
	Mon,  4 Jan 2021 06:01:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E04E894C9
 for <Intel-gfx@lists.freedesktop.org>; Mon,  4 Jan 2021 06:01:37 +0000 (UTC)
IronPort-SDR: CKSnKEdSSPAG6ozQYY9eCd1vXv1y8/e9pbJ6zfl4FLYY79DuUh4ccP19U8ch/hSRJvyGRvY1sp
 lIE7RinFVlBw==
X-IronPort-AV: E=McAfee;i="6000,8403,9853"; a="176135364"
X-IronPort-AV: E=Sophos;i="5.78,473,1599548400"; d="scan'208";a="176135364"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2021 22:01:36 -0800
IronPort-SDR: 8PjBkefoILi9aZ6SR+y1agv427gLm7q8xqiGK33TVoXAFcaptffMxMjPnwuO91dAKXPlkA7oOQ
 xqr+8eKB4F8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,473,1599548400"; d="scan'208";a="461826925"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga001.fm.intel.com with ESMTP; 03 Jan 2021 22:01:35 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun,  3 Jan 2021 22:01:31 -0800
Message-Id: <20210104060135.3076-10-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210104060135.3076-1-sean.z.huang@intel.com>
References: <20210104060135.3076-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v18 09/13] drm/i915/pxp: Expose session state for
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
 drivers/gpu/drm/i915/pxp/intel_pxp.c     | 21 +++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h     | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_arb.c |  4 ++--
 drivers/gpu/drm/i915/pxp/intel_pxp_arb.h |  1 +
 4 files changed, 42 insertions(+), 2 deletions(-)

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
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
index 2038d4638711..1d2ec8ffd7ad 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
@@ -18,7 +18,7 @@
 #define ARB_SESSION_INDEX 0xf
 #define ARB_SESSION_TYPE SESSION_TYPE_TYPE0
 
-static bool is_hw_arb_session_in_play(struct intel_pxp *pxp)
+bool intel_pxp_arb_session_is_in_play(struct intel_pxp *pxp)
 {
 	u32 regval_sip = 0;
 	intel_wakeref_t wakeref;
@@ -42,7 +42,7 @@ static int wait_arb_hw_sw_state(struct intel_pxp *pxp)
 
 	ret = -EINVAL;
 	for (retry = 0; retry < max_retry; retry++) {
-		if (is_hw_arb_session_in_play(pxp) ==
+		if (intel_pxp_arb_session_is_in_play(pxp) ==
 		    arb->is_in_play) {
 			ret = 0;
 			break;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
index c1ed4ab176aa..42261ef33a03 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
@@ -12,5 +12,6 @@ struct intel_pxp;
 
 int intel_pxp_arb_create_session(struct intel_pxp *pxp);
 int intel_pxp_arb_terminate_session(struct intel_pxp *pxp);
+bool intel_pxp_arb_session_is_in_play(struct intel_pxp *pxp);
 
 #endif /* __INTEL_PXP_ARB_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
