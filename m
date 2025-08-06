Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B81AB1CA11
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 18:55:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17CE410E7AA;
	Wed,  6 Aug 2025 16:55:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gswrQeFB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E47510E7AA;
 Wed,  6 Aug 2025 16:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754499328; x=1786035328;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k/S9Oq0CCTwlxqZ9GMd1sxiFPgKyNGLq064UzsA4sPU=;
 b=gswrQeFBPZrqO/ZepYLjATzeEboRCI3pNpN3wUqqL7o78WYYMFUCaeQJ
 Q96FLo+tLoa08kM6P8lSZOx8hRUwBn3rCYUToHG2UB7PIqNO8Jrv3yUwY
 KgYaZjEG8pF4qhYC8UN87BoXHkZZLfBlZho/pjiaaHLlxNjGceSSRJgL5
 2jLb1EEWlNZPfzadUO0yhwM7U1B9/jok5Ow8bKcg4qJUw0LBs8Yy2KtXr
 x7/ssrQMzEGyxbWVAa08p7eY24+QNpQ5Llqks6toBG1Z7+cLtGcnMeGcb
 fIheGef5I1vniSsT1ynSq2t64rwd6L4xtoDAZptoTjOstYVduk72Ng2qB A==;
X-CSE-ConnectionGUID: QDSTkPk3Q9S0a3McQi7Qzw==
X-CSE-MsgGUID: J9XwEtGHQBqaDwS+0DOFZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="68199661"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="68199661"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:55:28 -0700
X-CSE-ConnectionGUID: /G1rAV9yQBisNhVq/5P0kw==
X-CSE-MsgGUID: Z8iQiHXDTmS+7+pPgtzRdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="195659253"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:55:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 01/15] drm/i915/display: pass display to HAS_PCH_*() macros
Date: Wed,  6 Aug 2025 19:55:02 +0300
Message-Id: <c521c9fa8b7d2c9a04d472f6c541a41822f76327.1754499174.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754499174.git.jani.nikula@intel.com>
References: <cover.1754499174.git.jani.nikula@intel.com>
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

Convert some leftover i915 usages to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index fb25ec8adae3..cbf6ed62825c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1986,20 +1986,17 @@ void vlv_display_irq_postinstall(struct intel_display *display)
 
 void ibx_display_irq_reset(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	if (HAS_PCH_NOP(i915))
+	if (HAS_PCH_NOP(display))
 		return;
 
 	gen2_irq_reset(to_intel_uncore(display->drm), SDE_IRQ_REGS);
 
-	if (HAS_PCH_CPT(i915) || HAS_PCH_LPT(i915))
+	if (HAS_PCH_CPT(display) || HAS_PCH_LPT(display))
 		intel_de_write(display, SERR_INT, 0xffffffff);
 }
 
 void gen8_display_irq_reset(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	enum pipe pipe;
 
 	if (!HAS_DISPLAY(display))
@@ -2016,7 +2013,7 @@ void gen8_display_irq_reset(struct intel_display *display)
 	intel_display_irq_regs_reset(display, GEN8_DE_PORT_IRQ_REGS);
 	intel_display_irq_regs_reset(display, GEN8_DE_MISC_IRQ_REGS);
 
-	if (HAS_PCH_SPLIT(i915))
+	if (HAS_PCH_SPLIT(display))
 		ibx_display_irq_reset(display);
 }
 
-- 
2.39.5

