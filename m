Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D6F8CD307
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:00:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBCB710E5A0;
	Thu, 23 May 2024 13:00:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="evvepqzc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8C3510E539
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716469241; x=1748005241;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IDws+VOfARKOF1bagQ9sxP0Mwnn6UDtk37iWymy2NxA=;
 b=evvepqzcQM/ucCEogIdXoghrDcGXScsO9XZ7ipchCvu7iTPPl8wnE+kk
 HFFN1IYGwH8lE7MXI1de3GerqmEmEOoJevrveNm+qNNnoLbuvPlZ4oSzL
 PPTligWXOSKxvCOP1nuVa/22KOh+c3g/CjAIk6fVWU3VsizAU98wYhwha
 ujZnDzYSoEk3wnUwNJaytPaM5rs+W4G275k+rtzkH2koN1IuOnaMWUdMI
 K3cwxDiDd7BV2r6mJXNPBxgUUImo7f+iHqIx8GjLUaOh+Q81bnbkh7Vs+
 D+yMKtxNFT/7kYeu4BkwVhKBDdmdX7BXH9pA+hJFxBuqQWqkQpLjBuklP w==;
X-CSE-ConnectionGUID: gVEddlQYTMiJZ5hm0IX6DA==
X-CSE-MsgGUID: rOhDeVRDQhuxQbY3Hw7Agw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="16610037"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="16610037"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:40 -0700
X-CSE-ConnectionGUID: 5DAKPalcRWeeNMuG/vNyOg==
X-CSE-MsgGUID: 3V8k0rqKQKStusOrwbcd8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33672398"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 13/16] drm/i915: pass dev_priv explicitly to PRIMPOS
Date: Thu, 23 May 2024 15:59:41 +0300
Message-Id: <4bbb3218ac25b292bea46dcba3df8ec474d578e2.1716469091.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716469091.git.jani.nikula@intel.com>
References: <cover.1716469091.git.jani.nikula@intel.com>
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
explicitly to the PRIMPOS register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c      | 2 +-
 drivers/gpu/drm/i915/display/i9xx_plane_regs.h | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 2026323d88ac..1cefcdd4f26a 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -474,7 +474,7 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 		int crtc_w = drm_rect_width(&plane_state->uapi.dst);
 		int crtc_h = drm_rect_height(&plane_state->uapi.dst);
 
-		intel_de_write_fw(dev_priv, PRIMPOS(i9xx_plane),
+		intel_de_write_fw(dev_priv, PRIMPOS(dev_priv, i9xx_plane),
 				  PRIM_POS_Y(crtc_y) | PRIM_POS_X(crtc_x));
 		intel_de_write_fw(dev_priv, PRIMSIZE(i9xx_plane),
 				  PRIM_HEIGHT(crtc_h - 1) | PRIM_WIDTH(crtc_w - 1));
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
index f67c5a2bb6b9..7f291b34f10a 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
@@ -87,8 +87,8 @@
 #define DSPGAMC(dev_priv, plane, i)		_MMIO_PIPE2(dev_priv, plane, _DSPAGAMC + (5 - (i)) * 4) /* plane C only, 6 x u0.8 */
 
 /* CHV pipe B primary plane */
-#define _PRIMPOS_A		0x60a08
-#define PRIMPOS(plane)		_MMIO_TRANS2(dev_priv, plane, _PRIMPOS_A)
+#define _PRIMPOS_A			0x60a08
+#define PRIMPOS(dev_priv, plane)	_MMIO_TRANS2(dev_priv, plane, _PRIMPOS_A)
 #define   PRIM_POS_Y_MASK	REG_GENMASK(31, 16)
 #define   PRIM_POS_Y(y)		REG_FIELD_PREP(PRIM_POS_Y_MASK, (y))
 #define   PRIM_POS_X_MASK	REG_GENMASK(15, 0)
-- 
2.39.2

