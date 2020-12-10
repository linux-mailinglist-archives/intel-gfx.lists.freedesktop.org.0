Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 853B12D55BD
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 09:53:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAE656EA41;
	Thu, 10 Dec 2020 08:52:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A80786E82B
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 08:52:39 +0000 (UTC)
IronPort-SDR: lEx6Y7FMplMkp/kt7ZPMHzRcFRyIAg3bkRzZ5U4xsbgflvgGXHcT9awmcuwydxSZ9jc3TGzA7P
 MTSiaFwJdMVw==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="154027399"
X-IronPort-AV: E=Sophos;i="5.78,407,1599548400"; d="scan'208";a="154027399"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 00:52:38 -0800
IronPort-SDR: GB4uo3OL+5Xyjn2QycLTYxXVnlTluZVccF4Mbv/w+UznxDdYVbfqA6K2pjMsqm4JOr/zSLnpYN
 e58jhgDMOm/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,407,1599548400"; d="scan'208";a="318931553"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga008.fm.intel.com with ESMTP; 10 Dec 2020 00:52:36 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 10 Dec 2020 00:51:51 -0800
Message-Id: <20201210085203.14422-10-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201210085203.14422-1-sean.z.huang@intel.com>
References: <20201210085203.14422-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v5 09/21] drm/i915/pxp: Expose session state for
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
index 48e926363696..ce3760206b76 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -143,3 +143,12 @@ void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 	pxp->current_events |= events;
 	schedule_work(&pxp->irq_work);
 }
+
+bool intel_pxp_gem_object_status(struct drm_i915_private *i915)
+{
+	if (i915->gt.pxp.ctx.id != 0 &&
+	    i915->gt.pxp.ctx.flag_display_hm_surface_keys)
+		return true;
+	else
+		return false;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index ddcc3faa4ea3..027c0eb84a52 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -37,6 +37,8 @@ struct intel_pxp {
 	struct pxp_context ctx;
 };
 
+struct drm_i915_private;
+
 #ifdef CONFIG_DRM_I915_PXP
 void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir);
 int i915_pxp_teardown_required_callback(struct intel_pxp *pxp);
@@ -44,6 +46,7 @@ int i915_pxp_global_terminate_complete_callback(struct intel_pxp *pxp);
 
 int intel_pxp_init(struct intel_pxp *pxp);
 void intel_pxp_uninit(struct intel_pxp *pxp);
+bool intel_pxp_gem_object_status(struct drm_i915_private *i915);
 #else
 static inline void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 {
@@ -67,6 +70,11 @@ static inline int intel_pxp_init(struct intel_pxp *pxp)
 static inline void intel_pxp_uninit(struct intel_pxp *pxp)
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
