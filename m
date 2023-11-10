Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 303747E7A18
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 09:28:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72EC610E25C;
	Fri, 10 Nov 2023 08:28:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12D5410E25C
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 08:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699604895; x=1731140895;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WubXrgJJhrQamIXoIpW17PcYNlQOLgyg5seAtsJGKhA=;
 b=XOIT23RsjKFYuaoGeFPxK9Bws2rEk7Fsj74fwTK3xFcwC07nTUcnlQMG
 +9Bca+DUQrMeiB0VdxINo+vvC/7uD/HJXVIQnYSPgKoYcgczOurkNF9r7
 79t5kvCNDsx6EAbhyQS92yjcg54dfPHFnEBW4z9LiW3jJfZA4IIrB+oAP
 xDl1J3RH/ZgqP4rOHimAcdXnuRROYpiFtIOkpMwl6atwNja7eJGrx9g45
 /H12NYRfPtweNu/Pmk4FaYnF/eJXaXMJ96yyy8dLt1Cqv9TlR63VywHd4
 yT+mdSqIznxEc7cIFE+YPaSxfKZIIUxXB3d6TqDTt1VrCEtEy/bZvrLIZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="454454343"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="454454343"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 00:28:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="834092703"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="834092703"
Received: from cenix-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.217.185])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 00:28:08 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Nov 2023 10:24:55 +0200
Message-Id: <20231110082455.3061913-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Remove dead code around
 intel_atomic_helper->free_list
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

After switching to directly using dma_fence instead of i915_sw_fence we
have left some dead code around intel_atomic_helper->free_list. Remove that
dead code.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 20 -------------------
 .../gpu/drm/i915/display/intel_display_core.h |  6 ------
 .../drm/i915/display/intel_display_driver.c   |  7 -------
 3 files changed, 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3effafcbb411..387acf21b794 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7086,24 +7086,6 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 	drm_WARN_ON(&dev_priv->drm, update_pipes);
 }
 
-static void intel_atomic_helper_free_state(struct drm_i915_private *dev_priv)
-{
-	struct intel_atomic_state *state, *next;
-	struct llist_node *freed;
-
-	freed = llist_del_all(&dev_priv->display.atomic_helper.free_list);
-	llist_for_each_entry_safe(state, next, freed, freed)
-		drm_atomic_state_put(&state->base);
-}
-
-void intel_atomic_helper_free_state_worker(struct work_struct *work)
-{
-	struct drm_i915_private *dev_priv =
-		container_of(work, typeof(*dev_priv), display.atomic_helper.free_work);
-
-	intel_atomic_helper_free_state(dev_priv);
-}
-
 static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_state)
 {
 	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
@@ -7139,8 +7121,6 @@ static void intel_atomic_cleanup_work(struct work_struct *work)
 	drm_atomic_helper_cleanup_planes(&i915->drm, &state->base);
 	drm_atomic_helper_commit_cleanup_done(&state->base);
 	drm_atomic_state_put(&state->base);
-
-	intel_atomic_helper_free_state(i915);
 }
 
 static void intel_atomic_prepare_plane_clear_colors(struct intel_atomic_state *state)
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index aa8be02c9e54..34945f733a97 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -298,12 +298,6 @@ struct intel_display {
 		const struct intel_audio_funcs *audio;
 	} funcs;
 
-	/* Grouping using anonymous structs. Keep sorted. */
-	struct intel_atomic_helper {
-		struct llist_head free_list;
-		struct work_struct free_work;
-	} atomic_helper;
-
 	struct {
 		/* backlight registers and fields in struct intel_panel */
 		struct mutex lock;
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 62f7b10484be..9df9097a0255 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -259,10 +259,6 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
 
-	init_llist_head(&i915->display.atomic_helper.free_list);
-	INIT_WORK(&i915->display.atomic_helper.free_work,
-		  intel_atomic_helper_free_state_worker);
-
 	intel_init_quirks(i915);
 
 	intel_fbc_init(i915);
@@ -430,9 +426,6 @@ void intel_display_driver_remove(struct drm_i915_private *i915)
 	flush_workqueue(i915->display.wq.flip);
 	flush_workqueue(i915->display.wq.modeset);
 
-	flush_work(&i915->display.atomic_helper.free_work);
-	drm_WARN_ON(&i915->drm, !llist_empty(&i915->display.atomic_helper.free_list));
-
 	/*
 	 * MST topology needs to be suspended so we don't have any calls to
 	 * fbdev after it's finalized. MST will be destroyed later as part of
-- 
2.34.1

