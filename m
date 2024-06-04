Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCED88FB6F3
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:26:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EABD10E4C9;
	Tue,  4 Jun 2024 15:26:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gs6Fih5d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0199E10E4A3
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514800; x=1749050800;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vk2CWZ2Kxub1bvpuRiASpXRLaQ90mfmogYU5ei5ECis=;
 b=gs6Fih5d0aU8toeZwpORw38xjecHcDsY2PS4+eOxPI2H9NOUw8QsVHJ0
 7LYta4bt8iSfolqb6GPUm4T4CtcZuLrX12SG4E7mSYpz8QtWqIKi58Wkj
 rm+5WNthDRS2Yvosh7R6c1244PHIMFR2QWVUuFwhdpTqDnsy+BCfNnGHv
 iIgQvzQukFuFHCz+wvLOJqMWDhaoT1XrUDoufTYdZsIBZOiCwj+JZ3AhL
 QTTdGcRuo3hbtF1wMbr5KrE3HyYMyE09gK1MXJkvV+7YJLI2dDqUzds1D
 4rMu2aCarnah3MjRsdZ3lUYH6MxedV9tn/p3aDBzphaMHXP+V4swnb3N6 g==;
X-CSE-ConnectionGUID: ajHB6auqRKy8VwrEgp9nYA==
X-CSE-MsgGUID: Kj0m0WtAS2GHi3bqBnnOyg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13949203"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13949203"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:26:40 -0700
X-CSE-ConnectionGUID: e07aGEHFQjiT9t4hrzCR+Q==
X-CSE-MsgGUID: QfTYyLKQQLWTzY4LbtwwZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="60464429"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:26:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 02/65] drm/i915: pass dev_priv explicitly to DPLL_MD
Date: Tue,  4 Jun 2024 18:25:20 +0300
Message-Id: <98d24284d4ec435c3acae6445943204dfa96617d.1717514638.git.jani.nikula@intel.com>
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
explicitly to the DPLL_MD register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 18 +++++++++++-------
 drivers/gpu/drm/i915/i915_reg.h           |  2 +-
 2 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index a007ca5208b8..d67d5e2fd570 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -398,7 +398,8 @@ void i9xx_dpll_get_hw_state(struct intel_crtc *crtc,
 		if (IS_CHERRYVIEW(dev_priv) && crtc->pipe != PIPE_A)
 			tmp = dev_priv->display.state.chv_dpll_md[crtc->pipe];
 		else
-			tmp = intel_de_read(dev_priv, DPLL_MD(crtc->pipe));
+			tmp = intel_de_read(dev_priv,
+					    DPLL_MD(dev_priv, crtc->pipe));
 
 		hw_state->dpll_md = tmp;
 	}
@@ -1851,7 +1852,8 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 	udelay(150);
 
 	if (DISPLAY_VER(dev_priv) >= 4) {
-		intel_de_write(dev_priv, DPLL_MD(pipe), hw_state->dpll_md);
+		intel_de_write(dev_priv, DPLL_MD(dev_priv, pipe),
+			       hw_state->dpll_md);
 	} else {
 		/* The pixel multiplier can only be updated once the
 		 * DPLL is enabled and the clocks are stable.
@@ -2021,8 +2023,8 @@ void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 		_vlv_enable_pll(crtc_state);
 	}
 
-	intel_de_write(dev_priv, DPLL_MD(pipe), hw_state->dpll_md);
-	intel_de_posting_read(dev_priv, DPLL_MD(pipe));
+	intel_de_write(dev_priv, DPLL_MD(dev_priv, pipe), hw_state->dpll_md);
+	intel_de_posting_read(dev_priv, DPLL_MD(dev_priv, pipe));
 }
 
 static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
@@ -2175,7 +2177,8 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 		 * the value from DPLLBMD to either pipe B or C.
 		 */
 		intel_de_write(dev_priv, CBR4_VLV, CBR_DPLLBMD_PIPE(pipe));
-		intel_de_write(dev_priv, DPLL_MD(PIPE_B), hw_state->dpll_md);
+		intel_de_write(dev_priv, DPLL_MD(dev_priv, PIPE_B),
+			       hw_state->dpll_md);
 		intel_de_write(dev_priv, CBR4_VLV, 0);
 		dev_priv->display.state.chv_dpll_md[pipe] = hw_state->dpll_md;
 
@@ -2187,8 +2190,9 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 			    (intel_de_read(dev_priv, DPLL(dev_priv, PIPE_B)) &
 			     DPLL_VGA_MODE_DIS) == 0);
 	} else {
-		intel_de_write(dev_priv, DPLL_MD(pipe), hw_state->dpll_md);
-		intel_de_posting_read(dev_priv, DPLL_MD(pipe));
+		intel_de_write(dev_priv, DPLL_MD(dev_priv, pipe),
+			       hw_state->dpll_md);
+		intel_de_posting_read(dev_priv, DPLL_MD(dev_priv, pipe));
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8ff04bb19cbe..ea8181abf7fd 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -768,7 +768,7 @@
 #define _DPLL_A_MD		0x601c
 #define _DPLL_B_MD		0x6020
 #define _CHV_DPLL_C_MD		0x603c
-#define DPLL_MD(pipe)		_MMIO_BASE_PIPE3(DISPLAY_MMIO_BASE(dev_priv), \
+#define DPLL_MD(dev_priv, pipe)		_MMIO_BASE_PIPE3(DISPLAY_MMIO_BASE(dev_priv), \
 						 (pipe), _DPLL_A_MD, _DPLL_B_MD, _CHV_DPLL_C_MD)
 
 /*
-- 
2.39.2

