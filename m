Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0072A7B4733
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Oct 2023 13:32:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E636910E1FA;
	Sun,  1 Oct 2023 11:32:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FF0110E1FA
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Oct 2023 11:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696159934; x=1727695934;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rxeBQOy+IsaHWnSDyPdF2YE6u5bOSwdmFRvon2k5dMQ=;
 b=H1HR6E80e0YfO/gLlyvuqhwOs4DdhTbQRizTSsLQjVnXbh4xDJb23+ar
 yAONg44v5qzQGvmlA+YuibSOoYV2KUottjcnkZI+aa5eGOE13iGFt8XVs
 s0Dpw/TPSBfeuA3Qgblj4mi7/mjfOZ7jcc/Q8NfV2VxHTmUkwk++Afi/e
 fNFdrICqJtmXDi3BLFtVW2WSAfgjmTasFVo11KUlsk5MFu+W3Vm/Hzo1q
 1qQYPfmXKpdh0ptxFWXTHA+8aLl8k4ykHgclzxTaCU1GAabPsqhRREut8
 2ywRAmiFB5HzddUIOutXXg96tvKF8i1laWHXAAz/E+StCz6ozM/w7QejO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="386386660"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="386386660"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 04:32:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="753804726"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="753804726"
Received: from catjim-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.249.34.14])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 04:32:10 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  1 Oct 2023 14:31:53 +0300
Message-Id: <20231001113155.80659-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231001113155.80659-1-vinod.govindapillai@intel.com>
References: <20231001113155.80659-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 1/3] drm/i915/xe2lpd: display capability
 register definitions
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

Register definitions to track the reported scalable display
feature configurations

Bspec: 71161
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e0ea2dc13556..dc70c1777345 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4678,6 +4678,13 @@
 #define   TGL_DFSM_PIPE_D_DISABLE	(1 << 22)
 #define   GLK_DFSM_DISPLAY_DSC_DISABLE	(1 << 7)
 
+#define XE2LPD_DE_CAP			_MMIO(0x41100)
+#define   XE2LPD_DE_CAP_3DLUT_MASK	REG_GENMASK(31, 30)
+#define   XE2LPD_DE_CAP_DSC_MASK	REG_GENMASK(29, 28)
+#define   XE2LPD_DE_CAP_DSC_REMOVED	1
+#define   XE2LPD_DE_CAP_SCALER_MASK	REG_GENMASK(27, 26)
+#define   XE2LPD_DE_CAP_SCALER_SINGLE	1
+
 #define SKL_DSSM				_MMIO(0x51004)
 #define ICL_DSSM_CDCLK_PLL_REFCLK_MASK		(7 << 29)
 #define ICL_DSSM_CDCLK_PLL_REFCLK_24MHz		(0 << 29)
-- 
2.34.1

