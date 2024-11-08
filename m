Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4559E9C1D82
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:03:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD9810E99C;
	Fri,  8 Nov 2024 13:03:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NeD41Irk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56ECC10E984;
 Fri,  8 Nov 2024 13:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731070983; x=1762606983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UgXrwxXddIARR9qJIwEmLpZHuQCxADGfVyhuWKKzd64=;
 b=NeD41IrkN+SggarV0rWo4Y5u/++ctJuJOTA9VaIwpucpK90ZXqk0A9a9
 wWslufyZTTJnkCOT5J9LR+wdRoW8cfQFfmtyJW1xd+RsOAwuBKN6ucaTC
 Csd8EKIW4s3d2/v140Fz+3LWepAdCOV6ekKAPOjOvD7WR3LI9nGbfiig5
 KSnB1CWkxOsIb9MRLTJ0nvMze/cr3dwdDd/EW6dMnxGqzKCVLZB6C5B6q
 BbgsCMjjCKFvT1uYr6N82feD5wXNIrU7ySM4bdOBH5Ig+pnH5IoArz462
 tFec3milqrXW1p68u8jbe3xLeOgcf3KnCArSj4vVQu6OjsZTIQxqzV3Rh A==;
X-CSE-ConnectionGUID: 2VgJXoQwR/isEkIm2DvzMg==
X-CSE-MsgGUID: RiPl/HQKSZyoo3Yynn6zYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41513126"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41513126"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:03:03 -0800
X-CSE-ConnectionGUID: Br3y/KV5QFuabhPUghfCow==
X-CSE-MsgGUID: U8JU4TCZSC+Emz2hEqkgVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85692477"
Received: from ldmartin-desk2.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.232])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:02:49 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4 05/15] drm/i915/dmc_wl: Get wakelock when disabling dynamic
 DC states
Date: Fri,  8 Nov 2024 09:57:10 -0300
Message-ID: <20241108130218.24125-6-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241108130218.24125-1-gustavo.sousa@intel.com>
References: <20241108130218.24125-1-gustavo.sousa@intel.com>
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

