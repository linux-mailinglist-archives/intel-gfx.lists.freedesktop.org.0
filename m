Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F08BA82E68
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 20:18:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C2EA10E318;
	Wed,  9 Apr 2025 18:18:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JjkmxQsY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29AD010E2FA;
 Wed,  9 Apr 2025 18:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744222724; x=1775758724;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZNnrqDqVBllljMHy+aYGwGmpeuBaG1xIfV68Ou0WaIg=;
 b=JjkmxQsY2s0sV10WT2YrDXpAn2IoaSJyxjglr9sGzlVs3F1zBOKJ5S7n
 EjhVK+asz1CAvA0tJhf237POJ6B43HU1PXha8umaEzR+7aLBGizTQiAjM
 ngIJlqFNq70JkZx7HnsJAWonTb3j6YSfA2jAlInRmBWRHnbOvZ4R4VZvl
 JT8OLvlDVOavveLdM9ib3jdC9THNvuzypQj0Tf79qtxZnw8KCZVKv1MBo
 ir34yxzB7AYtjtX9JWNf+ramPin23NElS/Vjnuhesetbms7cRmLjoNxvf
 DmSOEcrxjUpx4Cy8X9Dbd0tK5OR4sVTKPTNEU682tXhibktHuvXSBk2FV A==;
X-CSE-ConnectionGUID: XdHwrm4gRaeuVPAel+CK6Q==
X-CSE-MsgGUID: rxBNBG+fQ0WDFJQRon77Eg==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="57088350"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="57088350"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:25 -0700
X-CSE-ConnectionGUID: V+BYe4TrTAq6UNHv6IX9yA==
X-CSE-MsgGUID: d1v/ltjNQoOHv6jSkDJHnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="133785314"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 03/14] drm/i915/display: convert intel_modeset_verify.c to
 struct intel_display
Date: Wed,  9 Apr 2025 21:17:44 +0300
Message-Id: <b01a3ef3dbb2ffdaa6b5e9ebec14f91efcca3049.1744222449.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744222449.git.jani.nikula@intel.com>
References: <cover.1744222449.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Going forward, struct intel_display is the main display device data
pointer. Convert intel_modeset_verify.[ch] to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_modeset_verify.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index a008412fdd04..766a9983665a 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -6,13 +6,14 @@
  */
 
 #include <drm/drm_atomic_state_helper.h>
+#include <drm/drm_print.h>
 
-#include "i915_drv.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
 #include "intel_crtc_state_dump.h"
 #include "intel_cx0_phy.h"
 #include "intel_display.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
 #include "intel_modeset_verify.h"
@@ -28,9 +29,8 @@ static void intel_connector_verify_state(const struct intel_crtc_state *crtc_sta
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct intel_display *display = to_intel_display(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.base.id, connector->base.name);
 
 	if (connector->get_hw_state(connector)) {
@@ -91,7 +91,6 @@ verify_connector_state(struct intel_atomic_state *state,
 static void intel_pipe_config_sanity_check(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	if (crtc_state->has_pch_encoder) {
 		int fdi_dotclock = intel_dotclock_calculate(intel_fdi_link_freq(display, crtc_state),
@@ -103,7 +102,7 @@ static void intel_pipe_config_sanity_check(const struct intel_crtc_state *crtc_s
 		 * Yell if the encoder disagrees. Allow for slight
 		 * rounding differences.
 		 */
-		drm_WARN(&i915->drm, abs(fdi_dotclock - dotclock) > 1,
+		drm_WARN(display->drm, abs(fdi_dotclock - dotclock) > 1,
 			 "FDI dotclock and encoder dotclock mismatch, fdi: %i, encoder: %i\n",
 			 fdi_dotclock, dotclock);
 	}
@@ -113,17 +112,16 @@ static void
 verify_encoder_state(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_encoder *encoder;
 	struct drm_connector *connector;
 	const struct drm_connector_state *old_conn_state, *new_conn_state;
 	int i;
 
-	for_each_intel_encoder(&i915->drm, encoder) {
+	for_each_intel_encoder(display->drm, encoder) {
 		bool enabled = false, found = false;
 		enum pipe pipe;
 
-		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s]\n",
+		drm_dbg_kms(display->drm, "[ENCODER:%d:%s]\n",
 			    encoder->base.base.id,
 			    encoder->base.name);
 
@@ -166,7 +164,6 @@ verify_crtc_state(struct intel_atomic_state *state,
 		  struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct intel_crtc_state *sw_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_crtc_state *hw_crtc_state;
@@ -185,7 +182,7 @@ verify_crtc_state(struct intel_atomic_state *state,
 	intel_crtc_get_pipe_config(hw_crtc_state);
 
 	/* we keep both pipes enabled on 830 */
-	if (IS_I830(i915) && hw_crtc_state->hw.active)
+	if (display->platform.i830 && hw_crtc_state->hw.active)
 		hw_crtc_state->hw.active = sw_crtc_state->hw.active;
 
 	INTEL_DISPLAY_STATE_WARN(display,
-- 
2.39.5

