Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD68B0C041
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 11:26:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4658010E4C0;
	Mon, 21 Jul 2025 09:26:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C+1N6831";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4014F10E4C6;
 Mon, 21 Jul 2025 09:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753089969; x=1784625969;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8A/9UhCYWa7aX4eEFJb45pVl7ZQ3CIrDyPa8ap2D/Ro=;
 b=C+1N6831PZMzL5LC5QSkKT9QCkvinoIBnRqzvXrBSvfO/chlfJB9Wl+s
 C8tXxJbPLnjRpLuP5CpH+QnJlOmMshXUklCRCPOXirv3T3sJp5g9dgAdn
 +5FbpeE6t3Bq8YN9MWB+XZH+hT8LRROe6V75oFhn+gJV8flMvTVS1ojy0
 uDaPeWW4HG7j3KC/B3rZ9SsExfg8UjPB1ICXMxHS5rX/ITl9/T/pGgC5V
 vRSFBjbMVGssBwkFB7SZSr07mbKpRVtkW+kr1lBr0FFHtxNFwbjWfHatq
 QVVgiLHMzZiVqD7GThdXyDNJu/ZQ3w1H0qPPYdGFz4gkHbPmXxLm8L0yI Q==;
X-CSE-ConnectionGUID: JEjkImOfSS6al3ezyWNyxw==
X-CSE-MsgGUID: 4UKlvBkQTYulNFziC17HCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="55455393"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="55455393"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:26:09 -0700
X-CSE-ConnectionGUID: 7f1BnR8kTHCr/KRQ73HeBA==
X-CSE-MsgGUID: FAyjQ82ORcilRgdlflOOdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="163335172"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:26:06 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 8/9] drm/i915/display: Implement Wa_14021768792 for BMG DP for
 link_m/n ratio > 10
Date: Mon, 21 Jul 2025 14:45:28 +0530
Message-ID: <20250721091529.3864004-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
References: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
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

Handle the bypass logic for the M/N ratio limit for DP.
Calculate the M/N ratio, check if it can bypass the limit, and set the
appropriate flags for the workaround.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  1 -
 drivers/gpu/drm/i915/display/intel_display.h |  2 ++
 drivers/gpu/drm/i915/display/intel_dp.c      | 11 ++++++++++-
 3 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bb50928762f6..ee15289221d7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3406,7 +3406,6 @@ void bmg_bypass_m_n_limit_read(struct intel_crtc *crtc,
 		m_n->bypass_m_n_ratio_limit = true;
 }
 
-static
 bool intel_display_can_bypass_m_n_limit(struct intel_display *display,
 					int m_n_ratio,
 					enum pipe pipe)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index bfa3db219b9c..a7134dd15687 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -562,5 +562,7 @@ int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
 void intel_display_get_link_m_n(u32 *link_m, u32 *link_n,
 				u32 pixel_clock,
 				u32 link_clock);
+bool intel_display_can_bypass_m_n_limit(struct intel_display *display,
+					int m_n_ratio, enum pipe pipe);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a1114d1059dd..a5ab7d694dbe 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3012,10 +3012,19 @@ void intel_dp_check_m_n_ratio(struct intel_crtc_state *crtc_state,
 
 	m_n_ratio = DIV_ROUND_UP(m_n->link_m, m_n->link_n);
 
-	if (m_n_ratio > intel_dp_get_max_m_n_ratio())
+	if (m_n_ratio > intel_dp_get_max_m_n_ratio()) {
+		struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+		enum pipe pipe = crtc->pipe;
+
+		if (intel_display_can_bypass_m_n_limit(display, m_n_ratio, pipe)) {
+			m_n->bypass_m_n_ratio_limit = true;
+			drm_dbg_kms(display->drm, "Bypassing Link_m/Link_n ratio limit\n");
+			return;
+		}
 		drm_WARN(display->drm, 1,
 			 "Link M/N ratio (%d) exceeds max allowed (%d)\n",
 			 m_n_ratio, intel_dp_get_max_m_n_ratio());
+	}
 }
 
 static void
-- 
2.45.2

