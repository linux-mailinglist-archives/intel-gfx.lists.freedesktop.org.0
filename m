Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF97AE7F5D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 12:32:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9825F10E6C2;
	Wed, 25 Jun 2025 10:32:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nokinT22";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A51510E6C2;
 Wed, 25 Jun 2025 10:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750847571; x=1782383571;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cyrLPo5X+jXJ3ZW+e8fK7uXjyA2zKepAl+Nf9Al3w8M=;
 b=nokinT2235pkvKwwYuOgFATVdpXkKlMMkwfYcY58je3hkWWoB3ventbF
 Xsezd/NtVsYrLO87Yj4EKsFDqK8cMuZzmcaKEe7yRJEsesdC2MCzazFpE
 FlkkwnoWfzhnNP3BiqUYtOZirhKb9FpuA1SxqIp6f4fBtHDB3LvSe/cNN
 P980Ym/iRQXkLeq814MhfXG4g5sQXJySZvRJALhP3EGwTnECOpSihOskW
 yOv5FQHP4eF0Yv+kRjvuXVDEpNekzGGtRWEw/c+4zOEJ0l0PgzZ3Fa79S
 dd768rhs2eSUYLj28uqHhwMt9MqhSGHvX/ktHBGwMeP+LnLdFRrY9t6yx g==;
X-CSE-ConnectionGUID: f2JQGzd1RvaknhABVcR5qg==
X-CSE-MsgGUID: cAGh1CgRTrGaUdWOKLifNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="53080412"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="53080412"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:32:50 -0700
X-CSE-ConnectionGUID: VwHuyDs5TV+XXSDdtAmg3g==
X-CSE-MsgGUID: 5+4/YA4ESdavZiISmXzLpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="152476431"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:32:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [CI v2 02/16] drm/i915/wm: add more accessors to dbuf state
Date: Wed, 25 Jun 2025 13:32:20 +0300
Message-Id: <7d555e7b4e93632b732b8b5a3cd4076baf781bee.1750847509.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750847509.git.jani.nikula@intel.com>
References: <cover.1750847509.git.jani.nikula@intel.com>
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

Reviewed-by: Imre Deak <imre.deak@intel.com>
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
index 9ae9f02b11ca..3574df9b1df7 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3704,6 +3704,16 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
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

