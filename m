Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FCF8B37E7
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 15:04:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D0EE1123A2;
	Fri, 26 Apr 2024 13:04:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wt3+PlF3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61A4F1123A5;
 Fri, 26 Apr 2024 13:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714136660; x=1745672660;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TGRcvN0DvH9LfPK9cEg9mvbU1WPME4N9ocQMpnC4Tt0=;
 b=Wt3+PlF3cyMUq6JOkXUvyUzTuz25d5Tn09e+OznPyXcuZRNrMDtIPoDH
 lUKgba+FEPsQRVJRnMhlVy9+qANByZs+FZ28LLJJLKFMkeCRFMzGC3Dgo
 LiSR3RSF/VmnbyU6C07jiHAfg9Vd8e52Y7LRK/ib6o/1tzFIKmhN1MZaL
 YFlP6ojmjezxkm1PoQ4vaoYzZ0QiUnLL5+Lh2aygObSUPhGtJNBNzUH2Y
 D9EOAA0APa36lFgjjQ8La80ho212VFmEjzAWevoBo8ZMKWxbNcFW2lXlI
 EfSAW7+kGCcTT4i8WQl72POgjeQblcdJm+kR0oHsNDXN1ATjUGvgzojBm Q==;
X-CSE-ConnectionGUID: p0qmMl44TLaesmyDtzPzcg==
X-CSE-MsgGUID: PEid6TY5QQyRVtvLZs7yKw==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="12804134"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="12804134"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:04:20 -0700
X-CSE-ConnectionGUID: HQ/uvq/iR2Ka8ccu71eaiA==
X-CSE-MsgGUID: 6MeGHUFmQHSRflhyH1y84Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="25405588"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:04:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 010/123] drm/i915: pass dev_priv explicitly to PIPE_CRC_RES_RED
Date: Fri, 26 Apr 2024 16:01:35 +0300
Message-Id: <b284bb8330928b3175be13ee3bf624f21d2dcee6.1714136165.git.jani.nikula@intel.com>
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
explicitly to the PIPE_CRC_RES_RED register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 8bef21f74010..4593f5244706 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -387,7 +387,7 @@ static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 		res2 = 0;
 
 	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RED(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RED(dev_priv, pipe)),
 				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_GREEN(pipe)),
 				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_BLUE(pipe)),
 				     res1, res2);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 6f85d5b23c2c..87c637039480 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1656,7 +1656,7 @@
 #define PIPE_CRC_RES_4_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_4_A_IVB)
 #define PIPE_CRC_RES_5_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_5_A_IVB)
 
-#define PIPE_CRC_RES_RED(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RED_A)
+#define PIPE_CRC_RES_RED(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RED_A)
 #define PIPE_CRC_RES_GREEN(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_GREEN_A)
 #define PIPE_CRC_RES_BLUE(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_BLUE_A)
 #define PIPE_CRC_RES_RES1_I915(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES1_A_I915)
-- 
2.39.2

