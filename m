Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E252A2BBB13
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Nov 2020 01:35:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3CE06E950;
	Sat, 21 Nov 2020 00:35:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB16D6E8D0
 for <Intel-gfx@lists.freedesktop.org>; Sat, 21 Nov 2020 00:35:42 +0000 (UTC)
IronPort-SDR: CRMXFSCLy5PmhDZXuewKHHbm2uiWQ1YIx4EYKVNyak5QmXfla5OBBIadwSNGR2xvglrJ8LOicS
 8s9Rsp3tOLLg==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="189670523"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="189670523"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 16:35:41 -0800
IronPort-SDR: WIbH368iFOJNaSw02LyKhmrPvTI7kFj4QNva9awiJTIO3+UL/GU443MZqYakVgiTBAYZ4Pkj9n
 a623mpl31BQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="369352687"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Nov 2020 16:35:40 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 20 Nov 2020 16:35:29 -0800
Message-Id: <20201121003540.24980-16-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201121003540.24980-1-sean.z.huang@intel.com>
References: <20201121003540.24980-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v2 15/26] drm/i915/pxp: Termiante the session upon
 app crash
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

PXP should terminate the hardware session and cleanup the software
state gracefully when the application has established the
protection session, but doesn't close the session correctly due to
some cases like application crash.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c         |  2 ++
 drivers/gpu/drm/i915/pxp/intel_pxp.c    | 12 ++++++++++--
 drivers/gpu/drm/i915/pxp/intel_pxp.h    |  1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 19 +++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h |  1 +
 5 files changed, 33 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index c8b9c42fcbd6..dec3bb96d238 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1028,6 +1028,8 @@ static void i915_driver_postclose(struct drm_device *dev, struct drm_file *file)
 
 	/* Catch up with all the deferred frees from "this" client */
 	i915_gem_flush_free_objects(to_i915(dev));
+
+	intel_pxp_close(to_i915(dev), file);
 }
 
 static void intel_suspend_encoders(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index ff6941cd3d83..846d94d90861 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -100,10 +100,18 @@ int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmf
 	return ret;
 }
 
-static void intel_pxp_write_irq_mask_reg(struct drm_i915_private *i915, u32 mask)
+void intel_pxp_close(struct drm_i915_private *i915, struct drm_file *drmfile)
 {
-	WARN_ON(INTEL_GEN(i915) < 11);
+	if (!i915 || !i915->pxp.ctx || !drmfile)
+		return;
 
+	mutex_lock(&i915->pxp.ctx->ctx_mutex);
+	intel_pxp_sm_close(i915, drmfile);
+	mutex_unlock(&i915->pxp.ctx->ctx_mutex);
+}
+
+static void intel_pxp_write_irq_mask_reg(struct drm_i915_private *i915, u32 mask)
+{
 	/* crypto mask is in bit31-16 (Engine1 Interrupt Mask) */
 	intel_uncore_write(&i915->uncore, GEN11_CRYPTO_RSVD_INTR_MASK, mask << 16);
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 6f29a409c124..a3a0cf1f12e9 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -88,6 +88,7 @@ struct intel_gt;
 struct drm_i915_private;
 
 int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmfile);
+void intel_pxp_close(struct drm_i915_private *i915, struct drm_file *drmfile);
 void intel_pxp_irq_handler(struct intel_gt *gt, u16 iir);
 int i915_pxp_teardown_required_callback(struct drm_i915_private *i915);
 int i915_pxp_global_terminate_complete_callback(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index 32eebdc380e5..6ff347b7b72b 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -1132,3 +1132,22 @@ bool intel_pxp_sm_is_any_type0_session_in_play(struct drm_i915_private *i915, in
 
 	return false;
 }
+
+int intel_pxp_sm_close(struct drm_i915_private *i915, struct drm_file *drmfile)
+{
+	struct pxp_protected_session *s, *n;
+	int ret = 0;
+
+	list_for_each_entry_safe(s, n, pxp_session_list(i915, SESSION_TYPE_TYPE0), session_list) {
+		if (s->drmfile && s->drmfile == drmfile && s->pid == pid_nr(drmfile->pid)) {
+			ret = terminate_protected_session(i915, 0, s->session_type,
+							  s->session_index, false);
+			if (ret) {
+				drm_err(&i915->drm, "Failed to terminate_protected_session()\n");
+				return ret;
+			}
+		}
+	}
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
index aee638e70be6..143f024bb0d2 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -115,5 +115,6 @@ int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915);
 u32 intel_pxp_get_pxp_tag(struct drm_i915_private *i915, int session_idx,
 			  int session_type, u32 *session_is_alive);
 bool intel_pxp_sm_is_any_type0_session_in_play(struct drm_i915_private *i915, int protection_mode);
+int intel_pxp_sm_close(struct drm_i915_private *i915, struct drm_file *drmfile);
 
 #endif /* __INTEL_PXP_SM_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
