Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B32B7DF714
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 16:52:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B71BD10E912;
	Thu,  2 Nov 2023 15:52:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1FA510E912
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 15:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698940355; x=1730476355;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZMNsgUlM42ts/K77pKAGpo++sgluaJrbuIZr+GNA43Q=;
 b=nhf9sWpoCDvLrgW/HQNWg2iqqesOoqmAE7Ci82zXqlcH3/+yon4/jWoU
 hD/FIyI947SiLrnCEUknuHmcxTDuS00bglcoyIbgmWI0ZoPBG31eztvrh
 AUzkjpfza1GhpTY4wnY3d/OeT80tjFsSp+eI81b4TReZSUH3ULPL/hOK5
 WL5J3vNnSZIddjlQ5f2R99UEAWjZSs9wK2CBP2JQV50rhkeRkBJYCndU6
 GiAJbcCpwlEV1vsB+rlvsJt4vcqd4dq84FoLxK/Ghem+Rz/ypu6uyJ54m
 h4sc27NmtJHWik4oF1PSbXgpAfI8uEeshchvLd3v3xwvN7XK8CayDzUhO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="379138014"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="379138014"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:52:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="764965952"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="764965952"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:52:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 17:52:23 +0200
Message-Id: <20231102155223.2298316-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231102155223.2298316-1-jani.nikula@intel.com>
References: <20231102155223.2298316-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: move display spinlock init to
 display code
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The gem code has no business accessing i915->display directly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 1 +
 drivers/gpu/drm/i915/i915_gem.c                     | 2 --
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 0a5b922f2ad6..62f7b10484be 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -181,6 +181,7 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
+	spin_lock_init(&i915->display.fb_tracking.lock);
 	mutex_init(&i915->display.backlight.lock);
 	mutex_init(&i915->display.audio.mutex);
 	mutex_init(&i915->display.wm.wm_mutex);
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index c166ad5e187a..92758b6b41f0 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1306,8 +1306,6 @@ void i915_gem_init_early(struct drm_i915_private *dev_priv)
 {
 	i915_gem_init__mm(dev_priv);
 	i915_gem_init__contexts(dev_priv);
-
-	spin_lock_init(&dev_priv->display.fb_tracking.lock);
 }
 
 void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
-- 
2.39.2

