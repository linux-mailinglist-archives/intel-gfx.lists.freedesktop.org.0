Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E5B2E23EB
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 04:10:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 947B16E8BB;
	Thu, 24 Dec 2020 03:10:33 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7C1B89DCF
 for <Intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 03:10:28 +0000 (UTC)
IronPort-SDR: JbvdXAqibJ7A7mdjsPxBLjIK2r7+3EsqV6rUKE76+4zdsKQhI7c1mGkEc68sSKr9UvjQ0yMgW1
 aMnF3v6oyQZg==
X-IronPort-AV: E=McAfee;i="6000,8403,9844"; a="155893684"
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="155893684"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 19:10:28 -0800
IronPort-SDR: klzWXA8+5myFt2boTuHnjFjdHaB15IDK9rJWvWUfUAsoKa5GOUn4KDF4q2mNhLcliROVlCRss4
 n6Sdlak/vmVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="342496793"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga003.jf.intel.com with ESMTP; 23 Dec 2020 19:10:28 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 23 Dec 2020 19:10:22 -0800
Message-Id: <20201224031026.7360-10-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201224031026.7360-1-sean.z.huang@intel.com>
References: <20201224031026.7360-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v15 09/13] drm/i915/pxp: Expose session state for
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
index 23d4cfc1fb1f..72f7d9d966a8 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -158,3 +158,12 @@ void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
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
