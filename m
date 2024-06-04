Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE03A8FB743
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:30:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0185210E512;
	Tue,  4 Jun 2024 15:30:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZaxOIgd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8655F10E50C
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515042; x=1749051042;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kKP74kU/TZsM/r13uaVZwnxXlfR5jHspg42L6ShvyVM=;
 b=VZaxOIgd/0ICG7sAhxrCFhrezG1z06ZtPF+vlWao7Hb6nZr6JoCNvNEK
 UxKy08EQ9Z8d7oH5+o/PhXFbVaQz+3zbdImEQA3dsd79ovuM2kdkPN0GC
 NpkyM9NxrbpF2XPgo/l/KNwCRtQPG+zUysZZZzJgtpuwcOBsr5nwWcC7y
 zeJNgqTTqdNYMtzXHPrHJSU2cxfTETDgJRNil0/q7OFDG+5SenUv+/QOh
 X9BBeH95lXbSlmVseleqfEzq2DqgVTxx6GsYTkqGY8vWUx6ZNZYJkq5yb
 7kJ7/ptZmdz6tPeOE0I7787CZKpONNpchEe31ri/u+T8svbbSXz5Q2IsU w==;
X-CSE-ConnectionGUID: AE9LApJ2S2uxfSIe7KzdKA==
X-CSE-MsgGUID: CQRWxyd3SoecYdPwuf56cw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13821778"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13821778"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:38 -0700
X-CSE-ConnectionGUID: hJx5JGpURKuZ6sscWfOD2Q==
X-CSE-MsgGUID: OaJfI0paQzKSS/S8+sgd3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37859364"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 52/65] drm/i915: pass dev_priv explicitly to PIPE_DATA_M2
Date: Tue,  4 Jun 2024 18:26:10 +0300
Message-Id: <1fda9b8cd446727845089844a1c8eeb5c8ae7b5a.1717514638.git.jani.nikula@intel.com>
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
explicitly to the PIPE_DATA_M2 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
 drivers/gpu/drm/i915/i915_reg.h              | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 8 ++++----
 3 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5eb4ad261c21..c2a2061a467d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2660,7 +2660,8 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 		return;
 
 	intel_set_m_n(dev_priv, m_n,
-		      PIPE_DATA_M2(transcoder), PIPE_DATA_N2(transcoder),
+		      PIPE_DATA_M2(dev_priv, transcoder),
+		      PIPE_DATA_N2(transcoder),
 		      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
 }
 
@@ -3357,7 +3358,8 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 		return;
 
 	intel_get_m_n(dev_priv, m_n,
-		      PIPE_DATA_M2(transcoder), PIPE_DATA_N2(transcoder),
+		      PIPE_DATA_M2(dev_priv, transcoder),
+		      PIPE_DATA_N2(transcoder),
 		      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 70c5fe687254..9c56df4c1f9f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2381,7 +2381,7 @@
 
 #define PIPE_DATA_M1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M1)
 #define PIPE_DATA_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N1)
-#define PIPE_DATA_M2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M2)
+#define PIPE_DATA_M2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M2)
 #define PIPE_DATA_N2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N2)
 #define PIPE_LINK_M1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M1)
 #define PIPE_LINK_N1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index b9ad4eec4740..4199106f7202 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -268,7 +268,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_A));
-	MMIO_D(PIPE_DATA_M2(TRANSCODER_A));
+	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_DATA_N2(TRANSCODER_A));
 	MMIO_D(PIPE_LINK_M1(TRANSCODER_A));
 	MMIO_D(PIPE_LINK_N1(TRANSCODER_A));
@@ -276,7 +276,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_A));
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_B));
-	MMIO_D(PIPE_DATA_M2(TRANSCODER_B));
+	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_DATA_N2(TRANSCODER_B));
 	MMIO_D(PIPE_LINK_M1(TRANSCODER_B));
 	MMIO_D(PIPE_LINK_N1(TRANSCODER_B));
@@ -284,7 +284,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_B));
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_C));
-	MMIO_D(PIPE_DATA_M2(TRANSCODER_C));
+	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_DATA_N2(TRANSCODER_C));
 	MMIO_D(PIPE_LINK_M1(TRANSCODER_C));
 	MMIO_D(PIPE_LINK_N1(TRANSCODER_C));
@@ -292,7 +292,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_C));
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_EDP));
-	MMIO_D(PIPE_DATA_M2(TRANSCODER_EDP));
+	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_N2(TRANSCODER_EDP));
 	MMIO_D(PIPE_LINK_M1(TRANSCODER_EDP));
 	MMIO_D(PIPE_LINK_N1(TRANSCODER_EDP));
-- 
2.39.2

