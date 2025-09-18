Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2823AB8492D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 14:26:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22C8410E12E;
	Thu, 18 Sep 2025 12:26:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UjQhMNSB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40E0010E12E;
 Thu, 18 Sep 2025 12:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758198373; x=1789734373;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xL+8Nh58CuKwpbrhV3mZYCLUcX8Ijm/j6jPbU2DrUEk=;
 b=UjQhMNSBQ2ZrtBS/qvMmgS4YiZ/DrWflsk857HqVwm0w+ejA+5WZ8z20
 KptWi/NeeefrqZZtO7wxqsA3FpMqObsycTEzZQEuX8RZR6/J83xVZwW0K
 tN0aC3jX5VoK42SPLBX1PnSxBmjSj5POFdmVSzXosmw44o+C3wth5wfxw
 ZbSV7gV9W3F3Ij71Glie2zyp0qMuPvEUHNVIyRMZk/Pkanf6vFjHngtWQ
 R9JT90rGsRKasfDfcUQ45CT4Cb/Osxt7WM+W6SDOuVrI8cCpySbwKZxD9
 m5k7jM00MlMnfr2uEqAzIX+PWLD3N3qDvlTZCBfUGdU0h0sErAcLS51et A==;
X-CSE-ConnectionGUID: n4+KheiQSQ6xwDptjBI3AA==
X-CSE-MsgGUID: AGi2E5FoQPGJyt4Nfn+eig==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="60674889"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="60674889"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 05:26:12 -0700
X-CSE-ConnectionGUID: ayt3QCvXRKifNZ1c1V3kNQ==
X-CSE-MsgGUID: 5+cKpILJRsmN3PGkm1D90A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="179525183"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 05:26:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 4/5] drm/i915/irq: rename de_irq_mask[] to de_pipe_imr_mask[]
Date: Thu, 18 Sep 2025 15:25:47 +0300
Message-ID: <55bbf17df871331c2c34af748cf9cf812d6a65d7.1758198300.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758198300.git.jani.nikula@intel.com>
References: <cover.1758198300.git.jani.nikula@intel.com>
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

Rename the struct intel_display de_irq_mask[] member to
de_pipe_imr_mask[] to reflect its usage more accurately.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h    |  6 +++++-
 drivers/gpu/drm/i915/display/intel_display_irq.c | 16 ++++++++--------
 2 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 4a52bbe327b7..df4da52cbdb3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -485,7 +485,11 @@ struct intel_display {
 		 * bitfield.
 		 */
 		u32 ilk_de_imr_mask;
-		u32 de_irq_mask[I915_MAX_PIPES];
+		/*
+		 * Cached value of BDW+ DE pipe IMR to avoid reads in updating
+		 * the bitfield.
+		 */
+		u32 de_pipe_imr_mask[I915_MAX_PIPES];
 		u32 pipestat_irq_mask[I915_MAX_PIPES];
 	} irq;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index f4ba9b08e044..93c2e42f98c9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -215,13 +215,13 @@ static void bdw_update_pipe_irq(struct intel_display *display,
 	if (drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv)))
 		return;
 
-	new_val = display->irq.de_irq_mask[pipe];
+	new_val = display->irq.de_pipe_imr_mask[pipe];
 	new_val &= ~interrupt_mask;
 	new_val |= (~enabled_irq_mask & interrupt_mask);
 
-	if (new_val != display->irq.de_irq_mask[pipe]) {
-		display->irq.de_irq_mask[pipe] = new_val;
-		intel_de_write(display, GEN8_DE_PIPE_IMR(pipe), display->irq.de_irq_mask[pipe]);
+	if (new_val != display->irq.de_pipe_imr_mask[pipe]) {
+		display->irq.de_pipe_imr_mask[pipe] = new_val;
+		intel_de_write(display, GEN8_DE_PIPE_IMR(pipe), display->irq.de_pipe_imr_mask[pipe]);
 		intel_de_posting_read(display, GEN8_DE_PIPE_IMR(pipe));
 	}
 }
@@ -2085,8 +2085,8 @@ void gen8_irq_power_well_post_enable(struct intel_display *display,
 
 	for_each_pipe_masked(display, pipe, pipe_mask)
 		intel_display_irq_regs_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
-					    display->irq.de_irq_mask[pipe],
-					    ~display->irq.de_irq_mask[pipe] | extra_ier);
+					    display->irq.de_pipe_imr_mask[pipe],
+					    ~display->irq.de_pipe_imr_mask[pipe] | extra_ier);
 
 	spin_unlock_irq(&display->irq.lock);
 }
@@ -2300,12 +2300,12 @@ void gen8_de_irq_postinstall(struct intel_display *display)
 	}
 
 	for_each_pipe(display, pipe) {
-		display->irq.de_irq_mask[pipe] = ~de_pipe_masked;
+		display->irq.de_pipe_imr_mask[pipe] = ~de_pipe_masked;
 
 		if (intel_display_power_is_enabled(display,
 						   POWER_DOMAIN_PIPE(pipe)))
 			intel_display_irq_regs_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
-						    display->irq.de_irq_mask[pipe],
+						    display->irq.de_pipe_imr_mask[pipe],
 						    de_pipe_enables);
 	}
 
-- 
2.47.3

