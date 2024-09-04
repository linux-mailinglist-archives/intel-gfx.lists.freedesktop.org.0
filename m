Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 997F896BF84
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 16:03:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3792E10E7D0;
	Wed,  4 Sep 2024 14:03:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RBkJixYX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 682C210E7D2
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 14:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725458587; x=1756994587;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=52Q0cVFgwe7cqf3FvNTTk8RTSGOrPV+cpcGPw5H1t5g=;
 b=RBkJixYXB/KA8nUZvGuzqP1LPipRKzgio/qsYaVSFMO+5Kkb9L3VXGBd
 jz7+oS39GSFF5Vl1GxRX5W/37sYvuh1Yh63y4Rzc7FSy3buyTBPYosYaU
 WmCDQMz4taL0R53cQhxEI1lMiXZK8m12fFv/3T6Pgb8KozFdmX5eZaU9n
 4xJUD8RzyeCd927CfOlJacyUccSS8GZVrpRvZbVXexxl5n4mvTbuPreIl
 1Zhm/mqZ/GtrzAaz/ZCXfFVM9G506WIT+Q4bCupwz+T8o7d28FDL0Aw34
 0EjIS2+2/UhidfKsTnPK3YNwax3z5G3kmgO69umLsjzW1ni8J14f2v9kn Q==;
X-CSE-ConnectionGUID: ZF4f58YjQQi8oV5dHwNIQg==
X-CSE-MsgGUID: PN3NIPr9TxSeP80aClpjPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="34784300"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="34784300"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 07:03:07 -0700
X-CSE-ConnectionGUID: 2PhbrD9BSwiLgxdJX2DOMQ==
X-CSE-MsgGUID: JrpnttNRRKGSiTh3B4z0rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="66012969"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 07:03:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/4] drm/i915/pps: add intel_pps_dp_power_down()
Date: Wed,  4 Sep 2024 17:02:33 +0300
Message-Id: <19beb306efff2e4380d7eed18f6262361ffb6ece.1725458428.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725458428.git.jani.nikula@intel.com>
References: <cover.1725458428.git.jani.nikula@intel.com>
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

Add intel_pps_dp_power_down() and move the VLV/CHV active pipe clear
there from intel_dp_link_down(), hiding the PPS pipe details inside PPS
code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c    |  9 +--------
 drivers/gpu/drm/i915/display/intel_pps.c | 16 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pps.h |  1 +
 3 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 1f9812223263..98405fbd0e04 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -475,14 +475,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
 		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, true);
 	}
 
-	msleep(intel_dp->pps.panel_power_down_delay);
-
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		intel_wakeref_t wakeref;
-
-		with_intel_pps_lock(intel_dp, wakeref)
-			intel_dp->pps.active_pipe = INVALID_PIPE;
-	}
+	intel_pps_dp_power_down(intel_dp);
 }
 
 static void g4x_dp_audio_enable(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 9e54acfea992..a7f7e5e1f3aa 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1599,6 +1599,22 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 		    (intel_de_read(display, regs.pp_ctrl) & BXT_POWER_CYCLE_DELAY_MASK));
 }
 
+/* Call on all DP, not just eDP */
+void intel_pps_dp_power_down(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	msleep(intel_dp->pps.panel_power_down_delay);
+
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
+		intel_wakeref_t wakeref;
+
+		with_intel_pps_lock(intel_dp, wakeref)
+			intel_dp->pps.active_pipe = INVALID_PIPE;
+	}
+}
+
 /* Call on all DP, not just eDP */
 void intel_pps_dp_encoder_reset(struct intel_dp *intel_dp)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 8dbea05f498d..42f0377a93a8 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -45,6 +45,7 @@ void intel_pps_init_late(struct intel_dp *intel_dp);
 
 void intel_pps_dp_init(struct intel_dp *intel_dp);
 void intel_pps_dp_encoder_reset(struct intel_dp *intel_dp);
+void intel_pps_dp_power_down(struct intel_dp *intel_dp);
 void intel_pps_reset_all(struct intel_display *display);
 
 void vlv_pps_init(struct intel_encoder *encoder,
-- 
2.39.2

