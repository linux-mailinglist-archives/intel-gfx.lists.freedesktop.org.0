Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2174F8B37DE
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 15:03:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BEA810E9E9;
	Fri, 26 Apr 2024 13:03:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q5nIIub0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E279711239A;
 Fri, 26 Apr 2024 13:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714136633; x=1745672633;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZFJZLeLBD414X6KpDDc/lh54F2MExyTSywfCKeMqO4A=;
 b=Q5nIIub0bdYOv2ghpsMexqtuRUaED0a/go32207lI2llI9iEKmUzJCbK
 OX20fRpAHKOWzB9UZC3MhtenKdgcwWirClDup2yXQT4Mupkb8/uEeIsbp
 yPzLhLzkC+QkA/qMcZBv+xVILXKrfoYfQc0oBp/4peWsGdyGJkz7pdzNY
 DfJ6FQDh9dmW5UAAwZ806W3wn0DSbSBM7a7bss7EAJu4lSDzIpdCkCc+F
 3iF53h/jfQvAmtXcMh85IMA2qolvEttXrdeY//9bnXMTo4a89yhY4JPuD
 l4qQSljN4F3lUVEbYQfUYH9nFpxCTy4ZmQe2oqdLc7lHq1OIcVavqRBVn A==;
X-CSE-ConnectionGUID: KWMwVz3MSVSCMC/qqB7UGQ==
X-CSE-MsgGUID: eQKGrbgRQwyG3fxcleQhug==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="10084177"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="10084177"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:03:52 -0700
X-CSE-ConnectionGUID: ecHnks/bQceL38NtPj8MlA==
X-CSE-MsgGUID: mSM8kagrTyye0zXkY4vwBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="25435943"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:03:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 004/123] drm/i915: pass dev_priv explicitly to PIPE_CRC_CTL
Date: Fri, 26 Apr 2024 16:01:29 +0300
Message-Id: <e54ebc9643360691750b225df3e7953a331bc680.1714136165.git.jani.nikula@intel.com>
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
explicitly to the PIPE_CRC_CTL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pipe_crc.c | 12 ++++++------
 drivers/gpu/drm/i915/i915_reg.h               |  2 +-
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
index 5a468ed6e26c..35c3dd1130ce 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
@@ -608,8 +608,8 @@ int intel_crtc_set_crc_source(struct drm_crtc *_crtc, const char *source_name)
 		goto out;
 
 	pipe_crc->source = source;
-	intel_de_write(dev_priv, PIPE_CRC_CTL(pipe), val);
-	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(pipe));
+	intel_de_write(dev_priv, PIPE_CRC_CTL(dev_priv, pipe), val);
+	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(dev_priv, pipe));
 
 	if (!source) {
 		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
@@ -643,8 +643,8 @@ void intel_crtc_enable_pipe_crc(struct intel_crtc *crtc)
 	/* Don't need pipe_crc->lock here, IRQs are not generated. */
 	pipe_crc->skipped = 0;
 
-	intel_de_write(dev_priv, PIPE_CRC_CTL(pipe), val);
-	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(pipe));
+	intel_de_write(dev_priv, PIPE_CRC_CTL(dev_priv, pipe), val);
+	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(dev_priv, pipe));
 }
 
 void intel_crtc_disable_pipe_crc(struct intel_crtc *crtc)
@@ -658,7 +658,7 @@ void intel_crtc_disable_pipe_crc(struct intel_crtc *crtc)
 	pipe_crc->skipped = INT_MIN;
 	spin_unlock_irq(&pipe_crc->lock);
 
-	intel_de_write(dev_priv, PIPE_CRC_CTL(pipe), 0);
-	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(pipe));
+	intel_de_write(dev_priv, PIPE_CRC_CTL(dev_priv, pipe), 0);
+	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(dev_priv, pipe));
 	intel_synchronize_irq(dev_priv);
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5c07b489073d..7c8a9c5ccd4f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1649,7 +1649,7 @@
 #define _PIPE_CRC_RES_4_B_IVB		0x61070
 #define _PIPE_CRC_RES_5_B_IVB		0x61074
 
-#define PIPE_CRC_CTL(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_CTL_A)
+#define PIPE_CRC_CTL(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_CTL_A)
 #define PIPE_CRC_RES_1_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_1_A_IVB)
 #define PIPE_CRC_RES_2_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_2_A_IVB)
 #define PIPE_CRC_RES_3_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_3_A_IVB)
-- 
2.39.2

