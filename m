Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A79AEB88A7C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 11:52:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB86210E977;
	Fri, 19 Sep 2025 09:52:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mrth6XT8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52B3A10E976;
 Fri, 19 Sep 2025 09:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758275525; x=1789811525;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pVDS2NiM3HguC8LJsEgxD0y7YfvRgGTJdhoP9+oQVnU=;
 b=Mrth6XT8+gjUpsU44apn/Gxs3k7iENZmM1tIH6/o70br07nwcfxItS6L
 xITujW8NHC25k1MAt1REbWdE5kOQJP4APglvEwNIgdwnwO1nEaoVWKaLD
 CMBXPFaKZJAFn8Z+O4uEm3w3MkePSXnEFmkhu83dDSKH8cxj7EdUtoeF4
 8xQ2OM+WdqHgpTjjvOqlwOsVyJBlqsGyO8Vn0e4rtEsXBCKVGm47m963M
 CscS68mCYGCSIXTOsPsJPpYSCbf+Zi6VIzTaD4Dr/AyOwZ+mkkc7ucy6b
 Q1ArgQrwY1rhV+UMOpJQKOnaqJ0Qh+Q5IGQ5m9i5zTnqjVsY0BJQXuV4l A==;
X-CSE-ConnectionGUID: bhotLNHpSvSd+voZnkHKJQ==
X-CSE-MsgGUID: f3sNiM0YQ5iGRc+l6n24UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60316157"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="60316157"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 02:52:01 -0700
X-CSE-ConnectionGUID: rfWSmfBnSR2oXiAIJwXV3g==
X-CSE-MsgGUID: 66KYZzM7Qgi0CNy7KiD1bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="206554233"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 02:51:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 1/6] drm/i915/irq: drop intel_psr_regs.h include
Date: Fri, 19 Sep 2025 12:51:44 +0300
Message-ID: <5e887b632bac16b5242ac2a65583feaa59540571.1758275448.git.jani.nikula@intel.com>
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

i915_irq.c no longer needs display/intel_psr_regs.h. Drop it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 7c7c6dcbce88..56f231591a3e 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -38,7 +38,6 @@
 #include "display/intel_hotplug.h"
 #include "display/intel_hotplug_irq.h"
 #include "display/intel_lpe_audio.h"
-#include "display/intel_psr_regs.h"
 
 #include "gt/intel_breadcrumbs.h"
 #include "gt/intel_gt.h"
-- 
2.47.3

