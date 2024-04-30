Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D91D48B6F41
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:10:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 230E510FACC;
	Tue, 30 Apr 2024 10:10:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FUYGEMN/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1539810FACC
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471855; x=1746007855;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EFAmwouk+JXqG7hfbe16qlSeSllGjceBB1hXV0rek9k=;
 b=FUYGEMN/1KJb2/UE68P3muQTcVUCNKe3xwjUrZ5bSizRMnzP6ozeiDqv
 Lcx0ixVwOJgpKH+UpVTu6pIq6oTfqOlbvfNAqZa9gHCMS0/gL8g3A+Vkr
 f2A/QoXyWpwOwFQVGjz6ZKpYODASUVwaw1l5xYRBv2ETxY6bT6YS8vXfQ
 bUBlsY8Xd1/HC32MBcw5CO8yVE4mrMt9jueDckATXLWuy2ISHsmQGGCdN
 Iy0/AjsSc5g2iH7DFBLIOYHVZbzqNaevf1yQQn3uweZkZ8o1eRnczcAHW
 xGomb7HhZZh4mvPdXmrIC4I2uqNSAbmnJOcSLrox0yNpnL/sJTXSuv7iI Q==;
X-CSE-ConnectionGUID: Qx24aEQhQpaBlJEbUqjhBg==
X-CSE-MsgGUID: fOydDSVmRj+ry0+lQmlCqA==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="27619591"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="27619591"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:55 -0700
X-CSE-ConnectionGUID: AsA0KCvfTkq5eDl5PXjVkw==
X-CSE-MsgGUID: hvRa6ww9RSuShBLCXNd75A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26424770"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 08/19] drm/i915: pass dev_priv explicitly to EDP_PSR_PERF_CNT
Date: Tue, 30 Apr 2024 13:10:02 +0300
Message-Id: <21805960967ab88c1418037b98fe3e051eb00608.1714471597.git.jani.nikula@intel.com>
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
explicitly to the EDP_PSR_PERF_CNT register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1a52a69e1906..162dd07c243f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -287,7 +287,7 @@ static i915_reg_t psr_perf_cnt_reg(struct drm_i915_private *dev_priv,
 				   enum transcoder cpu_transcoder)
 {
 	if (DISPLAY_VER(dev_priv) >= 8)
-		return EDP_PSR_PERF_CNT(cpu_transcoder);
+		return EDP_PSR_PERF_CNT(dev_priv, cpu_transcoder);
 	else
 		return HSW_SRD_PERF_CNT;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 4f3e58076a48..ef7f32c98d55 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -126,7 +126,7 @@
 #define HSW_SRD_PERF_CNT		_MMIO(0x64844)
 #define _SRD_PERF_CNT_A			0x60844
 #define _SRD_PERF_CNT_EDP		0x6f844
-#define EDP_PSR_PERF_CNT(tran)		_MMIO_TRANS2(dev_priv, tran, _SRD_PERF_CNT_A)
+#define EDP_PSR_PERF_CNT(dev_priv, tran)		_MMIO_TRANS2(dev_priv, tran, _SRD_PERF_CNT_A)
 #define   EDP_PSR_PERF_CNT_MASK		REG_GENMASK(23, 0)
 
 /* PSR_MASK on SKL+ */
-- 
2.39.2

