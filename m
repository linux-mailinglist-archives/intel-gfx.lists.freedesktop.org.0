Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BADD28B5ACF
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 16:02:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1962310EC92;
	Mon, 29 Apr 2024 14:02:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bwXZ75yz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2B6E10EC92
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 14:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714399375; x=1745935375;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T2Tl8v+CCAyjvJ5tG5JxxK2lj2WAQbqwNMSvML4nqoM=;
 b=bwXZ75yz2oOEb6MJuFlHSjudi4R3ElZQfwX2+HMneA6pfjh51I5zGnOR
 BX5B0hCKmCcnYqRsBv4pWwBNLvq+Elfxdp5rvRVmnLqXjwHI/Db4vUd3U
 VLMXLZLLJc1b9oVac57jQZXy+G4fLI94AJGHV3VPTQifAQQ09WO1w0rB1
 gZwSLSymrVMoLVneRJQ7IcdMyqa/kieB6zzI/vJ33weuZK5ZzQHlbFpt8
 iJW0egkJGcvh9sn8QdV3QLLQnxSiwMWEQGvYI0iDBlO7uSz/mffnzVZKL
 XYPTShQpOnzSULED09chMRmh45u0XFSyoFKV0ONxEUGlaSYhqy4h9CPgI Q==;
X-CSE-ConnectionGUID: ipkIHBKpSz+ExWfUb/FqJQ==
X-CSE-MsgGUID: b7v/GHoNT/+RwHGG5qlW9A==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="27578367"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="27578367"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:02:54 -0700
X-CSE-ConnectionGUID: CRtXOVJ/QnmyYMbLj4XU3g==
X-CSE-MsgGUID: ypE8vBF8SWmmX+3P8LSxGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="30950587"
Received: from aantonov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:02:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 6/7] drm/i915: pass dev_priv explicitly to PIPE_WGC_C21_C20
Date: Mon, 29 Apr 2024 17:02:20 +0300
Message-Id: <af39047d304f8a5c3c7a643f702f66c06ea5d638.1714399071.git.jani.nikula@intel.com>
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
explicitly to the PIPE_WGC_C21_C20 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_color_regs.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index a4935289729d..fc27c1bda676 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -626,7 +626,7 @@ static void vlv_load_wgc_csc(struct intel_crtc *crtc,
 	intel_de_write_fw(dev_priv, PIPE_WGC_C12(dev_priv, pipe),
 			  csc->coeff[5]);
 
-	intel_de_write_fw(dev_priv, PIPE_WGC_C21_C20(pipe),
+	intel_de_write_fw(dev_priv, PIPE_WGC_C21_C20(dev_priv, pipe),
 			  csc->coeff[7] << 16 | csc->coeff[6]);
 	intel_de_write_fw(dev_priv, PIPE_WGC_C22(pipe),
 			  csc->coeff[8]);
@@ -653,7 +653,7 @@ static void vlv_read_wgc_csc(struct intel_crtc *crtc,
 	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C12(dev_priv, pipe));
 	csc->coeff[5] = tmp & 0xffff;
 
-	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C21_C20(pipe));
+	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C21_C20(dev_priv, pipe));
 	csc->coeff[6] = tmp & 0xffff;
 	csc->coeff[7] = tmp >> 16;
 
diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
index 2dc876e10eda..c2e06ccf96c4 100644
--- a/drivers/gpu/drm/i915/display/intel_color_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
@@ -260,7 +260,7 @@
 #define PIPE_WGC_C02(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C02)
 #define PIPE_WGC_C11_C10(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C11_C10)
 #define PIPE_WGC_C12(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C12)
-#define PIPE_WGC_C21_C20(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C21_C20)
+#define PIPE_WGC_C21_C20(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C21_C20)
 #define PIPE_WGC_C22(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C22)
 
 /* pipe CSC & degamma/gamma LUTs on CHV */
-- 
2.39.2

