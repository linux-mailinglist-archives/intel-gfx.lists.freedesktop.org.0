Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F14502B2A8A
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Nov 2020 02:45:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 946FA6E885;
	Sat, 14 Nov 2020 01:45:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1EB36E8C8
 for <Intel-gfx@lists.freedesktop.org>; Sat, 14 Nov 2020 01:45:41 +0000 (UTC)
IronPort-SDR: qALNBDYV3RBv7CdeidtmN3zYuaua4m7BiKqJ/X5552XhVntB0SBw1vUETEjaS/e3rZXD7FWFb8
 NwAyqRF5WljQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="149824094"
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="149824094"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 17:45:39 -0800
IronPort-SDR: WmHNxU1W/Y8qGz13CcAACljEP1MOB/Xu8ppVZV5QQmSmLOrCIEC/QMsZMUF0XHCKpwiMB6cL8t
 Nv9jtrXzXm7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="361524802"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga002.fm.intel.com with ESMTP; 13 Nov 2020 17:45:38 -0800
From: Sean Z Huang <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 17:45:26 -0800
Message-Id: <20201114014537.25495-16-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201114014537.25495-1-sean.z.huang@intel.com>
References: <20201114014537.25495-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PATCH 16/27] drm/i915/pxp: Termiante the session upon
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
Cc: "Huang, Sean Z" <sean.z.huang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: "Huang, Sean Z" <sean.z.huang@intel.com>

Ring0 PXP should terminate the hardware session and cleanup the
software state gracefully when the application has established
the protection session, but doesn't close the session correctly
due to some cases like application crash.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c         |  2 ++
 drivers/gpu/drm/i915/pxp/intel_pxp.c    | 15 +++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h    |  1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 21 +++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h |  1 +
 5 files changed, 40 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 43ea85b5f14b..e61ffce52e3e 100644
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
index 40728ef70e20..75858c0842ba 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -110,6 +110,21 @@ int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmf
 	return ret;
 }
 
+int intel_pxp_close(struct drm_i915_private *i915, struct drm_file *drmfile)
+{
+	int ret;
+
+	drm_dbg(&i915->drm, ">>> %s i915=[%p] drmfile=[%p] pid=[%d]\n", __func__,
+		i915, drmfile, pid_nr(drmfile->pid));
+
+	mutex_lock(&i915->pxp.r0ctx->ctx_mutex);
+	ret = intel_pxp_sm_close(i915, drmfile);
+	mutex_unlock(&i915->pxp.r0ctx->ctx_mutex);
+
+	drm_dbg(&i915->drm, "<<< %s ret=[%d]\n", __func__, ret);
+	return ret;
+}
+
 static void intel_pxp_write_irq_mask_reg(struct drm_i915_private *i915, u32 mask)
 {
 	WARN_ON(INTEL_GEN(i915) < 11);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 8851c28a0e57..3d70b9bab79f 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -83,6 +83,7 @@ struct intel_gt;
 struct drm_i915_private;
 
 int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmfile);
+int intel_pxp_close(struct drm_i915_private *i915, struct drm_file *drmfile);
 void intel_pxp_irq_handler(struct intel_gt *gt, u16 iir);
 int i915_pxp_teardown_required_callback(struct drm_i915_private *i915);
 int i915_pxp_global_terminate_complete_callback(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index 37fe2e5af88d..71082938b9f0 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -1260,3 +1260,24 @@ bool intel_pxp_sm_is_any_type0_session_in_play(struct drm_i915_private *i915, in
 
 	return false;
 }
+
+int intel_pxp_sm_close(struct drm_i915_private *i915, struct drm_file *drmfile)
+{
+	struct pxp_protected_session *s, *n;
+	int ret = 0;
+
+	drm_dbg(&i915->drm, ">>> %s\n", __func__);
+
+	list_for_each_entry_safe(s, n, pxp_session_list(i915, SESSION_TYPE_TYPE0), session_list) {
+		if (s->drmfile && s->drmfile == drmfile && s->pid == pid_nr(drmfile->pid)) {
+			ret = terminate_protected_session(i915, 0, s->session_type, s->session_index, false);
+			if (ret) {
+				drm_dbg(&i915->drm, "Failed to terminate_protected_session()\n");
+				return ret;
+			}
+		}
+	}
+
+	drm_dbg(&i915->drm, "<<< %s ret=[%d]\n", __func__, ret);
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
index 955182a90bfe..b968a3169133 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -114,5 +114,6 @@ int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915);
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
