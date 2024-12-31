Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1814E9FF0AC
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2024 17:27:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADD2610E68B;
	Tue, 31 Dec 2024 16:27:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SjyrbznO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E98110E68A;
 Tue, 31 Dec 2024 16:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735662473; x=1767198473;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3CtRBsuw4OPMBod/ch3HnxoHjxjy99P2bcKwPKcOt8A=;
 b=SjyrbznOjnWf1NNAJ/e/Hpd2KUpPSurQyBgJMlaIsXbvvS7LBblE5Pip
 4/gzRX/oqUidkvvAaez+UnKImwk6S3mcR/GDqIj+Lg0zwggkyls6yusn1
 175QDIMGt5O2m4HN1VCWqeW68ux7le1zkd83HPmMA4EC6H/vjXYjVv1+u
 oI6qFwXNSyN1aAifB3lVitRodj7BKXr/6PhKqKqStfYcnThwXFffFfCW2
 T+f4P2PS8YfcwTvOrpzuiRkjyPNlVL2Af5yix3c0ft6GejVw+tfpVR7Nc
 9RyZuCijBv+Qlf/Tt2lnXFUHhqJjlZpuLWRsEMGfGsBiZbiao7TUubi9j g==;
X-CSE-ConnectionGUID: 4sjx+GB5QnW5hdU89uUEIA==
X-CSE-MsgGUID: JtaJSGBtSsOWx9VmFpFjnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="35251978"
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="35251978"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 08:27:53 -0800
X-CSE-ConnectionGUID: RSIGLX3bQ0euRBsosczbVQ==
X-CSE-MsgGUID: GG6ONFUJQVO7NycTn9fYpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="100924923"
Received: from iklimasz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 08:27:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Gustavo Sousa <gustavo.sousa@intel.com>,
 ville.syrjala@linux.intel.com
Subject: [PATCH 1/4] drm/i915/pmdemand: convert to_intel_pmdemand_state() to a
 function
Date: Tue, 31 Dec 2024 18:27:37 +0200
Message-Id: <10324781f9f7eae5a92506aaa7a40403efd345dd.1735662324.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735662324.git.jani.nikula@intel.com>
References: <cover.1735662324.git.jani.nikula@intel.com>
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

In preparation for making struct intel_pmdemand_state an opaque type,
convert to_intel_pmdemand_state() to a function.

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

This is the simplest change. There could be other alternatives.

Outside of intel_pmdemand.c, this is only used to convert
display.pmdemand.obj.state to struct intel_pmdemand_state *. Maybe we
could just pass the global object or state pointer instead? Or we could
have a function to get the current state from, say, struct
intel_display? What we currently have is a bit cumbersome.
---
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_pmdemand.h | 3 +--
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index cdd314956a31..69b40b3735b3 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -15,6 +15,11 @@
 #include "intel_pmdemand.h"
 #include "skl_watermark.h"
 
+struct intel_pmdemand_state *to_intel_pmdemand_state(struct intel_global_state *obj_state)
+{
+	return container_of(obj_state, struct intel_pmdemand_state, base);
+}
+
 static struct intel_global_state *
 intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/drm/i915/display/intel_pmdemand.h
index a1c49efdc493..89296364ec3b 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.h
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
@@ -43,8 +43,7 @@ struct intel_pmdemand_state {
 	struct pmdemand_params params;
 };
 
-#define to_intel_pmdemand_state(global_state) \
-	container_of_const((global_state), struct intel_pmdemand_state, base)
+struct intel_pmdemand_state *to_intel_pmdemand_state(struct intel_global_state *obj_state);
 
 void intel_pmdemand_init_early(struct drm_i915_private *i915);
 int intel_pmdemand_init(struct drm_i915_private *i915);
-- 
2.39.5

