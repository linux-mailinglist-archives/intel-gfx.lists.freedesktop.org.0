Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A74468688A8
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 06:34:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 863AA10EDF9;
	Tue, 27 Feb 2024 05:34:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HbrV5AN1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D40610EDF9;
 Tue, 27 Feb 2024 05:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709012045; x=1740548045;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tCbqjowoHPbBjN4juXt4OEeK7QRLuesIVrn/GKBwQCs=;
 b=HbrV5AN1ObdFSy8sNb+6ugppF9D85cz8UtkvhiG24yM/Cbgi6UUgRJIE
 sTIaw7PKfaZq3eCVUNPp4ALVp9iR+0WM5Wlvnr5Cw5149j5FtFbG5+Qvw
 rDdGKxWpqQjKZa4hySYRQxn4EdqkfCirr+BYYhFmZxeERUaIAlN2fDuti
 pqzuCtZ7DZ/suIPLwXfa8D7JCbUDPrypfjIMlIQPbCuhLwcZxlhEFcpaF
 9RD5UdX6gHJymaxIx5g/F7oVjIHmEIvYl93dZDUdNR+4WRdlAubOzxha3
 slYvCYeKIqxHTQlrPychRhUguhLkG+stkYujGq9pELshqYcVgP1BqTuzU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3182900"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="3182900"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 21:34:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="6857592"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 26 Feb 2024 21:34:03 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 2/4] drm/xe/hdcp: Use xe_device struct
Date: Tue, 27 Feb 2024 11:02:02 +0530
Message-ID: <20240227053204.1748920-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240227053204.1748920-1-suraj.kandpal@intel.com>
References: <20240227053204.1748920-1-suraj.kandpal@intel.com>
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

