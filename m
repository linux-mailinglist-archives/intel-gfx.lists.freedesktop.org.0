Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEsjAF6WwmkbfQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 14:49:18 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C070309B59
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 14:49:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFF1010E6E0;
	Tue, 24 Mar 2026 13:49:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V/cj0vWi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EF3D10E6DF;
 Tue, 24 Mar 2026 13:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774360154; x=1805896154;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KoV1lbuDZOMy3ugECwBTg/ApRlIgnZMwamdskZUCkbM=;
 b=V/cj0vWi2Ja0PfHMCrmhwAsQaA8xeRmYYciMcla0oA0betDQywSJGQWU
 KASwFewt0tDlN2ooN2G7oWD4qa7n3SKTob3NoRoKurUR/nvrkVIEFN0ei
 t5O8jqZ9TRqGTPodA4wHBDxgZfLA9Bz36+EY69JPAIX76T44bPLc2Iqoi
 EGWaFavtEvkDd4i3zYFdPLEH8FF+MntDkVpJX6wbzd2QONyrJ0ACtG4ao
 u2wAdvtxdUiqcPLlsERGYXFv1M/0w0P99w0sX+Yadzo6CYN9xupz7sFvc
 0rgEb8mulTgnVwLwl6GtN7RLAvyR4pgIjpYBbqyxd+r7/6QvG0kvsDh40 g==;
X-CSE-ConnectionGUID: PrsKpaG4SDC/AERoVBCaIg==
X-CSE-MsgGUID: GISVRp4XQ7KGp4QQgSRcaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="100818959"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="100818959"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 06:49:14 -0700
X-CSE-ConnectionGUID: HdUnk7OFSvuF5D07+GcVVw==
X-CSE-MsgGUID: K/a7GdAiSDm7ZsLDB8RaKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="229105180"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.220])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 06:49:13 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 6/9] drm/i915/wm: Extract skl_ddb_entry_verify()
Date: Tue, 24 Mar 2026 15:48:40 +0200
Message-ID: <20260324134843.2364-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260324134843.2364-1-ville.syrjala@linux.intel.com>
References: <20260324134843.2364-1-ville.syrjala@linux.intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 6C070309B59
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the DDB entry verification to a helper function.
We'll have another caller soon.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 32 ++++++++++++--------
 1 file changed, 20 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 3e323e434bfb..17faf090a154 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3934,6 +3934,23 @@ static void skl_wm_level_verify(struct intel_plane *plane,
 		hw_wm_level->enable, hw_wm_level->blocks, hw_wm_level->lines);
 }
 
+static void skl_ddb_entry_verify(struct intel_plane *plane,
+				 const char *ddb_name,
+				 const struct skl_ddb_entry *hw_ddb_entry,
+				 const struct skl_ddb_entry *sw_ddb_entry)
+{
+	struct intel_display *display = to_intel_display(plane);
+
+	if (skl_ddb_entry_equal(hw_ddb_entry, sw_ddb_entry))
+		return;
+
+	drm_err(display->drm,
+		"[PLANE:%d:%s] mismatch in %s (expected (%u,%u), found (%u,%u))\n",
+		plane->base.base.id, plane->base.name, ddb_name,
+		sw_ddb_entry->start, sw_ddb_entry->end,
+		hw_ddb_entry->start, hw_ddb_entry->end);
+}
+
 void intel_wm_state_verify(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
@@ -3977,7 +3994,6 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 			&hw->wm.planes[plane->id];
 		const struct skl_plane_wm *sw_plane_wm =
 			&sw_wm->planes[plane->id];
-		const struct skl_ddb_entry *hw_ddb_entry, *sw_ddb_entry;
 
 		for (level = 0; level < display->wm.num_levels; level++) {
 			char wm_name[16];
@@ -4003,17 +4019,9 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 					    &sw_plane_wm->sagv.trans_wm);
 		}
 
-		/* DDB */
-		hw_ddb_entry = &hw->ddb[plane->id];
-		sw_ddb_entry = &new_crtc_state->wm.skl.plane_ddb[plane->id];
-
-		if (!skl_ddb_entry_equal(hw_ddb_entry, sw_ddb_entry)) {
-			drm_err(display->drm,
-				"[PLANE:%d:%s] mismatch in DDB (expected (%u,%u), found (%u,%u))\n",
-				plane->base.base.id, plane->base.name,
-				sw_ddb_entry->start, sw_ddb_entry->end,
-				hw_ddb_entry->start, hw_ddb_entry->end);
-		}
+		skl_ddb_entry_verify(plane, "DDB",
+				     &hw->ddb[plane->id],
+				     &new_crtc_state->wm.skl.plane_ddb[plane->id]);
 	}
 
 	kfree(hw);
-- 
2.52.0

