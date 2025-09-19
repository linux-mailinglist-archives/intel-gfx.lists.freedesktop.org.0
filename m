Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A239B88A89
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 11:52:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CC2E10E97B;
	Fri, 19 Sep 2025 09:52:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c66ojNve";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F43910E975;
 Fri, 19 Sep 2025 09:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758275544; x=1789811544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oY5Y1xvKP/ZFmBGgZJwBtVxt967uqApJrSfoNMELB+U=;
 b=c66ojNvepKwoq5OBAqKTpJDhNrGubiuGFtEXZq0bFGNrnSwuwFAL0MZ8
 avW8lOxdhsa+A/83RNMbODLfe1pBub8oteigSodIwE7EdcE2HpCBcVsx5
 UoFWOFTDA4XM19bN4muP9UxPnYE6w8ZbHHE4/tPA1abDv8OgbqS2/PYPz
 8azWBp1P3QevmaTADpUFF9TLJY3XW/OY9HqMo+Xi8KTcoSEbHib0AMmhj
 ATp5/jXWz5yWo1lJPJjzA5b9NVuBu0An9WM6UHB6PfNiApRkwGf6QYtaB
 YyKooqPI0E0pBGwwLpqNFcVeEXYDc6TOG5jUR3sKZIQljtTY73LT4S7Tc A==;
X-CSE-ConnectionGUID: pAWEm1oQSYuhmpXYkDYrDQ==
X-CSE-MsgGUID: 4KtoNY2YTUGx9RxGcxS0Vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60316165"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="60316165"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 02:52:06 -0700
X-CSE-ConnectionGUID: 0GRq3SYbSeSg40fcyH0QzA==
X-CSE-MsgGUID: Ur1nwOWFTTCirEt1Y6uLgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="206554255"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 02:52:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 2/6] drm/i915/irq: initialize gen2_imr_mask in terms of
 enable_mask
Date: Fri, 19 Sep 2025 12:51:45 +0300
Message-ID: <254c7c337ba86015e928349724324fbc834fee8a.1758275448.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758275448.git.jani.nikula@intel.com>
References: <cover.1758275448.git.jani.nikula@intel.com>
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

Instead of initializing gen2_imr_mask and enable_mask independently, use
the latter for initializing the former. This also highlights the
differences in the masks, i.e. what's set to enable_mask after it's been
used to initialize gen2_imr_mask.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 34 ++++++++++++---------------------
 1 file changed, 12 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 56f231591a3e..04de02fc08d9 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -895,26 +895,20 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	gen2_error_init(uncore, GEN2_ERROR_REGS, ~i9xx_error_mask(dev_priv));
 
-	dev_priv->gen2_imr_mask =
-		~(I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
-		  I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
-		  I915_MASTER_ERROR_INTERRUPT);
-
 	enable_mask =
 		I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
 		I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
-		I915_MASTER_ERROR_INTERRUPT |
-		I915_USER_INTERRUPT;
+		I915_MASTER_ERROR_INTERRUPT;
 
-	if (DISPLAY_VER(display) >= 3) {
-		dev_priv->gen2_imr_mask &= ~I915_ASLE_INTERRUPT;
+	if (DISPLAY_VER(display) >= 3)
 		enable_mask |= I915_ASLE_INTERRUPT;
-	}
 
-	if (HAS_HOTPLUG(display)) {
-		dev_priv->gen2_imr_mask &= ~I915_DISPLAY_PORT_INTERRUPT;
+	if (HAS_HOTPLUG(display))
 		enable_mask |= I915_DISPLAY_PORT_INTERRUPT;
-	}
+
+	dev_priv->gen2_imr_mask = ~enable_mask;
+
+	enable_mask |= I915_USER_INTERRUPT;
 
 	gen2_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->gen2_imr_mask, enable_mask);
 
@@ -1016,20 +1010,16 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	gen2_error_init(uncore, GEN2_ERROR_REGS, ~i965_error_mask(dev_priv));
 
-	dev_priv->gen2_imr_mask =
-		~(I915_ASLE_INTERRUPT |
-		  I915_DISPLAY_PORT_INTERRUPT |
-		  I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
-		  I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
-		  I915_MASTER_ERROR_INTERRUPT);
-
 	enable_mask =
 		I915_ASLE_INTERRUPT |
 		I915_DISPLAY_PORT_INTERRUPT |
 		I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
 		I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
-		I915_MASTER_ERROR_INTERRUPT |
-		I915_USER_INTERRUPT;
+		I915_MASTER_ERROR_INTERRUPT;
+
+	dev_priv->gen2_imr_mask = ~enable_mask;
+
+	enable_mask |= I915_USER_INTERRUPT;
 
 	if (IS_G4X(dev_priv))
 		enable_mask |= I915_BSD_USER_INTERRUPT;
-- 
2.47.3

