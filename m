Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAC3720327
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 15:23:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A7A210E055;
	Fri,  2 Jun 2023 13:23:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2846510E055
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 13:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685712207; x=1717248207;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BIwH5acRI4OAYruwEyoVfglO5xjN5OSoNP1lvCXPiS4=;
 b=JJNJj7mceqEmxgQxoTgkl57RIIq8NGdqEqofpLv6Z6xFOVv5aurWfFHM
 doz4PmiQDMdCXXzhzuTYG10hbp3x3TZO/3Q82qcXhxB9ikIFCaP3ErRkS
 5t7d2Pa4Ml9VGZtKAS3jaxQGsGi9/Q+v08tb9WLk08GQCGfaciJR9EBWo
 N6smIKbpbvucz4SE4qpZ1CaOcLGkqy559ZOGsWQfh2k+tx1GzCVIwbd2q
 wgxaBcvOIpKNIApitMorIX3nUN6cB0oEQ4yAn1aEMRg1r6HJI/KwfZHNM
 g3UiMnxxt8tRVj/AdrKygkfGQPFUd9Jdq+Qs57DQitQauw53RC2jCK3dH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="421681740"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="421681740"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 06:23:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="777665817"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="777665817"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.111])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 06:23:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jun 2023 16:23:21 +0300
Message-Id: <20230602132321.3199445-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/debugfs: stop using edid_blob_ptr
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Only the EDID code and sysfs should look at the EDID property. Stop
using it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 2a4df62692a6..165e2c7e3126 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -6,6 +6,7 @@
 #include <linux/string_helpers.h>
 
 #include <drm/drm_debugfs.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_fourcc.h>
 
 #include "hsw_ips.h"
@@ -228,19 +229,18 @@ static void intel_hdcp_info(struct seq_file *m,
 	seq_puts(m, "\n");
 }
 
-static void intel_dp_info(struct seq_file *m,
-			  struct intel_connector *intel_connector)
+static void intel_dp_info(struct seq_file *m, struct intel_connector *connector)
 {
-	struct intel_encoder *intel_encoder = intel_attached_encoder(intel_connector);
+	struct intel_encoder *intel_encoder = intel_attached_encoder(connector);
 	struct intel_dp *intel_dp = enc_to_intel_dp(intel_encoder);
-	const struct drm_property_blob *edid = intel_connector->base.edid_blob_ptr;
+	const struct edid *edid = drm_edid_raw(connector->detect_edid);
 
 	seq_printf(m, "\tDPCD rev: %x\n", intel_dp->dpcd[DP_DPCD_REV]);
 	seq_printf(m, "\taudio support: %s\n",
-		   str_yes_no(intel_connector->base.display_info.has_audio));
+		   str_yes_no(connector->base.display_info.has_audio));
 
 	drm_dp_downstream_debug(m, intel_dp->dpcd, intel_dp->downstream_ports,
-				edid ? edid->data : NULL, &intel_dp->aux);
+				edid, &intel_dp->aux);
 }
 
 static void intel_dp_mst_info(struct seq_file *m,
-- 
2.39.2

