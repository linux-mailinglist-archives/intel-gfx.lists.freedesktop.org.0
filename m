Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6396C8FB750
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:31:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3216210E51B;
	Tue,  4 Jun 2024 15:31:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QEGdZ4k8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 632B010E520
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515081; x=1749051081;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QM2JU6BLlvtGeTI4Jqp4M6j8p7C20brZ730M9FT5NzM=;
 b=QEGdZ4k8IGCvGTvGgjPng6uooc9zMdxK2FzJUfJGQSTQCLzlRj9Gd7yD
 CIe4nJ0jyfR+XxNr8NRjoRKxer6stZkrKTdUk3vtJdOCEUGcQRuFx1b6n
 QqQC7FqMBUbrqJupfPH3zbJILOdqi5eSnr/QVPw8zyPWFVjO2YvGKko3f
 rGe4Q8IiHLywXHYPIUtS5wONGvX0xSDsiATCyb367ZU4s+TTWbPneDK9t
 PcPIVtziABaEMwzVzQnbhUZs/5Bx8zv5o0eMBMSg72IhrqaO2KE1mxNKf
 9/t6ev3OSIHdc+VA7cA/Qw2GhLWNcwl6ncpg52P9MS5Kh/V2lsRmtK642 Q==;
X-CSE-ConnectionGUID: +kl8VEqrRJG2zYm8z/vaLw==
X-CSE-MsgGUID: bET4NpELTe6YOS7/Ld036A==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13822160"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13822160"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:59 -0700
X-CSE-ConnectionGUID: lDmwCdEZQNekzHN6IN+2eQ==
X-CSE-MsgGUID: owSDpgrMTYuFNtsGNVI1ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37859462"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 57/65] drm/i915: pass dev_priv explicitly to PIPE_LINK_N2
Date: Tue,  4 Jun 2024 18:26:15 +0300
Message-Id: <5267c167414fb46a25277c1c9a802f6ccf8de3c9.1717514638.git.jani.nikula@intel.com>
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
explicitly to the PIPE_LINK_N2 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/i915_reg.h              | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 8 ++++----
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9df8e486a86e..952780028630 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2664,7 +2664,7 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 		      PIPE_DATA_M2(dev_priv, transcoder),
 		      PIPE_DATA_N2(dev_priv, transcoder),
 		      PIPE_LINK_M2(dev_priv, transcoder),
-		      PIPE_LINK_N2(transcoder));
+		      PIPE_LINK_N2(dev_priv, transcoder));
 }
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
@@ -3364,7 +3364,7 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 		      PIPE_DATA_M2(dev_priv, transcoder),
 		      PIPE_DATA_N2(dev_priv, transcoder),
 		      PIPE_LINK_M2(dev_priv, transcoder),
-		      PIPE_LINK_N2(transcoder));
+		      PIPE_LINK_N2(dev_priv, transcoder));
 }
 
 static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2a73ad779e26..70e549b38984 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2386,7 +2386,7 @@
 #define PIPE_LINK_M1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M1)
 #define PIPE_LINK_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
 #define PIPE_LINK_M2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M2)
-#define PIPE_LINK_N2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N2)
+#define PIPE_LINK_N2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N2)
 
 /* CPU panel fitter */
 /* IVB+ has 3 fitters, 0 is 7x5 capable, the other two only 3x3 */
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index d1a51ae042f1..955c9a33212a 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -273,7 +273,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_A));
-	MMIO_D(PIPE_LINK_N2(TRANSCODER_A));
+	MMIO_D(PIPE_LINK_N2(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_B));
@@ -281,7 +281,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_B));
-	MMIO_D(PIPE_LINK_N2(TRANSCODER_B));
+	MMIO_D(PIPE_LINK_N2(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_C));
@@ -289,7 +289,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_C));
-	MMIO_D(PIPE_LINK_N2(TRANSCODER_C));
+	MMIO_D(PIPE_LINK_N2(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_EDP));
@@ -297,7 +297,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_EDP));
-	MMIO_D(PIPE_LINK_N2(TRANSCODER_EDP));
+	MMIO_D(PIPE_LINK_N2(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PF_CTL(PIPE_A));
 	MMIO_D(PF_WIN_SZ(PIPE_A));
 	MMIO_D(PF_WIN_POS(PIPE_A));
-- 
2.39.2

