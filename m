Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB6F41D666
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 11:32:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CA586E3C1;
	Thu, 30 Sep 2021 09:32:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 194C06E3D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 09:32:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="247683250"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="247683250"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 02:32:36 -0700
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="555651667"
Received: from vmurthy-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.37.18])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 02:32:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Thu, 30 Sep 2021 12:32:29 +0300
Message-Id: <20210930093229.28598-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/fdi: use -EAGAIN instead of local
 special return value
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

Using standard -EAGAIN should be perfectly fine instead of using a
special case value.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 11 +++++------
 drivers/gpu/drm/i915/display/intel_fdi.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_fdi.h     |  1 -
 3 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a4453dd1bb51..db43334fb7d2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7717,12 +7717,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	ret = intel_crtc_compute_config(to_intel_crtc(crtc), pipe_config);
 	if (ret == -EDEADLK)
 		return ret;
-	if (ret < 0) {
-		drm_dbg_kms(&i915->drm, "CRTC fixup failed\n");
-		return ret;
-	}
-
-	if (ret == I915_DISPLAY_CONFIG_RETRY) {
+	if (ret == -EAGAIN) {
 		if (drm_WARN(&i915->drm, !retry,
 			     "loop in pipe configuration computation\n"))
 			return -EINVAL;
@@ -7731,6 +7726,10 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 		retry = false;
 		goto encoder_retry;
 	}
+	if (ret < 0) {
+		drm_dbg_kms(&i915->drm, "CRTC fixup failed\n");
+		return ret;
+	}
 
 	/* Dithering seems to not pass-through bits correctly when it should, so
 	 * only enable it on 6bpc panels and when its not a compliance
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index af01d1fa761e..6b780349371c 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -176,7 +176,7 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
 	}
 
 	if (needs_recompute)
-		return I915_DISPLAY_CONFIG_RETRY;
+		return -EAGAIN;
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
index 61cb216a09f5..abd9f809d421 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.h
+++ b/drivers/gpu/drm/i915/display/intel_fdi.h
@@ -11,7 +11,6 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_encoder;
 
-#define I915_DISPLAY_CONFIG_RETRY 1
 int intel_fdi_link_freq(struct drm_i915_private *i915,
 			const struct intel_crtc_state *pipe_config);
 int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
-- 
2.30.2

