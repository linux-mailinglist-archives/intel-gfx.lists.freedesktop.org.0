Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE086CD6C7
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 11:46:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0600410EA72;
	Wed, 29 Mar 2023 09:46:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CB3110EA6D
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 09:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680083194; x=1711619194;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+7meDs529R8t0X6XRju4lz2ohhjBRR9Se3m0MJXLum4=;
 b=goHuqZ963u7QoBray5oH6MT4HvkPDFOCjCJmuWSvQVBUh0laJtxrE88W
 TzlWOqtxhZnSrjZ45mwO3aqCXqVl3PxhNug+u+zHLf3I5acVS0L/a6VQ8
 cpAso0PAwKSuWVF+ZWmyonXqjtdl1FCmigQIp8HVDfOEnlaGWM+JqIaD2
 G3KX1H1rWCyUCDdbtSJCAP7D7nySZiVEWOpjI1Zl7l3Kf5V2jxzWufn3c
 BT3MmWNy0MxxZA/7b74zQlEBtOliENnJWUpsRuinwLti3RJbrq9XPmfnN
 XwrfGtk+HR0h+Qps29a/Ooc37MNwSL6tCYX8FMGFPE0WGNdMPecoeIq5q g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="342424908"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="342424908"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 02:46:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="677724796"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="677724796"
Received: from pgarraul-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.223.204])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 02:46:11 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 12:45:32 +0300
Message-Id: <20230329094532.221450-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230329094532.221450-1-jouni.hogander@intel.com>
References: <20230329094532.221450-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 6/6] drm/i915/psr: Implement Display WA #1136
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

Implement Display WA #1136 for SKL/BXT.

Bspec: 21664

v2: Handle disable psr in pre/post plane hooks

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c     | 7 +++++++
 drivers/gpu/drm/i915/display/skl_watermark.c | 5 -----
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f86d9f83429f..52f73c65d365 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1968,11 +1968,14 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		 * - PSR disabled in new state
 		 * - All planes will go inactive
 		 * - Changing between PSR versions
+		 * - Display WA #1136: skl, bxt
 		 */
 		needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
 		needs_to_disable |= !new_crtc_state->has_psr;
 		needs_to_disable |= !new_crtc_state->active_planes;
 		needs_to_disable |= new_crtc_state->has_psr2 != psr->psr2_enabled;
+		needs_to_disable |= DISPLAY_VER(i915) < 11 &&
+			new_crtc_state->wm_level_disabled;
 
 		if (psr->enabled && needs_to_disable)
 			intel_psr_disable_locked(intel_dp);
@@ -2007,6 +2010,10 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 		keep_disabled |= psr->sink_not_reliable;
 		keep_disabled |= !crtc_state->active_planes;
 
+		/* Display WA #1136: skl, bxt */
+		keep_disabled |= DISPLAY_VER(dev_priv) < 11 &&
+			crtc_state->wm_level_disabled;
+
 		if (!psr->enabled && !keep_disabled)
 			intel_psr_enable_locked(intel_dp, crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 7e2e76afbf2a..5296a20d62d3 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2281,11 +2281,6 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 	 */
 	crtc_state->wm_level_disabled = level < i915->display.wm.num_levels - 1;
 
-	/*
-	 * FIXME also related to skl+ w/a 1136 (also unimplemented as of
-	 * now) perhaps?
-	 */
-
 	for (level++; level < i915->display.wm.num_levels; level++) {
 		enum plane_id plane_id;
 
-- 
2.34.1

