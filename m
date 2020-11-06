Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A342AA095
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 23:56:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 199196EB4C;
	Fri,  6 Nov 2020 22:56:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2F6D6EB43
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 22:55:53 +0000 (UTC)
IronPort-SDR: ilWKkOTO0N8j4NKxSzDHNBpPmO5mUFOhUFJITHkwoZFCxuPXFtauqn3wVqdOoGTzP8fo6U8KhM
 Z2OvU4HoXy3Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9797"; a="167022946"
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="167022946"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 14:55:53 -0800
IronPort-SDR: +wWGpoy+jPbTmBmD7ee4Ad3AopN7ZmuXONkYtFlM0kscj6InL2XqRDj2eBN2j0HzYCBw4bklCa
 fdnKKZe9yK1w==
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="540022739"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 14:55:52 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Nov 2020 14:55:25 -0800
Message-Id: <20201106225531.920641-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201106225531.920641-1-lucas.demarchi@intel.com>
References: <20201106225531.920641-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/8] drm/i915/display: add namespace to
 intel_finish_reset
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rename intel_finish_reset to intel_display_finish_reset, so it's clear
from gt/ that we are calling out the display code.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/display/intel_display.h | 2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c        | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4050bc60f632..ab04c89cdf05 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5011,7 +5011,7 @@ void intel_display_prepare_reset(struct drm_i915_private *dev_priv)
 	state->acquire_ctx = ctx;
 }
 
-void intel_finish_reset(struct drm_i915_private *dev_priv)
+void intel_display_finish_reset(struct drm_i915_private *dev_priv)
 {
 	struct drm_device *dev = &dev_priv->drm;
 	struct drm_modeset_acquire_ctx *ctx = &dev_priv->reset_ctx;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 30960cc8b8a6..a988f9518ece 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -591,7 +591,7 @@ int lpt_get_iclkip(struct drm_i915_private *dev_priv);
 bool intel_fuzzy_clock_check(int clock1, int clock2);
 
 void intel_display_prepare_reset(struct drm_i915_private *dev_priv);
-void intel_finish_reset(struct drm_i915_private *dev_priv);
+void intel_display_finish_reset(struct drm_i915_private *dev_priv);
 void intel_dp_get_m_n(struct intel_crtc *crtc,
 		      struct intel_crtc_state *pipe_config);
 void intel_dp_set_m_n(const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index d71bad8c07b7..6b07ff5249f5 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1198,7 +1198,7 @@ static void intel_gt_reset_global(struct intel_gt *gt,
 
 		intel_gt_reset(gt, engine_mask, reason);
 
-		intel_finish_reset(gt->i915);
+		intel_display_finish_reset(gt->i915);
 	}
 
 	if (!test_bit(I915_WEDGED, &gt->reset.flags))
-- 
2.29.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
