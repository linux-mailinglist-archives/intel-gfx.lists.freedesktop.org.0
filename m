Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B64F9B8B3A
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 07:27:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5267910E957;
	Fri,  1 Nov 2024 06:27:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hFmCwQnh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF48810E951;
 Fri,  1 Nov 2024 06:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730442472; x=1761978472;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T8L+mnsYstidVwXc7kFb7njmAwtPDZIXE8ys5ByRe7U=;
 b=hFmCwQnhuHzojoSXyl8tgwzLz112tHGNcGX39rhxpjpdx4ojRsFt2t6o
 mk9ihtIay4FZrqNHyRRMvJjuUYU10GKT6PvXnr+Vdv3z7ePOv3n0aurbg
 tbtF9HGFhmInTag43qORfb6esPrei/2XCmlxMkJqBVhepsPr679W/LvzP
 dmrkhpC2+Le13INTPGYMXckOnYZdlP7vfER5WPEnZa5CH+hI4Nmr8GRCx
 xI7/OExq35jTZp4H8UVOfmUE5l8KrJ8lP6tuTj+fmJfwdtHzB6Gf7WoKC
 U39RIIBGbP7o5/Uy6C1SuRem6RDhnWc/mFJD4xJSdW+I7O2As+nF9afEw Q==;
X-CSE-ConnectionGUID: 4BtUOptrTmG7OdksN3wr9w==
X-CSE-MsgGUID: vwBSPmHRQEukLrpOc38EDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41306059"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41306059"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 23:27:52 -0700
X-CSE-ConnectionGUID: CMLevikYSFaZuzrVka/iTA==
X-CSE-MsgGUID: pbN0ZeNuTja0szhdKdx4yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="87648575"
Received: from ksztyber-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.3])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 23:27:50 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 2/7] drm/i915/vrr: Do not overwrite TRANS_PUSH PSR Frame
 Change Enable
Date: Fri,  1 Nov 2024 08:27:23 +0200
Message-Id: <20241101062728.3865980-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241101062728.3865980-1-jouni.hogander@intel.com>
References: <20241101062728.3865980-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Currently vrr code is overwriting possibly set PSR PR Frame Change Enable
bit in TRANS_PUSH register. Avoid this by adding trans_push_enabled into
struct intel_crtc and use that when writing TRANS_PUSH register.

v2: use intel_vrr_trans_push_enabled_set_clear instead of rmw

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_vrr.c      | 24 +++++++++++++++----
 2 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 2bb1fa64da2f..4ce6a03fe643 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1419,6 +1419,8 @@ struct intel_crtc {
 #endif
 
 	bool block_dc_for_vblank;
+
+	u32 trans_push_enabled;
 };
 
 struct intel_plane {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 19a5d0076bb8..328cc0a741bf 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -321,13 +321,14 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (!crtc_state->vrr.enable)
 		return;
 
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
-		       TRANS_PUSH_EN | TRANS_PUSH_SEND);
+		       crtc->trans_push_enabled | TRANS_PUSH_SEND);
 }
 
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
@@ -341,16 +342,28 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
 }
 
+static void intel_vrr_trans_push_enabled_set_clear(struct intel_crtc *crtc,
+						   enum transcoder cpu_transcoder,
+						   u32 clear, u32 set)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	crtc->trans_push_enabled = (crtc->trans_push_enabled & ~clear) | set;
+	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
+		       crtc->trans_push_enabled);
+}
+
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (!crtc_state->vrr.enable)
 		return;
 
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
-		       TRANS_PUSH_EN);
+	intel_vrr_trans_push_enabled_set_clear(crtc, cpu_transcoder, 0,
+					       TRANS_PUSH_EN);
 
 	if (HAS_AS_SDP(display))
 		intel_de_write(display,
@@ -371,6 +384,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
 	if (!old_crtc_state->vrr.enable)
@@ -381,7 +395,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	intel_de_wait_for_clear(display,
 				TRANS_VRR_STATUS(display, cpu_transcoder),
 				VRR_STATUS_VRR_EN_LIVE, 1000);
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+
+	intel_vrr_trans_push_enabled_set_clear(crtc, cpu_transcoder,
+					       TRANS_PUSH_EN, 0);
 
 	if (HAS_AS_SDP(display))
 		intel_de_write(display,
-- 
2.34.1

