Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FF14859A1
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 20:57:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5487D10E442;
	Wed,  5 Jan 2022 19:57:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03D5D10E442
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 19:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641412647; x=1672948647;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AEjKO+8GGtO04h6ZiyGp5biTZGl22nIHMYcXZHTTeJI=;
 b=V5GMgtiuqfr4cINPkRdDWGa7eiaIiUzJJWhIgWopgAThnwwdHSvPlySP
 cFQgn/Z6O6PT2zWEgIykrwtUtenNhaozwfNh6paSy7/IJHcxVM2GktQ0X
 bL1RPoHSNG6Ox46bSwoGDC2EgOe4IGEegHX4fIRWpRjM+NjyhYINHb5cc
 oVMF7rOhNlf98QyGkFSkOTPV9k9Xt6ZXxdfKbFlLhSSfncQ41ABl7olxM
 UTguj3jTOlTg3DqVA+bJiS/E1n7WsPF7cBWnfM1EBwAO6zEFVks/Eqj5I
 5Jfxe756JxNoxMAU/oZQD1Igaa3bN494SClTNoov0/ZyFKKvaEf6sJiq0 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="229341362"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="229341362"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:57:26 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="526671030"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:57:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 21:56:24 +0200
Message-Id: <9135cf050d8c3f477447b4eebcbdb349ed6eafe9.1641411696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641411696.git.jani.nikula@intel.com>
References: <cover.1641411696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/21] drm/i915: remove leftover i915_gem_pm.h
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
 drivers/gpu/drm/i915/i915_drv.h | 4 ----
 drivers/gpu/drm/i915/i915_gem.c | 1 +
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 7afe5b3927a4..cbee09231fdb 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1658,10 +1658,6 @@ static inline u32 i915_reset_engine_count(struct i915_gpu_error *error,
 	return atomic_read(&error->reset_engine_count[engine->uabi_class]);
 }
 
-void i915_gem_suspend(struct drm_i915_private *dev_priv);
-void i915_gem_suspend_late(struct drm_i915_private *dev_priv);
-void i915_gem_resume(struct drm_i915_private *dev_priv);
-
 int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
 				    enum i915_cache_level cache_level);
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 5ef959a9f594..7b66d90318ce 100644
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

