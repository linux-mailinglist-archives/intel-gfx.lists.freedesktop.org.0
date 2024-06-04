Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 247DC8FB71A
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3926810E4F2;
	Tue,  4 Jun 2024 15:28:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cJ2Dn2AD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C820410E4F2
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514928; x=1749050928;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4bMP51+B19vCC/cNLKuKKnkhCe90uR8+MfjWfyJj/BE=;
 b=cJ2Dn2ADNIcFVLMt6Ex63vmUZyWZPOYWamPl7rRckdAkCPkWixU6M72Y
 WFZxQV7e5Jli/vJwKlb5kPCr34ms9pIEeI9PHgOYBamVBNY5/4zV5WQa9
 0uuO531wGqp/tecyd0dtqv57pU7BkcvMnUfF0WxvPI0NOiLekAwzEk0XM
 g///FNgAlp4Fam9TdwH96edLceNyiBVzWYQ/uL8fmFau8V6wdL1og2DgT
 Jw4hFgzG1r7WVFFBFu12XOedetgcr1uA4CYrpqNjxdq2aazhaTDQUM58A
 6a71UjmbTFPOYNFYmfOidBVMEv9e/2aoCdI9dqaow8P3/Wzdds+2FTtRt A==;
X-CSE-ConnectionGUID: dS7wEnGDRv6dSpJP7t93bw==
X-CSE-MsgGUID: EjzVBfU3RoO/IidG1kmBaA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="17009197"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="17009197"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:48 -0700
X-CSE-ConnectionGUID: PsEplgTgTDOvtZvNZ+sbSA==
X-CSE-MsgGUID: h9zYgUGFQ5eF/yXN+e+YCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37742216"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 29/65] drm/i915: pass dev_priv explicitly to PIPE_FRMCOUNT_G4X
Date: Tue,  4 Jun 2024 18:25:47 +0300
Message-Id: <747124e5eebdb58b06d70a0aae0af4dd7e6b7d86.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the PIPE_FRMCOUNT_G4X register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
 drivers/gpu/drm/i915/gvt/display.c          | 2 +-
 drivers/gpu/drm/i915/i915_reg.h             | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 8 ++++----
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index c6e68c0604b3..4f3b80cd1674 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -125,7 +125,7 @@ u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
 	if (!vblank->max_vblank_count)
 		return 0;
 
-	return intel_de_read(dev_priv, PIPE_FRMCOUNT_G4X(pipe));
+	return intel_de_read(dev_priv, PIPE_FRMCOUNT_G4X(dev_priv, pipe));
 }
 
 static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index ad21b8f65d6b..3681dca165c6 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -647,7 +647,7 @@ static void emulate_vblank_on_pipe(struct intel_vgpu *vgpu, int pipe)
 	}
 
 	if (pipe_is_enabled(vgpu, pipe)) {
-		vgpu_vreg_t(vgpu, PIPE_FRMCOUNT_G4X(pipe))++;
+		vgpu_vreg_t(vgpu, PIPE_FRMCOUNT_G4X(dev_priv, pipe))++;
 		intel_vgpu_trigger_virtual_event(vgpu, vblank_event[pipe]);
 	}
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 05e0013813f8..d62da57afda7 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2257,7 +2257,7 @@
 /* GM45+ just has to be different */
 #define _PIPEA_FRMCOUNT_G4X	0x70040
 #define _PIPEA_FLIPCOUNT_G4X	0x70044
-#define PIPE_FRMCOUNT_G4X(pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FRMCOUNT_G4X)
+#define PIPE_FRMCOUNT_G4X(dev_priv, pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FRMCOUNT_G4X)
 #define PIPE_FLIPCOUNT_G4X(pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FLIPCOUNT_G4X)
 
 /* CHV pipe B blender */
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 00ee588fab39..2e027f3ee750 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -142,10 +142,10 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_B));
 	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_C));
 	MMIO_D(PIPE_FLIPCOUNT_G4X(_PIPE_EDP));
-	MMIO_D(PIPE_FRMCOUNT_G4X(PIPE_A));
-	MMIO_D(PIPE_FRMCOUNT_G4X(PIPE_B));
-	MMIO_D(PIPE_FRMCOUNT_G4X(PIPE_C));
-	MMIO_D(PIPE_FRMCOUNT_G4X(_PIPE_EDP));
+	MMIO_D(PIPE_FRMCOUNT_G4X(dev_priv, PIPE_A));
+	MMIO_D(PIPE_FRMCOUNT_G4X(dev_priv, PIPE_B));
+	MMIO_D(PIPE_FRMCOUNT_G4X(dev_priv, PIPE_C));
+	MMIO_D(PIPE_FRMCOUNT_G4X(dev_priv, _PIPE_EDP));
 	MMIO_D(CURCNTR(dev_priv, PIPE_A));
 	MMIO_D(CURCNTR(dev_priv, PIPE_B));
 	MMIO_D(CURCNTR(dev_priv, PIPE_C));
-- 
2.39.2

