Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F32A5F74A
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 15:09:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D07310E8A6;
	Thu, 13 Mar 2025 14:09:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="THPbFeMZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B41CA10E8A4
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Mar 2025 14:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741874968; x=1773410968;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=FwX5tbXTWQiZGGoEVJuoFJoFBHFutETnCIS9lJs7djg=;
 b=THPbFeMZ272LlDhTO7uDmnZRAuxw7d4xxtrU/MnvHDGRvk3/e/gVZuMC
 CBRd3PcmVHDRHoMcy6mhdpbU7khCgIASyRcu2Fe5RVKegN68MgaQ4ubXg
 VbqhFu29hy3vRUAVzLIFSxu7/RlNOSadk5ssLjUE1EQNQai7LipodNXLn
 aYQrFyaLUwuvLaihOfjY4UuSj2BwUfNTpx1lDwG4tQc08loA+V/Xw/V0E
 cy6SsWOyGOjSfn27BfJ+pIXcRAjTAQ5ZUjSO4mnw2xtomVZe6pxzz/HIJ
 Jwg/K3K2JtK1qHalTTWEyjvmAjkQImJhD3mJ00heQwxKctCxER8ir5X/1 w==;
X-CSE-ConnectionGUID: NSAqqOo4TuqFz60Rl39obw==
X-CSE-MsgGUID: hANvwJe8SkyicoOvkrWltQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="42854971"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="42854971"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 07:08:57 -0700
X-CSE-ConnectionGUID: TrKdfkg0Qea5rf/yv/h6WA==
X-CSE-MsgGUID: BEWaX84lS9y6AZL6hW+JNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="126138436"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 13 Mar 2025 07:08:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Mar 2025 16:08:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/10] drm/i915: Verify the BIOS FB first PTE on non-LMEMBAR
 systems
Date: Thu, 13 Mar 2025 16:08:34 +0200
Message-ID: <20250313140838.29742-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
References: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Now that we have intel_ggtt_read_entry() we can easily read out the
first PTE of the BIOS FB and verify that it looks correct. We'll
also use the extracted dma address to figure out where in stolen
the FB lives (so far we've just assumed that it sits at offset 0,
and in practice that does seem to be true, but better safe than
sorry).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_plane_initial.c    | 31 +++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 2989a5d76c1c..cf7d1a5ab524 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -115,11 +115,28 @@ initial_plane_phys_smem(struct intel_display *display,
 			struct intel_initial_plane_config *plane_config)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
 	struct intel_memory_region *mem;
+	bool is_present, is_local;
+	dma_addr_t dma_addr;
 	u32 base;
 
 	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
 
+	dma_addr = intel_ggtt_read_entry(&ggtt->vm, base, &is_present, &is_local);
+
+	if (!is_present) {
+		drm_err(display->drm,
+			"Initial plane FB PTE not present\n");
+		return false;
+	}
+
+	if (is_local) {
+		drm_err(display->drm,
+			"Initial plane FB PTE LMEM\n");
+		return false;
+	}
+
 	mem = i915->mm.stolen_region;
 	if (!mem) {
 		drm_dbg_kms(display->drm,
@@ -127,8 +144,18 @@ initial_plane_phys_smem(struct intel_display *display,
 		return false;
 	}
 
-	/* FIXME get and validate the dma_addr from the PTE */
-	plane_config->phys_base = base;
+	if (dma_addr < mem->region.start || dma_addr > mem->region.end) {
+		drm_err(display->drm,
+			"Initial plane programming using invalid range, dma_addr=%pa (%s [%pa-%pa])\n",
+			&dma_addr, mem->region.name, &mem->region.start, &mem->region.end);
+		return false;
+	}
+
+	drm_dbg(display->drm,
+		"Using dma_addr=%pa, based on initial plane programming\n",
+		&dma_addr);
+
+	plane_config->phys_base = dma_addr - mem->region.start;
 	plane_config->mem = mem;
 
 	return true;
-- 
2.45.3

