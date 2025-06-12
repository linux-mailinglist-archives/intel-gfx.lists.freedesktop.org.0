Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E95AD6FD8
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:13:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3D4210E807;
	Thu, 12 Jun 2025 12:13:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VL23+gvQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46FCB10E807;
 Thu, 12 Jun 2025 12:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749730379; x=1781266379;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JSZgpP/e55+X4GV8IY3Yfm19bj3O+TTZbMGOlcvJLRg=;
 b=VL23+gvQr5hybW3/IC0cVtiB3fVSE0GgnR1jJiD9j+5mlXYuk2+Db2gq
 AsHb8Y7zSiWf79Pt+aNRvBbvSIW4tQww/NSg8FQXC4FG7xDeX0swWtGFO
 cF4GpOq/83HpuGPJcDIUkSkTmw05pcu8Ew4+BJSQMxJasliMzmHb/FCaw
 noPSTzDlX+sMRHgfRJHRUaZJf0b5qPPtx8JcAgWUT42gMjESGDhzuzeof
 l7c0EZlRCv6E/hQ4aCyIX1qtbdxZYR6WZURKM5Fik9vdHooFZhmxKXyYY
 EqPOWL2V0i0t/XYWCESZdfys6rWHybMnTt8/VqpC1Zi2jrYvXkp5V6U45 w==;
X-CSE-ConnectionGUID: aNLG4h4uRFmJBoS21WlMlg==
X-CSE-MsgGUID: 2m6tTkcARmqmlGcJEHuQDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="74438539"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="74438539"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:12:59 -0700
X-CSE-ConnectionGUID: yjHS9iKFQZ2pqYtw55TyOQ==
X-CSE-MsgGUID: GOw87399RKqiQAzEbvKrPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152493840"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:12:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 09/16] drm/i915/cdclk: abstract intel_cdclk_logical()
Date: Thu, 12 Jun 2025 15:12:04 +0300
Message-Id: <522d77a22f14b6398b235d72e5714a57da6d92df.1749730224.git.jani.nikula@intel.com>
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

Add intel_cdclk_logical() helper to avoid looking at struct
intel_cdclk_state internals outside of intel_cdclk.c.

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
index 0d33782f11be..35a1e17ec82b 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -268,7 +268,7 @@ int hsw_ips_compute_config(struct intel_atomic_state *state,
 			return PTR_ERR(cdclk_state);
 
 		/* pixel rate mustn't exceed 95% of cdclk with IPS on BDW */
-		if (crtc_state->pixel_rate > cdclk_state->logical.cdclk * 95 / 100)
+		if (crtc_state->pixel_rate > intel_cdclk_logical(cdclk_state) * 95 / 100)
 			return 0;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 38b3094b37d7..5082d2b64ce5 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3837,3 +3837,8 @@ void intel_init_cdclk_hooks(struct intel_display *display)
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
index b0c7c46ffbe2..aa01e48b23f5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4160,7 +4160,7 @@ static u16 hsw_ips_linetime_wm(const struct intel_crtc_state *crtc_state,
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
index 95515d69ad68..e1e23247d2be 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2182,7 +2182,7 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
 	}
 
 	return min(1, DIV_ROUND_UP(crtc_state->pixel_rate,
-				   2 * cdclk_state->logical.cdclk));
+				   2 * intel_cdclk_logical(cdclk_state)));
 }
 
 static int
-- 
2.39.5

