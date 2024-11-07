Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 336609C0DC3
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 19:29:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C963A10E8B1;
	Thu,  7 Nov 2024 18:29:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LVlaU/H7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDCE810E8B1;
 Thu,  7 Nov 2024 18:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731004190; x=1762540190;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UgXrwxXddIARR9qJIwEmLpZHuQCxADGfVyhuWKKzd64=;
 b=LVlaU/H7GVVpG7MutmjXhG2pdYWBf9YYQOOOU3WjxRXmb9Z84MBpYa7L
 ZnOWxGUhQrDCCo/hjpQUClaPca5iFECGyaxBI93HiFbjzh3tQFq2X6CxM
 LT7MBlLfRvh1Py8TRkTNETpNLRA4aAE6Nd+k0CamzmnHQpgBqkNjIONCQ
 9Avzd890+s9TyDEMMZ7LW/svamSFQeZI9wr+9j+6tG5k50j/za4PEgJTo
 zOxyMahTZGXeMaM6kzE1zyHHlNazJXn2GOtarkez+6DhOt/mcA5IP4C/I
 2/Bs5ihkKXKb2PDQFxO/Bg+xwsbE18xh8r16e50PL4s5tyZ/u0LEnn4w/ A==;
X-CSE-ConnectionGUID: JfmGftE0StyxTkLw9wkzcg==
X-CSE-MsgGUID: loZMLUhdSPSYtlil87TNqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="18494848"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="18494848"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:29:50 -0800
X-CSE-ConnectionGUID: FnNCkfNnRKiYiWyknHXKQw==
X-CSE-MsgGUID: EcWKaimtTOKIDXURBa8MBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85329598"
Received: from rchatre-mobl4.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.154])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:29:49 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 05/18] drm/i915/dmc_wl: Get wakelock when disabling dynamic
 DC states
Date: Thu,  7 Nov 2024 15:27:10 -0300
Message-ID: <20241107182921.102193-6-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241107182921.102193-1-gustavo.sousa@intel.com>
References: <20241107182921.102193-1-gustavo.sousa@intel.com>
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
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
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

