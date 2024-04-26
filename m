Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9088B37E0
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 15:04:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13F4110F077;
	Fri, 26 Apr 2024 13:03:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c5pHqQ5f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77CB811239A;
 Fri, 26 Apr 2024 13:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714136637; x=1745672637;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VExI/rTOTa5Kq++mcAMw0o8wXIX76+HV+RorO0f5fuU=;
 b=c5pHqQ5f4l9esAM0lJ5ThBwmtagFIyhRL9kgFs2ArnxSFZ34/t0njJC9
 f2Adg6Sb+ZokLQqd4s5NPM+URUuw8+UAQyeuqhI5uxxNpiubfPi281kbE
 doWq6lvNOGeqiDG+lgGOPGp+S4GupGLkheJKOFhhW6ND4r9yF6AOQXQWz
 jM8PxZhOPtz/R8i72/AIWg9BZzFA8hN/eQkwdu8lt8SxX6Xml2gU+OgFQ
 i7DDFpwDi6DpPdZfNTkBZtYD//LkupLTvq6HOQM4Ar+T4gHDaJtLJ/M8n
 BPScjPzik3tREdLaQy45fRriMEB0t+u6MfjLOahV1XliLGwuvpmytpr0h w==;
X-CSE-ConnectionGUID: eA67EwYUTKSzXbyjY/Ssaw==
X-CSE-MsgGUID: p9O37RqFQVG6+EVvD5vn9Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="10084188"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="10084188"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:03:57 -0700
X-CSE-ConnectionGUID: 47eIE70zTmy/MBRSkFC1aQ==
X-CSE-MsgGUID: 8BfvbYShRYK9i1wfGTzM8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="25435975"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:03:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 005/123] drm/i915: pass dev_priv explicitly to
 PIPE_CRC_RES_1_IVB
Date: Fri, 26 Apr 2024 16:01:30 +0300
Message-Id: <19890bb3f728ce2bea28fd9d7996b450837b57f3.1714136165.git.jani.nikula@intel.com>
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
explicitly to the PIPE_CRC_RES_1_IVB register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 4 ++--
 drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index c337e0597541..45abbc169bf5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -356,7 +356,7 @@ static void hsw_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 				     enum pipe pipe)
 {
 	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(dev_priv, pipe)),
 				     0, 0, 0, 0);
 }
 
@@ -364,7 +364,7 @@ static void ivb_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 				     enum pipe pipe)
 {
 	display_pipe_crc_irq_handler(dev_priv, pipe,
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(dev_priv, pipe)),
 				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_2_IVB(pipe)),
 				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_3_IVB(pipe)),
 				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_4_IVB(pipe)),
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7c8a9c5ccd4f..cabc938843b3 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1650,7 +1650,7 @@
 #define _PIPE_CRC_RES_5_B_IVB		0x61074
 
 #define PIPE_CRC_CTL(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_CTL_A)
-#define PIPE_CRC_RES_1_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_1_A_IVB)
+#define PIPE_CRC_RES_1_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_1_A_IVB)
 #define PIPE_CRC_RES_2_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_2_A_IVB)
 #define PIPE_CRC_RES_3_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_3_A_IVB)
 #define PIPE_CRC_RES_4_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_4_A_IVB)
-- 
2.39.2

