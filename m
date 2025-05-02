Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A11AAA6CEB
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 10:50:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95C7110E8C4;
	Fri,  2 May 2025 08:50:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ndSHBjsC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACBF210E8C4;
 Fri,  2 May 2025 08:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746175812; x=1777711812;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kfW3ToaQm5Uifm9x1hQm0/VaeJUz4doGX37TnXkWjnc=;
 b=ndSHBjsCCzp3VS8e8Bno1EMEK6vlIKhvsVLVmWetJaa5aBxQz0Vm6qn+
 W7PS0FDBWElVHh4BuM4jpraS4OqBbSqtwH7EK11BSdqYB5olboLrBRVod
 4FPrXuzp0sxtiUShKE9vu88S93Z02TFOdsQPlnZy0WqQCqz67Pd/6IzXx
 Myr/h1ebfPGOMJgFVPaUOBzVWXpv4zAMpen/9FzHHf7sFvOPyaaAdBsUf
 G5RKN+xM3jAq/xbE4EWrfNdSbODITZk4DreW50ZRN+d+cAxvmp1HxjfqE
 mO0yNeEM1JQn0LV5YOa1DZZc8eAGcCv7wXxrnX6774gjmwc3R+6LWb1DC w==;
X-CSE-ConnectionGUID: lT7IpI50Sb67S71oND9ovg==
X-CSE-MsgGUID: F9ILIYpATOKwzOK9Yl6MzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47115174"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="47115174"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:50:12 -0700
X-CSE-ConnectionGUID: 1AjLzqJtRs2ypUly4aVLjw==
X-CSE-MsgGUID: HNqc8TX3T/iQXPGfRlY3zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="138612657"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.144])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:50:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 2/3] drm/i915/hdmi: convert rest of intel_hdmi.c to struct
 intel_display
Date: Fri,  2 May 2025 11:49:55 +0300
Message-Id: <24183605ac919ca115b1b25fa386643409814c82.1746175756.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746175756.git.jani.nikula@intel.com>
References: <cover.1746175756.git.jani.nikula@intel.com>
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

v2: Rebase

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 37f0fbaf3145..98033471902c 100644
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
-- 
2.39.5

