Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 414DA8B6F43
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:11:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBD4810FAEE;
	Tue, 30 Apr 2024 10:11:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xeijt0bQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37A1910FAEE
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471865; x=1746007865;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xWakH4TS/QaD/JNQOxt+FEnONHc/Jdv//EHYwJdD7rY=;
 b=Xeijt0bQUUeunkn7JEPW5CQ1B0BaOzKmO9rv7jLICvExUZg0jDYrN18Q
 5MNIbhPExXOOeMpiu+se7xzsOzP107pJvljeqkVgQc/e5q38aV1cFR8hV
 RUw13NY7GAC5nRI3aDby/03OKpf3Lcy4aK+McX/4pfc/3OLkCuOo+Nqc/
 M4HznPWzWEg7Fa8cw06HNQVUcjXIhJr4tQYbCx3ZzE5zOS4IPp6YByFw/
 B2gUZJ6NDqapDDa2rz9/rxyVHX8Ql1r3JCcnNtCM3hKxkG8W1EXi/glrG
 GL1IptfKEjTzdOzgKsDKeW9JYwIllDnlShkUEI88mdOcPdlZjN5Kbc7lf A==;
X-CSE-ConnectionGUID: IQB9mos9QX+73RCEYez05Q==
X-CSE-MsgGUID: nptyshaRRLmd3nxpduNQ/g==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="10043813"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="10043813"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:04 -0700
X-CSE-ConnectionGUID: 4L4TiOCgR8i0LrQ2pTWafw==
X-CSE-MsgGUID: 0ovHQJjRSo+qUcL8EXUm9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26281445"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 10/19] drm/i915: pass dev_priv explicitly to EDP_PSR2_CTL
Date: Tue, 30 Apr 2024 13:10:04 +0300
Message-Id: <e7df99445716ce404bbfe733dd962288a529cf0d.1714471597.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714471597.git.jani.nikula@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
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
explicitly to the EDP_PSR2_CTL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 15 +++++++++------
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  2 +-
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index fa1fd04d3b4a..156660ab7adf 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -932,7 +932,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	 */
 	intel_de_write(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder), psr_val);
 
-	intel_de_write(dev_priv, EDP_PSR2_CTL(cpu_transcoder), val);
+	intel_de_write(dev_priv, EDP_PSR2_CTL(dev_priv, cpu_transcoder), val);
 }
 
 static bool
@@ -963,7 +963,7 @@ static void psr2_program_idle_frames(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
-	intel_de_rmw(dev_priv, EDP_PSR2_CTL(cpu_transcoder),
+	intel_de_rmw(dev_priv, EDP_PSR2_CTL(dev_priv, cpu_transcoder),
 		     EDP_PSR2_IDLE_FRAMES_MASK,
 		     EDP_PSR2_IDLE_FRAMES(idle_frames));
 }
@@ -1700,7 +1700,7 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 
 	drm_WARN_ON(&dev_priv->drm,
 		    transcoder_has_psr2(dev_priv, cpu_transcoder) &&
-		    intel_de_read(dev_priv, EDP_PSR2_CTL(cpu_transcoder)) & EDP_PSR2_ENABLE);
+		    intel_de_read(dev_priv, EDP_PSR2_CTL(dev_priv, cpu_transcoder)) & EDP_PSR2_ENABLE);
 
 	drm_WARN_ON(&dev_priv->drm,
 		    intel_de_read(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder)) & EDP_PSR_ENABLE);
@@ -2011,7 +2011,8 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 
 	if (!intel_dp->psr.active) {
 		if (transcoder_has_psr2(dev_priv, cpu_transcoder)) {
-			val = intel_de_read(dev_priv, EDP_PSR2_CTL(cpu_transcoder));
+			val = intel_de_read(dev_priv,
+					    EDP_PSR2_CTL(dev_priv, cpu_transcoder));
 			drm_WARN_ON(&dev_priv->drm, val & EDP_PSR2_ENABLE);
 		}
 
@@ -2027,7 +2028,8 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 	} else if (intel_dp->psr.psr2_enabled) {
 		tgl_disallow_dc3co_on_psr2_exit(intel_dp);
 
-		val = intel_de_rmw(dev_priv, EDP_PSR2_CTL(cpu_transcoder),
+		val = intel_de_rmw(dev_priv,
+				   EDP_PSR2_CTL(dev_priv, cpu_transcoder),
 				   EDP_PSR2_ENABLE, 0);
 
 		drm_WARN_ON(&dev_priv->drm, !(val & EDP_PSR2_ENABLE));
@@ -3529,7 +3531,8 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 		val = intel_de_read(dev_priv, TRANS_DP2_CTL(cpu_transcoder));
 		enabled = val & TRANS_DP2_PANEL_REPLAY_ENABLE;
 	} else if (psr->psr2_enabled) {
-		val = intel_de_read(dev_priv, EDP_PSR2_CTL(cpu_transcoder));
+		val = intel_de_read(dev_priv,
+				    EDP_PSR2_CTL(dev_priv, cpu_transcoder));
 		enabled = val & EDP_PSR2_ENABLE;
 	} else {
 		val = intel_de_read(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder));
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index a74705aedbb5..785e4f9e7828 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -153,7 +153,7 @@
 
 #define _PSR2_CTL_A				0x60900
 #define _PSR2_CTL_EDP				0x6f900
-#define EDP_PSR2_CTL(tran)			_MMIO_TRANS2(dev_priv, tran, _PSR2_CTL_A)
+#define EDP_PSR2_CTL(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _PSR2_CTL_A)
 #define   EDP_PSR2_ENABLE			REG_BIT(31)
 #define   EDP_SU_TRACK_ENABLE			REG_BIT(30) /* up to adl-p */
 #define   TGL_EDP_PSR2_BLOCK_COUNT_MASK		REG_BIT(28)
-- 
2.39.2

