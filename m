Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE038B6F3C
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:10:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3566210FA08;
	Tue, 30 Apr 2024 10:10:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kH4zFY1C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBEE910FA6D
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471838; x=1746007838;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t5IdFQcTtDURJjJOFj9/xsBWhy2CmSGfyMFad2mlyes=;
 b=kH4zFY1COfmXcMRYTA9+yt9eiIP4ZTBt8ehheO7LOA1DMHHlZBvpCIi3
 2UsK7hs/JFv5Trhs1FYI/v3jOx8/tFabZV1dPec++GL9/14L+nakgrbwJ
 yazt7dOKkEIsMa1EVxkR4fg7iSnJ2p587X0ZcC4Y5EykGVAuMBI8mehb/
 D74nAY16P3jEDhtzAAufXwoX8wvw1p5CaBRSBwNEhDCUksDvnnkJsRPli
 LIJNeBxNHV0OZNNzNwvFd0q7U8GUFj2PMF0KlLK+5IQdVPn4Z2c0Ssvig
 ZSxvuQStrdOtJLqMaf5OZ7K1OEsAKyAWTzWDeOj2QOtZCBUyKV17IIWV1 w==;
X-CSE-ConnectionGUID: zcYQ7NQXTQmJsCY4y/NLrQ==
X-CSE-MsgGUID: 1o1wgpRkQ+ShMUGvWoooHQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="10003481"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="10003481"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:38 -0700
X-CSE-ConnectionGUID: roAWZJXoTUOIVl7KHfC0ww==
X-CSE-MsgGUID: gOI5k8gTQsGw8tNrWkRRyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="30871246"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 04/19] drm/i915: pass dev_priv explicitly to TRANS_PSR_IIR
Date: Tue, 30 Apr 2024 13:09:58 +0300
Message-Id: <3a03109d11e7f55a456c3e5ef28d3ffa69582d3d.1714471597.git.jani.nikula@intel.com>
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
explicitly to the TRANS_PSR_IIR register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 10 +++++++---
 drivers/gpu/drm/i915/display/intel_psr.c         |  2 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h    |  2 +-
 3 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index a9bcf249e925..c41f058acaff 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -876,7 +876,8 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 			if (DISPLAY_VER(dev_priv) >= 12)
-				iir_reg = TRANS_PSR_IIR(intel_dp->psr.transcoder);
+				iir_reg = TRANS_PSR_IIR(dev_priv,
+						        intel_dp->psr.transcoder);
 			else
 				iir_reg = EDP_PSR_IIR;
 
@@ -1458,7 +1459,9 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 			intel_uncore_write(uncore,
 				           TRANS_PSR_IMR(dev_priv, trans),
 				           0xffffffff);
-			intel_uncore_write(uncore, TRANS_PSR_IIR(trans), 0xffffffff);
+			intel_uncore_write(uncore,
+				           TRANS_PSR_IIR(dev_priv, trans),
+				           0xffffffff);
 		}
 	} else {
 		intel_uncore_write(uncore, EDP_PSR_IMR, 0xffffffff);
@@ -1690,7 +1693,8 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 			if (!intel_display_power_is_enabled(dev_priv, domain))
 				continue;
 
-			gen3_assert_iir_is_zero(uncore, TRANS_PSR_IIR(trans));
+			gen3_assert_iir_is_zero(uncore,
+						TRANS_PSR_IIR(dev_priv, trans));
 		}
 	} else {
 		gen3_assert_iir_is_zero(uncore, EDP_PSR_IIR);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 12b541e8bbf9..0b1f7e62470e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -314,7 +314,7 @@ static i915_reg_t psr_iir_reg(struct drm_i915_private *dev_priv,
 			      enum transcoder cpu_transcoder)
 {
 	if (DISPLAY_VER(dev_priv) >= 12)
-		return TRANS_PSR_IIR(cpu_transcoder);
+		return TRANS_PSR_IIR(dev_priv, cpu_transcoder);
 	else
 		return EDP_PSR_IIR;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 40dc6ee7ec1d..5fd4f875ade0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -67,7 +67,7 @@
 #define _PSR_IMR_A				0x60814
 #define _PSR_IIR_A				0x60818
 #define TRANS_PSR_IMR(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _PSR_IMR_A)
-#define TRANS_PSR_IIR(tran)			_MMIO_TRANS2(dev_priv, tran, _PSR_IIR_A)
+#define TRANS_PSR_IIR(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _PSR_IIR_A)
 #define   _EDP_PSR_TRANS_SHIFT(trans)		((trans) == TRANSCODER_EDP ? \
 						 0 : ((trans) - TRANSCODER_A + 1) * 8)
 #define   TGL_PSR_MASK			REG_GENMASK(2, 0)
-- 
2.39.2

