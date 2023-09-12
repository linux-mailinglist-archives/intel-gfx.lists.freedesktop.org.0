Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA05779CF4F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 13:07:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2985510E3FD;
	Tue, 12 Sep 2023 11:07:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E02A610E400;
 Tue, 12 Sep 2023 11:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694516841; x=1726052841;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bXW3Pf9dMTKSyf9wP2AX7Pjn2joY7wHuYq8Ul5r7mwU=;
 b=Ug4SggMf9c0Mb/l0uOUKkACmZZoY/5+cGs2nqocakokUrJXuUDueL5Je
 Io4nAVdMh58XGMeBacCXIu3V6upqkX4e+lrTZycyn9fvgJiVY0Tu/Gi6x
 JNzdFzrS38N039dBQNidRgFvgHeIYNClSWKf8rg4ErAu/kVL4Trk8Sr4Y
 QdighwXOI+SMYLqKwP+M+AVSXVN2JPJ0bEbXKQlXFVeHKeIAM9/a0ttw1
 zgq+WkNDOcGWC7rc9eSdqfL/IqHUBMTZnyYyxs0DmEzt7KmsEiqSUOl48
 rhbCm90CIxKI43/OlcP2wH8CUoyoNH/NMZV3MdCPeg3fk4PRQL0FX5x7L w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="409295328"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="409295328"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 04:07:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="743688086"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="743688086"
Received: from kscholl-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.206])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 04:07:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Sep 2023 14:06:33 +0300
Message-Id: <4359b34cbcff6199b5e42b5311c815aa6f4a167c.1694514689.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1694514689.git.jani.nikula@intel.com>
References: <cover.1694514689.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/19] drm/i915/display: add I915 conditional
 build to intel_pch_refclk.h
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
Cc: jani.nikula@intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add stubs for !I915.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_pch_refclk.h   | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.h b/drivers/gpu/drm/i915/display/intel_pch_refclk.h
index 9bcf56629f24..ae3403c0ced8 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.h
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.h
@@ -11,6 +11,7 @@
 struct drm_i915_private;
 struct intel_crtc_state;
 
+#ifdef I915
 void lpt_program_iclkip(const struct intel_crtc_state *crtc_state);
 void lpt_disable_iclkip(struct drm_i915_private *dev_priv);
 int lpt_get_iclkip(struct drm_i915_private *dev_priv);
@@ -18,5 +19,27 @@ int lpt_iclkip(const struct intel_crtc_state *crtc_state);
 
 void intel_init_pch_refclk(struct drm_i915_private *dev_priv);
 void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv);
+#else
+static inline void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
+{
+}
+static inline void lpt_disable_iclkip(struct drm_i915_private *dev_priv)
+{
+}
+static inline int lpt_get_iclkip(struct drm_i915_private *dev_priv)
+{
+	return 0;
+}
+static inline int lpt_iclkip(const struct intel_crtc_state *crtc_state)
+{
+	return 0;
+}
+static inline void intel_init_pch_refclk(struct drm_i915_private *dev_priv)
+{
+}
+static inline void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv)
+{
+}
+#endif
 
 #endif
-- 
2.39.2

