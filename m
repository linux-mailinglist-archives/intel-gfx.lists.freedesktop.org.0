Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A4F84F317
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 11:16:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AB3B10F301;
	Fri,  9 Feb 2024 10:16:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bCjOU7pn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0EC410F301;
 Fri,  9 Feb 2024 10:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707473791; x=1739009791;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T6QuN1WCNVhie/vsdEARW6xWhLcF/2rl7wXbfj2fmMw=;
 b=bCjOU7pn8/icbp1qoMdA4c1bEgHEkOOC7OhlH4mv2fjqjP4oEfcLvAuP
 CWxlBzd/FV3bjv4HXBXHdA8lqZ49YrC8INc1zKqrLHXiwAGyBKtmuwtQ/
 ztD82iuR4ZgVpuhNUBWAO7zTKObIR08js/ddcV2bsvvMfH2jWYC5cx5oi
 9voGjIKXbR+UL9PABbyw8hIldoPD7NkvZBaszliWQ/6V0mfGJvne7gHpl
 1zbWiQKrhIgqGMbpKgV+oSShGe2llkXLjkRrbjG/DMDsIUzFwqdZw/USA
 ZdA+oInVFZUn6p7uTxAQxSgqKh1zFY0b8SQYtiKStL7qb7wz8WhyStGia g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="1307378"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="1307378"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 02:16:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="2244052"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa006.jf.intel.com with ESMTP; 09 Feb 2024 02:16:12 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/5] drm/xe/hdcp: Use xe_device struct
Date: Fri,  9 Feb 2024 15:44:09 +0530
Message-Id: <20240209101412.1326176-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240209101412.1326176-1-suraj.kandpal@intel.com>
References: <20240209101412.1326176-1-suraj.kandpal@intel.com>
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
cause confusion and comply with Xe standards even though xe_device
gets translated to drm_i915_private.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
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
2.25.1

