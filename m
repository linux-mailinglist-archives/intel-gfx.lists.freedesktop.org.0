Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8802F9A9346
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 00:28:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FB9010E5BE;
	Mon, 21 Oct 2024 22:28:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fV3sR62z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C061210E5C0;
 Mon, 21 Oct 2024 22:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729549688; x=1761085688;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IVd/FiB29Vd3c/aGoeG0z9waMZGW+XOF/AWj39KEm9Y=;
 b=fV3sR62zdIdXhMk4z5oH8RjhX0Hpu2sPizGhn9ft3hqpeaEeyiUvZkGW
 5Noxfxt77cfwPzW8Ucc33SjYX1uJy/KdsCaMo3ImJGqR5DYGhLwy7SOxK
 3JINcyOaCEScgEjqcDKt81dmcHds9QJCozRP5DqHriHx0QMjjWRAFSrzI
 N8icShcYaDbLuzXk/GNGcCJB++fULFLcAouOwEkZ7FpNt8VLmGYcHJ5Mu
 pExPuzlpfI2LFc9wgRNcnudv/c+cIVnD1JiIHyKlQHtQ+8LHle7+G/BLZ
 CDjyU9JUX3bNDX0FOrVlwHJungLWT2A+s1NFWqGODbM/nHZEEhkcKvSyq w==;
X-CSE-ConnectionGUID: /p6bPqSORWWKU1hfQCOkVg==
X-CSE-MsgGUID: R7UMnlvFRjmVcLBFAXIfkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28934454"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28934454"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:07 -0700
X-CSE-ConnectionGUID: FL5IfudUR8ushTS7HBXemQ==
X-CSE-MsgGUID: 2vAv6nSJS+KoWWeGo9hCAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="80009605"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.125.110.79])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:06 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 04/13] drm/i915/dmc_wl: Get wakelock when disabling dynamic DC
 states
Date: Mon, 21 Oct 2024 19:27:23 -0300
Message-ID: <20241021222744.294371-5-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241021222744.294371-1-gustavo.sousa@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
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
index adaf7cf3a33b..e8946ce86aaa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -987,10 +987,14 @@ void gen9_disable_dc_states(struct intel_display *display)
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
index c298aef89449..5ed610c9be39 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -194,7 +194,7 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
 	if (!__intel_dmc_wl_supported(display))
 		return;
 
-	if (!intel_dmc_wl_check_range(reg.reg))
+	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg.reg))
 		return;
 
 	spin_lock_irqsave(&wl->lock, flags);
@@ -246,7 +246,7 @@ void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg)
 	if (!__intel_dmc_wl_supported(display))
 		return;
 
-	if (!intel_dmc_wl_check_range(reg.reg))
+	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg.reg))
 		return;
 
 	spin_lock_irqsave(&wl->lock, flags);
@@ -267,3 +267,13 @@ void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg)
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

