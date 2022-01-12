Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEDF48C045
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 09:52:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5D63112E54;
	Wed, 12 Jan 2022 08:51:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E810B112E34
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 08:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641977502; x=1673513502;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qXN8s4HlRE92d3NhR/jeomn75x+gW+ObBJblHWa9ol8=;
 b=bhbDdiN4HIXMPUobUiVkarECDhPCo3qZegQJPcLUoOyDP8UPkwoodA2x
 UHobcqdVQLkVT3gpPGZm8WLvV/OL1JHmq6NXsCOVcJkZ2CgUeFLfHPhxq
 XIkpKQdad2Ay0GctTsdFKO6m4agQuiPAfh1JvkmPmEXlrqYWQPI5S8Vu/
 Y1YFL02rIr24I1/tNUvcm3ETdVOTUYca3WKi00UfM7x736uJsZE6sdUaQ
 XziGsHNkC1CbmfROuc06KShKrv98qMLW3BnFZQNbkfk099OLtIgxF9R4c
 MlUOOxaA+i+Ptx0L9546pufeijDLpWP6X6K9j0Mf+DlXOjeopcIWg1Jez w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="243488601"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="243488601"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 00:51:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="515409864"
Received: from pmasonx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.224])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 00:51:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jan 2022 10:51:25 +0200
Message-Id: <e3ed9d1afe72bb6bdb7c7f87c9b436bd7ab2e070.1641977369.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641977368.git.jani.nikula@intel.com>
References: <cover.1641977368.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: remove leftover i915_gem_pm.h
 declarations from i915_drv.h
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

Remove the duplicates.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 3 ---
 drivers/gpu/drm/i915/i915_gem.c | 1 +
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b443946e1516..74bcb8901772 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1687,9 +1687,6 @@ void i915_gem_driver_register(struct drm_i915_private *i915);
 void i915_gem_driver_unregister(struct drm_i915_private *i915);
 void i915_gem_driver_remove(struct drm_i915_private *dev_priv);
 void i915_gem_driver_release(struct drm_i915_private *dev_priv);
-void i915_gem_suspend(struct drm_i915_private *dev_priv);
-void i915_gem_suspend_late(struct drm_i915_private *dev_priv);
-void i915_gem_resume(struct drm_i915_private *dev_priv);
 
 int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 7188db42c85b..49e4e567114a 100644
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

