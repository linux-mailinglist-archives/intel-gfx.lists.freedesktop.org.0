Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0956E8D60FD
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:54:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 250F010E4B6;
	Fri, 31 May 2024 11:53:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mY2gRo6E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B216F10E4B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 11:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717156431; x=1748692431;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2bjIxU9eH0+M1dfb9SXtTVzuXs92soFBG4ft9IDkeho=;
 b=mY2gRo6Evpr0VSS09PEG2pub/QbtZn9pmzStoLoc1GuVu/GSz2EzeHgQ
 c8JE4M+5AxiHDq5F9c2iKsw0zfyRwSUlcrILG1SM8AWvK9paKW7vBFLw/
 nPAcNg4Pp8byUSnIp6vxrBUMCO/PlxWt0OT9r8RwsTlKMbJir5cg3qAiD
 ZOwyBVSajWx/PWaGQjKfavC1VqjGjQaWAT12vHJpWf4pGOT+BBxhs1ARX
 Fg3m67oFiBWNQ3Nb3UCp5wc1GWZlpbDof5zjS0qlqLUHOMMo0tjO/nsPM
 0y7REJpDn71WN4yXhgPqUy0j/7LD3c/fhrSYFv3pcHy8TdTvnow4SE1gN w==;
X-CSE-ConnectionGUID: qkdeIkVYTFarx9NfIZ6rmw==
X-CSE-MsgGUID: 0SYw5vlWShi+1Zji19kXgw==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13864657"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13864657"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:53:51 -0700
X-CSE-ConnectionGUID: sj4FvnVTRxOrFMSHdzVLfg==
X-CSE-MsgGUID: 0CGXfY8RTq6tecAdXpOwKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36134998"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 May 2024 04:53:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2024 14:53:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/7] drm/i915: Switch PIPE_CRC_RES_*_IVB to _MMIO_PIPE()
Date: Fri, 31 May 2024 14:53:37 +0300
Message-ID: <20240531115342.2763-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
References: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

PIPE_CRC_RES_*_IVB are proper pipe registers, and only valid
for IVB+ where pipe register blocks are equally spaced, so we
can switch from _MMIO_TRANS2() to the simpler _MMIO_PIPE() for
these.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c   | 12 ++++++------
 drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h | 10 +++++-----
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 9c12cc0f2ed0..7db87dfcb12a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -357,7 +357,7 @@ static void hsw_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 				     enum pipe pipe)
 {
 	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(dev_priv, pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(pipe)),
 				     0, 0, 0, 0);
 }
 
@@ -365,11 +365,11 @@ static void ivb_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 				     enum pipe pipe)
 {
 	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(dev_priv, pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_2_IVB(dev_priv, pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_3_IVB(dev_priv, pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_4_IVB(dev_priv, pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_5_IVB(dev_priv, pipe)));
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_2_IVB(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_3_IVB(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_4_IVB(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_5_IVB(pipe)));
 }
 
 static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h b/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
index e684bc9ae1c0..66520c97bf1e 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h
@@ -77,11 +77,11 @@
 #define _PIPE_CRC_RES_5_B_IVB		0x61074
 
 #define PIPE_CRC_CTL(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_CTL_A)
-#define PIPE_CRC_RES_1_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_1_A_IVB)
-#define PIPE_CRC_RES_2_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_2_A_IVB)
-#define PIPE_CRC_RES_3_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_3_A_IVB)
-#define PIPE_CRC_RES_4_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_4_A_IVB)
-#define PIPE_CRC_RES_5_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_5_A_IVB)
+#define PIPE_CRC_RES_1_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_1_A_IVB, _PIPE_CRC_RES_1_B_IVB)
+#define PIPE_CRC_RES_2_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_2_A_IVB, _PIPE_CRC_RES_2_B_IVB)
+#define PIPE_CRC_RES_3_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_3_A_IVB, _PIPE_CRC_RES_3_B_IVB)
+#define PIPE_CRC_RES_4_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_4_A_IVB, _PIPE_CRC_RES_4_B_IVB)
+#define PIPE_CRC_RES_5_IVB(pipe)		_MMIO_PIPE(pipe, _PIPE_CRC_RES_5_A_IVB, _PIPE_CRC_RES_5_B_IVB)
 
 #define PIPE_CRC_RES_RED(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RED_A)
 #define PIPE_CRC_RES_GREEN(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_GREEN_A)
-- 
2.44.1

