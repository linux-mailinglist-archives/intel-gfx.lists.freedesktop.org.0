Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A00737A0025
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 11:35:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1570F10E55A;
	Thu, 14 Sep 2023 09:35:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 687C710E55F
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 09:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694684111; x=1726220111;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r372Xjo2hOZvG+Y7K1UeqO3iCAXLZDFnpRBxBrv57Jc=;
 b=Ng/r5nChRPRK0QF2w5y4DGNl7TpksfoQ9QOgQpmrOCJZdKk99mbQCgvt
 V1xRnjBLbhhC+4vST/8uHFch8ezv0iFq0y5/4ZKkdDMgH9KLSFAagJYe0
 t/9/N33aFCwEZBUL/Uckh1iycJb2SjwwM+t+kWzaG8wHNKVHdWQeCjls5
 yju6hRysQgftDx6B5C/791Hsze9Bk2ZAtERVHB86ppytYL0yBRaHDignZ
 Z2jerv9kLpFPErz4+YZLPCoL6iR4PZCjXJINxf0pNqxqgwmSx/U2GVCuh
 qpXRm1Yy2osQ2Zkj1YpKI6bQFuetBxCIXk4lVAFMZOsgGg6bwjeM6evLP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="409856701"
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000"; d="scan'208";a="409856701"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 02:35:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="773825322"
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000"; d="scan'208";a="773825322"
Received: from haslam-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 02:35:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 12:34:58 +0300
Message-Id: <593285450602c259b6985972d68511190c754bf5.1694684044.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1694684044.git.jani.nikula@intel.com>
References: <cover.1694684044.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/fb: replace GEM_WARN_ON() with
 drm_WARN_ON()
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

Avoid using GEM_WARN_ON() in display code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index fffd568070d4..7b42aef37d2f 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -35,7 +35,8 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
 	 * We are not syncing against the binding (and potential migrations)
 	 * below, so this vm must never be async.
 	 */
-	GEM_WARN_ON(vm->bind_async_flags);
+	if (drm_WARN_ON(&dev_priv->drm, vm->bind_async_flags))
+		return ERR_PTR(-EINVAL);
 
 	if (WARN_ON(!i915_gem_object_is_framebuffer(obj)))
 		return ERR_PTR(-EINVAL);
-- 
2.39.2

