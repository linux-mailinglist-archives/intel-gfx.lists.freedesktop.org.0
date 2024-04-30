Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 042D08B6F3F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:10:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6136A10FABE;
	Tue, 30 Apr 2024 10:10:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ESf+26i7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 479AF10FABE
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471847; x=1746007847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OfMz7A1mAxaZD7E7Bu7bYutslpPBR/NrkQKTKf8DQkY=;
 b=ESf+26i7rjDVbj8PQdZ5S4U/NOAaGu7vFYXFuyu7z7W5CcYdNit1XC9s
 0PVLwDrGFGphlWNsoa1Wg0AbpBAf4O6XpM94ChAa+urzDrYrulS/Ombd9
 c7/mB2mO5Qq2t24JYmaf/SrNLv3y73Iyqm1eJBVOF6URr4lZ5YAgCmVhH
 euoW04mkJ3j3K2inNnML7Nt0+sjPAoYkboIep1tXlSGHCWt+j/KIBEOge
 w5g2K9jxD4Q1OVHjLk5uXhitHx8d6L5qTB6ZVQfO+mydGVEacECdNUz3m
 LW2KnSxQcYAKqolYCxtlSqpM6QfX/TGKy2vLeStAZc+HBQgzWYS6yiAgH Q==;
X-CSE-ConnectionGUID: eBYY0nnMRg+rWJl6iu19Mw==
X-CSE-MsgGUID: WhYCQJ46Scyp+91tUWr2mQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="27619573"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="27619573"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:46 -0700
X-CSE-ConnectionGUID: IKuim9bLQ2SxjGDSbapQEw==
X-CSE-MsgGUID: XCQO3znOQG2YIH5seyYPAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26424697"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 06/19] drm/i915: pass dev_priv explicitly to EDP_PSR_AUX_DATA
Date: Tue, 30 Apr 2024 13:10:00 +0300
Message-Id: <4e3dc15b170c2b64168e46ebf1802d63df34b4a2.1714471597.git.jani.nikula@intel.com>
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
explicitly to the EDP_PSR_AUX_DATA register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index daeb1b65a2e5..5fe9feddc0e0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -332,7 +332,7 @@ static i915_reg_t psr_aux_data_reg(struct drm_i915_private *dev_priv,
 				   enum transcoder cpu_transcoder, int i)
 {
 	if (DISPLAY_VER(dev_priv) >= 8)
-		return EDP_PSR_AUX_DATA(cpu_transcoder, i);
+		return EDP_PSR_AUX_DATA(dev_priv, cpu_transcoder, i);
 	else
 		return HSW_SRD_AUX_DATA(i);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index a4f785bcf605..6a6d7de901bc 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -96,7 +96,7 @@
 #define HSW_SRD_AUX_DATA(i)			_MMIO(0x64814 + (i) * 4) /* 5 registers */
 #define _SRD_AUX_DATA_A				0x60814
 #define _SRD_AUX_DATA_EDP			0x6f814
-#define EDP_PSR_AUX_DATA(tran, i)		_MMIO_TRANS2(dev_priv, tran, _SRD_AUX_DATA_A + (i) * 4) /* 5 registers */
+#define EDP_PSR_AUX_DATA(dev_priv, tran, i)		_MMIO_TRANS2(dev_priv, tran, _SRD_AUX_DATA_A + (i) * 4) /* 5 registers */
 
 #define HSW_SRD_STATUS				_MMIO(0x64840)
 #define _SRD_STATUS_A				0x60840
-- 
2.39.2

