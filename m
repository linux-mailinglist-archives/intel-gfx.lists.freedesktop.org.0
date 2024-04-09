Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AFB89D92F
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 14:27:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40AEE10FA38;
	Tue,  9 Apr 2024 12:27:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mERkUJ5N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F079710F7D4;
 Tue,  9 Apr 2024 12:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712665623; x=1744201623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mxnSkWNpHjCU4Cpzbi/giRiyO5arCKLtIgRnBoVN8bM=;
 b=mERkUJ5NoDC2jMXM93igAt3+2vakP/7n0IktleqxX9mdsZbi7yoHUgqk
 veaVpBAiUkmjs4AjnY+zJ96P6LZc6JjGjVKnqsDK3fYR7+5KQf316FeWK
 OAjfXZiii6tVUszi3Pj1X5uWnTAnGEO8R/LFYWkL+six5MvsrR4vWoY7m
 TJFJZlmLq8rE05Sv4VQOqK6jZrCJDXaOfJSFqM5CBpkaZJNcUs8jLOqw/
 vfvQJJE9NsjvZ0VbjGVUI9DwpRP3nhVubC7kHtqadfP9W8ruhf4ZVzo03
 vzMX6QfB6xIPpWsKRT2B+sK2ddfYI6A7ySWGPX1Vw33PZh4vN2owuVSbY w==;
X-CSE-ConnectionGUID: w6+bzKTgS/CfZAsm/R3fGA==
X-CSE-MsgGUID: mFxX4sYRTk6rxu7eeC/wYA==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="10948462"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="10948462"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 05:27:03 -0700
X-CSE-ConnectionGUID: bELLiYNkREGARHdXs2iGDw==
X-CSE-MsgGUID: maa9xySPRSiRt1Pyl19FXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="24695692"
Received: from mserban-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.59.228])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 05:27:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net
Subject: [PATCH v3 1/7] drm/i915/display: add intel_display -> drm_device
 backpointer
Date: Tue,  9 Apr 2024 15:26:43 +0300
Message-Id: <aedbc76b3d01e25bea691b61a331f71a7c63f3b3.1712665176.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712665176.git.jani.nikula@intel.com>
References: <cover.1712665176.git.jani.nikula@intel.com>
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

As a baby step towards making struct intel_display the main data
structure for display, add a backpointer to struct drm_device that can
be used instead of &i915->drm.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h   | 3 +++
 drivers/gpu/drm/i915/display/intel_display_device.c | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index db9b6492758e..368a4953bc1b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -282,6 +282,9 @@ struct intel_wm {
 };
 
 struct intel_display {
+	/* drm device backpointer */
+	struct drm_device *drm;
+
 	/* Display functions */
 	struct {
 		/* Top level crtc-ish functions */
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index b8903bd0e82a..120e209ee74a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -927,6 +927,9 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	const struct intel_display_device_info *info;
 	u16 ver, rel, step;
 
+	/* Add drm device backpointer as early as possible. */
+	i915->display.drm = &i915->drm;
+
 	if (HAS_GMD_ID(i915))
 		info = probe_gmdid_display(i915, &ver, &rel, &step);
 	else
-- 
2.39.2

