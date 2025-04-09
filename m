Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8384FA82E74
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 20:19:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 020BE10E6FB;
	Wed,  9 Apr 2025 18:19:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nSfiGDZp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4176810E6FD;
 Wed,  9 Apr 2025 18:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744222748; x=1775758748;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iM4EHvpmpyBbfnRJz90FAcPnV58eEpFzLxH3TIr0jdc=;
 b=nSfiGDZpAZCI9o+97G7K8ItdruFNTeF29Xk0XFfYC8Xfa73KMlBAKFxy
 gj4TAFizFySAuFae4syGfQxY/tdkT1twp3Hv9dOgIhnlMyKDCb94J2BxA
 gpQWo7+MlGjeuMhKwu9e42Up1J6dtTDHFf53oLlE8M4PTLaydM/amI0ow
 CvrUPS8XLW5zXpXuTCilwmvnnIYn7GP17QpbBPiVQQx6UY/qD3LFfydgH
 ONoLsKnlJAsfnCv7TJCSgB5/jKwZMagAprZQu0XJsMWeblUz4tw9aslGP
 lg0uaA1Lx/SK1PQ35RXLV5bCChF8Mu28kBHKUk/fr49QU4eDqQMC0T7dn Q==;
X-CSE-ConnectionGUID: V2dAGEu9SZ2c94Be1Yt1Ng==
X-CSE-MsgGUID: F65lcJvbTOOEButoIGuRLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="45730011"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="45730011"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:19:07 -0700
X-CSE-ConnectionGUID: JgHR/Zj1Rdu71ddSUZLh6Q==
X-CSE-MsgGUID: mydgR7dZStGMF1Q6AY6O7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="165879082"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:19:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 12/14] drm/i915/display: switch to display->platform.dgfx from
 IS_DGFX()
Date: Wed,  9 Apr 2025 21:17:53 +0300
Message-Id: <99de7f8f26156afbddcdac850088e6a96d322c55.1744222449.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744222449.git.jani.nikula@intel.com>
References: <cover.1744222449.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Prefer display->platform.dgfx based platform detection over the old
IS_DGFX() macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c          | 2 +-
 drivers/gpu/drm/i915/display/intel_fb.c            | 4 ++--
 drivers/gpu/drm/i915/display/intel_plane_initial.c | 8 +++++---
 3 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index fabfcf2caa69..8fe854a45243 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3126,7 +3126,7 @@ static const struct vbt_header *intel_bios_get_vbt(struct intel_display *display
 	 * If the OpRegion does not have VBT, look in SPI flash
 	 * through MMIO or PCI mapping
 	 */
-	if (!vbt && IS_DGFX(i915))
+	if (!vbt && display->platform.dgfx)
 		with_intel_display_rpm(display)
 			vbt = oprom_get_vbt(display, intel_rom_spi(i915), sizep, "SPI flash");
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 2b0e0f220442..05393bd60c98 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -560,11 +560,11 @@ static bool plane_has_modifier(struct intel_display *display,
 		return false;
 
 	if (md->modifier == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
-	    (GRAPHICS_VER(i915) < 20 || !IS_DGFX(i915)))
+	    (GRAPHICS_VER(i915) < 20 || !display->platform.dgfx))
 		return false;
 
 	if (md->modifier == I915_FORMAT_MOD_4_TILED_LNL_CCS &&
-	    (GRAPHICS_VER(i915) < 20 || IS_DGFX(i915)))
+	    (GRAPHICS_VER(i915) < 20 || display->platform.dgfx))
 		return false;
 
 	return true;
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index b0c4892775ce..c00d9184c586 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -53,9 +53,11 @@ intel_reuse_initial_plane_obj(struct intel_crtc *this,
 }
 
 static enum intel_memory_type
-initial_plane_memory_type(struct drm_i915_private *i915)
+initial_plane_memory_type(struct intel_display *display)
 {
-	if (IS_DGFX(i915))
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	if (display->platform.dgfx)
 		return INTEL_MEMORY_LOCAL;
 	else if (HAS_LMEMBAR_SMEM_STOLEN(i915))
 		return INTEL_MEMORY_STOLEN_LOCAL;
@@ -75,7 +77,7 @@ initial_plane_phys(struct intel_display *display,
 	dma_addr_t dma_addr;
 	u32 base;
 
-	mem_type = initial_plane_memory_type(i915);
+	mem_type = initial_plane_memory_type(display);
 	mem = intel_memory_region_by_type(i915, mem_type);
 	if (!mem) {
 		drm_dbg_kms(display->drm,
-- 
2.39.5

