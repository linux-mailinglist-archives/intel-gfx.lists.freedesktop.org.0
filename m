Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F79590897C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 12:16:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAEA510ECDC;
	Fri, 14 Jun 2024 10:16:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GGOasIkS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A9BF10ECE0;
 Fri, 14 Jun 2024 10:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718360180; x=1749896180;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SRbR1IwU9CZ1nYFqYUz1nE3k/Q6KfIHMEXGRE18xpO4=;
 b=GGOasIkSL8yqq8k0/0Ll7LqfM0cxIgGUOdbfdEM+X5tzDpBNVrQLCmfV
 osb+E8qp/i7ow9KWDAYSf/WneaT/a4+vzYrNUHub4MDaVRyfjLzwB7UV7
 bfTRl9rAKrdp1kk0AJ9iZbvis9+YyJIpMmuwdeY7H8tivipeVDPnekQAa
 LYIHYOotoDfgG6X7BNU5KE9O/xvBMwbbFEUaYK9xg86XA+NV5V1sdRIQ/
 Zh7eRcevnw8gvlI5EIYc7UtEbMnVkZEr1Gv8w8ApINH4d1RCZKIa8EKYs
 UlF8qhgu/v1m8sG9HbVExLXxrC/dCwSXDIEx3QFbM2eOZHx2FdKp++LLn A==;
X-CSE-ConnectionGUID: UA/IhCyfQq6W+VSAPB/xjA==
X-CSE-MsgGUID: xklG/TAuRBaelnH+9a6tTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="25814282"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="25814282"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 03:16:20 -0700
X-CSE-ConnectionGUID: mAL6SPjNQEGqvB7l9CQ5aw==
X-CSE-MsgGUID: +KrJdlLXRHO+1+ZwBp1daA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="63658334"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.221])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 03:16:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 2/2] drm/i915/dsc: don't mess up splitter state in joiner
 or dsc config
Date: Fri, 14 Jun 2024 13:16:04 +0300
Message-Id: <aea210a824084a0644de5a546e7ecb6dfc6bdef9.1718360103.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1718360103.git.jani.nikula@intel.com>
References: <cover.1718360103.git.jani.nikula@intel.com>
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

The driver handles splitter (for MSO) and joiner/dsc configuration in
different places. Avoid messing up the splitter hardware state when
enabling/disabling joiner or dsc. It should not be possible to enable
both joiner and splitter at the same time, but add more clarity to the
register use overall.

Note: We should probably handle splitter for MSO as well as dual-link
DSI in intel_vdsc.c. Also, we have intel_uncompressed_joiner_enable()
but no corresponding disable.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c       |  5 ++---
 drivers/gpu/drm/i915/display/intel_vdsc.c      | 12 +++++++++---
 drivers/gpu/drm/i915/display/intel_vdsc_regs.h |  1 +
 3 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index bb13a3ca8c7c..49509a6599fe 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2417,9 +2417,8 @@ static void intel_ddi_mso_configure(const struct intel_crtc_state *crtc_state)
 			dss1 |= SPLITTER_CONFIGURATION_4_SEGMENT;
 	}
 
-	intel_de_rmw(i915, ICL_PIPE_DSS_CTL1(pipe),
-		     SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MASK |
-		     OVERLAP_PIXELS_MASK, dss1);
+	/* Only touch the splitter */
+	intel_de_rmw(i915, ICL_PIPE_DSS_CTL1(pipe), SPLITTER_STATE, dss1);
 }
 
 static u8 mtl_get_port_width(u8 lane_count)
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index b9687b7692b8..a8671d3f1d41 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -766,7 +766,9 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
 		else
 			dss_ctl1_val |= UNCOMPRESSED_JOINER_PRIMARY;
 
-		intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
+		/* Avoid touching the splitter */
+		intel_de_rmw(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder),
+			     ~SPLITTER_STATE, dss_ctl1_val);
 	}
 }
 
@@ -793,7 +795,9 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 		if (!intel_crtc_is_joiner_secondary(crtc_state))
 			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
 	}
-	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
+	/* Avoid touching the splitter */
+	intel_de_rmw(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder),
+		     ~SPLITTER_STATE, dss_ctl1_val);
 	intel_de_write(dev_priv, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder), dss_ctl2_val);
 }
 
@@ -805,7 +809,9 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
 	/* Disable only if either of them is enabled */
 	if (old_crtc_state->dsc.compression_enable ||
 	    old_crtc_state->joiner_pipes) {
-		intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_state->cpu_transcoder), 0);
+		/* Avoid touching the splitter */
+		intel_de_rmw(dev_priv, dss_ctl1_reg(crtc, old_crtc_state->cpu_transcoder),
+			     ~SPLITTER_STATE, 0);
 		intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_state->cpu_transcoder), 0);
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index f921ad67b587..3734cd96f55e 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -37,6 +37,7 @@
 #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
 #define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
 #define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
+#define  SPLITTER_STATE				(SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MASK | OVERLAP_PIXELS_MASK)
 #define  UNCOMPRESSED_JOINER_PRIMARY		(1 << 21)
 #define  UNCOMPRESSED_JOINER_SECONDARY		(1 << 20)
 
-- 
2.39.2

