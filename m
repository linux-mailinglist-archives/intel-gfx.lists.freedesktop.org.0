Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1828B5ACC
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 16:02:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07C0310E703;
	Mon, 29 Apr 2024 14:02:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kYFJQ+Nl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C33310E18A
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 14:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714399362; x=1745935362;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sFioxHfnW+vk186XVm/YmMDrpK02LG83W6BSb8QmeK4=;
 b=kYFJQ+NlhZOr8SrisifJeheeF1QOlM/3BJza7yT7pVkAPAr8S2VJ0hNX
 32iu4C7hRfs2HSnhDf0YbjgVNZRDgtRqOnz4LKXDHRYVSHKmePMNvN2uo
 mQYtzB8UsWV8gHPF1T6b7PLEaH7fCq1NqNgef7FtMVtLQzRIMek2dIz6B
 5bYScnvSzGiNNOeXlriNryZawDC5NGkLp6XC42A/RzDXqNwu00rnVr6XR
 TB8t9WPPMTFIxaIrM73+fEBLcCCiXrEDmlKYHqBV9suxLI+WtAE6X6Cf5
 QZKU9iRBkoG6nNEeeLSpmHOjB+pdBliiaMPgy1qYb2/1r06hAd8ynZr4s w==;
X-CSE-ConnectionGUID: YbJh20N0Tjq+LXm+W38oBg==
X-CSE-MsgGUID: CSTciAPpSE6LH0wywo4KWg==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="32563332"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="32563332"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:02:42 -0700
X-CSE-ConnectionGUID: TVUiEHdzQpCG6YSxtxL/YQ==
X-CSE-MsgGUID: xGVB3+J5RQO9fpdC5omS3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="63599051"
Received: from aantonov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:02:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 3/7] drm/i915: pass dev_priv explicitly to PIPE_WGC_C02
Date: Mon, 29 Apr 2024 17:02:17 +0300
Message-Id: <550d4e787445802236f0bf89e4d2f4f32cbd6d75.1714399071.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714399071.git.jani.nikula@intel.com>
References: <cover.1714399071.git.jani.nikula@intel.com>
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
explicitly to the PIPE_WGC_C02 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_color_regs.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index cdcf8e796335..f96d6af028b6 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -618,7 +618,7 @@ static void vlv_load_wgc_csc(struct intel_crtc *crtc,
 
 	intel_de_write_fw(dev_priv, PIPE_WGC_C01_C00(dev_priv, pipe),
 			  csc->coeff[1] << 16 | csc->coeff[0]);
-	intel_de_write_fw(dev_priv, PIPE_WGC_C02(pipe),
+	intel_de_write_fw(dev_priv, PIPE_WGC_C02(dev_priv, pipe),
 			  csc->coeff[2]);
 
 	intel_de_write_fw(dev_priv, PIPE_WGC_C11_C10(pipe),
@@ -643,7 +643,7 @@ static void vlv_read_wgc_csc(struct intel_crtc *crtc,
 	csc->coeff[0] = tmp & 0xffff;
 	csc->coeff[1] = tmp >> 16;
 
-	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C02(pipe));
+	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C02(dev_priv, pipe));
 	csc->coeff[2] = tmp & 0xffff;
 
 	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C11_C10(pipe));
diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
index 57438989f469..741c0b8592d9 100644
--- a/drivers/gpu/drm/i915/display/intel_color_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
@@ -257,7 +257,7 @@
 #define _PIPE_A_WGC_C22		0x600C4 /* s2.10 */
 
 #define PIPE_WGC_C01_C00(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C01_C00)
-#define PIPE_WGC_C02(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C02)
+#define PIPE_WGC_C02(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C02)
 #define PIPE_WGC_C11_C10(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C11_C10)
 #define PIPE_WGC_C12(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C12)
 #define PIPE_WGC_C21_C20(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C21_C20)
-- 
2.39.2

