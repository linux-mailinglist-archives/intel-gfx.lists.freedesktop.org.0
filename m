Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE368B37E1
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 15:04:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2148611239A;
	Fri, 26 Apr 2024 13:04:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UjGIyVf1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEE89112392;
 Fri, 26 Apr 2024 13:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714136642; x=1745672642;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WnZJ/is3jCyn2GrtyaFngEwjQSe1hWQcphwMTvYVKyE=;
 b=UjGIyVf1gzMqnLnqiMsZcajPlWp7l9NqHBqQ4ghdNE0zzo1iUSKhSdWu
 g8PdA2ae65u3OPMFpseKe/65FVoWsZ+ywtoXjfj+rd0JILctdRG1V8YPj
 +FQS6e9lw1Zja4iUiWKaTUya4AtQoyvqj7g+DWl2Kgl2cAjFeCsh9RPam
 eQswEoeIqvtvuGS3ETsamTo74eqnGlPaSn64AyPCju/+2n7ancB70M5X2
 61A81YdDiw/DuW84zhG/ufxOcXAh8hBddfSsdNaSenCeNy0XzudBE7PGw
 ubmYN7YQHEagGyaZRXWtNRvDYLv57H1++j9ZrIZP22WX4WALndkwEUqgq Q==;
X-CSE-ConnectionGUID: evPN5N+PTGCSn61H+at3MQ==
X-CSE-MsgGUID: /7jMjP94QACdoQt+MF0fOg==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="10084198"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="10084198"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:04:01 -0700
X-CSE-ConnectionGUID: HlZzQFSqTNmsOQrF6kLhew==
X-CSE-MsgGUID: 94xNlNW0TjqalKtXdCc+zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="25435997"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:04:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 006/123] drm/i915: pass dev_priv explicitly to
 PIPE_CRC_RES_2_IVB
Date: Fri, 26 Apr 2024 16:01:31 +0300
Message-Id: <622d80e474a6987ade51cd4d2b8af91adf3583ad.1714136165.git.jani.nikula@intel.com>
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
explicitly to the PIPE_CRC_RES_2_IVB register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 45abbc169bf5..d810a0bab901 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -365,7 +365,7 @@ static void ivb_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 {
 	display_pipe_crc_irq_handler(dev_priv, pipe,
 				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(dev_priv, pipe)),
-				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_2_IVB(pipe)),
+				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_2_IVB(dev_priv, pipe)),
 				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_3_IVB(pipe)),
 				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_4_IVB(pipe)),
 				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_5_IVB(pipe)));
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index cabc938843b3..7b7b9f73db02 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1651,7 +1651,7 @@
 
 #define PIPE_CRC_CTL(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_CTL_A)
 #define PIPE_CRC_RES_1_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_1_A_IVB)
-#define PIPE_CRC_RES_2_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_2_A_IVB)
+#define PIPE_CRC_RES_2_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_2_A_IVB)
 #define PIPE_CRC_RES_3_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_3_A_IVB)
 #define PIPE_CRC_RES_4_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_4_A_IVB)
 #define PIPE_CRC_RES_5_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_5_A_IVB)
-- 
2.39.2

