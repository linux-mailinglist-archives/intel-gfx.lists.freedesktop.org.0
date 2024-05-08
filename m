Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7288C015C
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 17:48:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 981BD112693;
	Wed,  8 May 2024 15:48:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q1MCqRBf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 536ED112693
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 15:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715183290; x=1746719290;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kK0SEhsrHA3ELSGCOfmet0aSAPqXc9wKlrxOUv5ZRbs=;
 b=Q1MCqRBf/8AYYIA05M5nIGr+ke6Sva6yXYyk6GZOEmTsqeDwK9bFEzxf
 45hBX+UmF98sScK/Xt23qrS+WON+yiSbVdJmFTpkSLBM506LbtKpN/QQg
 tzIyMt4+FwUiwGyFL5M93NK3Ucyl/RJzRAPpjfhVh0gogHTvaQhGD6PHa
 JmA1p0W03WmUvgPCaBU91xopjUysvetuyUCYUuhdtslQS4dMxL18t0h0W
 NECL11xQaEh/AKr70WaQEH+Eu8y5iY6Sx2hRgB91X9VEEVb7pjXT33WtW
 iMw992YnCcadVGYvS2zjnejcJRuJg21/j7Fl1bbtINzcy/ocsFizwBISU g==;
X-CSE-ConnectionGUID: DCizYFBgTi2nWf4Y5V9dkA==
X-CSE-MsgGUID: nMZ1VsYAR4uefMnYigfLXg==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="28532108"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="28532108"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:10 -0700
X-CSE-ConnectionGUID: W8lIwL4jR2yQ++OXOfHwbQ==
X-CSE-MsgGUID: EBGHLKS9Tzma3FAMUDpnEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="29447074"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.105])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 02/10] drm/i915: pass dev_priv explicitly to TRANS_VRR_VMAX
Date: Wed,  8 May 2024 18:47:48 +0300
Message-Id: <6256642f1943b87650fdf600ef08f6d3b8617a87.1715183162.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715183162.git.jani.nikula@intel.com>
References: <cover.1715183162.git.jani.nikula@intel.com>
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
explicitly to the TRANS_VRR_VMAX register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 6 ++++--
 drivers/gpu/drm/i915/i915_reg.h          | 2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index b1136aee775f..d9024ccf6098 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -219,7 +219,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 	}
 
 	intel_de_write(dev_priv, TRANS_VRR_VMIN(cpu_transcoder), crtc_state->vrr.vmin - 1);
-	intel_de_write(dev_priv, TRANS_VRR_VMAX(cpu_transcoder), crtc_state->vrr.vmax - 1);
+	intel_de_write(dev_priv, TRANS_VRR_VMAX(dev_priv, cpu_transcoder),
+		       crtc_state->vrr.vmax - 1);
 	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
 		       trans_vrr_ctl(crtc_state));
 	intel_de_write(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder), crtc_state->vrr.flipline - 1);
@@ -309,7 +310,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
 	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN) {
 		crtc_state->vrr.flipline = intel_de_read(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder)) + 1;
-		crtc_state->vrr.vmax = intel_de_read(dev_priv, TRANS_VRR_VMAX(cpu_transcoder)) + 1;
+		crtc_state->vrr.vmax = intel_de_read(dev_priv,
+						     TRANS_VRR_VMAX(dev_priv, cpu_transcoder)) + 1;
 		crtc_state->vrr.vmin = intel_de_read(dev_priv, TRANS_VRR_VMIN(cpu_transcoder)) + 1;
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a178e9f6804c..693b4e562d46 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1247,7 +1247,7 @@
 #define _TRANS_VRR_VMAX_B		0x61424
 #define _TRANS_VRR_VMAX_C		0x62424
 #define _TRANS_VRR_VMAX_D		0x63424
-#define TRANS_VRR_VMAX(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMAX_A)
+#define TRANS_VRR_VMAX(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMAX_A)
 #define   VRR_VMAX_MASK			REG_GENMASK(19, 0)
 
 #define _TRANS_VRR_VMIN_A		0x60434
-- 
2.39.2

