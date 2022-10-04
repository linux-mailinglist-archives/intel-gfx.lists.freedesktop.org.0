Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CFF5F4631
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 17:09:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 950AC10E5E4;
	Tue,  4 Oct 2022 15:09:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 390B510E5E4
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 15:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664896173; x=1696432173;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mprGw60vRG5HYU8eZSTxdaO2m9WOtp3eb3QlAWBDicU=;
 b=IHjzAoGNBpg+M/wXmTEuAeqIC3ZFEbj4dxkbl2n7Z4xxQbpro2Aco9mZ
 u3XCIB/wDzs+auYwgBJclwP8vuq60aIyGB9AqVfC2XSGQUEa3r2lztm2C
 jZgTQk0ifjMqdAWcmAyyME5mlKNld7AFd1/wSR5VEkcAKA5ML7U4YRHBS
 pnAuS+cLVLt37qldc7hOfrsejv4HPXtyRwB9Sfliuyz5sBd5Ysc+KmJfl
 m1prO91waXbTfw32DkSoqplPHTYZLNkZtv6FHdiiteyeG6ys85CG85hXP
 05k9n0WRmZ1KWOUoc/j/Tj56eiTYltbqZVgZ6f0S7/sdbs+qQzVNsCHrI w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="290154105"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="290154105"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 08:09:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="654800064"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="654800064"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 04 Oct 2022 08:09:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Oct 2022 18:09:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 18:09:29 +0300
Message-Id: <20221004150929.23910-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Clean up some namespacing
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Rename a few functions from intel_crtc_foo_init() to
intel_foo_crtc_init() so that the namespaec clearly
indicates what feature/file we're talking about.

If left out intel_crtc_crc_init() because the whole crc
stuff uses intel_crtc_ as its namespace currently.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 2 +-
 drivers/gpu/drm/i915/display/intel_color.h | 2 +-
 drivers/gpu/drm/i915/display/intel_crtc.c  | 4 ++--
 drivers/gpu/drm/i915/display/intel_drrs.c  | 4 ++--
 drivers/gpu/drm/i915/display/intel_drrs.h  | 2 +-
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 0c73b2ba1283..fc23d5d8f7fd 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2209,7 +2209,7 @@ static const struct intel_color_funcs ilk_color_funcs = {
 	.read_luts = ilk_read_luts,
 };
 
-void intel_crtc_color_init(struct intel_crtc *crtc)
+void intel_color_crtc_init(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	bool has_ctm = INTEL_INFO(dev_priv)->display.color.degamma_lut_size != 0;
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index 67702451e2fd..04984e6000b6 100644
--- a/drivers/gpu/drm/i915/display/intel_color.h
+++ b/drivers/gpu/drm/i915/display/intel_color.h
@@ -14,7 +14,7 @@ struct drm_i915_private;
 struct drm_property_blob;
 
 void intel_color_init_hooks(struct drm_i915_private *i915);
-void intel_crtc_color_init(struct intel_crtc *crtc);
+void intel_color_crtc_init(struct intel_crtc *crtc);
 int intel_color_check(struct intel_crtc_state *crtc_state);
 void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state);
 void intel_color_commit_arm(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 2d9fc7383bfc..6be1fe34c83b 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -365,8 +365,8 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 						BIT(DRM_SCALING_FILTER_DEFAULT) |
 						BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
 
-	intel_crtc_color_init(crtc);
-	intel_crtc_drrs_init(crtc);
+	intel_color_crtc_init(crtc);
+	intel_drrs_crtc_init(crtc);
 	intel_crtc_crc_init(crtc);
 
 	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 2b94a62ef65a..e27408efaae2 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -284,14 +284,14 @@ void intel_drrs_flush(struct drm_i915_private *dev_priv,
 }
 
 /**
- * intel_crtc_drrs_init - Init DRRS for CRTC
+ * intel_drrs_crtc_init - Init DRRS for CRTC
  * @crtc: crtc
  *
  * This function is called only once at driver load to initialize basic
  * DRRS stuff.
  *
  */
-void intel_crtc_drrs_init(struct intel_crtc *crtc)
+void intel_drrs_crtc_init(struct intel_crtc *crtc)
 {
 	INIT_DELAYED_WORK(&crtc->drrs.work, intel_drrs_downclock_work);
 	mutex_init(&crtc->drrs.mutex);
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index 041248bf5d67..8ef5f93a80ff 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -23,7 +23,7 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
 			   unsigned int frontbuffer_bits);
 void intel_drrs_flush(struct drm_i915_private *dev_priv,
 		      unsigned int frontbuffer_bits);
-void intel_crtc_drrs_init(struct intel_crtc *crtc);
+void intel_drrs_crtc_init(struct intel_crtc *crtc);
 void intel_drrs_crtc_debugfs_add(struct intel_crtc *crtc);
 void intel_drrs_connector_debugfs_add(struct intel_connector *connector);
 
-- 
2.35.1

