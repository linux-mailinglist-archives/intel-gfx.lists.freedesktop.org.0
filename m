Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3F97DF1D9
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 12:59:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6A1110E867;
	Thu,  2 Nov 2023 11:59:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27F5B10E867
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 11:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698926346; x=1730462346;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PS3mqDT4jbiaB9ysQr8MEPu9Sypt96Ub8rqc2MkONag=;
 b=IoJGyQHwzenK4mIBSKJ/0xcVnmiOyv7PPChAZlELnZpvDDH9fPhTGKch
 fUBgeu+tb2K2ZC6BG9zoPWGt8G96K1NWEOjcvs9lXkdoIN9ri/eHU/ZUB
 e4YRY9ukLtQyIUiUapZ7v4us5skQMDuQaa7dWwKAMmvrSApzvV+oiAvyB
 cz0UdQ3zAPABa9mwfrNB6Q41REstNdNTww6SCUPkd3c3ncpmod8+SrxYR
 Mgs75lyUKbPNeGuzB0uf0DA85lT1ez7Quukl2XgXF4P6hCkrJIJJ99EFi
 7w3FZK3//5ACxcqX6BpVYzRY6XHq1ChOGFQg8tNYRWvkxsYHjBBo0euzq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="455176915"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="455176915"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 04:59:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="796215633"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="796215633"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 04:59:04 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 13:59:35 +0200
Message-Id: <20231102115935.2591979-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dp_mst: Disable DSC on ICL+ MST outputs
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

Enabling DSC on ICL MST outputs is broken leading to FIFO pipe /
transcoder underruns and blank screen. On TGL+ platforms MST/DSC works -
after fixing the known issues in [1] - however to make this work on ICL
requires more work.

So far DSC on MST probably didn't get enabled for users - due to an issue
fixed by [2] - but after fixing that, DSC could get enabled, leading to a
blank screen in ICL/MST configurations which do work atm. To prevent
this disable MST/DSC on ICL for now.

[1] https://lore.kernel.org/all/20231030155843.2251023-1-imre.deak@intel.com
[2] https://lore.kernel.org/all/20231030155843.2251023-31-imre.deak@intel.com

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 82f425ef15953..2cd3bccc0e650 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -43,6 +43,7 @@
 #include "intel_dpio_phy.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
+#include "intel_vdsc.h"
 #include "skl_scaler.h"
 
 static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
@@ -297,6 +298,14 @@ static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
 	return 0;
 }
 
+static bool
+intel_dp_mst_dsc_source_support(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	return DISPLAY_VER(i915) > 11 && intel_dsc_source_support(crtc_state);
+}
+
 static bool
 intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state,
@@ -375,6 +384,9 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 			    str_yes_no(ret),
 			    str_yes_no(intel_dp->force_dsc_en));
 
+		if (!intel_dp_mst_dsc_source_support(pipe_config))
+			return -EINVAL;
+
 		if (!intel_dp_mst_compute_config_limits(intel_dp,
 							pipe_config,
 							true,
-- 
2.39.2

