Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4245EAD6FD1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:12:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4C0810E7F8;
	Thu, 12 Jun 2025 12:12:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SrbzX/u9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B44FC10E7F8;
 Thu, 12 Jun 2025 12:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749730347; x=1781266347;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8XffxEIviM/Lz40ojSmj79/qA9kxXmChwoezBIw4bNg=;
 b=SrbzX/u9/i7dlxqy6yg8bE0gsiXdLBX2lNzuQMMHx1uBBGl1zCXcmhTl
 jCqmA9CksukIBzhWyiHpyjCpTBvvBiLuhH4bhJIlksxkOynF8k6cePIgd
 DyLOqt8wD9y1Kil8psjbmT6O4UruWGhzVz5/N2wwn0zb0NZ8xJeTXDPHE
 OXme2xezukAx1dTwzD48l9WLMHOgTZcNtV9RamxvI2C+8kDho3ANbLdaQ
 kdq2e8R9UDILk63Xh0uoO9//z3vIAHNZ3skLmXwWNBAm3Wdn4QCpaNC5J
 JcKD7B6SFy1D8CiHVG+GeZvkSB0Etc+F8A5iCIkT6S2IuQ25b7XoHP8Nw w==;
X-CSE-ConnectionGUID: qde3DdV0THubA84gv+GM2g==
X-CSE-MsgGUID: rj4BAHXJSAe0Dg6zTPyOfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="63314803"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="63314803"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:12:27 -0700
X-CSE-ConnectionGUID: 5TBM6XRzQgiSUABj3PUAuA==
X-CSE-MsgGUID: xgvRvllsSY6xoFLvdxiwUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="178476833"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:12:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 02/16] drm/i915/wm: add more accessors to dbuf state
Date: Thu, 12 Jun 2025 15:11:57 +0300
Message-Id: <bb6940c929cc1f744f2e85c1b67180294204ca30.1749730224.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749730224.git.jani.nikula@intel.com>
References: <cover.1749730224.git.jani.nikula@intel.com>
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

Add intel_dbuf_num_enabled_slices() and intel_dbuf_num_active_pipes()
helpers to avoid looking at struct intel_dbuf_state internals outside of
skl_watermark.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  6 +++---
 drivers/gpu/drm/i915/display/skl_watermark.c  | 10 ++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.h  |  3 +++
 3 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index 0f1501c456df..eeb88f9fc92d 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -358,12 +358,12 @@ int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
 
 	if (DISPLAY_VER(display) < 30) {
 		new_pmdemand_state->params.active_dbufs =
-			min_t(u8, hweight8(new_dbuf_state->enabled_slices), 3);
+			min_t(u8, intel_dbuf_num_enabled_slices(new_dbuf_state), 3);
 		new_pmdemand_state->params.active_pipes =
-			min_t(u8, hweight8(new_dbuf_state->active_pipes), 3);
+			min_t(u8, intel_dbuf_num_active_pipes(new_dbuf_state), 3);
 	} else {
 		new_pmdemand_state->params.active_pipes =
-			min_t(u8, hweight8(new_dbuf_state->active_pipes), INTEL_NUM_PIPES(display));
+			min_t(u8, intel_dbuf_num_active_pipes(new_dbuf_state), INTEL_NUM_PIPES(display));
 	}
 
 	new_cdclk_state = intel_atomic_get_cdclk_state(state);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 55280d16f9f7..f35f2603d543 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3701,6 +3701,16 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 	gen9_dbuf_slices_update(display, new_slices);
 }
 
+int intel_dbuf_num_enabled_slices(const struct intel_dbuf_state *dbuf_state)
+{
+	return hweight8(dbuf_state->enabled_slices);
+}
+
+int intel_dbuf_num_active_pipes(const struct intel_dbuf_state *dbuf_state)
+{
+	return hweight8(dbuf_state->active_pipes);
+}
+
 bool intel_dbuf_pmdemand_needs_update(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index 3b9a0b254cff..a1993ded034a 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -78,6 +78,9 @@ struct intel_dbuf_state {
 struct intel_dbuf_state *
 intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
 
+int intel_dbuf_num_enabled_slices(const struct intel_dbuf_state *dbuf_state);
+int intel_dbuf_num_active_pipes(const struct intel_dbuf_state *dbuf_state);
+
 int intel_dbuf_init(struct intel_display *display);
 int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state,
 					   int ratio);
-- 
2.39.5

