Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B257DFB12
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 20:44:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92EBC10E997;
	Thu,  2 Nov 2023 19:44:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AB0810E997
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 19:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698954246; x=1730490246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qDjFpspYMZL7rtqJmY/kKYBRcnEDVBaz5LLDGR67upQ=;
 b=AbzG4CyiZ0XzpDp5yVLWwwuF5PhsPM/lgzXUjzKXqM5eEw6XhGhYLuCA
 ldx4s+nuwq9gkE2ZGgtHT9MRvBsjCJX7elB0UFW8RhSINvCC+pFPUQero
 pmqXQJy4cxtGtsmhbGbowyEOvd1J6UopQOz8BEeCNdaxtCokxSMXijgKx
 yOPVXELkVUMVsZmtKuSO8UJUHg3S3w+ncaENzV4VPNRSIeR2EppYXVNjZ
 41fabbhlD/WFuHxw4NEVvqHz+9qAHMmwH4sScJEsKgftP1WxCdIcQWgpj
 SG9ju/XbKs8D55SfTvv85JxCQ2jicGZS9S0eZT8JNSKUtIcnFEaimIoRD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="368145149"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="368145149"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 12:44:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; 
   d="scan'208";a="9119187"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 12:44:03 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 21:44:34 +0200
Message-Id: <20231102194434.2634786-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231102115935.2591979-1-imre.deak@intel.com>
References: <20231102115935.2591979-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/dp_mst: Disable DSC on ICL+ MST
 outputs
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
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 82f425ef15953..60fe10f80fe45 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -43,6 +43,7 @@
 #include "intel_dpio_phy.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
+#include "intel_vdsc.h"
 #include "skl_scaler.h"
 
 static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
@@ -297,6 +298,18 @@ static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
 	return 0;
 }
 
+static bool
+intel_dp_mst_dsc_source_support(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	/*
+	 * FIXME: Enabling DSC on ICL results in blank screen and FIFO pipe /
+	 * transcoder underruns, re-enable DSC after fixing this issue.
+	 */
+	return DISPLAY_VER(i915) >= 12 && intel_dsc_source_support(crtc_state);
+}
+
 static bool
 intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state,
@@ -375,6 +388,9 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
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

