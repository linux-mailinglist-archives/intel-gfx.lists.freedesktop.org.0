Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 526978FB749
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B8DB10E501;
	Tue,  4 Jun 2024 15:30:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gSI5iXdL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27DED10E501
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515052; x=1749051052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QhBqBmiuBtmftC+DeMDPIYg7PB+Xt1tkKmRW2QdSkNg=;
 b=gSI5iXdLvWkxFgmEgvUVf+Mh8c0/mkl6GRxIWGkMYemTf9c8d54uk6mc
 Q2J2JaHvF7Ki5uxx6GPauxJiZGWfT00lLsqx5x/5otSEp3GWWOqM6nedM
 tAa5AGMRyaAu+V+b10eG+3j7wtxqq5jtdi9F6l4LID/trLaCiX3rikyyU
 1KeWAb4M4apvrvyidNwVvrAelmVn/4HqzGpMrjwa+4DkqJvOih2ftoLg7
 3RBy51XgREemfLdTnKrW00M6RjDcSoPlj1It452lfEuErpzudmWTMthn9
 rKtWqa78eQX/59wMXZs/bmNxSmX6xVCs/1kD1pd3mrjE8nytaNZzbzlAJ Q==;
X-CSE-ConnectionGUID: DHHVVsUgT6an5xy8mdPZbA==
X-CSE-MsgGUID: UzuHw/TYS2u9kY+4p1T+lg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13821856"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13821856"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:42 -0700
X-CSE-ConnectionGUID: 97xhBU2aQCyaLO3gD9mPpQ==
X-CSE-MsgGUID: wNrxDHgWRF6+hKyEin1gDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37859390"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 53/65] drm/i915: pass dev_priv explicitly to PIPE_DATA_N2
Date: Tue,  4 Jun 2024 18:26:11 +0300
Message-Id: <6eeb0c74d6e566f04a193b2a3f1272e58df66f20.1717514638.git.jani.nikula@intel.com>
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
explicitly to the PIPE_DATA_N2 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/i915_reg.h              | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 8 ++++----
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c2a2061a467d..7bf5b2559143 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2661,7 +2661,7 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 
 	intel_set_m_n(dev_priv, m_n,
 		      PIPE_DATA_M2(dev_priv, transcoder),
-		      PIPE_DATA_N2(transcoder),
+		      PIPE_DATA_N2(dev_priv, transcoder),
 		      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
 }
 
@@ -3359,7 +3359,7 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 
 	intel_get_m_n(dev_priv, m_n,
 		      PIPE_DATA_M2(dev_priv, transcoder),
-		      PIPE_DATA_N2(transcoder),
+		      PIPE_DATA_N2(dev_priv, transcoder),
 		      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9c56df4c1f9f..465d73ef43e2 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2382,7 +2382,7 @@
 #define PIPE_DATA_M1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M1)
 #define PIPE_DATA_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N1)
 #define PIPE_DATA_M2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M2)
-#define PIPE_DATA_N2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N2)
+#define PIPE_DATA_N2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N2)
 #define PIPE_LINK_M1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M1)
 #define PIPE_LINK_N1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
 #define PIPE_LINK_M2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M2)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 4199106f7202..829196c665c6 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -269,7 +269,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_A));
-	MMIO_D(PIPE_DATA_N2(TRANSCODER_A));
+	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_LINK_M1(TRANSCODER_A));
 	MMIO_D(PIPE_LINK_N1(TRANSCODER_A));
 	MMIO_D(PIPE_LINK_M2(TRANSCODER_A));
@@ -277,7 +277,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_B));
-	MMIO_D(PIPE_DATA_N2(TRANSCODER_B));
+	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_LINK_M1(TRANSCODER_B));
 	MMIO_D(PIPE_LINK_N1(TRANSCODER_B));
 	MMIO_D(PIPE_LINK_M2(TRANSCODER_B));
@@ -285,7 +285,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_C));
-	MMIO_D(PIPE_DATA_N2(TRANSCODER_C));
+	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_LINK_M1(TRANSCODER_C));
 	MMIO_D(PIPE_LINK_N1(TRANSCODER_C));
 	MMIO_D(PIPE_LINK_M2(TRANSCODER_C));
@@ -293,7 +293,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_EDP));
-	MMIO_D(PIPE_DATA_N2(TRANSCODER_EDP));
+	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_LINK_M1(TRANSCODER_EDP));
 	MMIO_D(PIPE_LINK_N1(TRANSCODER_EDP));
 	MMIO_D(PIPE_LINK_M2(TRANSCODER_EDP));
-- 
2.39.2

