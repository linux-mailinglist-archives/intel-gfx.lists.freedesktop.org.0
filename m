Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 412618B37EA
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 15:04:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCB4611239C;
	Fri, 26 Apr 2024 13:04:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AuNh7mw9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE2C1112392;
 Fri, 26 Apr 2024 13:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714136670; x=1745672670;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OIgcXE5DqghaklzFGOWHpZu3LgReaKR9XeyzBM9um54=;
 b=AuNh7mw98T052X+PfjVVehqivVZox9hKEfgwoCAw1OfpFxKoGAXDdxsC
 XByW28R5gVZVaYYh8WJc/cTI53kZ7tPhSiCFqOAXQWsY9M8BGCqtgwLyq
 gxdXYWVfvzszFfipqLSHmX3zOEVRm+RH/mSEOe3dCMt/YAd9Kd6vT3Es/
 u/Sk3G4hnD6BSCsCEccFOI4J2dQDzVMrWUI4br4ZA4kyl86feIL6HtRtY
 7V+P6x87dUQ7uFSilrrETTZUrFTGI3nauMHWWyGuntrSp/NAc2bMOh7tR
 JSkDK0LrKRGeV3pvmgmqBJP2Ude5VXGRsW5IkfXrWu+gXdPGJ2/aRC13b Q==;
X-CSE-ConnectionGUID: zYdy7mCGSmqwfPkYQaF2Nw==
X-CSE-MsgGUID: fY44l+9aSFeePUnvXpsz5Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="32368221"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="32368221"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:04:30 -0700
X-CSE-ConnectionGUID: T+Q+hZMcRZu5GzrGNIPwug==
X-CSE-MsgGUID: VCLslAKxSXa1XfM0L4iRcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="62889556"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:04:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 012/123] drm/i915: pass dev_priv explicitly to
 PIPE_CRC_RES_BLUE
Date: Fri, 26 Apr 2024 16:01:37 +0300
Message-Id: <99b61c7f0dd2dd838d6a79ce113b5d2c997dd197.1714136165.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714136165.git.jani.nikula@intel.com>
References: <cover.1714136165.git.jani.nikula@intel.com>
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
explicitly to the PIPE_CRC_RES_BLUE register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 77be9f2029ac..5738e06a773c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -389,7 +389,7 @@ static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 	display_pipe_crc_irq_handler(dev_priv, pipe,
 				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RED(dev_priv, pipe)),
 				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_GREEN(dev_priv, pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_BLUE(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_BLUE(dev_priv, pipe)),
 				     res1, res2);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 68a2dea9017b..b50115d1f1d4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1658,7 +1658,7 @@
 
 #define PIPE_CRC_RES_RED(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RED_A)
 #define PIPE_CRC_RES_GREEN(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_GREEN_A)
-#define PIPE_CRC_RES_BLUE(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_BLUE_A)
+#define PIPE_CRC_RES_BLUE(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_BLUE_A)
 #define PIPE_CRC_RES_RES1_I915(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES1_A_I915)
 #define PIPE_CRC_RES_RES2_G4X(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES2_A_G4X)
 
-- 
2.39.2

