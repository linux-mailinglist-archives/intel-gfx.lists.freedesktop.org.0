Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FD68D193A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 13:16:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD2C711218F;
	Tue, 28 May 2024 11:16:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kltv2WDh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26424112192
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 11:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716894971; x=1748430971;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ug6SHJhuMQodIbdLkyJnhJWw1y/tRnMCrr1NE9BxFf0=;
 b=Kltv2WDhhSOSVsItRIJq3yHk8Q/76oWiIFMaS1kYD/Gs71f+5bhQjX8K
 HmYZe8pq+Q1/XzSHCnTe79zTTwMWa/fgTgf8BFov80WLXcz1A3Vax8u2X
 O06wK0ASkyCWJxWfVMhnNOimhf7KlwPnCFtIvNS83UBCt/ldy8GUt7PTE
 KdeThhO3UKKK4a/uiC/4USBHo+9T6bwvxfC6nv/o7ad33LM1p+PJ034GP
 8jcT/Qh6DhW1kySUumoVmqPmiCMbrPFv0ct+h7bWmLhYq+yUGZM0mS0WU
 tLOSC4I+QTI5oH0C8MmzFQ0vDCnHhVOj2a+Vi2x+cFJnhENnpHwJqht3F A==;
X-CSE-ConnectionGUID: dDaHxfWzQ2652hiUZPCYhQ==
X-CSE-MsgGUID: cCtH//2lTpWNdZlxo/Joxg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13353911"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13353911"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:16:11 -0700
X-CSE-ConnectionGUID: 4PI/IqUfS3+FnamV02YZsA==
X-CSE-MsgGUID: FG8xP222Qzq03mPQRJfzBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39877470"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:16:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/5] drm/i915: remove intermediate _PCH_DP_* macros
Date: Tue, 28 May 2024 14:15:42 +0300
Message-Id: <0145043ff9767de93cc3dc5119f0e7152965ebe6.1716894910.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716894909.git.jani.nikula@intel.com>
References: <cover.1716894909.git.jani.nikula@intel.com>
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

The intermediate macros are unused. Remove them.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 06e41afd5c4e..6877e2f0fbc3 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3599,14 +3599,9 @@
 #define  CNP_PWM_CGE_GATING_DISABLE (1 << 13)
 #define  PCH_LP_PARTITION_LEVEL_DISABLE  (1 << 12)
 
-#define _PCH_DP_B		0xe4100
-#define PCH_DP_B		_MMIO(_PCH_DP_B)
-
-#define _PCH_DP_C		0xe4200
-#define PCH_DP_C		_MMIO(_PCH_DP_C)
-
-#define _PCH_DP_D		0xe4300
-#define PCH_DP_D		_MMIO(_PCH_DP_D)
+#define PCH_DP_B		_MMIO(0xe4100)
+#define PCH_DP_C		_MMIO(0xe4200)
+#define PCH_DP_D		_MMIO(0xe4300)
 
 /* CPT */
 #define _TRANS_DP_CTL_A		0xe0300
-- 
2.39.2

