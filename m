Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 848C54B5905
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 18:45:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8FAE10E273;
	Mon, 14 Feb 2022 17:45:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE68F10E273
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 17:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644860720; x=1676396720;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ErwG8ATEGSFsvpVr9A1/vGTJGZErhVX8CjRCfqydbDM=;
 b=Hovu2Vp6tfODIVKpCcgqg2PPPEdHMeHl9zxBXPNCiMw7L5fcA5oiqVVa
 +NEesiWFAGSL2glA7LTxJ+N5iIBSHcnNjJ32w9ZbID2nVzD9C1a8RtARf
 gEhkT1NO8NhxNtIgfrrJVfGaz/sZcPTRhv0XIAbcLwA2G4OgkUUlSHul4
 83dRCDRID/oax7R3F+cgYB/UFIlYPFmbX3x+pfB2OA2DWsTPDogEwtDXx
 EDpkULUP4xj5gYBgeMCm8Bfk7jO36WgDKIpN/9jegTrHulVQtZmzG0WFt
 ed77dBx/Uko96mhrw/JFTtOzbPUvxlSyS4aQE3eF4mp344OsBpsuhWxdH A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="230110203"
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="230110203"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 09:38:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="528315029"
Received: from unknown (HELO localhost) ([10.252.13.38])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 09:38:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Feb 2022 19:38:10 +0200
Message-Id: <20220214173810.2108975-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220214173810.2108975-1-jani.nikula@intel.com>
References: <20220214173810.2108975-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/lrc: replace include with forward
 declarations
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

Prefer forward declarations over includes if possible.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 2 ++
 drivers/gpu/drm/i915/gt/intel_lrc.h | 5 +++--
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 5b107b698b65..004e1216e654 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -8,6 +8,8 @@
 #include "gen8_engine_cs.h"
 #include "i915_drv.h"
 #include "i915_perf.h"
+#include "i915_reg.h"
+#include "intel_context.h"
 #include "intel_engine.h"
 #include "intel_engine_regs.h"
 #include "intel_gpu_commands.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
index 2af85a15a370..0b76f096b559 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
@@ -8,11 +8,12 @@
 
 #include <linux/types.h>
 
-#include "intel_context.h"
-
 struct drm_i915_gem_object;
+struct i915_gem_ww_ctx;
+struct intel_context;
 struct intel_engine_cs;
 struct intel_ring;
+struct kref;
 
 /* At the start of the context image is its per-process HWS page */
 #define LRC_PPHWSP_PN	(0)
-- 
2.30.2

