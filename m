Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D084D9CE6
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 15:02:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE3A210E494;
	Tue, 15 Mar 2022 14:02:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9824B10E494
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 14:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647352960; x=1678888960;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=gPYqvAG2ztiBN4M+z3vE0WeB0BSaMc4IyprR4hqLmRM=;
 b=gdxa4g5mTzTdeBawXW138nYtwbBtKAPNpahr8aYSWLv6/50AfkyjQ8Fw
 YRj95DinlUI1IP0teB5BxFKQy2GUE0cgN316M8PLGrJ5N1fgxj57bSy4G
 ojftum+5RGysVXxMveXLM2tYNbpFid1THk6D9hn307C+JuQtduMIVyBxu
 a4yF1BDdvvsDUhhLn8d6FYf8iMLS+h0N5lAidiKJAA4X12SF/jNfqg/X2
 BKKpvmNd8jFV3mihKnoO96aKooUTSMV69C5GpRbuU48jMYgJZJShXfbsb
 aWj/BwMMpOclXYteTnJGau2t4HoxpeKL2vmQtWCVYxLEihuf5aDu7NxR3 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="236254403"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="236254403"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 07:00:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="515876398"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 15 Mar 2022 07:00:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 16:00:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 16:00:00 +0200
Message-Id: <20220315140001.1172-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315140001.1172-1-ville.syrjala@linux.intel.com>
References: <20220315140001.1172-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/fbc: Introduce intel_fbc_sanitize()
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

Let's make sure FBC is always disabled when we start to take
over the hardware state.

I suspect this should never really happen, since the only time
when we really should be taking over with the display already
active is when the previous state was progammed by the BIOS,
which likely shouldn't use FBC. This could be driver init,
or S4 resume when the boot kernel doesn't load i915. But I
suppose no harm in keeping this code around for exra safety
since it's quite trivial.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 ++
 drivers/gpu/drm/i915/display/intel_fbc.c     | 28 +++++++++++---------
 drivers/gpu/drm/i915/display/intel_fbc.h     |  1 +
 3 files changed, 19 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0b7f8461ea3b..a968635ef87e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10446,6 +10446,8 @@ intel_modeset_setup_hw_state(struct drm_device *dev,
 			intel_crtc_vblank_on(crtc_state);
 	}
 
+	intel_fbc_sanitize(dev_priv);
+
 	intel_sanitize_plane_mapping(dev_priv);
 
 	for_each_intel_encoder(dev, encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ade54315706b..0187c61fa063 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1702,22 +1702,26 @@ void intel_fbc_init(struct drm_i915_private *i915)
 	drm_dbg_kms(&i915->drm, "Sanitized enable_fbc value: %d\n",
 		    i915->params.enable_fbc);
 
-	for_each_fbc_id(i915, fbc_id) {
-		struct intel_fbc *fbc;
+	for_each_fbc_id(i915, fbc_id)
+		i915->fbc[fbc_id] = intel_fbc_create(i915, fbc_id);
+}
 
-		fbc = intel_fbc_create(i915, fbc_id);
-		if (!fbc)
-			continue;
+/**
+ * intel_fbc_sanitize - Sanitize FBC
+ * @i915: the i915 device
+ *
+ * Make sure FBC is initially disabled since we have no
+ * idea eg. into which parts of stolen it might be scribbling
+ * into.
+ */
+void intel_fbc_sanitize(struct drm_i915_private *i915)
+{
+	struct intel_fbc *fbc;
+	enum intel_fbc_id fbc_id;
 
-		/*
-		 * We still don't have any sort of hardware state readout
-		 * for FBC, so deactivate it in case the BIOS activated it
-		 * to make sure software matches the hardware state.
-		 */
+	for_each_intel_fbc(i915, fbc, fbc_id) {
 		if (intel_fbc_hw_is_active(fbc))
 			intel_fbc_hw_deactivate(fbc);
-
-		i915->fbc[fbc->id] = fbc;
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index 29e4216c2799..db60143295ec 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -30,6 +30,7 @@ void intel_fbc_post_update(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc);
 void intel_fbc_init(struct drm_i915_private *dev_priv);
 void intel_fbc_cleanup(struct drm_i915_private *dev_priv);
+void intel_fbc_sanitize(struct drm_i915_private *dev_priv);
 void intel_fbc_update(struct intel_atomic_state *state,
 		      struct intel_crtc *crtc);
 void intel_fbc_disable(struct intel_crtc *crtc);
-- 
2.34.1

