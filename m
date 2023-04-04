Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD346D6AEE
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 19:54:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E250510E282;
	Tue,  4 Apr 2023 17:54:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D712B10E18E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 17:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680630874; x=1712166874;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uoz9n5zqNdPRKjMfpKpE1Mb1s66DA9gUtvv/xjotliE=;
 b=KR2UEo4gb7J1zs8kXRERakojVr9ST4sPIbRFUN23kJQIX/wZBivhZhj1
 9o+lOmY78HnZ1+xGZHcx599A1GmkRnbGRPpvuCxDFgrKTcrCTB7dWrTrJ
 zB81NtTcG5Rh9ATw7g/EtcSD+/b7HmOYE55kT35Qp8hbhkPi5Y8L3Sn9M
 39gfEHVySYmCCVctK1Vxv59n2j60dSfwuIhH7iT0mnNDi2xsOzu5PFp2M
 bvDAILNsU97CVyB7VD3I0FGlu5fScdo6KafT+awxLjkOEh7QutsjL4PCt
 geUGMRn6afarlDbMHOs2ePdawHXVhrQgWWNdLUZJV8eObf5pK2fNtXN6D Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="343969441"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="343969441"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 10:54:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="810341668"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="810341668"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga004.jf.intel.com with SMTP; 04 Apr 2023 10:54:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Apr 2023 20:54:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Apr 2023 20:54:29 +0300
Message-Id: <20230404175431.23064-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Allow arbitrary refresh rates
 with VRR eDP panels
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

If the panel supports VRR it must be capable of accepting
timings with arbitrary vblank length, within the valid VRR
range. Use that fact to allow the user to request any refresh
rate they like. We simply pick the next highest fixed mode
from our list, and adjust the vblank to get the desired refresh
rate in the end.

Of course currently everything to do with the vrefresh is
using 1Hz precision, so might not be exact. But we can improve
that in the future by just upping our vrefresh precision.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 80 ++++++++++++++++++----
 1 file changed, 66 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index ce2a34a25211..9acdd68b2dbc 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -42,6 +42,7 @@
 #include "intel_lvds_regs.h"
 #include "intel_panel.h"
 #include "intel_quirks.h"
+#include "intel_vrr.h"
 
 bool intel_panel_use_ssc(struct drm_i915_private *i915)
 {
@@ -58,6 +59,38 @@ intel_panel_preferred_fixed_mode(struct intel_connector *connector)
 					struct drm_display_mode, head);
 }
 
+static bool is_in_vrr_range(struct intel_connector *connector, int vrefresh)
+{
+	const struct drm_display_info *info = &connector->base.display_info;
+
+	return intel_vrr_is_capable(connector) &&
+		vrefresh >= info->monitor_range.min_vfreq &&
+		vrefresh <= info->monitor_range.max_vfreq;
+}
+
+static bool is_best_fixed_mode(struct intel_connector *connector,
+			       int vrefresh, int fixed_mode_vrefresh,
+			       const struct drm_display_mode *best_mode)
+{
+	/* we want to always return something */
+	if (!best_mode)
+		return true;
+
+	/*
+	 * With VRR always pick a mode with equal/higher than requested
+	 * vrefresh, which we can then reduce to match the requested
+	 * vrefresh by extending the vblank length.
+	 */
+	if (is_in_vrr_range(connector, vrefresh) &&
+	    is_in_vrr_range(connector, fixed_mode_vrefresh) &&
+	    fixed_mode_vrefresh < vrefresh)
+		return false;
+
+	/* pick the fixed_mode that is closest in terms of vrefresh */
+	return abs(fixed_mode_vrefresh - vrefresh) <
+		abs(drm_mode_vrefresh(best_mode) - vrefresh);
+}
+
 const struct drm_display_mode *
 intel_panel_fixed_mode(struct intel_connector *connector,
 		       const struct drm_display_mode *mode)
@@ -65,11 +98,11 @@ intel_panel_fixed_mode(struct intel_connector *connector,
 	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
 	int vrefresh = drm_mode_vrefresh(mode);
 
-	/* pick the fixed_mode that is closest in terms of vrefresh */
 	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
-		if (!best_mode ||
-		    abs(drm_mode_vrefresh(fixed_mode) - vrefresh) <
-		    abs(drm_mode_vrefresh(best_mode) - vrefresh))
+		int fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
+
+		if (is_best_fixed_mode(connector, vrefresh,
+				       fixed_mode_vrefresh, best_mode))
 			best_mode = fixed_mode;
 	}
 
@@ -178,27 +211,46 @@ int intel_panel_compute_config(struct intel_connector *connector,
 {
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_fixed_mode(connector, adjusted_mode);
+	int vrefresh, fixed_mode_vrefresh;
+	bool is_vrr;
 
 	if (!fixed_mode)
 		return 0;
 
+	vrefresh = drm_mode_vrefresh(adjusted_mode);
+	fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
+
 	/*
-	 * We don't want to lie too much to the user about the refresh
-	 * rate they're going to get. But we have to allow a bit of latitude
-	 * for Xorg since it likes to automagically cook up modes with slightly
-	 * off refresh rates.
+	 * Assume that we shouldn't muck about with the
+	 * timings if they don't land in the VRR range.
 	 */
-	if (abs(drm_mode_vrefresh(adjusted_mode) - drm_mode_vrefresh(fixed_mode)) > 1) {
-		drm_dbg_kms(connector->base.dev,
-			    "[CONNECTOR:%d:%s] Requested mode vrefresh (%d Hz) does not match fixed mode vrefresh (%d Hz)\n",
-			    connector->base.base.id, connector->base.name,
-			    drm_mode_vrefresh(adjusted_mode), drm_mode_vrefresh(fixed_mode));
+	is_vrr = is_in_vrr_range(connector, vrefresh) &&
+		is_in_vrr_range(connector, fixed_mode_vrefresh);
 
-		return -EINVAL;
+	if (!is_vrr) {
+		/*
+		 * We don't want to lie too much to the user about the refresh
+		 * rate they're going to get. But we have to allow a bit of latitude
+		 * for Xorg since it likes to automagically cook up modes with slightly
+		 * off refresh rates.
+		 */
+		if (abs(vrefresh - fixed_mode_vrefresh) > 1) {
+			drm_dbg_kms(connector->base.dev,
+				    "[CONNECTOR:%d:%s] Requested mode vrefresh (%d Hz) does not match fixed mode vrefresh (%d Hz)\n",
+				    connector->base.base.id, connector->base.name,
+				    vrefresh, fixed_mode_vrefresh);
+
+			return -EINVAL;
+		}
 	}
 
 	drm_mode_copy(adjusted_mode, fixed_mode);
 
+	if (is_vrr && fixed_mode_vrefresh != vrefresh)
+		adjusted_mode->vtotal =
+			DIV_ROUND_CLOSEST(adjusted_mode->clock * 1000,
+					  adjusted_mode->htotal * vrefresh);
+
 	drm_mode_set_crtcinfo(adjusted_mode, 0);
 
 	return 0;
-- 
2.39.2

