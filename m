Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5989151BA8
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 14:52:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E94E66EC56;
	Tue,  4 Feb 2020 13:52:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 071136EC56
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 13:52:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 05:52:22 -0800
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="431528114"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 05:52:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Feb 2020 15:52:17 +0200
Message-Id: <20200204135217.21974-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915/psr: pass i915 to psr_global_enabled()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make future work slightly easier.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index db3d1561e9bf..e86e9dc1fe06 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -61,9 +61,9 @@
  * must be correctly synchronized/cancelled when shutting down the pipe."
  */
 
-static bool psr_global_enabled(u32 debug)
+static bool psr_global_enabled(struct drm_i915_private *i915)
 {
-	switch (debug & I915_PSR_DEBUG_MODE_MASK) {
+	switch (i915->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
 	case I915_PSR_DEBUG_DEFAULT:
 		return i915_modparams.enable_psr;
 	case I915_PSR_DEBUG_DISABLE:
@@ -930,7 +930,7 @@ void intel_psr_enable(struct intel_dp *intel_dp,
 
 	mutex_lock(&dev_priv->psr.lock);
 
-	if (!psr_global_enabled(dev_priv->psr.debug)) {
+	if (!psr_global_enabled(dev_priv)) {
 		drm_dbg_kms(&dev_priv->drm, "PSR disabled by flag\n");
 		goto unlock;
 	}
@@ -1085,7 +1085,7 @@ void intel_psr_update(struct intel_dp *intel_dp,
 
 	mutex_lock(&dev_priv->psr.lock);
 
-	enable = crtc_state->has_psr && psr_global_enabled(psr->debug);
+	enable = crtc_state->has_psr && psr_global_enabled(dev_priv);
 	psr2_enable = intel_psr2_enabled(dev_priv, crtc_state);
 
 	if (enable == psr->enabled && psr2_enable == psr->psr2_enabled) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
