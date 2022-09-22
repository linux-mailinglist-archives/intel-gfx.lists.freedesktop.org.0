Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F26EF5E6B95
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 21:14:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0941010E03E;
	Thu, 22 Sep 2022 19:14:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D9C610E059
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 19:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663874035; x=1695410035;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OeGJZFs/Os1/5Jv4XGsQ+u3Da1ienASH+Q3m/e6BEpk=;
 b=h+4qCNqTbVjzZ/X23F51V37Nw+YTUP77ineuyeenOem7lWX0GKaIIOTm
 ygIvdQUwBicE2tYdulKpFnODSBh/lVf/tVrVbYmSv/Kkgk7CkLf3BCRQg
 MmvfAKJNA0IVULUOEa0g/OlAy/etl/oaSzsceUEJlL9PaXhQiRu+ysPSK
 XbpmbsAlK4eAr6J6xqSC7K6Q/4I5/+KHj+ANscsndj+EyrYAXvfPx2xkT
 tI6afMXhleVnnundg8hZHc/aGQhs0yhbPJbvXgFYnPFFV8VM/1/SECw0y
 yYHvky4X14PpbQ43b7N1OzFK9bYSrkVivLoC0EExiS40LIgbBCXjF8dgQ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="301843200"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="301843200"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 12:13:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="619930087"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 22 Sep 2022 12:13:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Sep 2022 22:13:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 22:13:50 +0300
Message-Id: <20220922191350.4303-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220921211525.10675-4-ville.syrjala@linux.intel.com>
References: <20220921211525.10675-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915: Pimp DPLL ref/unref debugs
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We currently have a debug message in intel_reference_shared_dpll()
but no counterpart in intel_unreference_shared_dpll(). Add one.

Switch to the [CRTC:...] notation for the pipe name while at it.

v2: Use drm_dbg_kms() instead of drm_dbg() (Jani)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index e5fb66a5dd02..3bf5b8eef04c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -384,20 +384,25 @@ intel_reference_shared_dpll(struct intel_atomic_state *state,
 	if (shared_dpll[id].pipe_mask == 0)
 		shared_dpll[id].hw_state = *pll_state;
 
-	drm_dbg(&i915->drm, "using %s for pipe %c\n", pll->info->name,
-		pipe_name(crtc->pipe));
-
 	shared_dpll[id].pipe_mask |= BIT(crtc->pipe);
+
+	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] reserving %s\n",
+		    crtc->base.base.id, crtc->base.name, pll->info->name);
 }
 
 static void intel_unreference_shared_dpll(struct intel_atomic_state *state,
 					  const struct intel_crtc *crtc,
 					  const struct intel_shared_dpll *pll)
 {
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_shared_dpll_state *shared_dpll;
 
 	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
+
 	shared_dpll[pll->info->id].pipe_mask &= ~BIT(crtc->pipe);
+
+	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] releasing %s\n",
+		    crtc->base.base.id, crtc->base.name, pll->info->name);
 }
 
 static void intel_put_dpll(struct intel_atomic_state *state,
-- 
2.35.1

