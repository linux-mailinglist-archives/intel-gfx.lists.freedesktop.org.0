Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B43A8B5ACB
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 16:02:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE4D610E18A;
	Mon, 29 Apr 2024 14:02:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VniaiEHd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5314D10E18A
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 14:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714399361; x=1745935361;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J7ovakKZI7/IeBOcZPOMsrOa/77b6wjDLhrQAxCRsBc=;
 b=VniaiEHdx18dQ/z039qWflbMRrzWmJqfBeiHijaWEnC4HB1Q+ZeO41HA
 vMRFwYJU/A7glKt2ns7GCAm519kAHZpwZ88+wFhU8IcxHH6xHidzbNOLt
 d6oT1mEDYlAJgIGk3tv7xfqAnoNKPSL2huOIX1bnywgU3UecK12StO5l7
 REznki85IRhBP/i2kkVm3Vuxuuxr6A2dd9k0OWYNui+VuDEtXdoTobSdK
 +Fvk9mfnkEa2t7xAr0Q4wBWrE36u/8l/iW8zWBWapAUxjx0xH4FOzSBP+
 VQUuenM1UUMfqfK83aVe5Ug6PDadoIqdhMdWdKhIcJnhsR9KjVj8ebj07 A==;
X-CSE-ConnectionGUID: XEpHBDlhTzyRUEKQ4nx2zg==
X-CSE-MsgGUID: jIs/IQ+dSKib1TUdXGvzWA==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="32563319"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="32563319"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:02:37 -0700
X-CSE-ConnectionGUID: HRwGkyANQnyKmq1VAYnspA==
X-CSE-MsgGUID: ZPX8h7N2Sk6QbyZksjS8AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="63599014"
Received: from aantonov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:02:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 2/7] drm/i915: pass dev_priv explicitly to PIPE_WGC_C01_C00
Date: Mon, 29 Apr 2024 17:02:16 +0300
Message-Id: <85b3db6e666a7a629b10b482b7e7043d52d30511.1714399071.git.jani.nikula@intel.com>
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
explicitly to the PIPE_WGC_C01_C00 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_color_regs.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index edb805fc9c97..cdcf8e796335 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -616,7 +616,7 @@ static void vlv_load_wgc_csc(struct intel_crtc *crtc,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write_fw(dev_priv, PIPE_WGC_C01_C00(pipe),
+	intel_de_write_fw(dev_priv, PIPE_WGC_C01_C00(dev_priv, pipe),
 			  csc->coeff[1] << 16 | csc->coeff[0]);
 	intel_de_write_fw(dev_priv, PIPE_WGC_C02(pipe),
 			  csc->coeff[2]);
@@ -639,7 +639,7 @@ static void vlv_read_wgc_csc(struct intel_crtc *crtc,
 	enum pipe pipe = crtc->pipe;
 	u32 tmp;
 
-	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C01_C00(pipe));
+	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C01_C00(dev_priv, pipe));
 	csc->coeff[0] = tmp & 0xffff;
 	csc->coeff[1] = tmp >> 16;
 
diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
index 250ceffbd481..57438989f469 100644
--- a/drivers/gpu/drm/i915/display/intel_color_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
@@ -256,7 +256,7 @@
 #define _PIPE_A_WGC_C21_C20	0x600C0 /* s2.10 */
 #define _PIPE_A_WGC_C22		0x600C4 /* s2.10 */
 
-#define PIPE_WGC_C01_C00(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C01_C00)
+#define PIPE_WGC_C01_C00(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C01_C00)
 #define PIPE_WGC_C02(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C02)
 #define PIPE_WGC_C11_C10(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C11_C10)
 #define PIPE_WGC_C12(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C12)
-- 
2.39.2

