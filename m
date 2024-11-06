Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 147939BF8AF
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 22:52:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4D1C10E787;
	Wed,  6 Nov 2024 21:52:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YS27uaBN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 221F910E77F;
 Wed,  6 Nov 2024 21:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730929972; x=1762465972;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tNKtkyljH+g5sV+zvJZ5O1Wg8lGGzVhEIZBtfXAi7dc=;
 b=YS27uaBNQ+/DgDl2bbsqf5M0dcucvQos8tdcl2TQFqQcGskB0fAQ9Zo5
 IrSj6vZzZv/MmQxNRrBMOeqJUnXYQdadf/vwrimlKeAmVnQUcYwSJnCfr
 2RrA6xiNl4h8LVkjEIIII4bKk/asv3pJHPEbMJdoKbCe5v5IuXhK3jXs6
 21d0A0lW6Z317TUjzASMcL7tb6CSnhQ1kwVAuY0wBN+MY5eF4OlJY2uhc
 uUphtSztLVh/zd/GC4KFE4OVPToVYerpnZw5K25pTmXL1Ig2Vzl4kycYY
 FpI//mxXTfFWsDbt7vXOIbzNYYgiRPuskVkcCebv2gKLuKqnW4sP85qWl w==;
X-CSE-ConnectionGUID: WdsoKmsoR6uZpxjv3mVZ5w==
X-CSE-MsgGUID: 8RfygKvJQ3SH40rcUf2zfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48212158"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48212158"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:52:52 -0800
X-CSE-ConnectionGUID: MEqXlh2PSlu55l7AQ8K0xA==
X-CSE-MsgGUID: XiCjjkAWSqeyxQeFtAJJLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84882471"
Received: from puneetse-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.118])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:52:51 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 05/17] drm/i915/dmc_wl: Get wakelock when disabling dynamic
 DC states
Date: Wed,  6 Nov 2024 18:50:31 -0300
Message-ID: <20241106215231.103474-6-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106215231.103474-1-gustavo.sousa@intel.com>
References: <20241106215231.103474-1-gustavo.sousa@intel.com>
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

Bspec says that disabling dynamic DC states require taking the DMC
wakelock to cause an DC exit before writing to DC_STATE_EN. Implement
that.

In fact, testing on PTL revealed we end up failing to exit DC5/6 without
this step.

Bspec: 71583
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 .../drm/i915/display/intel_display_power_well.c    | 10 +++++++---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c        | 14 ++++++++++++--
 drivers/gpu/drm/i915/display/intel_dmc_wl.h        |  2 ++
 3 files changed, 21 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index f0131dd853de..0c77b6252969 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -994,10 +994,14 @@ void gen9_disable_dc_states(struct intel_display *display)
 		return;
 	}
 
-	gen9_set_dc_state(display, DC_STATE_DISABLE);
-
-	if (!HAS_DISPLAY(display))
+	if (HAS_DISPLAY(display)) {
+		intel_dmc_wl_get_noreg(display);
+		gen9_set_dc_state(display, DC_STATE_DISABLE);
+		intel_dmc_wl_put_noreg(display);
+	} else {
+		gen9_set_dc_state(display, DC_STATE_DISABLE);
 		return;
+	}
 
 	intel_dmc_wl_disable(display);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index a0a060706305..e837c39491bb 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -199,7 +199,7 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
 	if (!__intel_dmc_wl_supported(display))
 		return;
 
-	if (!intel_dmc_wl_check_range(reg))
+	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg))
 		return;
 
 	spin_lock_irqsave(&wl->lock, flags);
@@ -251,7 +251,7 @@ void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg)
 	if (!__intel_dmc_wl_supported(display))
 		return;
 
-	if (!intel_dmc_wl_check_range(reg))
+	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg))
 		return;
 
 	spin_lock_irqsave(&wl->lock, flags);
@@ -272,3 +272,13 @@ void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg)
 out_unlock:
 	spin_unlock_irqrestore(&wl->lock, flags);
 }
+
+void intel_dmc_wl_get_noreg(struct intel_display *display)
+{
+	intel_dmc_wl_get(display, INVALID_MMIO_REG);
+}
+
+void intel_dmc_wl_put_noreg(struct intel_display *display)
+{
+	intel_dmc_wl_put(display, INVALID_MMIO_REG);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
index adab51208d0a..9aa72a4bf153 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
@@ -27,5 +27,7 @@ void intel_dmc_wl_enable(struct intel_display *display);
 void intel_dmc_wl_disable(struct intel_display *display);
 void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg);
 void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg);
+void intel_dmc_wl_get_noreg(struct intel_display *display);
+void intel_dmc_wl_put_noreg(struct intel_display *display);
 
 #endif /* __INTEL_WAKELOCK_H__ */
-- 
2.47.0

