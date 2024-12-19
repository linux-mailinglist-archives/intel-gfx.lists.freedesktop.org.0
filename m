Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F32B9F8751
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 22:49:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC0B110EDE9;
	Thu, 19 Dec 2024 21:49:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ml6LBZLQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73BB110EDE9;
 Thu, 19 Dec 2024 21:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734644979; x=1766180979;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h7B9pCEcsDRpbCbnTIvSw39Hasy5sUXB1hhaaRUp3iQ=;
 b=ml6LBZLQOCt+9JDIP6hHCL4zVIiNGvwC9mxBJlwGKqejINad13PJKmJJ
 zEYV9Z5QsLT2vmDs3Ta3vsVA24J3QIppR9WJoLYNpMlBNww8sAyCxwpwn
 bQdqTfk0x4iosmvxVK1ucOXflDiEPr7ulAvrB0p+J62kllIqGIapDlV+i
 nU+bq1IE4NnQozc2KVmeNIhXDx01bxKqtjYfFDjKVYMLqV0srzbOpkj5O
 MUb4gf/iPK7ym/LU5jOv1GFGmnRMYgN+El2EnTkHqCvCH3sxepF215JUs
 swVP7ubxAG/Lm1ftOiU6yoo7L6/VMZUuf6zfQNtp4Y+iqCdI9QlZKo23U w==;
X-CSE-ConnectionGUID: 803fmK9xTT6Tt6jcA+SuiA==
X-CSE-MsgGUID: 6xEPZdAYTtOMobyfhbbecw==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="52710912"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="52710912"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 13:49:39 -0800
X-CSE-ConnectionGUID: VyXXR4lwSf+qbk6iQUMznA==
X-CSE-MsgGUID: X9KHqIL2Rq+gg7TSea9GxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="98150148"
Received: from ldmartin-desk2.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.53])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 13:49:38 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 3/3] drm/i915/display: Use INTEL_GLOBAL_STATE_DEFAULTS
Date: Thu, 19 Dec 2024 18:48:38 -0300
Message-ID: <20241219214909.104869-4-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241219214909.104869-1-gustavo.sousa@intel.com>
References: <20241219214909.104869-1-gustavo.sousa@intel.com>
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

Reduce global state boilerplate by using INTEL_GLOBAL_STATE_DEFAULTS().
The only case that requires customization is for the duplication of
CDCLK state, which is resolved by wrapping the generic implementation.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       | 21 +------------------
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 18 +++++++---------
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 21 +------------------
 drivers/gpu/drm/i915/display/skl_watermark.c  | 20 +-----------------
 4 files changed, 10 insertions(+), 70 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 30236010e0ed..f040dfa70fd9 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1422,27 +1422,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	return 0;
 }
 
-static struct intel_global_state *
-intel_bw_duplicate_state(struct intel_global_obj *obj)
-{
-	struct intel_bw_state *state = to_intel_bw_state(obj->state);
-
-	state = kmemdup(state, sizeof(*state), GFP_KERNEL);
-	if (!state)
-		return NULL;
-
-	return &state->base;
-}
-
-static void intel_bw_destroy_state(struct intel_global_obj *obj,
-				   struct intel_global_state *state)
-{
-	kfree(state);
-}
-
 static const struct intel_global_state_funcs intel_bw_funcs = {
-	.atomic_duplicate_state = intel_bw_duplicate_state,
-	.atomic_destroy_state = intel_bw_destroy_state,
+	INTEL_GLOBAL_STATE_DEFAULTS(struct intel_bw_state, base),
 };
 
 int intel_bw_init(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index fc084e2a4c6a..a9dfbd53e812 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3130,27 +3130,23 @@ static int fixed_modeset_calc_cdclk(struct intel_atomic_state *state)
 
 static struct intel_global_state *intel_cdclk_duplicate_state(struct intel_global_obj *obj)
 {
-	struct intel_cdclk_state *cdclk_state = to_intel_cdclk_state(obj->state);
+	struct intel_global_state *obj_state;
+	struct intel_cdclk_state *cdclk_state;
 
-	cdclk_state = kmemdup(cdclk_state, sizeof(*cdclk_state), GFP_KERNEL);
-	if (!cdclk_state)
+	obj_state = intel_atomic_global_duplicate_state_common(obj);
+	if (!obj_state)
 		return NULL;
 
+	cdclk_state = to_intel_cdclk_state(obj_state);
 	cdclk_state->pipe = INVALID_PIPE;
 	cdclk_state->disable_pipes = false;
 
-	return &cdclk_state->base;
-}
-
-static void intel_cdclk_destroy_state(struct intel_global_obj *obj,
-				      struct intel_global_state *state)
-{
-	kfree(state);
+	return obj_state;
 }
 
 static const struct intel_global_state_funcs intel_cdclk_funcs = {
+	INTEL_GLOBAL_STATE_DEFAULTS(struct intel_cdclk_state, base),
 	.atomic_duplicate_state = intel_cdclk_duplicate_state,
-	.atomic_destroy_state = intel_cdclk_destroy_state,
 };
 
 struct intel_cdclk_state *
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index 1f71efb7d04d..5bf245a9ac8d 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -15,27 +15,8 @@
 #include "intel_pmdemand.h"
 #include "skl_watermark.h"
 
-static struct intel_global_state *
-intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
-{
-	struct intel_pmdemand_state *pmdemand_state = to_intel_pmdemand_state(obj->state);
-
-	pmdemand_state = kmemdup(pmdemand_state, sizeof(*pmdemand_state), GFP_KERNEL);
-	if (!pmdemand_state)
-		return NULL;
-
-	return &pmdemand_state->base;
-}
-
-static void intel_pmdemand_destroy_state(struct intel_global_obj *obj,
-					 struct intel_global_state *state)
-{
-	kfree(state);
-}
-
 static const struct intel_global_state_funcs intel_pmdemand_funcs = {
-	.atomic_duplicate_state = intel_pmdemand_duplicate_state,
-	.atomic_destroy_state = intel_pmdemand_destroy_state,
+	INTEL_GLOBAL_STATE_DEFAULTS(struct intel_pmdemand_state, base),
 };
 
 static struct intel_pmdemand_state *
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index b3d38e09df5a..8aa041be8277 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3289,26 +3289,8 @@ static void skl_setup_wm_latency(struct drm_i915_private *i915)
 	intel_print_wm_latency(i915, "Gen9 Plane", display->wm.skl_latency);
 }
 
-static struct intel_global_state *intel_dbuf_duplicate_state(struct intel_global_obj *obj)
-{
-	struct intel_dbuf_state *dbuf_state = to_intel_dbuf_state(obj->state);
-
-	dbuf_state = kmemdup(dbuf_state, sizeof(*dbuf_state), GFP_KERNEL);
-	if (!dbuf_state)
-		return NULL;
-
-	return &dbuf_state->base;
-}
-
-static void intel_dbuf_destroy_state(struct intel_global_obj *obj,
-				     struct intel_global_state *state)
-{
-	kfree(state);
-}
-
 static const struct intel_global_state_funcs intel_dbuf_funcs = {
-	.atomic_duplicate_state = intel_dbuf_duplicate_state,
-	.atomic_destroy_state = intel_dbuf_destroy_state,
+	INTEL_GLOBAL_STATE_DEFAULTS(struct intel_dbuf_state, base),
 };
 
 struct intel_dbuf_state *
-- 
2.47.1

