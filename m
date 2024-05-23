Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5B08CD2F9
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 14:59:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C780A10E4E2;
	Thu, 23 May 2024 12:59:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dOc3RQbH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA23910E4E2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 12:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716469192; x=1748005192;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rs3z9HzdRBzbBCkQW5guuWz+ROPpqO5uAFFVkKdV55c=;
 b=dOc3RQbHtuPFo8TxFcFfAPVGpxvC9G1XQkfyNvX8JO2XISh6wDei6z9o
 F3rfdBnQpKSDckCC78Y+A/3JYibWKKF2s3F5D/CuVO13AQbwuOOp8/pA5
 RpjZEy7X1cJZIHEo/X02r0UKEvIdG9SHbwqqVfUiJFzyKpahApP9Hhn0d
 PfjHgbR0+DXbKq23PTy1SLIR/UerdIPZM9a6MO80dLWmCSHdtG1bbF7aw
 QQ88j9kiDUZfSIOPQza+BmhqMcBdY6uUXg7CAmO5+e+fp/RNmdGhC8KNK
 lqVm9tl7JSf+UJTFA47kS1ke4cuOgxUMQNVftcCvwBo0VU++ZMfZxfHpZ A==;
X-CSE-ConnectionGUID: ixOwJBnwS0iz/VJYbgMRww==
X-CSE-MsgGUID: tllykwjZTQmBaYzq1N5xjQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="38164655"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="38164655"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 05:59:52 -0700
X-CSE-ConnectionGUID: wO8v6RT4RQORPTmn9Zxx/w==
X-CSE-MsgGUID: iMP9njP2ROuW2jHlVzab6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33731553"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 05:59:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 01/16] drm/i915: pass dev_priv explicitly to DSPADDR_VLV
Date: Thu, 23 May 2024 15:59:29 +0300
Message-Id: <1d9be6b1eedd9240468a89cd3a10e8513caa33b1.1716469091.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716469091.git.jani.nikula@intel.com>
References: <cover.1716469091.git.jani.nikula@intel.com>
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
explicitly to the DSPADDR_VLV register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c      | 2 +-
 drivers/gpu/drm/i915/display/i9xx_plane_regs.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 1f05f9184cb2..4636523d7948 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -577,7 +577,7 @@ vlv_primary_async_flip(struct intel_plane *plane,
 	u32 dspaddr_offset = plane_state->view.color_plane[0].offset;
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
 
-	intel_de_write_fw(dev_priv, DSPADDR_VLV(i9xx_plane),
+	intel_de_write_fw(dev_priv, DSPADDR_VLV(dev_priv, i9xx_plane),
 			  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
 }
 
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
index d74a74d1f29a..926da106f1a2 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
@@ -9,7 +9,7 @@
 #include "intel_display_reg_defs.h"
 
 #define _DSPAADDR_VLV				0x7017C /* vlv/chv */
-#define DSPADDR_VLV(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPAADDR_VLV)
+#define DSPADDR_VLV(dev_priv, plane)		_MMIO_PIPE2(dev_priv, plane, _DSPAADDR_VLV)
 
 #define _DSPACNTR				0x70180
 #define DSPCNTR(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPACNTR)
-- 
2.39.2

