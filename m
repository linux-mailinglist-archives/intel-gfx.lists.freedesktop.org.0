Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 073DB5E550A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 23:15:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F180B10E895;
	Wed, 21 Sep 2022 21:15:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92AF610E88F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 21:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663794941; x=1695330941;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZdAJyVvEe+hxH/OOFq8bxzeJs5eepYcW5wMBIaly6BE=;
 b=GSUPrdHX4LOWUNEH9qGwWpUjbh01bBGDPye5RrAgIHYU81v4vUUZgepG
 z1d7IwpuxunhQ4SxLdtvgIBJAtfgS05d+f6jLW9zxC29xUD80xKlJzzqg
 jeHxu9RQMFVzcmBN5xPOGBKfEyBn6qTKQ7Pe+QTGeUh4sP2jHqy08V95e
 aP6FSIOcbwLjVHcbMKdPOpivdBn9GI3vN07CwP68zysxTQc1je67uhaC5
 rD8hcvP7P2D9yqRuwvJRz2d5y5gRWRjUvX5XkVc8RHmf+VxwcTAoVCUSB
 BfeT7pra7DVeCYj1xQbKZd64Ihpt0T8l/4LRUKc5cIRvaX/DluaAYww66 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="283176189"
X-IronPort-AV: E=Sophos;i="5.93,334,1654585200"; d="scan'208";a="283176189"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 14:15:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,334,1654585200"; d="scan'208";a="652702975"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 21 Sep 2022 14:15:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Sep 2022 00:15:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 00:15:25 +0300
Message-Id: <20220921211525.10675-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220921211525.10675-1-ville.syrjala@linux.intel.com>
References: <20220921211525.10675-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: WARN if PLL ref/unref got messed
 up
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

Spew a WARN if we try to ref/unref the same DPLL multiple
times for the same pipe.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index c21818cb6fe2..2a6ef1398c84 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -384,6 +384,8 @@ intel_reference_shared_dpll(struct intel_atomic_state *state,
 	if (shared_dpll[id].pipe_mask == 0)
 		shared_dpll[id].hw_state = *pll_state;
 
+	drm_WARN_ON(&i915->drm, (shared_dpll[id].pipe_mask & BIT(crtc->pipe)) != 0);
+
 	shared_dpll[id].pipe_mask |= BIT(crtc->pipe);
 
 	drm_dbg(&i915->drm, "[CRTC:%d:%s] reserving %s\n",
@@ -396,10 +398,13 @@ static void intel_unreference_shared_dpll(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_shared_dpll_state *shared_dpll;
+	const enum intel_dpll_id id = pll->info->id;
 
 	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
 
-	shared_dpll[pll->info->id].pipe_mask &= ~BIT(crtc->pipe);
+	drm_WARN_ON(&i915->drm, (shared_dpll[id].pipe_mask & BIT(crtc->pipe)) == 0);
+
+	shared_dpll[id].pipe_mask &= ~BIT(crtc->pipe);
 
 	drm_dbg(&i915->drm, "[CRTC:%d:%s] releasing %s\n",
 		crtc->base.base.id, crtc->base.name, pll->info->name);
-- 
2.35.1

