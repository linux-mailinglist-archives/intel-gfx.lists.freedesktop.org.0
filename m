Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 906A98B6F3A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:10:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC46910FA6B;
	Tue, 30 Apr 2024 10:10:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WL4NiF9K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA47C10FA6D
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471829; x=1746007829;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1UMU1UY9Zmy2zIimF/Fiq7jSB2UYLI1JwfeO6gEqotg=;
 b=WL4NiF9KIwwkiXiilCvGkL3T3/5HU7JoCuwHQACpNBgFGZa+lGc4stQq
 loyM3kJaXuEMY6v+47mGe3AQPcuF5WXujAkFmA45AMalJAGiPoZwDmsB9
 /K7GZ//Py4JKgL9Oo6apIECzfQTFWITN+EH/W77nxv6moLdsk0jogX7cx
 7Kcfl6G7tET5uanCpemOJtKn6t81Z3NOwRTrq66bjJ+DXQUlqMOSAhgQT
 4UYCDafwkDJWY9U7g5CHPUDC/JEe1q6xxMeHF08Jm6us1AzVPoRFhsDMP
 a7iMaw3VRuaVame2oyBlZJngrvJYEaPEtNm/LsteufakLwAE3wlmeV3Nr A==;
X-CSE-ConnectionGUID: z+j3lPtXTdmjSnk2kdpJ9g==
X-CSE-MsgGUID: DdCLX6ZDRSu25HJ2KedIfg==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="27619533"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="27619533"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:28 -0700
X-CSE-ConnectionGUID: RwOENeMuSqqJ/n7NHabPoA==
X-CSE-MsgGUID: cDYj91vOSeSbEYgyyg6QrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26424585"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 02/19] drm/i915: pass dev_priv explicitly to EDP_PSR_CTL
Date: Tue, 30 Apr 2024 13:09:56 +0300
Message-Id: <198858bc3925c02c0975670e3ebb5ce2084ac658.1714471597.git.jani.nikula@intel.com>
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
explicitly to the EDP_PSR_CTL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1cbd8c6714b1..57414a1375b1 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -269,7 +269,7 @@ static i915_reg_t psr_ctl_reg(struct drm_i915_private *dev_priv,
 			      enum transcoder cpu_transcoder)
 {
 	if (DISPLAY_VER(dev_priv) >= 8)
-		return EDP_PSR_CTL(cpu_transcoder);
+		return EDP_PSR_CTL(dev_priv, cpu_transcoder);
 	else
 		return HSW_SRD_CTL;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 0e0c71ea9fe3..d815f08aac2c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -23,7 +23,7 @@
 #define HSW_SRD_CTL				_MMIO(0x64800)
 #define _SRD_CTL_A				0x60800
 #define _SRD_CTL_EDP				0x6f800
-#define EDP_PSR_CTL(tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_CTL_A)
+#define EDP_PSR_CTL(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_CTL_A)
 #define   EDP_PSR_ENABLE			REG_BIT(31)
 #define   BDW_PSR_SINGLE_FRAME			REG_BIT(30)
 #define   EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK	REG_BIT(29) /* SW can't modify */
-- 
2.39.2

