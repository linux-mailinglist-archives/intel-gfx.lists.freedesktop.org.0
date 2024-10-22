Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 095609A9B01
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 09:29:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D71810E2F6;
	Tue, 22 Oct 2024 07:29:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LWrLFhqe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A815410E2F6;
 Tue, 22 Oct 2024 07:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729582183; x=1761118183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JNduw8p7e7fhhzXaSeZSItBpzS8+I7Npl7Vci2Qy/0I=;
 b=LWrLFhqegiv2d8aoYMxUp40FPsjjPUgY9r8iklm64wliOOwJw/0iukNY
 hEKOmRGhFgoL8JAFyP/uXGS9JpQLllEyZIV486DvmQ041HoM9dPP9hsxZ
 /3nAfj1mVCKe0YK5RAe8iSj81cozmyQ/wgCwUBf2wXij7xxlc60Lnhnf/
 AH7bEgdZk8xIFSZInxDI/fjEarCIxGMwwYp0+1stjQLQKk/rmellkluf9
 OCWol6hs2TjY2Cz/HDXJp4D1rUGNDecYHyeS1HJBzmUB0k217dDZ1iwga
 YjguHnvowVVKG9jWlxnVpEQ9zor4DZ/SdXv2S3R1JQeiVUe+iRVic0ZJF w==;
X-CSE-ConnectionGUID: JANYsgT8QsiHsrZgxyiM2w==
X-CSE-MsgGUID: fNKotDjkSAeC2WnSsb9EGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29039892"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29039892"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 00:29:43 -0700
X-CSE-ConnectionGUID: 4HOaJq+mT3ui58yBaNvblQ==
X-CSE-MsgGUID: kkfx/PscRmq4ML6gpSRNCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="80187646"
Received: from linux-lunar-lake-client-platform.iind.intel.com
 ([10.227.88.172])
 by orviesa007.jf.intel.com with ESMTP; 22 Oct 2024 00:29:42 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
Subject: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
Date: Tue, 22 Oct 2024 12:59:20 +0530
Message-Id: <20241022072920.102033-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241022055655.1902-1-suraj.kandpal@intel.com>
References: <20241022055655.1902-1-suraj.kandpal@intel.com>
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

Add check to remove HDCP2 compatibility from BMG as it does not
have GSC which ends up causing warning when we try to get reference
of GSC FW.

Fixes: 89d030804831 ("drm/xe/hdcp: Fix condition for hdcp gsc cs requirement")
Fixes: 883631771038 ("drm/i915/mtl: Add HDCP GSC interface")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 3 ++-
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 4 +++-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 55965844d829..2c1d0ee8cec2 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -21,7 +21,8 @@ struct intel_hdcp_gsc_message {
 
 bool intel_hdcp_gsc_cs_required(struct intel_display *display)
 {
-	return DISPLAY_VER(display) >= 14;
+	return DISPLAY_VER(display) >= 14 &&
+		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
 }
 
 bool intel_hdcp_gsc_check_status(struct intel_display *display)
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 231677129a35..efa3441c249c 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -8,6 +8,7 @@
 #include <linux/delay.h>
 
 #include "abi/gsc_command_header_abi.h"
+#include "i915_drv.h"
 #include "intel_hdcp_gsc.h"
 #include "intel_hdcp_gsc_message.h"
 #include "xe_bo.h"
@@ -32,7 +33,8 @@ struct intel_hdcp_gsc_message {
 
 bool intel_hdcp_gsc_cs_required(struct intel_display *display)
 {
-	return DISPLAY_VER(display) >= 14;
+	return DISPLAY_VER(display) >= 14 &&
+		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
 }
 
 bool intel_hdcp_gsc_check_status(struct intel_display *display)
-- 
2.34.1

