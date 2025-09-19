Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5B2B88A8F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 11:52:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C14F10E97E;
	Fri, 19 Sep 2025 09:52:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YXi0sio/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB48F10E975;
 Fri, 19 Sep 2025 09:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758275545; x=1789811545;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ehsMu9aWoozWjVzPrnus81GSuXQ/dHO3m6APN6FKYm4=;
 b=YXi0sio/4+3x9iOlgMjN5l0me+4fqo/Kxn44VyrKNd69n+lE4AWCEFqt
 Ep1Ki2bkkV7QrIlleHPSb1cMPJW63p+hgE/Zcf84//WO4TWczIjDq2Hy1
 HFVMX21ZNUTxyqM8TKxhNNyoSDAJgmq05IIfUFvxDyQUyXl0L/vND5Gof
 Py85G3R7Wex9iJ4ArHGrsQJg/xemtubP1SqFSNQW3pBy36t0zmTVJupKP
 2w8trLVFo7ZpTQA0FP09HYbIkXksA9fjtWTHpmmGNqzdum77WbGpybqfN
 uXkZtne0g+5AmxC4kP9vOf/L5rlGaqZU2YBlrI/kZpUD5LpjoOCNG9uo5 Q==;
X-CSE-ConnectionGUID: 5l41SKkLQAetIDha+wOz0w==
X-CSE-MsgGUID: fX1XeWIbQna6JaJFlHWBtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60316186"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="60316186"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 02:52:22 -0700
X-CSE-ConnectionGUID: wZ2crhtdTw6Rl+7jfREADA==
X-CSE-MsgGUID: K0RHjsFwTCGM9+re21F/Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="206554307"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 02:52:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 5/6] drm/i915/irq: change ILK irq handling order
Date: Fri, 19 Sep 2025 12:51:48 +0300
Message-ID: <76190090bb64597359802dfdf0e925fe478cd0d5.1758275448.git.jani.nikula@intel.com>
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

Handle GEN6_PMIIR before DEIIR. This allows us to further refactor
display irq handling, but separate this change to give us a clean bisect
landing commit for the unlikely case that this makes a difference.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 90174ce9195c..312f7e42931a 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -449,6 +449,15 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 		ret = IRQ_HANDLED;
 	}
 
+	if (GRAPHICS_VER(i915) >= 6) {
+		u32 pm_iir = raw_reg_read(regs, GEN6_PMIIR);
+		if (pm_iir) {
+			raw_reg_write(regs, GEN6_PMIIR, pm_iir);
+			gen6_rps_irq_handler(&to_gt(i915)->rps, pm_iir);
+			ret = IRQ_HANDLED;
+		}
+	}
+
 	de_iir = raw_reg_read(regs, DEIIR);
 	if (de_iir) {
 		raw_reg_write(regs, DEIIR, de_iir);
@@ -459,15 +468,6 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 		ret = IRQ_HANDLED;
 	}
 
-	if (GRAPHICS_VER(i915) >= 6) {
-		u32 pm_iir = raw_reg_read(regs, GEN6_PMIIR);
-		if (pm_iir) {
-			raw_reg_write(regs, GEN6_PMIIR, pm_iir);
-			gen6_rps_irq_handler(&to_gt(i915)->rps, pm_iir);
-			ret = IRQ_HANDLED;
-		}
-	}
-
 	raw_reg_write(regs, DEIER, de_ier);
 	if (sde_ier)
 		raw_reg_write(regs, SDEIER, sde_ier);
-- 
2.47.3

