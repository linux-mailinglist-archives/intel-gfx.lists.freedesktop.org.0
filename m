Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OW9KWkyuGmvaAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 17:40:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D5029D890
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 17:40:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 933BC10E2B5;
	Mon, 16 Mar 2026 16:40:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JvE8xXEP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0217A10E2DD;
 Mon, 16 Mar 2026 16:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773679206; x=1805215206;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7GW3LiFY68dwZVXIZ4We+nLfUibx/kMmOQMEflhLXSs=;
 b=JvE8xXEP5XlIw8SpYFRov5+qcy+uwZQFHO8UzPq7rB7dIDdH0rztU7q8
 lyJpIZPu9tVUm55xNfWf19q4Z+EnQhXXRjL+9sAdOgG1ELaHCIDRWthze
 Qq6IZPqy996407XPZm0fHfSB4OGcX1uBLbDqZ/h47WfZjG3XJ+kqjykvB
 7Kk2CF5FfHHujdaK0NoaQ+iwRnV1BymCCUyo990JTuBtjW+W26KnBQDbn
 tN6Fk98RS4WrW1rlmZ94aykogkiFOoIpNp59L6SO4ykad0qNY7ewa+4nf
 KNKsV2zvWEdjgWg2x29fS9CcRYfOZE+OTooat/cnT4yY3HMxyVUSIZAC7 w==;
X-CSE-ConnectionGUID: QWMt/NWxQ++/WhuLI6r5Rg==
X-CSE-MsgGUID: Cafleea0SI27RZYurlQdZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="74735694"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="74735694"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 09:40:06 -0700
X-CSE-ConnectionGUID: 2IvZfXHKSoe7PCacqY9tcg==
X-CSE-MsgGUID: vkxZ8jenTUazdhKcqJaezw==
X-ExtLoop1: 1
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.42])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 09:40:04 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Khaled Almahallawy <khaled.almahallawy@intel.com>
Subject: [PATCH 2/3] drm/i915: Relocate unlink_nv12_plane()
Date: Mon, 16 Mar 2026 18:39:52 +0200
Message-ID: <20260316163953.12905-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260316163953.12905-1-ville.syrjala@linux.intel.com>
References: <20260316163953.12905-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 48D5029D890
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move unlink_nv12_plane() ahead of its first caller to
avoid the forward declaration.

Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 49 ++++++++++------------
 1 file changed, 23 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 076b9b356481..bc1c801a06d7 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -437,7 +437,29 @@ void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
 }
 
 static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
-			      struct intel_plane_state *plane_state);
+			      struct intel_plane_state *plane_state)
+{
+	struct intel_display *display = to_intel_display(plane_state);
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+
+	if (!plane_state->planar_linked_plane)
+		return;
+
+	plane_state->planar_linked_plane = NULL;
+
+	if (!plane_state->is_y_plane)
+		return;
+
+	drm_WARN_ON(display->drm, plane_state->uapi.visible);
+
+	plane_state->is_y_plane = false;
+
+	crtc_state->enabled_planes &= ~BIT(plane->id);
+	crtc_state->active_planes &= ~BIT(plane->id);
+	crtc_state->update_planes |= BIT(plane->id);
+	crtc_state->data_rate[plane->id] = 0;
+	crtc_state->rel_data_rate[plane->id] = 0;
+}
 
 void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 			       struct intel_plane_state *plane_state)
@@ -1512,31 +1534,6 @@ static void link_nv12_planes(struct intel_crtc_state *crtc_state,
 	icl_link_nv12_planes(uv_plane_state, y_plane_state);
 }
 
-static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
-			      struct intel_plane_state *plane_state)
-{
-	struct intel_display *display = to_intel_display(plane_state);
-	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-
-	if (!plane_state->planar_linked_plane)
-		return;
-
-	plane_state->planar_linked_plane = NULL;
-
-	if (!plane_state->is_y_plane)
-		return;
-
-	drm_WARN_ON(display->drm, plane_state->uapi.visible);
-
-	plane_state->is_y_plane = false;
-
-	crtc_state->enabled_planes &= ~BIT(plane->id);
-	crtc_state->active_planes &= ~BIT(plane->id);
-	crtc_state->update_planes |= BIT(plane->id);
-	crtc_state->data_rate[plane->id] = 0;
-	crtc_state->rel_data_rate[plane->id] = 0;
-}
-
 static int icl_check_nv12_planes(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc)
 {
-- 
2.52.0

