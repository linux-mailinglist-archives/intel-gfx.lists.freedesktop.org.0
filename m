Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4835B96441
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 16:31:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 805CA10E630;
	Tue, 23 Sep 2025 14:31:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a5ZFk0a3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E79D210E634;
 Tue, 23 Sep 2025 14:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758637894; x=1790173894;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fih863ur/m9ht8VH1ScycXqOXDBTd9VOfXj8oHYQYvM=;
 b=a5ZFk0a3qlVi2AoUSzc0HqKW9wutBIaASG3g9e8lzCXhivfQqyju2jon
 3PXkL6G+hqoW6L81l/ExKaCsG6zBHU3eSjgKOOHnbpEmorB16FZx4SU5E
 jDuIPFKXU3RTIe6L/tfxrIFq0mMPnthiTcVVbncviIB0bJkPzv/0APTGZ
 s1S3r0mLImOZHPib0gW5OkO8fZbSj3/Xcdtgsq+DOg+pBOFKDTeq1H7/K
 xbrMItc8PNLeyOpyF4hVGQPHyVXbhldLpzL0HZtl7ny/+6TMgMmVWFyAU
 AVJJtq0d5tXV/YIPxYQmZkllVW19UnHHNp56qFRCHcxzCNYaYtahalFcE Q==;
X-CSE-ConnectionGUID: vbaSIAhnSrO72dmUalDeWw==
X-CSE-MsgGUID: 0A+8B8Y6T+qE147iXbhdoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60836118"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60836118"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:31:34 -0700
X-CSE-ConnectionGUID: PiEIKFVeTQmtV1nvMloNkQ==
X-CSE-MsgGUID: GSGBmWNdQZ+3ZoRgLX38pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="176720799"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.94])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:31:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 4/5] drm/i915/irq: move check for HAS_HOTPLUG() inside
 i9xx_hpd_irq_ack()
Date: Tue, 23 Sep 2025 17:31:07 +0300
Message-ID: <2f97c077e67667bf420196c7381553d5286da958.1758637773.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758637773.git.jani.nikula@intel.com>
References: <cover.1758637773.git.jani.nikula@intel.com>
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

