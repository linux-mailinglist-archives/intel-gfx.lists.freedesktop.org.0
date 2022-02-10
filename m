Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 136004B11F4
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 16:46:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4235D10E89C;
	Thu, 10 Feb 2022 15:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A89F510E89C
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 15:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644507970; x=1676043970;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9fO04LI9kUwO449AOp01VFSFg1WuRYijx8vGIEsdYN4=;
 b=MEui3wvNDQawF3R73cqaRsAklw9rBGFYy/3p5+I1nM8JuYhEU9DjOmhg
 rhdjNJhlDhDZqu4VRVJ3nKtUrVkZORy1BYrhhNLnjeJ+Y2w9W+wzbL2rv
 OoeZtVDvo1txyGd/FkaoRwFtrxPIJRISUxSpeufQ5yRzLdxrs0XMMJhI4
 NOQfdMngkSQCzgJeb9myoo217Z9LQQxZlqv3jQof8cVwKm2fyhQproYMM
 rl1ZMuLXkx6koyiUpLd97t/KxeAB+Eff8AwEkhBbqbEwpOzZEEgZ3JMUb
 HCqTImFN7GWfXrLo5lqdNIYYUT4u565gYAKSHAo8ijPuj/2NL9V7OXOXJ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="249724174"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="249724174"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="482800429"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 17:45:40 +0200
Message-Id: <48f5ace6393533372da5d13df3de0203c8db11b3.1644507885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644507885.git.jani.nikula@intel.com>
References: <cover.1644507885.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 02/14] drm/i915: remove leftover
 i915_gem_pm.h declarations from i915_drv.h
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
Cc: jani.nikula@intel.com, Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove the duplicates.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 3 ---
 drivers/gpu/drm/i915/i915_gem.c | 1 +
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f5d71f0ee0e7..5d6ee867b3a7 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1624,9 +1624,6 @@ void i915_gem_driver_register(struct drm_i915_private *i915);
 void i915_gem_driver_unregister(struct drm_i915_private *i915);
 void i915_gem_driver_remove(struct drm_i915_private *dev_priv);
 void i915_gem_driver_release(struct drm_i915_private *dev_priv);
-void i915_gem_suspend(struct drm_i915_private *dev_priv);
-void i915_gem_suspend_late(struct drm_i915_private *dev_priv);
-void i915_gem_resume(struct drm_i915_private *dev_priv);
 
 int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index e3a2c2a0e156..a70750c48047 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -44,6 +44,7 @@
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_ioctls.h"
 #include "gem/i915_gem_mman.h"
+#include "gem/i915_gem_pm.h"
 #include "gem/i915_gem_region.h"
 #include "gem/i915_gem_userptr.h"
 #include "gt/intel_engine_user.h"
-- 
2.30.2

