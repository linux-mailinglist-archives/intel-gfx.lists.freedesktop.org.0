Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE9F99955D
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 00:43:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0516A10E9F0;
	Thu, 10 Oct 2024 22:43:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JSu07M1N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CA7D10E151;
 Thu, 10 Oct 2024 22:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728600198; x=1760136198;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eL2hGYtZ9ol1Bt7DJSpvYsjIO6CbwZCRRfFj1cMsAf0=;
 b=JSu07M1NACNWNcLfAIDA8BUnUNeSkzy4GGDj0mXmxLEEXnqXgwO/OC9I
 OpKAhKXPzoKjeYqRSHTOQJFao0Zs6+hvvMq+scz8OWCJVBpQRJrhtU916
 GcfFGvOyiqIKOgBosxc3pRNxsr5oMyQgx87OmkEei+zFv7LF9Xt7gEHB3
 ZVVz243fESvOY2RpqTkw+PzI3LVvrle8QhxwecO8sV0F4ck0aCviTXGw1
 2p/Pf7T97sZtAeYWlqs+2L1EaX80aUnsPRsW/UxnPpYktFxmHpU6SwgZh
 1F441uC5Nr+ENRqDhEWM2frOtsinkuCwmm+47CNgKd2+a4tF7VtsX+4yD g==;
X-CSE-ConnectionGUID: tyDo8OX5TXSOTUKXk/469g==
X-CSE-MsgGUID: RvdhalKpTTWuvpmX8T+Eyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="39380863"
X-IronPort-AV: E=Sophos;i="6.11,194,1725346800"; d="scan'208";a="39380863"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 15:43:18 -0700
X-CSE-ConnectionGUID: kWP0iGdKRuGLVxlEResS8Q==
X-CSE-MsgGUID: 6vRGl+KzQEqBpwS1WdJZJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,194,1725346800"; d="scan'208";a="76732010"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.132])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 15:43:17 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Clint Taylor <clinton.a.taylor@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v2 01/10] drm/i915/xe3lpd: reuse xe2lpd definition
Date: Thu, 10 Oct 2024 15:43:02 -0700
Message-ID: <20241010224311.50133-2-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241010224311.50133-1-matthew.s.atwood@intel.com>
References: <20241010224311.50133-1-matthew.s.atwood@intel.com>
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

From: Clint Taylor <clinton.a.taylor@intel.com>

xe3_lpd display is functionally identical to xe2_lpd for now so reuse
the device description.  A separate xe3 definition will be added in the
future if/when new feature flags are required.

Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c |  6 ++++++
 drivers/gpu/drm/i915/display/intel_display_device.h |  2 ++
 include/drm/intel/i915_pciids.h                     | 12 ++++++++++++
 3 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index f33062322c66..aa22189e3853 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1252,6 +1252,10 @@ static const struct platform_desc bmg_desc = {
 	PLATFORM(BATTLEMAGE),
 };
 
+static const struct platform_desc ptl_desc = {
+	PLATFORM(PANTHERLAKE),
+};
+
 __diag_pop();
 
 /*
@@ -1322,6 +1326,7 @@ static const struct {
 	INTEL_MTL_IDS(INTEL_DISPLAY_DEVICE, &mtl_desc),
 	INTEL_LNL_IDS(INTEL_DISPLAY_DEVICE, &lnl_desc),
 	INTEL_BMG_IDS(INTEL_DISPLAY_DEVICE, &bmg_desc),
+	INTEL_PTL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
 };
 
 static const struct {
@@ -1332,6 +1337,7 @@ static const struct {
 	{ 14,  0, &xe_lpdp_display },
 	{ 14,  1, &xe2_hpd_display },
 	{ 20,  0, &xe2_lpd_display },
+	{ 30,  0, &xe2_lpd_display },
 };
 
 static const struct intel_display_device_info *
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 3ef537fa551a..071a36b51f79 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -70,6 +70,8 @@ enum intel_display_platform {
 	INTEL_DISPLAY_LUNARLAKE,
 	/* Display ver 14.1 (based on GMD ID) */
 	INTEL_DISPLAY_BATTLEMAGE,
+	/* Display ver 30 (based on GMD ID) */
+	INTEL_DISPLAY_PANTHERLAKE,
 };
 
 enum intel_display_subplatform {
diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
index 02156c6f79b6..6b92f8c3731b 100644
--- a/include/drm/intel/i915_pciids.h
+++ b/include/drm/intel/i915_pciids.h
@@ -794,4 +794,16 @@
 	MACRO__(0xE20D, ## __VA_ARGS__), \
 	MACRO__(0xE212, ## __VA_ARGS__)
 
+/* PTL */
+#define INTEL_PTL_IDS(MACRO__, ...) \
+	MACRO__(0xB080, ## __VA_ARGS__), \
+	MACRO__(0xB081, ## __VA_ARGS__), \
+	MACRO__(0xB082, ## __VA_ARGS__), \
+	MACRO__(0xB090, ## __VA_ARGS__), \
+	MACRO__(0xB091, ## __VA_ARGS__), \
+	MACRO__(0xB092, ## __VA_ARGS__), \
+	MACRO__(0xB0A0, ## __VA_ARGS__), \
+	MACRO__(0xB0A1, ## __VA_ARGS__), \
+	MACRO__(0xB0A2, ## __VA_ARGS__)
+
 #endif /* _I915_PCIIDS_H */
-- 
2.45.0

