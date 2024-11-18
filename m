Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F179D1C13
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 00:53:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8970010E57E;
	Mon, 18 Nov 2024 23:53:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HstXE/5Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD2EE10E578;
 Mon, 18 Nov 2024 23:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731974029; x=1763510029;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VtGIF7y9aYCaApAx3ZvQ/Rg7RGT/SvnzEvDcOjU1mng=;
 b=HstXE/5YJnDpt3STsyqxHax1mZ1G+Zc+VIDc+s9maJUsaz7e04OFagiR
 Z+M9PoYdX7HRBjI1m4vClhzi6wGAPO5NguOIhm2MK26ciyHT8NrpgZwM9
 U/oDL9h5MpecT2+UMhRojfnEyZo6OPpOJ/xA4lGUNZFZp2Y+VlbBKjknV
 mQkb2fK1VVmWnc1rfJ8AhdZu53hepmdp2aQTazU5kkro/Ifbg9Pd8efbO
 aZw+6iNGsnhq4xfRSFs0sO+7UlNTcWp+FoW7DG4XvMYFZ8VvQzV/rtjbL
 q4KsZlTJ6UAzK1BWxSgZKOzfeIhjk246x/c+0ZbcxLNWZmDB6RU6h3U4D g==;
X-CSE-ConnectionGUID: KHnx1RBTQl6azKAK1HyaWg==
X-CSE-MsgGUID: 4yKmKy0nSkiHYZcO01t83w==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="32090842"
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="32090842"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:53:49 -0800
X-CSE-ConnectionGUID: UjW1Ns3tQyaOQbRElLiU1g==
X-CSE-MsgGUID: utOE2mlZSZ6HkW8wxbbISw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="94186019"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.244.2])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:53:47 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 jani.saarinen@intel.com
Subject: [RFC PATCH 4/4] drm/i915/xe3: disable FBC if PSR2 selective fetch is
 enabled
Date: Tue, 19 Nov 2024 01:53:25 +0200
Message-Id: <20241118235325.353010-5-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241118235325.353010-1-vinod.govindapillai@intel.com>
References: <20241118235325.353010-1-vinod.govindapillai@intel.com>
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

FBC dirty rect support and PSR2 selective fetch canno be enabled
together. In xe3 driver enables the FBC dirty rect feature by
default. So PSR2 is enabled, then mark that plane as FBC cannot
be enabled. Later on we need to find a way to select between
FBC and PSR2 based on amount of damaged areas.

Bspec: 68881
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 01080171790f..e1d55f5f2938 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1346,9 +1346,14 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * Display 12+ is not supporting FBC with PSR2.
 	 * Recommendation is to keep this combination disabled
 	 * Bspec: 50422 HSD: 14010260002
+	 *
+	 * In Xe3, PSR2 selective fetch and FBC dirty rect feature cannot
+	 * coexist. So if PSR2 selective fetch is supported then mark that
+	 * FBC is not supported.
+	 * TODO: Need a logic to decide between PSR2 and FBC Dirty rect
 	 */
-	if (IS_DISPLAY_VER(display, 12, 14) && crtc_state->has_sel_update &&
-	    !crtc_state->has_panel_replay) {
+	if (IS_DISPLAY_VER(display, 12, 14) && DISPLAY_VER(display) >= 30 &&
+	    crtc_state->has_sel_update && !crtc_state->has_panel_replay) {
 		plane_state->no_fbc_reason = "PSR2 enabled";
 		return 0;
 	}
-- 
2.34.1

