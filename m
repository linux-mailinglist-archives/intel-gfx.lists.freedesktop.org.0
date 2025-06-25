Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C51AE7F67
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 12:33:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E26FE10E6D8;
	Wed, 25 Jun 2025 10:33:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B8fzAvSG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D52F10E6D6;
 Wed, 25 Jun 2025 10:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750847605; x=1782383605;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4OWxQ5uNJcHG4Qs0T/YyViKVj7OyS5Gm9/wo3ywBu8c=;
 b=B8fzAvSG1sr3deAX6Bv4AbzE8ErfNhzIf5NUmZh4+3pG6T0kVdGqc83Z
 dRMVKPoMrdE3yYka0Dwc57kKwSS28G0j52z3mncPTJ2z5VAYTVzaRAmDR
 zbT1PkrVGdq0eXTzeaz1GzsC8KBgopHZCn/9FtXlFngFbqIwZFOJr3oT7
 xSAj6CX2VmlSR2Z1lZYeGJ7nYWI5SwVT/sohDVDo9+32GRFhVJI6qvlAN
 EaWqozxs0SKgDh2xK5I1uuLFmb9woMvATohwhrY+IH/sQ4ZATUeTIvRg1
 KKy/5urIs7Jp4xQtEzP6uWJzLO9qTMpxvC6tCY4VxlM0ZZzAMOzegDkAh Q==;
X-CSE-ConnectionGUID: LRtk1ZH7Rky+JVeym0oIYg==
X-CSE-MsgGUID: 31ykR1N/TAGwnG5YkS1EZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="52830303"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="52830303"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:25 -0700
X-CSE-ConnectionGUID: osVDsoqPRqGXtSaKuQ4/1Q==
X-CSE-MsgGUID: RVa+eBzYSf+s8m97j4i15Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="151798984"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [CI v2 09/16] drm/i915/cdclk: abstract intel_cdclk_logical()
Date: Wed, 25 Jun 2025 13:32:27 +0300
Message-Id: <e965667550e82307341d6abbeedc67b93cae9fc6.1750847509.git.jani.nikula@intel.com>
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

Add intel_cdclk_logical() helper to avoid looking at struct
intel_cdclk_state internals outside of intel_cdclk.c.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c       | 2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 5 +++++
 drivers/gpu/drm/i915/display/intel_cdclk.h   | 2 ++
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c     | 2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 6 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index 989a9171b07f..927fe56aec77 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -265,7 +265,7 @@ int hsw_ips_compute_config(struct intel_atomic_state *state,
 			return PTR_ERR(cdclk_state);
 
 		/* pixel rate mustn't exceed 95% of cdclk with IPS on BDW */
-		if (crtc_state->pixel_rate > cdclk_state->logical.cdclk * 95 / 100)
+		if (crtc_state->pixel_rate > intel_cdclk_logical(cdclk_state) * 95 / 100)
 			return 0;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 95fab2ee3d94..51485c777b62 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3834,3 +3834,8 @@ void intel_init_cdclk_hooks(struct intel_display *display)
 		     "Unknown platform. Assuming i830\n"))
 		display->funcs.cdclk = &i830_cdclk_funcs;
 }
+
+int intel_cdclk_logical(const struct intel_cdclk_state *cdclk_state)
+{
+	return cdclk_state->logical.cdclk;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index a1cefd455d92..20a66f613072 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -97,4 +97,6 @@ void intel_cdclk_crtc_disable_noatomic(struct intel_crtc *crtc);
 int intel_cdclk_init(struct intel_display *display);
 void intel_cdclk_debugfs_register(struct intel_display *display);
 
+int intel_cdclk_logical(const struct intel_cdclk_state *cdclk_state);
+
 #endif /* __INTEL_CDCLK_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index de8bf292897c..cd6fa1669074 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4168,7 +4168,7 @@ static u16 hsw_ips_linetime_wm(const struct intel_crtc_state *crtc_state,
 		return 0;
 
 	linetime_wm = DIV_ROUND_CLOSEST(pipe_mode->crtc_htotal * 1000 * 8,
-					cdclk_state->logical.cdclk);
+					intel_cdclk_logical(cdclk_state));
 
 	return min(linetime_wm, 0x1ff);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ec1ef8694c35..5d28a6062db1 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1576,7 +1576,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 		if (IS_ERR(cdclk_state))
 			return PTR_ERR(cdclk_state);
 
-		if (crtc_state->pixel_rate >= cdclk_state->logical.cdclk * 95 / 100) {
+		if (crtc_state->pixel_rate >= intel_cdclk_logical(cdclk_state) * 95 / 100) {
 			plane_state->no_fbc_reason = "pixel rate too high";
 			return 0;
 		}
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index f98c4a0fc7a9..f234a3aa3d15 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2178,7 +2178,7 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
 	}
 
 	return min(1, DIV_ROUND_UP(crtc_state->pixel_rate,
-				   2 * cdclk_state->logical.cdclk));
+				   2 * intel_cdclk_logical(cdclk_state)));
 }
 
 static int
-- 
2.39.5

