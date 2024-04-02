Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A098958C6
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 17:50:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E30910FE17;
	Tue,  2 Apr 2024 15:50:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RuRddd9L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6947D10FE17
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 15:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712073055; x=1743609055;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NFOCZP7xlIz9uhVAf+hACFqxHqcTmvWSBINejUDiwH0=;
 b=RuRddd9LQio4KCgUKFlCrGtlc1Nni4KAIyo2X2bpocXMLcRTP9jTO0V9
 KtOwZMgsQXHud8KwVx3JLE5wnODM+ml2mrEwt8lcQpf5u5q1leLHdIkYO
 yKfUVtPNICIuyEKRgHOXncHjb5onDn0HjEcfFdVg62rUf5Mfhq5bmAdLH
 UpiTngrPZZ89ZdMvj9ldvUO8Hf8ZWgTmcVwD7ln9wQt0K55YE7vQegZUG
 7w/dwZjoUBIXcUphz9wBTdgCxp83sJhlYF8aUxF6P+73LmrUwSLWtjEQr
 Yb1gUZT36yKITiN76kzMj226/FdNAAylNXO/tvy5/VJgL0TJxPVWJROYz Q==;
X-CSE-ConnectionGUID: hTSo9xqAQS+4IA29fdaBMw==
X-CSE-MsgGUID: D5TQ7LOsRESxdKT2S7cOVQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17980878"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17980878"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 08:50:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789489"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789489"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 08:50:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 18:50:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 11/14] drm/i915: Use the correct mdclk/cdclk ratio in MBUS
 updates
Date: Tue,  2 Apr 2024 18:50:13 +0300
Message-ID: <20240402155016.13733-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
References: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
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

The current cdclk/mbus programming sequence is as follows:
1. intel_set_cdclk_pre_plane_update()
2. update_mbus_pre_enable()
3. intel_set_cdclk_post_plane_update()

when the actual mdclk/cdclk programming is postponed to
intel_set_cdclk_post_plane_update() we must keep using
the old mdclk/cdclk ratio during update_mbus_pre_enable().
This guarantees the programmed ratio matches the rest of
the hardware state (mdlk/cdclk/mbus joining).

v2: Extracted from the vblank synchronized mbus programming patch

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h   |  1 +
 drivers/gpu/drm/i915/display/skl_watermark.c | 19 ++++++++-----------
 3 files changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index e0c69d85e733..c23b7ee2837c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2576,6 +2576,17 @@ static void intel_cdclk_pcode_post_notify(struct intel_atomic_state *state)
 			   update_cdclk, update_pipe_count);
 }
 
+bool intel_cdclk_is_decreasing_later(struct intel_atomic_state *state)
+{
+	const struct intel_cdclk_state *old_cdclk_state =
+		intel_atomic_get_old_cdclk_state(state);
+	const struct intel_cdclk_state *new_cdclk_state =
+		intel_atomic_get_new_cdclk_state(state);
+
+	return new_cdclk_state && !new_cdclk_state->disable_pipes &&
+		new_cdclk_state->actual.cdclk < old_cdclk_state->actual.cdclk;
+}
+
 /**
  * intel_set_cdclk_pre_plane_update - Push the CDCLK state to the hardware
  * @state: intel atomic state
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 2843fc091086..5d4faf401774 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -69,6 +69,7 @@ bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
 			       const struct intel_cdclk_config *b);
 u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
 			   const struct intel_cdclk_config *cdclk_config);
+bool intel_cdclk_is_decreasing_later(struct intel_atomic_state *state);
 void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
 void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
 void intel_cdclk_dump_config(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a118ecf9e532..028c3e6d6b1d 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3663,20 +3663,17 @@ static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state
 		intel_atomic_get_old_dbuf_state(state);
 	const struct intel_dbuf_state *new_dbuf_state =
 		intel_atomic_get_new_dbuf_state(state);
+	int mdclk_cdclk_ratio;
 
-	if (DISPLAY_VER(i915) >= 20 &&
-	    old_dbuf_state->mdclk_cdclk_ratio != new_dbuf_state->mdclk_cdclk_ratio) {
-		/*
-		 * For Xe2LPD and beyond, when there is a change in the ratio
-		 * between MDCLK and CDCLK, updates to related registers need to
-		 * happen at a specific point in the CDCLK change sequence. In
-		 * that case, we defer to the call to
-		 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK logic.
-		 */
-		return;
+	if (intel_cdclk_is_decreasing_later(state)) {
+		/* cdclk/mdclk will be changed later by intel_set_cdclk_post_plane_update() */
+		mdclk_cdclk_ratio = old_dbuf_state->mdclk_cdclk_ratio;
+	} else {
+		/* cdclk/mdclk already changed by intel_set_cdclk_pre_plane_update() */
+		mdclk_cdclk_ratio = new_dbuf_state->mdclk_cdclk_ratio;
 	}
 
-	intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_cdclk_ratio,
+	intel_dbuf_mdclk_cdclk_ratio_update(i915, mdclk_cdclk_ratio,
 					    new_dbuf_state->joined_mbus);
 }
 
-- 
2.43.2

