Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E0C6BE78D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 12:05:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8CC710EEE0;
	Fri, 17 Mar 2023 11:05:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBF8A10EEE0
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 11:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679051127; x=1710587127;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ojGuA4tsoYiQDvC2XIioHtsW8c0OzqI6hb68CiKbIuE=;
 b=cdbSOzNoKodd8Gcs0lYut1ZeSpCMc8OAzftxH3AEfNR2qG3M7hRYB5Vu
 Mn27HupYRKr7WOOoBGYlTillFHXbGxTOM/ayaO48F/mwSbted6E34hVUc
 Z9J+iWHm2sXImJ1Jn5VNsFR0ZUEAUw018ByVMl+/RdXAq7t40D4EN+NpJ
 78XhOZiAQ0BOXR6fkyznXvJA2P1lXlE90lmz5b59IyF/KQHrzZSSq1BX1
 VI57glAzWZL6Hp873ok0pqGB1Iqbt5HiQT9ICeMvQV7h4ZEIFE9RVHVkb
 TWkUGsQTLAWRVPAGOsngyXabBa5NXFxOBy/9mpX+aPL/3HGQHJ0ds9e/+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="318634699"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="318634699"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 04:05:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="744517063"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="744517063"
Received: from nkiryuhi-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.63.188])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 04:05:26 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Mar 2023 13:04:37 +0200
Message-Id: <20230317110437.2780483-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230317110437.2780483-1-jouni.hogander@intel.com>
References: <20230317110437.2780483-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/psr: Implement Wa_1136
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

Implement Wa_1136 for SKL/BXT/ICL.

Bspec: 21664

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c     | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.c |  5 -----
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a385cb8dbf13..e6bd46441392 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1049,6 +1049,13 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
+	/* Wa_1136 */
+	if (DISPLAY_VER(dev_priv) < 12 && crtc_state->wm_level_disabled) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "PSR condition failed: WM level disabled and no HW WA available\n");
+		return;
+	}
+
 	crtc_state->has_psr = true;
 	crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp, crtc_state);
 
@@ -1260,6 +1267,10 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
 
+	/* Wa_1136 */
+	if (DISPLAY_VER(dev_priv) < 12 && crtc_state->wm_level_disabled)
+		return;
+
 	intel_dp->psr.psr2_enabled = crtc_state->has_psr2;
 	intel_dp->psr.busy_frontbuffer_bits = 0;
 	intel_dp->psr.pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
@@ -1940,6 +1951,10 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		needs_to_disable |= !new_crtc_state->active_planes;
 		needs_to_disable |= new_crtc_state->has_psr2 != psr->psr2_enabled;
 
+		/* Wa_1136 */
+		needs_to_disable |= DISPLAY_VER(i915) < 12 &&
+			new_crtc_state->wm_level_disabled;
+
 		if (psr->enabled && needs_to_disable)
 			intel_psr_disable_locked(intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index afb751c024ba..ced61da8b496 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2278,11 +2278,6 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
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

