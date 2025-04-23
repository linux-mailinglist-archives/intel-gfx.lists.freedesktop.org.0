Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D8AA984F0
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 11:10:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82CE110E426;
	Wed, 23 Apr 2025 09:10:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P5NZ6LrW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B5B810E422;
 Wed, 23 Apr 2025 09:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745399411; x=1776935411;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tkVxw8XoHhMxLmgb84SnGaq5JBhhyQtFgrdIKYjR7yM=;
 b=P5NZ6LrW6RawEpCOf26/5Xn0ZH9MsAjwDc794grngLKyKHbHwa7e78pt
 B0EnQv51daYrTPJ6BdSHkWw/B+7ViBWUDYwiLSpVl/CSTY9kvK7Y5N5Lh
 M1CnkUSBqdriSI/MlLfGn81na+UWLq+BuKlRn4ZHrsvbRBN68JW+7RdkF
 o81xY4cg21oMGxvUrqTmquI3Qjk+6Q+TdNvXhcm8s+iYesX2U3Kyz4bWT
 bd/RTXnsJKBReRPt0IIk5GAkRBgrJ/HzXC2t+ylsTyp35OSRyFb3ZuMi6
 isBW4VheB/Z5LyhLZk1htTK2HSHUr50cgwmNeOJAQQ5T8/a+zPNTyJ5Oi w==;
X-CSE-ConnectionGUID: WWy9oJ8NS16biMnUc2BPUQ==
X-CSE-MsgGUID: xtx5gqsfTFugXqJjtNACvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="46686954"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="46686954"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 02:10:11 -0700
X-CSE-ConnectionGUID: HaRvs+tPSVCPS4Nh4vMmrg==
X-CSE-MsgGUID: x1AOPM0qSvasoF7avpkRbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="163317718"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.175])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 02:10:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/3] drm/i915/hdmi: convert rest of intel_hdmi.c to struct
 intel_display
Date: Wed, 23 Apr 2025 12:09:47 +0300
Message-Id: <7e3bb01cdc5b0c78dfd260a3cea23ca58081e299.1745399318.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1745399318.git.jani.nikula@intel.com>
References: <cover.1745399318.git.jani.nikula@intel.com>
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

Remove the last uses of struct drm_i915_private from intel_hdmi.c, and
drop the dependency on i915_drv.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index e08c01e5b9d3..7fc01ba19afc 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -38,14 +38,15 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/intel/intel_lpe_audio.h>
 
 #include <media/cec-notifier.h>
 
 #include "g4x_hdmi.h"
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_connector.h"
@@ -1567,7 +1568,6 @@ bool intel_hdmi_hdcp_check_link_once(struct intel_digital_port *dig_port,
 				     struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(dig_port);
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder = connector->hdcp.cpu_transcoder;
 	int ret;
@@ -1580,15 +1580,15 @@ bool intel_hdmi_hdcp_check_link_once(struct intel_digital_port *dig_port,
 	if (ret)
 		return false;
 
-	intel_de_write(i915, HDCP_RPRIME(i915, cpu_transcoder, port), ri.reg);
+	intel_de_write(display, HDCP_RPRIME(display, cpu_transcoder, port), ri.reg);
 
 	/* Wait for Ri prime match */
-	if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
+	if (wait_for((intel_de_read(display, HDCP_STATUS(display, cpu_transcoder, port)) &
 		      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
 		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
 		drm_dbg_kms(display->drm, "Ri' mismatch detected (%x)\n",
-			    intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
-							    port)));
+			    intel_de_read(display, HDCP_STATUS(display, cpu_transcoder,
+							       port)));
 		return false;
 	}
 	return true;
@@ -2013,7 +2013,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
 	enum drm_mode_status status;
 	int clock = mode->clock;
-	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
+	int max_dotclk = display->cdclk.max_dotclk_freq;
 	bool has_hdmi_sink = intel_has_hdmi_sink(hdmi, connector->state);
 	bool ycbcr_420_only;
 	enum intel_output_format sink_format;
-- 
2.39.5

