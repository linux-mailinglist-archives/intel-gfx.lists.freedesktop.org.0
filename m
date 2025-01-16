Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE9FA1412B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 18:48:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 220AB10E9EF;
	Thu, 16 Jan 2025 17:48:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rs0TDyLK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD3F910E9E6;
 Thu, 16 Jan 2025 17:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737049702; x=1768585702;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2NLNmdasd87XzED/onpKXSMLbYq+rpMZA1zj3e8XIck=;
 b=Rs0TDyLKc+bPRaaIiMWOwW3i1XrTOaAEMxHt1qk1p093Bw3RQcnc7s6v
 Vck3OwNxubxGvAmhWWQxviAUJsm7hGAheBabxxZRiuTmAV1e/D3Jb0dvv
 IWfvjRssrpXBFuQMLPxUcIpKoSNDj33Kziagg0wDyNBpXqzaM2HLUPCao
 +Wh3bheWw6dSFe0JmUm16bKPrMK2WKRg8+/olYwWZ/VItwjXQjGnRRS2+
 mp2O5gcE70iCKr3t1qGDS1Jx/d+ix1A/2JpqfKN3K+UN40FW80DRN6aEK
 qcG/xiQO/RSgJxZ3A2mFn3A8GcjV3vQqDvDB32G1LWv2dYRusPJsGQIaz A==;
X-CSE-ConnectionGUID: IVWuGyYySfGrj1VHPunjiw==
X-CSE-MsgGUID: yDNofFmqRgWTF+9a8mtxwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="48847602"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="48847602"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 09:48:22 -0800
X-CSE-ConnectionGUID: VW8YGgPLSy6g2nk3EDpMVA==
X-CSE-MsgGUID: 5ECyPqwbQd25r0YACXtPxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105712634"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Jan 2025 09:48:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2025 19:48:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 7/8] drm/i915: Un-invert {i9xx,i965}_error_mask()
Date: Thu, 16 Jan 2025 19:47:57 +0200
Message-ID: <20250116174758.18298-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
References: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Make life a bit more straightforward by removing the bitwise
not from {i9xx,i965}_error_mask() and instead do it when feeding
the value to gen2_error_init(). Make life a bit easier I think.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 3040c000f837..bd5956262c6d 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -838,10 +838,10 @@ static u32 i9xx_error_mask(struct drm_i915_private *i915)
 	 * so we just have to mask off all page table errors via EMR.
 	 */
 	if (HAS_FBC(i915))
-		return ~I915_ERROR_MEMORY_REFRESH;
+		return I915_ERROR_MEMORY_REFRESH;
 	else
-		return ~(I915_ERROR_PAGE_TABLE |
-			 I915_ERROR_MEMORY_REFRESH);
+		return I915_ERROR_PAGE_TABLE |
+			I915_ERROR_MEMORY_REFRESH;
 }
 
 static void i9xx_error_irq_ack(struct drm_i915_private *dev_priv,
@@ -900,7 +900,7 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 enable_mask;
 
-	gen2_error_init(uncore, GEN2_ERROR_REGS, i9xx_error_mask(dev_priv));
+	gen2_error_init(uncore, GEN2_ERROR_REGS, ~i9xx_error_mask(dev_priv));
 
 	dev_priv->irq_mask =
 		~(I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
@@ -1011,13 +1011,13 @@ static u32 i965_error_mask(struct drm_i915_private *i915)
 	 * so we can always enable the page table errors.
 	 */
 	if (IS_G4X(i915))
-		return ~(GM45_ERROR_PAGE_TABLE |
-			 GM45_ERROR_MEM_PRIV |
-			 GM45_ERROR_CP_PRIV |
-			 I915_ERROR_MEMORY_REFRESH);
+		return GM45_ERROR_PAGE_TABLE |
+			GM45_ERROR_MEM_PRIV |
+			GM45_ERROR_CP_PRIV |
+			I915_ERROR_MEMORY_REFRESH;
 	else
-		return ~(I915_ERROR_PAGE_TABLE |
-			 I915_ERROR_MEMORY_REFRESH);
+		return I915_ERROR_PAGE_TABLE |
+			I915_ERROR_MEMORY_REFRESH;
 }
 
 static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
@@ -1025,7 +1025,7 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 enable_mask;
 
-	gen2_error_init(uncore, GEN2_ERROR_REGS, i965_error_mask(dev_priv));
+	gen2_error_init(uncore, GEN2_ERROR_REGS, ~i965_error_mask(dev_priv));
 
 	dev_priv->irq_mask =
 		~(I915_ASLE_INTERRUPT |
-- 
2.45.2

