Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4D48B37ED
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 15:04:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B262F1123A4;
	Fri, 26 Apr 2024 13:04:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VCWQl1Fc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3194D1123AA;
 Fri, 26 Apr 2024 13:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714136679; x=1745672679;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jMIMquBeZZcYAKGxMDe4gBSHjkVAHVwjSMLrQdlYXqY=;
 b=VCWQl1FctpU9N70nRyPi7ZbdNFkZPFzDzDt5j+xIIoCjzNVBYSwLGIoR
 2UeiToEOik+Tt/Vu4F68wnBfA4ZiQluQOyexVoBZeEYiz9cPwSfzYxXmf
 3AVDNcTF8lgz9ObsyvePSs5XnglZ6OZK6GZK31UxW2cDZcmjAH2b5uryJ
 oQS/KJcjVT1YWsNijmY/I8zXy3HHTz+bFH4T9TfwZeadq47I07q7EklwS
 WszTfeJOi9ulNxstq0hvBWa5f81cM40flPn3oYnjQDMhJZG+OvMkN+BQE
 GOVsjEF1WJDlDiIo/YYQOiXyQixaTTge5+jCQ3J0nI5O4jn3flEWoCNYV w==;
X-CSE-ConnectionGUID: Wc6Awy11QQWF5MLa5cZkQA==
X-CSE-MsgGUID: CEvV1FisQTKxTaLkJd32KA==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="32368260"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="32368260"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:04:39 -0700
X-CSE-ConnectionGUID: pnSkfVLxRjmzKzrHOKAHkw==
X-CSE-MsgGUID: xckEyPNoQBKbceF0SV9mrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="62889585"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:04:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 014/123] drm/i915: pass dev_priv explicitly to
 PIPE_CRC_RES_RES2_G4X
Date: Fri, 26 Apr 2024 16:01:39 +0300
Message-Id: <3135650a340d5bbfea6a2087b801d8472b29c27b.1714136165.git.jani.nikula@intel.com>
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
explicitly to the PIPE_CRC_RES_RES2_G4X register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 3 ++-
 drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index b83e4f312f7e..04e867db0878 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -383,7 +383,8 @@ static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 		res1 = 0;
 
 	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
-		res2 = intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RES2_G4X(pipe));
+		res2 = intel_uncore_read(&dev_priv->uncore,
+					 PIPE_CRC_RES_RES2_G4X(dev_priv, pipe));
 	else
 		res2 = 0;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8c79bfc02714..c9bd827eba60 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1660,7 +1660,7 @@
 #define PIPE_CRC_RES_GREEN(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_GREEN_A)
 #define PIPE_CRC_RES_BLUE(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_BLUE_A)
 #define PIPE_CRC_RES_RES1_I915(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES1_A_I915)
-#define PIPE_CRC_RES_RES2_G4X(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES2_A_G4X)
+#define PIPE_CRC_RES_RES2_G4X(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES2_A_G4X)
 
 /* Pipe/transcoder A timing regs */
 #define _TRANS_HTOTAL_A		0x60000
-- 
2.39.2

