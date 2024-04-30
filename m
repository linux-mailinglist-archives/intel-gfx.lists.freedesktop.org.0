Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A44058B6F3B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:10:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01CE010FAA0;
	Tue, 30 Apr 2024 10:10:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mgoEcTgt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9B7D10FACC
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471833; x=1746007833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=74f2GNg4/QisqvR9yEcI8BU5kgXeoK64QaLXxLpKkYo=;
 b=mgoEcTgtOb/CIbrucv3iAnC6uK7KGSXVKkwQmQ2IZsPZwpjm83tV4THj
 1CKcrMBLGqddpwayTh+O/7F/R4+ffv8KxJ2ZtH3+yMCd0Gq5Lgwsbl3Z3
 q80q6KF2W/wOKNUiG+2bN3oLB+DW4KSdWZ/1W2AS3BalsPOCDnp8TwZQb
 IVx+Ol3/DwHup4sWHz0itF0i/SPc5eGl50mdCukkxkt7gHUza+JlgMQ/F
 vjkKJnLOGRzscCQ5Thj7f1x3sJOjEqcoRzE6DqZKrIJIQSEhJUcgQB6MI
 AqeCzdM9t0gWf1cXiq/Pf2mhN6c3sxFi+GRg/MN8OH+X6Wi8fzEi/4mT2 g==;
X-CSE-ConnectionGUID: 8PVygDxWTMidVYUhOV5aRg==
X-CSE-MsgGUID: ObUMDj0wRDSZDljctFh21Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="10003475"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="10003475"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:33 -0700
X-CSE-ConnectionGUID: yNcHypodTeWshvg/ZlOhGw==
X-CSE-MsgGUID: yXJLusTuRCCoqWerwW/RiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="30871217"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 03/19] drm/i915: pass dev_priv explicitly to TRANS_PSR_IMR
Date: Tue, 30 Apr 2024 13:09:57 +0300
Message-Id: <09e9c11ffb669dac901c2416462a8f3dabc86020.1714471597.git.jani.nikula@intel.com>
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
explicitly to the TRANS_PSR_IMR register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 4 +++-
 drivers/gpu/drm/i915/display/intel_psr.c         | 2 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h    | 2 +-
 3 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index c337e0597541..a9bcf249e925 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1455,7 +1455,9 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 			if (!intel_display_power_is_enabled(dev_priv, domain))
 				continue;
 
-			intel_uncore_write(uncore, TRANS_PSR_IMR(trans), 0xffffffff);
+			intel_uncore_write(uncore,
+				           TRANS_PSR_IMR(dev_priv, trans),
+				           0xffffffff);
 			intel_uncore_write(uncore, TRANS_PSR_IIR(trans), 0xffffffff);
 		}
 	} else {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 57414a1375b1..12b541e8bbf9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -305,7 +305,7 @@ static i915_reg_t psr_imr_reg(struct drm_i915_private *dev_priv,
 			      enum transcoder cpu_transcoder)
 {
 	if (DISPLAY_VER(dev_priv) >= 12)
-		return TRANS_PSR_IMR(cpu_transcoder);
+		return TRANS_PSR_IMR(dev_priv, cpu_transcoder);
 	else
 		return EDP_PSR_IMR;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index d815f08aac2c..40dc6ee7ec1d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -66,7 +66,7 @@
 #define EDP_PSR_IIR				_MMIO(0x64838)
 #define _PSR_IMR_A				0x60814
 #define _PSR_IIR_A				0x60818
-#define TRANS_PSR_IMR(tran)			_MMIO_TRANS2(dev_priv, tran, _PSR_IMR_A)
+#define TRANS_PSR_IMR(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _PSR_IMR_A)
 #define TRANS_PSR_IIR(tran)			_MMIO_TRANS2(dev_priv, tran, _PSR_IIR_A)
 #define   _EDP_PSR_TRANS_SHIFT(trans)		((trans) == TRANSCODER_EDP ? \
 						 0 : ((trans) - TRANSCODER_A + 1) * 8)
-- 
2.39.2

