Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C0445B938
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 12:37:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06F536E893;
	Wed, 24 Nov 2021 11:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5281A6E883
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 11:37:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="232755284"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="232755284"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 03:37:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="538598772"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 24 Nov 2021 03:37:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 13:37:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 13:36:42 +0200
Message-Id: <20211124113652.22090-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/20] drm/i915/fbc: Pass i915 instead of FBC
 instance to FBC underrun stuff
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The underrun code doesn't need to know any details about FBC, so
just pass in the whole device rather than a specific FBC instance.
We could make this a bit more fine grained by also passing in the
pipe to intel_fbc_handle_fifo_underrun_irq() and letting the FBC
code figure which FBC instance (if any) is active on said pipe.
But that seems a bit overkill for this so don't bother.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |  4 +---
 drivers/gpu/drm/i915/display/intel_fbc.c      | 24 +++++++++----------
 drivers/gpu/drm/i915/display/intel_fbc.h      |  4 ++--
 .../drm/i915/display/intel_fifo_underrun.c    |  2 +-
 4 files changed, 16 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index acf70ae66a29..3e456e595010 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -2044,9 +2044,7 @@ i915_fifo_underrun_reset_write(struct file *filp,
 			return ret;
 	}
 
-	ret = intel_fbc_reset_underrun(&dev_priv->fbc);
-	if (ret)
-		return ret;
+	intel_fbc_reset_underrun(dev_priv);
 
 	return cnt;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 0bef3b948670..00c93040529e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1547,21 +1547,21 @@ static void intel_fbc_underrun_work_fn(struct work_struct *work)
 
 /*
  * intel_fbc_reset_underrun - reset FBC fifo underrun status.
- * @fbc: The FBC instance
+ * @i915: the i915 device
  *
  * See intel_fbc_handle_fifo_underrun_irq(). For automated testing we
  * want to re-enable FBC after an underrun to increase test coverage.
  */
-int intel_fbc_reset_underrun(struct intel_fbc *fbc)
+void intel_fbc_reset_underrun(struct drm_i915_private *i915)
 {
-	struct drm_i915_private *i915 = fbc->i915;
-	int ret;
+	struct intel_fbc *fbc = &i915->fbc;
+
+	if (!HAS_FBC(i915))
+		return;
 
 	cancel_work_sync(&fbc->underrun_work);
 
-	ret = mutex_lock_interruptible(&fbc->lock);
-	if (ret)
-		return ret;
+	mutex_lock(&fbc->lock);
 
 	if (fbc->underrun_detected) {
 		drm_dbg_kms(&i915->drm,
@@ -1571,13 +1571,11 @@ int intel_fbc_reset_underrun(struct intel_fbc *fbc)
 
 	fbc->underrun_detected = false;
 	mutex_unlock(&fbc->lock);
-
-	return 0;
 }
 
 /**
  * intel_fbc_handle_fifo_underrun_irq - disable FBC when we get a FIFO underrun
- * @fbc: The FBC instance
+ * @i915: i915 device
  *
  * Without FBC, most underruns are harmless and don't really cause too many
  * problems, except for an annoying message on dmesg. With FBC, underruns can
@@ -1589,9 +1587,11 @@ int intel_fbc_reset_underrun(struct intel_fbc *fbc)
  *
  * This function is called from the IRQ handler.
  */
-void intel_fbc_handle_fifo_underrun_irq(struct intel_fbc *fbc)
+void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *i915)
 {
-	if (!HAS_FBC(fbc->i915))
+	struct intel_fbc *fbc = &i915->fbc;
+
+	if (!HAS_FBC(i915))
 		return;
 
 	/* There's no guarantee that underrun_detected won't be set to true
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index 74492e05a1c9..36e9e5f93bcb 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -35,8 +35,8 @@ void intel_fbc_invalidate(struct drm_i915_private *dev_priv,
 			  enum fb_op_origin origin);
 void intel_fbc_flush(struct drm_i915_private *dev_priv,
 		     unsigned int frontbuffer_bits, enum fb_op_origin origin);
-void intel_fbc_handle_fifo_underrun_irq(struct intel_fbc *fbc);
-int intel_fbc_reset_underrun(struct intel_fbc *fbc);
+void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *i915);
+void intel_fbc_reset_underrun(struct drm_i915_private *i915);
 int intel_fbc_set_false_color(struct intel_fbc *fbc, bool enable);
 
 #endif /* __INTEL_FBC_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index 28d9eeb7b4f3..eb841960840d 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -434,7 +434,7 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 			drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
 	}
 
-	intel_fbc_handle_fifo_underrun_irq(&dev_priv->fbc);
+	intel_fbc_handle_fifo_underrun_irq(dev_priv);
 }
 
 /**
-- 
2.32.0

