Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F4D4D9CE3
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 15:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D378910E487;
	Tue, 15 Mar 2022 14:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1091D10E48D
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 14:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647352946; x=1678888946;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hkXddCF/FvSLX0yu+5jn/8f5aXHpI/CnanF7DYT37LI=;
 b=h1wLKV+UEKM6jTT0CgSjnZoj/SApcNriZ06njV7F6NLZwDIH2lHwIRT0
 PQztl58ldz/+TofT/pdf9Z7P9Fhy9XIdorZRVljnnYS1THUw4zPO91qAy
 ol3VawtIOAu55frMrFTN6KGGKEtOLzqCe+onjR29mQ3wkFXsNpPrSuZxv
 oz/wx/aPiMYUImZu/Y2uclQcbCwuECa4B7HIKSDuht+RADXO91WJ5lXXQ
 6cBa9JfjGtW0ziopw7HLVD5YCS06QCyvMgTOFUj4v3DA2TNQvUDHs98HD
 PvGGXACVVmQE15x9RQDHgQB4Kglgwxyj9SZXLG5a0R/GY3qbMtasmV4Hd Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="256260021"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="256260021"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 07:00:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="540447707"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 15 Mar 2022 07:00:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 16:00:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 15:59:59 +0200
Message-Id: <20220315140001.1172-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315140001.1172-1-ville.syrjala@linux.intel.com>
References: <20220315140001.1172-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/fbc: Remove
 intel_fbc_global_disable()
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

By the time intel_fbc_global_disable() gets called during driver
teardown we should have already disabled all the crtcs, so
no way FBC should be enabled at this point.

And I have no idea what the other user (i915_restore_display())
is even trying to achieve.

So let's just throw intel_fbc_global_disable() into the bin.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 --
 drivers/gpu/drm/i915/display/intel_fbc.c     | 19 -------------------
 drivers/gpu/drm/i915/display/intel_fbc.h     |  1 -
 drivers/gpu/drm/i915/i915_suspend.c          |  4 ----
 4 files changed, 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index eb49973621f0..0b7f8461ea3b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10584,8 +10584,6 @@ void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
 
 	intel_unregister_dsm_handler();
 
-	intel_fbc_global_disable(i915);
-
 	/* flush any delayed tasks or pending work */
 	flush_scheduled_work();
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 86a0f024ef40..ade54315706b 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1516,25 +1516,6 @@ void intel_fbc_update(struct intel_atomic_state *state,
 	}
 }
 
-/**
- * intel_fbc_global_disable - globally disable FBC
- * @i915: i915 device instance
- *
- * This function disables FBC regardless of which CRTC is associated with it.
- */
-void intel_fbc_global_disable(struct drm_i915_private *i915)
-{
-	struct intel_fbc *fbc;
-	enum intel_fbc_id fbc_id;
-
-	for_each_intel_fbc(i915, fbc, fbc_id) {
-		mutex_lock(&fbc->lock);
-		if (fbc->state.plane)
-			__intel_fbc_disable(fbc);
-		mutex_unlock(&fbc->lock);
-	}
-}
-
 static void intel_fbc_underrun_work_fn(struct work_struct *work)
 {
 	struct intel_fbc *fbc = container_of(work, typeof(*fbc), underrun_work);
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index 8c5a7339a27f..29e4216c2799 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -33,7 +33,6 @@ void intel_fbc_cleanup(struct drm_i915_private *dev_priv);
 void intel_fbc_update(struct intel_atomic_state *state,
 		      struct intel_crtc *crtc);
 void intel_fbc_disable(struct intel_crtc *crtc);
-void intel_fbc_global_disable(struct drm_i915_private *dev_priv);
 void intel_fbc_invalidate(struct drm_i915_private *dev_priv,
 			  unsigned int frontbuffer_bits,
 			  enum fb_op_origin origin);
diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
index 889f5b7dc78e..81def10eb58f 100644
--- a/drivers/gpu/drm/i915/i915_suspend.c
+++ b/drivers/gpu/drm/i915/i915_suspend.c
@@ -25,7 +25,6 @@
  */
 
 #include "display/intel_de.h"
-#include "display/intel_fbc.h"
 #include "display/intel_gmbus.h"
 #include "display/intel_vga.h"
 
@@ -119,9 +118,6 @@ void i915_restore_display(struct drm_i915_private *dev_priv)
 	if (GRAPHICS_VER(dev_priv) <= 4)
 		intel_de_write(dev_priv, DSPARB, dev_priv->regfile.saveDSPARB);
 
-	/* only restore FBC info on the platform that supports FBC*/
-	intel_fbc_global_disable(dev_priv);
-
 	intel_vga_redisable(dev_priv);
 
 	intel_gmbus_reset(dev_priv);
-- 
2.34.1

