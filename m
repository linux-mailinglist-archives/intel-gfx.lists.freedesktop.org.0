Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E2B9BF8B8
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 22:53:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03CF110E78F;
	Wed,  6 Nov 2024 21:53:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jJ6gKGkI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FF8010E785;
 Wed,  6 Nov 2024 21:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730929990; x=1762465990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/1sv6GKAIvElXC1kWveHZZSTSNXBqCaF6OSBk/+K6Zs=;
 b=jJ6gKGkIAEpKYu1hiXOPrkbt+TujJOmS//WrO3+4AUBTJgzfHmS3SZ4O
 uTn7LZh5I/5J1WbwN2Qhg45mlBSnCeOIW/dUzp7tW5YOyOyrK7MefKmOb
 W75VZ2q6GCVdBj2hbjo3qPiuMbO7XECzsGCTbTu4EfM8U9752J8LfZnEx
 cJBSwXukI/qzBfk+zu2Plwv1EbMe4K0N7BibX7qtayoq0bnNTivJVxLaz
 XWp9IRJLw2jIgS/GAUBL+5YPgl9tFOS0cDfIL5eImdaJFNo/1txPWU5LU
 mi6oMAEmc+TWguTNKjB6VmhKaFq//AIvqmyK9Xz/nH+gyK+G6Y5iJsBRH A==;
X-CSE-ConnectionGUID: G7YOdCxcQuaZSgcBtuVBEQ==
X-CSE-MsgGUID: KqrHZZQ4RrG29Df4CjjPQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48212202"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48212202"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:53:05 -0800
X-CSE-ConnectionGUID: OgPEuVQzR6CmTf4VY89nvg==
X-CSE-MsgGUID: AOXnpEQQRiWJhiR3Y3eSRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84882514"
Received: from puneetse-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.118])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:53:04 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 14/17] drm/i915/dmc_wl: Init only after we have runtime
 device info
Date: Wed,  6 Nov 2024 18:50:40 -0300
Message-ID: <20241106215231.103474-15-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106215231.103474-1-gustavo.sousa@intel.com>
References: <20241106215231.103474-1-gustavo.sousa@intel.com>
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

