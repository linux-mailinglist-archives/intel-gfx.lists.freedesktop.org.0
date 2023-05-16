Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC75704DC8
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 14:29:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DADA10E0A0;
	Tue, 16 May 2023 12:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 657A210E0A0
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 12:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684240173; x=1715776173;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NH7Xj0AvqNK/DZL+FyNlcAMpO1BHL4IrFNQ7YB2St2U=;
 b=luw0kjwHRPrRMDATyGUDGTG6Ny7REEuJmOpzK5Ovo9ZEUCxSeospCX10
 AC0WaDb3ePCTeYQGIx95xn8LuQDLmaFFKSOPOvzoXsVlfw+mEcVLPeMce
 U1J48keNrlclBaimahzlR5wV+zxz3DU0Dg4p54GKLJYu+EI6Ve0Z1Poxg
 HJnPgsO1Gvy8h8+3H0w6cQk0KfnyGfIXrQjja1BKojC2bK4vbgNBBF3rq
 mw9VLwlIs3Aygqx2M/VlMggwhSNHmVnvK207N1R/SNb/I9L4hAP6usMVQ
 Aju0YI9iVhVZYOcE3cSIrtLrGYFhBvwreAMHe4O99rxwxvJjhzLvSGgn/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="414869515"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="414869515"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 05:29:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="771019865"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="771019865"
Received: from khach-mobl.ger.corp.intel.com (HELO localhost) ([10.252.49.69])
 by fmsmga004-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 May 2023 05:29:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 May 2023 15:29:26 +0300
Message-Id: <20230516122926.2720581-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: fix intel_display_irq.c include order
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

I meant to sort the includes before submitting commit 2b874a027810
("drm/i915/irq: split out display irq handling") but forgot, and it
wasn't noticed in review either. Sort the includes.

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 0eedd1ebb389..3b2a287d2041 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -3,23 +3,23 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include "gt/intel_rps.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
 #include "icl_dsi_regs.h"
-#include "intel_display_irq.h"
-#include "intel_display_types.h"
-#include "intel_hotplug_irq.h"
-#include "intel_psr_regs.h"
 #include "intel_crtc.h"
+#include "intel_de.h"
+#include "intel_display_irq.h"
 #include "intel_display_trace.h"
+#include "intel_display_types.h"
 #include "intel_dp_aux.h"
-#include "intel_gmbus.h"
+#include "intel_fdi_regs.h"
 #include "intel_fifo_underrun.h"
+#include "intel_gmbus.h"
+#include "intel_hotplug_irq.h"
 #include "intel_psr.h"
-#include "intel_fdi_regs.h"
-#include "gt/intel_rps.h"
-#include "intel_de.h"
+#include "intel_psr_regs.h"
 
 static void
 intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
-- 
2.39.2

