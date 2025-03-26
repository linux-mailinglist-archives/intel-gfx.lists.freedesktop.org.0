Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C82A71BC9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 17:26:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3F9D10E72F;
	Wed, 26 Mar 2025 16:26:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ap3F1n+H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B559310E72F;
 Wed, 26 Mar 2025 16:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743006364; x=1774542364;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AVIFCfTXqRAgD9h3zWuc3+EpaCkICjli7FDvRZfX4dc=;
 b=ap3F1n+HfPpNSHFe1Mm7p0TYrH+tJnoGm42XUofhEesyhPdgzCN61NHa
 lQy0LMOnDDmJpElzZR+aFFh1za0P0A11pUQsxRTtTQpfmILVcm2a7O/Bn
 HfL9Kz2O5GvRHO34JXDnS9JpZ1ju8kFt6YFWwCZ6p45awEiA+3AdQ/R5i
 vg4fKCZJ9rHOOoWhzXcKR+4EpqABbseO6caD0tcFvSpA1y7jWma5kUWi0
 rcy8qmQV3wyNS1CJymdDWgjnqn1I+0HQHwWuMXJHMc4NabNtwi3sZk04V
 sw1pSaKrNueRP1x7neccXEArUnm/jD5aXme5MqBy56bVx23MRPy1G9H3R A==;
X-CSE-ConnectionGUID: J2j6LiGzRuqYNi8QGQQWEA==
X-CSE-MsgGUID: FA9b5qKkTO2pLDfwZwXHzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44029564"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44029564"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:26:04 -0700
X-CSE-ConnectionGUID: fjslwY4MQnqpjmHt1ncyTA==
X-CSE-MsgGUID: a049W6ZbQF2ZHrXcwzghkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="130016307"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 09:26:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 18:26:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 05/14] drm/i915: Avoid triggering unwanted cdclk changes
 due to dbuf bandwidth changes
Date: Wed, 26 Mar 2025 18:25:35 +0200
Message-ID: <20250326162544.3642-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently intel_bw_calc_min_cdclk() always adds the bw_state
to the atomic state. Not only does it result in potentially
redundant work later, it's also currently causing unwanted cdclk
changes during driver load.

Check if the dbuf bw is actually changing before we decide to
pull in the bw state.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 67d088da1f38..19b516084fac 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1294,7 +1294,8 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 	struct intel_bw_state *new_bw_state = NULL;
 	const struct intel_bw_state *old_bw_state = NULL;
 	const struct intel_cdclk_state *cdclk_state;
-	const struct intel_crtc_state *crtc_state;
+	const struct intel_crtc_state *old_crtc_state;
+	const struct intel_crtc_state *new_crtc_state;
 	int old_min_cdclk, new_min_cdclk;
 	struct intel_crtc *crtc;
 	int i;
@@ -1302,15 +1303,23 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 	if (DISPLAY_VER(display) < 9)
 		return 0;
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
+		struct intel_dbuf_bw old_dbuf_bw, new_dbuf_bw;
+
+		skl_crtc_calc_dbuf_bw(&old_dbuf_bw, old_crtc_state);
+		skl_crtc_calc_dbuf_bw(&new_dbuf_bw, new_crtc_state);
+
+		if (!intel_dbuf_bw_changed(display, &old_dbuf_bw, &new_dbuf_bw))
+			continue;
+
 		new_bw_state = intel_atomic_get_bw_state(state);
 		if (IS_ERR(new_bw_state))
 			return PTR_ERR(new_bw_state);
 
 		old_bw_state = intel_atomic_get_old_bw_state(state);
 
-		skl_crtc_calc_dbuf_bw(&new_bw_state->dbuf_bw[crtc->pipe],
-				      crtc_state);
+		new_bw_state->dbuf_bw[crtc->pipe] = new_dbuf_bw;
 	}
 
 	if (!old_bw_state)
-- 
2.45.3

