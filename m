Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2C1AAC525
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 15:07:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B811310E690;
	Tue,  6 May 2025 13:06:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PU73WYlC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A18510E68E;
 Tue,  6 May 2025 13:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746536819; x=1778072819;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OdIGAmIt1fAIeDSHB6vaxGVzB2XAiIEvFBQCBsk7PFk=;
 b=PU73WYlCKYnOVYu5SzuatlyXO1i/fTY050NLatCdQ8Bb/lI2t5mNj/hB
 sUXgLMF0yD05PuF7C5Fa3yfhK5yBODHlqY8ioH8Ndc//T+dtxq/FY9TR7
 Pq59NqzmVo0G8kJ8BJ9wLGwNQn+H5tMflNbCj8/4WwJf0ndpnneya4tCs
 cmn9dtoTjhg6j0plxg+FIapNRBKf2ZYWADfYoSy9PIoolkiBESy++nq+2
 1L3fFQpR6fmsR4wh+PVPkME5y8TcdMe5Ll4uPFuf2TTTEFEHHyZgsZH9h
 DnAlkPv9o31m4RtdGNja95eN4nfdPHUNvWMiAH7dpJ1KGt+zan25JhHKU w==;
X-CSE-ConnectionGUID: YvjMqc9cTQe0lz6MURmoNg==
X-CSE-MsgGUID: TZ004hzqSl2kjjMdTaAxvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="48112233"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="48112233"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:06:59 -0700
X-CSE-ConnectionGUID: nykbwD6lQVWBNivHs18dBw==
X-CSE-MsgGUID: sbWTX0McQei+7JLZQlyG/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="135588237"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.221])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:06:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 1/8] drm/i915/irq: move locking inside vlv_display_irq_reset()
Date: Tue,  6 May 2025 16:06:43 +0300
Message-Id: <0f8176b777fa24921458996f7d6f982f955a52f6.1746536745.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746536745.git.jani.nikula@intel.com>
References: <cover.1746536745.git.jani.nikula@intel.com>
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

All users of vlv_display_irq_reset() have a lock/unlock pair. Move the
locking inside the function.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 4 ++++
 drivers/gpu/drm/i915/i915_irq.c                  | 4 ----
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 73b6254c5485..22bb0fc10736 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1884,8 +1884,12 @@ static void _vlv_display_irq_reset(struct intel_display *display)
 
 void vlv_display_irq_reset(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	spin_lock_irq(&dev_priv->irq_lock);
 	if (display->irq.vlv_display_irqs_enabled)
 		_vlv_display_irq_reset(display);
+	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
 void i9xx_display_irq_reset(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index d06694d6531e..b918b440cbce 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -688,9 +688,7 @@ static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
 
 	gen5_gt_irq_reset(to_gt(dev_priv));
 
-	spin_lock_irq(&dev_priv->irq_lock);
 	vlv_display_irq_reset(display);
-	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
 static void gen8_irq_reset(struct drm_i915_private *dev_priv)
@@ -752,9 +750,7 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 
 	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
 
-	spin_lock_irq(&dev_priv->irq_lock);
 	vlv_display_irq_reset(display);
-	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
 static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
-- 
2.39.5

