Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E810907600
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 17:05:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6686510EAC0;
	Thu, 13 Jun 2024 15:05:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HewzeSKG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2514C10EAC0;
 Thu, 13 Jun 2024 15:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718291132; x=1749827132;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WDRVVerNM3HKxdOXArpAzHP6P2t32WpOPv5OpmF/oSE=;
 b=HewzeSKGdNLDE7nkN3UdAAbmXPjM7q1S7gClj4KZx+XPtzzkEd1myvJ8
 oEPmRbHFsxpax1Bqk6++X37bP5SzOSilf50sPiWuR/Kxx/FsSrQ2iU9yp
 ymNvCIK60wmQrEgctUDKiwGrSPbreXLYXhnLtGRB6aFaAFv0WJVE1NRYS
 FU01k9XdzkYdV+lv1F9byqFyR8j3qVieJUHNxLvPim0VfOK/xIVqfQuDT
 Ca8fNpf/maOU2XkhDK83GFvhzdz93xhF6UUdyzjTEmOlnoVvAMllHahmu
 6sK/eJjgd2hilZS+NW+TlBDycvWHDzT6wdtX6W95jK0Y5BIHEJEOLf72i w==;
X-CSE-ConnectionGUID: Ip4zGOXKSc2YWWk3x74wGQ==
X-CSE-MsgGUID: 4Op4vWccRM6SuoynmFsclA==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="14912798"
X-IronPort-AV: E=Sophos;i="6.08,235,1712646000"; d="scan'208";a="14912798"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 08:04:33 -0700
X-CSE-ConnectionGUID: Ej18vELuSQGmcFKI/DhJzA==
X-CSE-MsgGUID: OmSwICiGQPyPoDgBukRiPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,235,1712646000"; d="scan'208";a="40292126"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.158])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 08:04:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/dsc: don't mess up splitter state in joiner or dsc
 config
Date: Thu, 13 Jun 2024 18:04:24 +0300
Message-Id: <20240613150424.262567-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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
different places. Avoid messing up the splitter state when
enabling/disabling joiner or dsc.

Note: We should probably handle splitter for MSO as well as dual-link
DSI in intel_vdsc.c. Also, we have intel_uncompressed_joiner_enable()
but no corresponding disable.

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1668
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

I'm not really sure if MSO + bigjoiner is a valid scenario. It certainly
isn't a common scenario. But let's see if this makes the tests work
before preventing the combo.
---
 drivers/gpu/drm/i915/display/intel_ddi.c       |  5 ++---
 drivers/gpu/drm/i915/display/intel_vdsc.c      | 12 +++++++++---
 drivers/gpu/drm/i915/display/intel_vdsc_regs.h |  1 +
 3 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ba7d0a706a20..7411f028fbcf 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2416,9 +2416,8 @@ static void intel_ddi_mso_configure(const struct intel_crtc_state *crtc_state)
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

