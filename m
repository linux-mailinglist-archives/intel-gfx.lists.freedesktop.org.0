Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC39E8B6F3D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:10:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A71010FA6D;
	Tue, 30 Apr 2024 10:10:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R68wTSDC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D6DB10FA6D
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471843; x=1746007843;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TEQekyIIk8GaxcvZN+9stREBLt1iGDJTBsPp9XUlXfc=;
 b=R68wTSDCcuPmqb2NPDvn2Ha9/2Okt0BYjkkStqfVce5RFqGdef5zn69Q
 jeYoRzzOYaI+j6MzAgIRVEY+QECkdQFwcCrSsYkkJKrWqAxFUD8SZFTuh
 IQr6y6QDLS27uJ+/ocRMqkknZVWDfZTmeZKJ40xeL9jleLW1mlhnhsyso
 6tOZ4dXEzSa6yrTVXTrW8z7upuk+RGo7JoGibUXaERSf0FkDyVVEbwTe5
 ySq7dDhVEi+C02Ijp6kdU+P5NtsN4i7zrc8RisCtUY6su2XwkJhO1Duwa
 VmWmJ66s3yXarB74bC0gOVp2TlkHfBkduwAgMZ8u+j98zurmn18y7v9Qv w==;
X-CSE-ConnectionGUID: 1iX+N0P1RpuVnZwGtAawIg==
X-CSE-MsgGUID: N+rz57owTv2q0oaemBTk4w==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="27619569"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="27619569"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:42 -0700
X-CSE-ConnectionGUID: RuliYIiHRFuaJVPKTNsAhA==
X-CSE-MsgGUID: tr+qJ2COTT67+t9ZpX/yuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26424669"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 05/19] drm/i915: pass dev_priv explicitly to EDP_PSR_AUX_CTL
Date: Tue, 30 Apr 2024 13:09:59 +0300
Message-Id: <66ec1f81be49c87cd9613ba052ce6fd50362d0e0.1714471597.git.jani.nikula@intel.com>
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
explicitly to the EDP_PSR_AUX_CTL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 0b1f7e62470e..daeb1b65a2e5 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -323,7 +323,7 @@ static i915_reg_t psr_aux_ctl_reg(struct drm_i915_private *dev_priv,
 				  enum transcoder cpu_transcoder)
 {
 	if (DISPLAY_VER(dev_priv) >= 8)
-		return EDP_PSR_AUX_CTL(cpu_transcoder);
+		return EDP_PSR_AUX_CTL(dev_priv, cpu_transcoder);
 	else
 		return HSW_SRD_AUX_CTL;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 5fd4f875ade0..a4f785bcf605 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -86,7 +86,7 @@
 #define HSW_SRD_AUX_CTL				_MMIO(0x64810)
 #define _SRD_AUX_CTL_A				0x60810
 #define _SRD_AUX_CTL_EDP			0x6f810
-#define EDP_PSR_AUX_CTL(tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_AUX_CTL_A)
+#define EDP_PSR_AUX_CTL(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_AUX_CTL_A)
 #define   EDP_PSR_AUX_CTL_TIME_OUT_MASK		DP_AUX_CH_CTL_TIME_OUT_MASK
 #define   EDP_PSR_AUX_CTL_MESSAGE_SIZE_MASK	DP_AUX_CH_CTL_MESSAGE_SIZE_MASK
 #define   EDP_PSR_AUX_CTL_PRECHARGE_2US_MASK	DP_AUX_CH_CTL_PRECHARGE_2US_MASK
-- 
2.39.2

