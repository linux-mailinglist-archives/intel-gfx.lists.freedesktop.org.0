Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F17F68BCBAA
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 12:09:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F1D010ED1C;
	Mon,  6 May 2024 10:09:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m2deMda0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D7FA10ED1C
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 10:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714990163; x=1746526163;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u/vOSHySwoi5VI8c8uTlX+M4ChND5g/QX3sN87mdOHw=;
 b=m2deMda0Q86tP2Vwh6F9doHYQ393+uFtecmotseXor/hMukVCT7dczvS
 lBF70x4urMe8m2i9ZiTpAmvle4FOcghMwkgJnuqUSHlHV4rNTaczCpafm
 rIlU1z7oHUwaeLNujxcoScq9wCoTdltHSU3NNgqRcQHUVKxjpKiNjlRNF
 pfQ9Vd+/4qjIps/J7CTV/Ql75s9A4ucZUt4RK+DSMz9/Q1EKpFY/urESl
 wUGkeJMi34XER2+Bqsf48DQ9fiZs/y0l/CTsuRGWpIAxiLD3i9umTqxhM
 6wUde9R8PhwJBxv79/95HZ5ekq4IMh9likQkIy4LnJtkJ9a+SvURBYRKR Q==;
X-CSE-ConnectionGUID: BlDMFbPHTLeaOLj1ZP2EMg==
X-CSE-MsgGUID: ZTAvwGr9RYKUONXNhQyC7g==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="21341452"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="21341452"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 03:09:23 -0700
X-CSE-ConnectionGUID: aufo5He0QO+PdupgKMrPbw==
X-CSE-MsgGUID: FZb/UfHmSF+TElTozYZYLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="32719096"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 03:09:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/3] drm/i915: pass dev_priv explicitly to PORT_DFT2_G4X
Date: Mon,  6 May 2024 13:09:04 +0300
Message-Id: <0db8ee7b66b9660fc9fd80598257c6d36f0f506b.1714990089.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714990089.git.jani.nikula@intel.com>
References: <cover.1714990089.git.jani.nikula@intel.com>
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
explicitly to the PORT_DFT2_G4X register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pipe_crc.c | 8 ++++----
 drivers/gpu/drm/i915/i915_reg.h               | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
index 35c3dd1130ce..b3dcfee6ec0e 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
@@ -167,7 +167,7 @@ static int vlv_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
 	 *   - DisplayPort scrambling: used for EMI reduction
 	 */
 	if (need_stable_symbols) {
-		u32 tmp = intel_de_read(dev_priv, PORT_DFT2_G4X);
+		u32 tmp = intel_de_read(dev_priv, PORT_DFT2_G4X(dev_priv));
 
 		tmp |= DC_BALANCE_RESET_VLV;
 		switch (pipe) {
@@ -183,7 +183,7 @@ static int vlv_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
 		default:
 			return -EINVAL;
 		}
-		intel_de_write(dev_priv, PORT_DFT2_G4X, tmp);
+		intel_de_write(dev_priv, PORT_DFT2_G4X(dev_priv), tmp);
 	}
 
 	return 0;
@@ -229,7 +229,7 @@ static int i9xx_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
 static void vlv_undo_pipe_scramble_reset(struct drm_i915_private *dev_priv,
 					 enum pipe pipe)
 {
-	u32 tmp = intel_de_read(dev_priv, PORT_DFT2_G4X);
+	u32 tmp = intel_de_read(dev_priv, PORT_DFT2_G4X(dev_priv));
 
 	switch (pipe) {
 	case PIPE_A:
@@ -246,7 +246,7 @@ static void vlv_undo_pipe_scramble_reset(struct drm_i915_private *dev_priv,
 	}
 	if (!(tmp & PIPE_SCRAMBLE_RESET_MASK))
 		tmp &= ~DC_BALANCE_RESET_VLV;
-	intel_de_write(dev_priv, PORT_DFT2_G4X, tmp);
+	intel_de_write(dev_priv, PORT_DFT2_G4X(dev_priv), tmp);
 }
 
 static int ilk_pipe_crc_ctl_reg(enum intel_pipe_crc_source *source,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4a88eb9cd1f8..5670eee4a498 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1479,7 +1479,7 @@
 
 #define PORT_DFT_I9XX				_MMIO(0x61150)
 #define   DC_BALANCE_RESET			(1 << 25)
-#define PORT_DFT2_G4X		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61154)
+#define PORT_DFT2_G4X(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61154)
 #define   DC_BALANCE_RESET_VLV			(1 << 31)
 #define   PIPE_SCRAMBLE_RESET_MASK		((1 << 14) | (0x3 << 0))
 #define   PIPE_C_SCRAMBLE_RESET			REG_BIT(14) /* chv */
-- 
2.39.2

