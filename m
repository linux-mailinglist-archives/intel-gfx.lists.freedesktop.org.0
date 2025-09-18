Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6376DB83932
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 10:42:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED5E910E689;
	Thu, 18 Sep 2025 08:41:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KzqvGXJw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16DCA10E685;
 Thu, 18 Sep 2025 08:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758184919; x=1789720919;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4nUhqANXmI6+bgD2S+v9uM9WWjENE6Q3mFphNyU8iLo=;
 b=KzqvGXJwYMqPJfEp9HbFapGJhrwMvEJdi0dQW7isb9TmICiToYxNODxk
 sJlHaN8QfkMcExwKGAIjjR+XvDj1/4L5HX8gxvsZeANkToZwATmHvKHCi
 tN2LS/7CdEOGNmXMRz6id4FvxkpBQN3aRHFPhxxXasX8Bz2vlY2hKl8y4
 TwBSGEtdqwXCU67DASFy5TE+CilqQzmekxYQ3mgj8n7hEuunMXeOI6aHy
 iskiiewBaG/SBmQgDSSSmSpqreW4stKkK8u0Easni4NQKgx1npBthk8lC
 3zH9Pp0B7NWNWtDDPU4wSdOXpW/LTB8UOXqS4wN67ezfdAnWYoBSo94gH g==;
X-CSE-ConnectionGUID: JFmqA7biSXCIY9mQQfyT7A==
X-CSE-MsgGUID: dETuLOlmQCe1HZwT4Ch6Iw==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="77946269"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="77946269"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:59 -0700
X-CSE-ConnectionGUID: 3QRT3oKoSH6L1OZ1RDmcSA==
X-CSE-MsgGUID: m0QlG7lDQiyaEXdmxEHKhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="206427999"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 10/10] drm/i915/fbdev: drop dependency on display in i915
 specific code
Date: Thu, 18 Sep 2025 11:41:00 +0300
Message-ID: <a2faad2b47c63ea773a96b2885fb759602374264.1758184771.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758184771.git.jani.nikula@intel.com>
References: <cover.1758184771.git.jani.nikula@intel.com>
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

This code is in fact i915 driver core rather than display specific. Stop
using struct intel_display, and drop the dependency on display headers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 8af409bff0f0..56b145841473 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -8,13 +8,10 @@
 #include "gem/i915_gem_lmem.h"
 
 #include "i915_drv.h"
-#include "intel_display_core.h"
-#include "intel_display_types.h"
 #include "intel_fbdev_fb.h"
 
 struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size)
 {
-	struct intel_display *display = to_intel_display(drm);
 	struct drm_i915_private *dev_priv = to_i915(drm);
 	struct drm_i915_gem_object *obj;
 
@@ -31,7 +28,7 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
 		 *
 		 * Also skip stolen on MTL as Wa_22018444074 mitigation.
 		 */
-		if (!display->platform.meteorlake && size * 2 < dev_priv->dsm.usable_size)
+		if (!IS_METEORLAKE(dev_priv) && size * 2 < dev_priv->dsm.usable_size)
 			obj = i915_gem_object_create_stolen(dev_priv, size);
 		if (IS_ERR(obj))
 			obj = i915_gem_object_create_shmem(dev_priv, size);
-- 
2.47.3

