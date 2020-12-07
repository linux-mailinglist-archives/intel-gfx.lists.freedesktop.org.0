Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC0A2D0894
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 01:22:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 457A26E575;
	Mon,  7 Dec 2020 00:22:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 806CF6E53E
 for <Intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 00:22:08 +0000 (UTC)
IronPort-SDR: niku6uxK/6buv7tZCMsUgnJWIpGkKLvNc/MksAnYzJvzUWNoWf0fKp3T/Plxa/6FvLo8GwbZNF
 dYsllBCLwBmQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="191889200"
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="191889200"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2020 16:22:08 -0800
IronPort-SDR: /oiblZV4FAyB+j0bW0Vu2zKpEeQKrSuz381rB0M9Fcxs8Ewerd3Agpm0Dwzs2VF+Wx54ERHlPz
 oy+jrrxCIgaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="369586444"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2020 16:22:08 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun,  6 Dec 2020 16:21:30 -0800
Message-Id: <20201207002134.13731-13-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201207002134.13731-1-sean.z.huang@intel.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v1 12/16] drm/i915/pxp: Expose session state for
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
index 48a0eb16f1d9..0fbdd7eecefe 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -201,3 +201,11 @@ void intel_pxp_irq_handler(struct intel_gt *gt, u16 iir)
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
index 425cafe24392..88919f8a2403 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -52,6 +52,8 @@ int i915_pxp_global_terminate_complete_callback(struct drm_i915_private *i915);
 
 int intel_pxp_init(struct drm_i915_private *i915);
 void intel_pxp_uninit(struct drm_i915_private *i915);
+
+bool intel_pxp_gem_object_status(struct drm_i915_private *i915);
 #else
 static inline int intel_pxp_create_arb_session(struct drm_i915_private *i915)
 {
@@ -80,6 +82,11 @@ static inline int intel_pxp_init(struct drm_i915_private *i915)
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
