Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D4946F022
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:03:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D84A10F76A;
	Thu,  9 Dec 2021 16:55:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0254F89E63
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 16:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639068703; x=1670604703;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/GgfCSVrr+M5zb+1IyY2xwoVr59G06mugNoNXVPX/Iw=;
 b=imj9cTGDQfR+I52h6SQJw+DZwK1qOGs1B/lmA1dbxkJIFpWB2dJOTUtO
 Rsl0ptz140K58ZprSpQj/49eTXgprCLsPsbygk/GpID83Pxb68zaybUOp
 Ged+znySInY7osqQmCqku4K7hIoy3NxQR24ezgJmPMV6Hxs/qyY18SafD
 Fn0rOMRjOmPFCAfoWzqs5P91X7YtlNufBxUVNR2GL3aO3ZBHBBahDyV08
 xMJKD0FUbxYF2mLgnzvtxeaLmkzITN7/DHG/5YFrp1gpYcjB3yWm6KJS3
 7sjO9Niy3W5k9QlKmZKzshTW5YL9iWLCMq1g8LVyGfQAmVb0C+SVM1VTY w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="238374006"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="238374006"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 08:51:43 -0800
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="516377940"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.112])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 08:51:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 18:51:23 +0200
Message-Id: <66f687db7321846049a6aa524dfafd45cf0cb77f.1639068649.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1639068649.git.jani.nikula@intel.com>
References: <cover.1639068649.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/cdclk: un-inline intel_cdclk_state
 functions
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

Hide the details better.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h | 13 ++++++++-----
 2 files changed, 26 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index a216a350006d..84674a4f7226 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2630,6 +2630,24 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state *state)
 	return to_intel_cdclk_state(cdclk_state);
 }
 
+struct intel_cdclk_state *
+to_intel_cdclk_state(struct intel_global_state *cdclk_state)
+{
+	return container_of(cdclk_state, struct intel_cdclk_state, base);
+}
+
+struct intel_cdclk_state *
+intel_atomic_get_old_cdclk_state(struct intel_atomic_state *state)
+{
+	return to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj));
+}
+
+struct intel_cdclk_state *
+intel_atomic_get_new_cdclk_state(struct intel_atomic_state *state)
+{
+	return to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj));
+}
+
 int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 			     bool *need_cdclk_calc)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index bb3a778c506b..77e8c8e1708f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -76,11 +76,14 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 struct intel_cdclk_state *
 intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
 
-#define to_intel_cdclk_state(x) container_of((x), struct intel_cdclk_state, base)
-#define intel_atomic_get_old_cdclk_state(state) \
-	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj))
-#define intel_atomic_get_new_cdclk_state(state) \
-	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj))
+struct intel_cdclk_state *
+to_intel_cdclk_state(struct intel_global_state *cdclk_state);
+
+struct intel_cdclk_state *
+intel_atomic_get_old_cdclk_state(struct intel_atomic_state *state);
+
+struct intel_cdclk_state *
+intel_atomic_get_new_cdclk_state(struct intel_atomic_state *state);
 
 int intel_cdclk_init(struct drm_i915_private *dev_priv);
 
-- 
2.30.2

