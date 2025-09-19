Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 371D6B88A84
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 11:52:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1496B10E979;
	Fri, 19 Sep 2025 09:52:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VMtniVtf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE47610E976;
 Fri, 19 Sep 2025 09:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758275544; x=1789811544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fih863ur/m9ht8VH1ScycXqOXDBTd9VOfXj8oHYQYvM=;
 b=VMtniVtfXD/lnzFprcHL7sWjSx4bz54kkpjaiwla8SrPN0HTUU2TNvWu
 n8QcD5R9d2XHX4YmuczleMus7zexzwf/yL7Fhe9yaTolIGPt4rh5fjXf0
 vJ416GbNkxrzntVumXmBBVDWAnUklbWjL+0gLr2kLwyO5cg+BDzn6WBUC
 Y0Yvqj7LJpqA+M1S6wbaFTEGCIBC1QmxwWtW4mSRV4QL0dpAgEsz7/QLz
 3TjZa9Q29iQwmaUFykEIjIWnypvCDG5F31/s+Q/HXf4+XAM9TKgZs9Aq/
 0PqAcWMd+uKmxwTTlFLNjok9p3bnEjBO/aGlmufNWi2oFdw8Bq1mH9voK g==;
X-CSE-ConnectionGUID: 3OyL9RmSTx6O9l0gL916Yg==
X-CSE-MsgGUID: ikpOe57RRw+3Es4ScUJcEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60316180"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="60316180"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 02:52:16 -0700
X-CSE-ConnectionGUID: 09FdOzdWTKiZgFjD46+aMA==
X-CSE-MsgGUID: 8IEOHnzyT1eaBftSNqIvFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="206554287"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 02:52:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 4/6] drm/i915/irq: move check for HAS_HOTPLUG() inside
 i9xx_hpd_irq_ack()
Date: Fri, 19 Sep 2025 12:51:47 +0300
Message-ID: <babc8ce62bd71fd9cec6dc1893f680153952b3bf.1758275448.git.jani.nikula@intel.com>
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

We want to avoid using the display dependent HAS_HOTPLUG() in generic
irq code. Since the enabling of I915_DISPLAY_PORT_INTERRUPT depends on
HAS_HOTPLUG() to begin with, we don't really expect to get the irqs for
!HAS_HOTPLUG(). At least in theory, checking for HAS_HOTPLUG() inside
i9xx_hpd_irq_ack() should not have any impact.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 3 +++
 drivers/gpu/drm/i915/i915_irq.c                  | 3 +--
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 4f72f3fb9af5..9a4da818ad61 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -420,6 +420,9 @@ u32 i9xx_hpd_irq_ack(struct intel_display *display)
 	u32 hotplug_status = 0, hotplug_status_mask;
 	int i;
 
+	if (!HAS_HOTPLUG(display))
+		return 0;
+
 	if (display->platform.g4x ||
 	    display->platform.valleyview || display->platform.cherryview)
 		hotplug_status_mask = HOTPLUG_INT_STATUS_G4X |
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index f9fbb88b9e26..90174ce9195c 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -931,8 +931,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 
 		ret = IRQ_HANDLED;
 
-		if (HAS_HOTPLUG(display) &&
-		    iir & I915_DISPLAY_PORT_INTERRUPT)
+		if (iir & I915_DISPLAY_PORT_INTERRUPT)
 			hotplug_status = i9xx_hpd_irq_ack(display);
 
 		/* Call regardless, as some status bits might not be
-- 
2.47.3

