Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25ED8AD6FDC
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:13:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD4EC10E80B;
	Thu, 12 Jun 2025 12:13:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cl6oGoDk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 013F310E803;
 Thu, 12 Jun 2025 12:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749730390; x=1781266390;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r4t2AxhNToiCwNCQibhbAZICMk2r/vniE61qpH6RJGI=;
 b=cl6oGoDk50RCgRpQg6mBgLC3yctYS5E/WpQC0mdX8eYl7IJdg7Y73GDW
 WRG+Uh2GFtAQKyIX1Hgj6M68A7xHOVjf8FaNE2bU609DEx72iiLWaIhpi
 51iDbAQ0RsfervxdQK/dq8cTs1xn2Edm/e8kcF9onpVdr9QGi2sERhzfg
 frlfgUiBPH40yR/926R3GVBzrv4DLUGUr65va250mQJZxdaYz2xXTfL7z
 8lKZilEp8wpeLsR0ZBhvJ4cc54yCVN9TBYxptderhZLM2bbPO5flpgtfc
 iLT0ElDzoWRsr3aiWqKoYMubkb6FargitEz2h5Y+uWltLgWM+EyRwpkK+ w==;
X-CSE-ConnectionGUID: dLCGqMUoQAyBzVihmIvGCQ==
X-CSE-MsgGUID: ddPSQKCTTl2tgKv60NekQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="74438555"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="74438555"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:13:10 -0700
X-CSE-ConnectionGUID: Yqvh9n5hQwytOG4HLqvnbw==
X-CSE-MsgGUID: r1tG4rgqQ8mJ8skHLiOerQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152493864"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:13:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 11/16] drm/i915/cdclk: abstract intel_cdclk_bw_min_cdclk()
Date: Thu, 12 Jun 2025 15:12:06 +0300
Message-Id: <10588f3e555951e534813fda9a52abde94c220a4.1749730224.git.jani.nikula@intel.com>
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

Add intel_cdclk_bw_min_cdclk() helper to avoid looking at struct
intel_cdclk_state internals outside of intel_cdclk.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c    | 4 ++--
 drivers/gpu/drm/i915/display/intel_cdclk.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_cdclk.h | 1 +
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 67c54c144274..306a13ef8b35 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1461,12 +1461,12 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 	 * requirements. This can reduce back and forth
 	 * display blinking due to constant cdclk changes.
 	 */
-	if (new_min_cdclk <= cdclk_state->bw_min_cdclk)
+	if (new_min_cdclk <= intel_cdclk_bw_min_cdclk(cdclk_state))
 		return 0;
 
 	drm_dbg_kms(display->drm,
 		    "new bandwidth min cdclk (%d kHz) > old min cdclk (%d kHz)\n",
-		    new_min_cdclk, cdclk_state->bw_min_cdclk);
+		    new_min_cdclk, intel_cdclk_bw_min_cdclk(cdclk_state));
 	*need_cdclk_calc = true;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 05e94fcd8326..59d126e1b12a 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3847,3 +3847,8 @@ int intel_cdclk_min_cdclk(const struct intel_cdclk_state *cdclk_state, enum pipe
 {
 	return cdclk_state->min_cdclk[pipe];
 }
+
+int intel_cdclk_bw_min_cdclk(const struct intel_cdclk_state *cdclk_state)
+{
+	return cdclk_state->bw_min_cdclk;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index ef6ad9d04c20..fe1a1f1c1900 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -99,5 +99,6 @@ void intel_cdclk_debugfs_register(struct intel_display *display);
 
 int intel_cdclk_logical(const struct intel_cdclk_state *cdclk_state);
 int intel_cdclk_min_cdclk(const struct intel_cdclk_state *cdclk_state, enum pipe pipe);
+int intel_cdclk_bw_min_cdclk(const struct intel_cdclk_state *cdclk_state);
 
 #endif /* __INTEL_CDCLK_H__ */
-- 
2.39.5

