Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D00AAC52E
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 15:07:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24C0110E69B;
	Tue,  6 May 2025 13:07:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FlGLzDWd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EA4710E69B;
 Tue,  6 May 2025 13:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746536840; x=1778072840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K31R4006srLIAVFt5lJ4MyVDqdEbPIrZW6I2YtRS6/M=;
 b=FlGLzDWd9jrXEsJiqpBZD24YvUyT8Kv4oAulfdMV7atyVkdkAAIR5Pfu
 QFwPLOfu2fdmbcxde0CGRRo4GQcxshMugNMaDVE8EAiBIU37LFiAX32OF
 EwU9QfR4uQyUr0/aa0du6HVNRmBa14oPGKpxcTlOKTovNjcfBgGuL7JVN
 lM6ppSUem93O+ykjZ/Nd4bzQv0a2CBrLBFipuJm/bbP7x7pldn2Mpxjc2
 uCQjvQoRh2L98pPpxwrTnMNv5Y7PB4zW4D7PFNn3nzyBorqcZmFYig8CK
 a4HFr4DEIfpkC9FRMEL7g4FzpKbe6CzOUbEPcQ0jmMngXpjJJRgec3K95 g==;
X-CSE-ConnectionGUID: S8ImaAmOTzugv472hFrYtA==
X-CSE-MsgGUID: 37gdoMjMSsaewEDJnjNWig==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="48112391"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="48112391"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:07:19 -0700
X-CSE-ConnectionGUID: wfv+tZweQ2aQYBqzwC6tQg==
X-CSE-MsgGUID: gwPcqft4RuyIX0OqtIX9xQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="135588375"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.221])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:07:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 6/8] drm/i915/irq: make i915_enable_asle_pipestat() static
Date: Tue,  6 May 2025 16:06:48 +0300
Message-Id: <9511e368c5244aaa04cc45f46e2425737acd29fb.1746536745.git.jani.nikula@intel.com>
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

With all users of i915_enable_asle_pipestat() inside
intel_display_irq.c, we can make the function static.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 7 ++-----
 drivers/gpu/drm/i915/display/intel_display_irq.h | 1 -
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 989b78339aa4..0d72964694ce 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -377,11 +377,8 @@ static bool i915_has_legacy_blc_interrupt(struct intel_display *display)
 	return IS_DISPLAY_VER(display, 3, 4) && display->platform.mobile;
 }
 
-/**
- * i915_enable_asle_pipestat - enable ASLE pipestat for OpRegion
- * @display: display device
- */
-void i915_enable_asle_pipestat(struct intel_display *display)
+/* enable ASLE pipestat for OpRegion */
+static void i915_enable_asle_pipestat(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index 4c0ed476e568..c66db3851da4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -72,7 +72,6 @@ void dg1_de_irq_postinstall(struct intel_display *display);
 u32 i915_pipestat_enable_mask(struct intel_display *display, enum pipe pipe);
 void i915_enable_pipestat(struct intel_display *display, enum pipe pipe, u32 status_mask);
 void i915_disable_pipestat(struct intel_display *display, enum pipe pipe, u32 status_mask);
-void i915_enable_asle_pipestat(struct intel_display *display);
 
 void i9xx_pipestat_irq_ack(struct intel_display *display, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
 
-- 
2.39.5

