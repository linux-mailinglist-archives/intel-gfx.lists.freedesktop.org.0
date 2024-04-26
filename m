Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C35558B37EC
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 15:04:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 413F41123A9;
	Fri, 26 Apr 2024 13:04:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SC/27UsV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B9221123A4;
 Fri, 26 Apr 2024 13:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714136675; x=1745672675;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9aZTlLkhmlTdfiPOYZQpyd1ER/AAX2Lj6VCfBvlh59g=;
 b=SC/27UsV7uIiOoqHz5Y1l24ADYpIvZZMubKqLUXX+Guclvpovv4cyDHG
 42DZblpIo+cK0qay3VG9s2AmDkrtq4oBDEeudtyqnDZv4KadBXjjw96dr
 3T7xDpLIqW+ZQ5FLDcPyGsnjzYARRN4wpCz/dJ7JcPAJ9ecLj3ZiwC3Ft
 qlxgKJ208zyBxMwu/2Qxn6eU0+9G1sSbXG2FjY6vMkgnAIrJGGrjW68xr
 9aadfLF/4WCZ5ssaG2vnW06qxHbe+sLXkxjNB5ZIV+IxW+qaTx48UWThe
 S0pJ4qQ3IdICkevF/U+sXEJfrYPq+C3GuIpR7Z03YjXPGFg8snduVGC/s A==;
X-CSE-ConnectionGUID: XYVthme1QXGLplK+gAx+Yw==
X-CSE-MsgGUID: qfeYFm9UQ0CC0W/Ynb4+cw==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="12804153"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="12804153"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:04:34 -0700
X-CSE-ConnectionGUID: VIhc24AwQAaAQtV6+Jxd6Q==
X-CSE-MsgGUID: /dIfEF70RFeIvC9gZYwYEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="25405628"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:04:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 013/123] drm/i915: pass dev_priv explicitly to
 PIPE_CRC_RES_RES1_I915
Date: Fri, 26 Apr 2024 16:01:38 +0300
Message-Id: <936f3b75b7a514ceb4f3d968ddd40d7e4c067626.1714136165.git.jani.nikula@intel.com>
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
explicitly to the PIPE_CRC_RES_RES1_I915 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 3 ++-
 drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 5738e06a773c..b83e4f312f7e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -377,7 +377,8 @@ static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 	u32 res1, res2;
 
 	if (DISPLAY_VER(dev_priv) >= 3)
-		res1 = intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RES1_I915(pipe));
+		res1 = intel_uncore_read(&dev_priv->uncore,
+					 PIPE_CRC_RES_RES1_I915(dev_priv, pipe));
 	else
 		res1 = 0;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b50115d1f1d4..8c79bfc02714 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1659,7 +1659,7 @@
 #define PIPE_CRC_RES_RED(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RED_A)
 #define PIPE_CRC_RES_GREEN(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_GREEN_A)
 #define PIPE_CRC_RES_BLUE(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_BLUE_A)
-#define PIPE_CRC_RES_RES1_I915(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES1_A_I915)
+#define PIPE_CRC_RES_RES1_I915(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES1_A_I915)
 #define PIPE_CRC_RES_RES2_G4X(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES2_A_G4X)
 
 /* Pipe/transcoder A timing regs */
-- 
2.39.2

