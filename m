Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0031C8FB753
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:31:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 023F010E521;
	Tue,  4 Jun 2024 15:31:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BWKYvovY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D509310E518
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515081; x=1749051081;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9Hbpktk7SJ6T97n0XZzemsOxFfw9TTKAA9Svd8kJ0zw=;
 b=BWKYvovYTJTvwh3dfstZZ1K6f9L6vKGDNdYOqUglWQ+W91cqt5c2mWr9
 dfqwe8CEv0YeVx3t5aWHdA5caz09DDl5R28PIepwCDNFTNb3L3BHet9jd
 3h1/IFk67l+7DU9DhoxT6Mb7tgHusmdnvEsh9vxB8M6E2rnfW/EjMo0yS
 nCNJH7jLNJiNVowOOOLEHwkewepNo5ZVe9HoyYqn4pVxervlFhaF58834
 ppkxMOppOnDe5ziydoroGZKzcmIJnskL0ZQYFtjVEpqFpoQw96OzYK+7O
 f2+E1SvzRiYfroGnmRKgYdUSyck90joZJYdtZaAOpIZMKbWljFDZWkYzY Q==;
X-CSE-ConnectionGUID: HCuqcaoURRGF4Hw2u/h+hg==
X-CSE-MsgGUID: mdJ8CN4gS02ryplmvX+vPA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13822129"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13822129"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:55 -0700
X-CSE-ConnectionGUID: lUiSfvWoS7WrNJZ07rPIlA==
X-CSE-MsgGUID: OEZCGDiRQVasPFdSECYFrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37859457"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 56/65] drm/i915: pass dev_priv explicitly to PIPE_LINK_M2
Date: Tue,  4 Jun 2024 18:26:14 +0300
Message-Id: <31337adcaca1333724600b0afe6e3880f0948d5e.1717514638.git.jani.nikula@intel.com>
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
explicitly to the PIPE_LINK_M2 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
 drivers/gpu/drm/i915/i915_reg.h              | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 8 ++++----
 3 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index eef317984564..9df8e486a86e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2663,7 +2663,8 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 	intel_set_m_n(dev_priv, m_n,
 		      PIPE_DATA_M2(dev_priv, transcoder),
 		      PIPE_DATA_N2(dev_priv, transcoder),
-		      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
+		      PIPE_LINK_M2(dev_priv, transcoder),
+		      PIPE_LINK_N2(transcoder));
 }
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
@@ -3362,7 +3363,8 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 	intel_get_m_n(dev_priv, m_n,
 		      PIPE_DATA_M2(dev_priv, transcoder),
 		      PIPE_DATA_N2(dev_priv, transcoder),
-		      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
+		      PIPE_LINK_M2(dev_priv, transcoder),
+		      PIPE_LINK_N2(transcoder));
 }
 
 static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index ac9ef4bd176e..2a73ad779e26 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2385,7 +2385,7 @@
 #define PIPE_DATA_N2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N2)
 #define PIPE_LINK_M1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M1)
 #define PIPE_LINK_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
-#define PIPE_LINK_M2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M2)
+#define PIPE_LINK_M2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M2)
 #define PIPE_LINK_N2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N2)
 
 /* CPU panel fitter */
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 00ce7147a9b6..d1a51ae042f1 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -272,7 +272,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_A));
-	MMIO_D(PIPE_LINK_M2(TRANSCODER_A));
+	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_A));
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_B));
@@ -280,7 +280,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_B));
-	MMIO_D(PIPE_LINK_M2(TRANSCODER_B));
+	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_B));
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_C));
@@ -288,7 +288,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_C));
-	MMIO_D(PIPE_LINK_M2(TRANSCODER_C));
+	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_C));
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_EDP));
@@ -296,7 +296,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_EDP));
-	MMIO_D(PIPE_LINK_M2(TRANSCODER_EDP));
+	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_EDP));
 	MMIO_D(PF_CTL(PIPE_A));
 	MMIO_D(PF_WIN_SZ(PIPE_A));
-- 
2.39.2

