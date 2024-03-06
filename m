Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C94A872CE7
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 03:45:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69030112E26;
	Wed,  6 Mar 2024 02:45:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JBuwdpaG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC3A4112E2A;
 Wed,  6 Mar 2024 02:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709693105; x=1741229105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tCbqjowoHPbBjN4juXt4OEeK7QRLuesIVrn/GKBwQCs=;
 b=JBuwdpaGHcaMWh8qafP0oV+avicEBNjr4A9n/isDvrXdva6gA7xsAiDY
 nO43325kMPZjy8qs2+1YN3c+7MdTg7pCtIkidOW1GX7Zpdqztts8yOTn3
 GQsV1wQD4kXccDfoOp+dXCd+p91cx/ckNy/pqzKsrhmvTrDeMRzGrXoXH
 lJMXTt6XNSViPXijCaF0OarkOcqUN+Q90eA9espm08AXlKeQggVgErgew
 NSpS+zi4bXweRw24zEiw7TN5QZUcsh0WHrlCveYdVoMXf40kHyLc1MgIj
 EmeKjglK4tWFhEHTIBDppnQzvX48JL2wrCnovh7hQJhXUk4omt4RO2Bsv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="8049995"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; 
   d="scan'208";a="8049995"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 18:45:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="10175836"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa008.jf.intel.com with ESMTP; 05 Mar 2024 18:45:03 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 2/4] drm/xe/hdcp: Use xe_device struct
Date: Wed,  6 Mar 2024 08:12:46 +0530
Message-ID: <20240306024247.1857881-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240306024247.1857881-2-suraj.kandpal@intel.com>
References: <20240306024247.1857881-2-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Use xe_device struct instead of drm_i915_private so as to not
cause confusion and comply with Xe standards as drm_i915_private is
xe_device under the hood.

--v2
-Fix commit message [Daniele]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 0f11a39333e2..5d1d0054b578 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -3,30 +3,31 @@
  * Copyright 2023, Intel Corporation.
  */
 
-#include "i915_drv.h"
+#include <drm/drm_print.h>
 #include "intel_hdcp_gsc.h"
+#include "xe_device_types.h"
 
-bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
+bool intel_hdcp_gsc_cs_required(struct xe_device *xe)
 {
 	return true;
 }
 
-bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915)
+bool intel_hdcp_gsc_check_status(struct xe_device *xe)
 {
 	return false;
 }
 
-int intel_hdcp_gsc_init(struct drm_i915_private *i915)
+int intel_hdcp_gsc_init(struct xe_device *xe)
 {
-	drm_info(&i915->drm, "HDCP support not yet implemented\n");
+	drm_dbg_kms(&xe->drm, "HDCP support not yet implemented\n");
 	return -ENODEV;
 }
 
-void intel_hdcp_gsc_fini(struct drm_i915_private *i915)
+void intel_hdcp_gsc_fini(struct xe_device *xe)
 {
 }
 
-ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
+ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
 				size_t msg_in_len, u8 *msg_out,
 				size_t msg_out_len)
 {
-- 
2.43.2

