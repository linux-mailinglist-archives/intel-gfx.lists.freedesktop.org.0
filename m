Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8AEA9C0DCD
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 19:30:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B06B10E8B3;
	Thu,  7 Nov 2024 18:30:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CkIDjv4f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85CF510E8C7;
 Thu,  7 Nov 2024 18:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731004205; x=1762540205;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Iad2CKhcAUELaMjfgsKbpibE+MrNNnE3xGaCB/3iNN8=;
 b=CkIDjv4f/Z8gSWFoya5OqiwGUy6FqElwEuPtpHLCDKcLKuI2nKxpmQEC
 CC/duWXjZ9SatpRwo4u7b9EZjDQ7/XqwTV+FvluasUDmW6IccZKm+2sN9
 cAlR4m4sz/7ST+AEJrvVkphdLTj+m8UDgcvYdKf+4w0+rddQIGe1OyGly
 wtn8YWFHHT9A7+vcC0n1iKcamKpyuwZeC9PHVqiNQLI+MknShvQ/qi6hu
 XI2neP9uOUON/yCtPFgKOGFEeWd0cqZfUEOLOmP25Fjv4qtaxP4YUUQq5
 kyM9t0+ahpdBAWShzqwR1uIxvmGWtVJ1l5Wqvh7NGmYUq+0zJCSn6JAxA g==;
X-CSE-ConnectionGUID: owmAJPB4QTOjUmYFM93bxg==
X-CSE-MsgGUID: qpZ5U+iKQWimEEmO+sUF9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="18494889"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="18494889"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:30:05 -0800
X-CSE-ConnectionGUID: sXFWKVFKSkenGrKmM+lJRg==
X-CSE-MsgGUID: giMJ9s9KRA6mVN1VkIRPgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85329708"
Received: from rchatre-mobl4.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.154])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:30:04 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 14/18] drm/i915/dmc_wl: Init only after we have runtime
 device info
Date: Thu,  7 Nov 2024 15:27:19 -0300
Message-ID: <20241107182921.102193-15-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241107182921.102193-1-gustavo.sousa@intel.com>
References: <20241107182921.102193-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
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

We should be able to use the DMC wakelock only if the display hardware
has support for DMC. We will add a check for that in an upcoming change.

Since info for DMC availability (HAS_DMC()) needs runtime device info,
move the call to intel_dmc_wl_init() to a place where we know we have
the hardware has been probed for such an info (i.e. after
intel_display_device_info_runtime_init()).

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 56b78cf6b854..4257cc380475 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -200,7 +200,6 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
 	intel_dpll_init_clock_hook(i915);
 	intel_init_display_hooks(i915);
 	intel_fdi_init_hook(i915);
-	intel_dmc_wl_init(&i915->display);
 }
 
 /* part #1: call before irq install */
@@ -238,6 +237,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 		return 0;
 
 	intel_dmc_init(display);
+	intel_dmc_wl_init(display);
 
 	i915->display.wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
 	i915->display.wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
-- 
2.47.0

