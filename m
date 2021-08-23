Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 891983F47B7
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 11:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29B9C89097;
	Mon, 23 Aug 2021 09:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 710BA899B7
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 09:36:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="216791336"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="216791336"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 02:36:51 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="525871473"
Received: from todonova-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.44.47])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 02:36:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Date: Mon, 23 Aug 2021 12:36:45 +0300
Message-Id: <20210823093645.10464-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/fdi: make intel_fdi_link_freq() return
 int
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

The unsigned doesn't help us here.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fdi.c | 2 +-
 drivers/gpu/drm/i915/display/intel_fdi.h | 4 +---
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 970a57369b05..13f8ba4c9188 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -95,7 +95,7 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
 	}
 }
 
-u32 intel_fdi_link_freq(struct drm_i915_private *i915,
+int intel_fdi_link_freq(struct drm_i915_private *i915,
 			const struct intel_crtc_state *pipe_config)
 {
 	if (HAS_DDI(i915))
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
index fd63a6a53fca..2c8ffd9ceaed 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.h
+++ b/drivers/gpu/drm/i915/display/intel_fdi.h
@@ -6,15 +6,13 @@
 #ifndef _INTEL_FDI_H_
 #define _INTEL_FDI_H_
 
-#include <linux/types.h>
-
 struct drm_i915_private;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_encoder;
 
 #define I915_DISPLAY_CONFIG_RETRY 1
-u32 intel_fdi_link_freq(struct drm_i915_private *i915,
+int intel_fdi_link_freq(struct drm_i915_private *i915,
 			const struct intel_crtc_state *pipe_config);
 int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
 			   struct intel_crtc_state *pipe_config);
-- 
2.20.1

