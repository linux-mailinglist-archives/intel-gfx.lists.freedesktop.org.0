Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 039BE7AEC58
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 14:19:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1625910E3B9;
	Tue, 26 Sep 2023 12:19:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1CBF10E3C3;
 Tue, 26 Sep 2023 12:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695730755; x=1727266755;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6tk2fbHqdDds+SyN2CcOj7oDyp+NPP4+QGfiDm+VkEU=;
 b=cjLcwwio1BrjlSM3XGSlvY/ZoK/PjKf9FcsMGATtx6Huf/xFb2TGOVh4
 V9Qm4TPBTATi8WCUXUIUOsWOT+gQDBjX2vKDbjgg1qVZUYEundyKG767w
 saA3qw7plVfnzruBdJ8zydUfyV7326DEqww0AXaZRRmMIvFhZWVz6k/Ct
 fXgJlhmjxfLpwJh9gB0zSkfQSeBRdQu9GHGX6GGRCs2XcN7Yyj92KTT1C
 vDl9sK8fMQUeCaNbN8fBVysPV3T1zS30JWGLzZvTaHAb0Ie5zh82HLnhY
 jh/uXsPYJjISHh70lGorRb+yryWiW1rEJj9I8FxUtcfE3CfBm2ZViSxok A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="371884657"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="371884657"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 05:19:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="819012423"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="819012423"
Received: from wagnert-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.202])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 05:19:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gvt-dev@lists.freedesktop.org
Date: Tue, 26 Sep 2023 15:19:02 +0300
Message-Id: <20230926121904.499888-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230926121904.499888-1-jani.nikula@intel.com>
References: <20230926121904.499888-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/gvt: don't include gvt.h from
 intel_gvt_mmio_table.h
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_gvt_mmio_table.c has no need to include the massive
gvt.h. Simplify.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index b3c036a54529..87ecc5104fd9 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -15,8 +15,9 @@
 #include "display/intel_psr_regs.h"
 #include "display/skl_watermark_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
+#include "gt/intel_engine_regs.h"
 #include "gt/intel_gt_regs.h"
-#include "gvt/gvt.h"
+#include "gvt/reg.h"
 
 #include "i915_drv.h"
 #include "i915_pvinfo.h"
-- 
2.39.2

