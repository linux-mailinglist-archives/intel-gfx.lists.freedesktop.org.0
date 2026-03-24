Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPxPE2aWwmkbfQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 14:49:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED035309B67
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 14:49:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 755C310E6D4;
	Tue, 24 Mar 2026 13:49:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j3jRyaSl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 317BD10E6D4;
 Tue, 24 Mar 2026 13:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774360163; x=1805896163;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EWiW2WDWi7X2CHnF8Jjjm8MEwiXwgit6C0Hf+y8oty8=;
 b=j3jRyaSlmAUbrb6OgdRgVqF7GUybv1M3kNXK/Dc5VGJrXxz5px13rr/g
 VpJzZg067m1cUUMmBsYYxozxXyIwTFm8jFZ6G+vG6Df2OmuD0oc/WFq5p
 16gS7eF1eePgDByUBsfsLp+gpEKA2IWZnipquVUEpbFiFDN4MaixNf2cx
 Dhbgsy8J+URqkq6XntyJCtFX2X529vQQV1VLz/yay+BkLYdaVT4np+l9K
 mvHaVQfXP4gI8HpunDA61jstMW+eV6T0qFqNAm4gwAcC5kvNrWi0xppZi
 3q/mu/4gxzTs5ID+pAhLY8+uDEvUwv7kYpeaMrH9N4qMdmw94oqCeR4KQ w==;
X-CSE-ConnectionGUID: SE8TUBM1RU2OMGqGc+bStA==
X-CSE-MsgGUID: 08DRqDvBTAOJLUhphC4ptA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="100819002"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="100819002"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 06:49:23 -0700
X-CSE-ConnectionGUID: auhj6RCpSSSwvikySVDTTw==
X-CSE-MsgGUID: 53/N2AUKS4K7fsVQvZrT2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="229105224"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.220])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 06:49:22 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 8/9] drm/i915/wm: Reduce copy-pasta in
 skl_print_plane_wm_changes()
Date: Tue, 24 Mar 2026 15:48:42 +0200
Message-ID: <20260324134843.2364-9-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: ED035309B67
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

skl_print_plane_wm_changes() is rather ugly with the copy-pasted
massive printk arguments. Reduce the duplication a bit by defining
a few FMT/ARG macros. Still ugly, but perhaps a bit less fragile.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 128 ++++++-------------
 1 file changed, 40 insertions(+), 88 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 1d932c37d768..4bffa27ce02c 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2613,6 +2613,26 @@ skl_print_plane_ddb_changes(struct intel_plane *plane,
 		    skl_ddb_entry_size(old), skl_ddb_entry_size(new));
 }
 
+#define PLANE_WM_EN_FMT "%cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm,%cswm,%cstwm"
+#define PLANE_WM_EN_ARGS(__wm) \
+	enast((__wm)->wm[0].enable), enast((__wm)->wm[1].enable), \
+	enast((__wm)->wm[2].enable), enast((__wm)->wm[3].enable), \
+	enast((__wm)->wm[4].enable), enast((__wm)->wm[5].enable), \
+	enast((__wm)->wm[6].enable), enast((__wm)->wm[7].enable), \
+	enast((__wm)->trans_wm.enable), \
+	enast((__wm)->sagv.wm0.enable), \
+	enast((__wm)->sagv.trans_wm.enable)
+
+#define PLANE_WM_FMT "%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d"
+#define PLANE_WM_ARGS(__wm, __field) \
+	(__wm)->wm[0].__field, (__wm)->wm[1].__field, \
+	(__wm)->wm[2].__field, (__wm)->wm[3].__field, \
+	(__wm)->wm[4].__field, (__wm)->wm[5].__field, \
+	(__wm)->wm[6].__field, (__wm)->wm[7].__field, \
+	(__wm)->trans_wm.__field, \
+	(__wm)->sagv.wm0.__field, \
+	(__wm)->sagv.trans_wm.__field
+
 static noinline_for_stack void
 skl_print_plane_wm_changes(struct intel_plane *plane,
 			   const struct skl_plane_wm *old_wm,
@@ -2621,112 +2641,44 @@ skl_print_plane_wm_changes(struct intel_plane *plane,
 	struct intel_display *display = to_intel_display(plane);
 
 	drm_dbg_kms(display->drm,
-		    "[PLANE:%d:%s]      level %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm,%cswm,%cstwm"
-		    " -> %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm,%cswm,%cstwm\n",
+		    "[PLANE:%d:%s]      level " PLANE_WM_EN_FMT " -> " PLANE_WM_EN_FMT "\n",
 		    plane->base.base.id, plane->base.name,
-		    enast(old_wm->wm[0].enable), enast(old_wm->wm[1].enable),
-		    enast(old_wm->wm[2].enable), enast(old_wm->wm[3].enable),
-		    enast(old_wm->wm[4].enable), enast(old_wm->wm[5].enable),
-		    enast(old_wm->wm[6].enable), enast(old_wm->wm[7].enable),
-		    enast(old_wm->trans_wm.enable),
-		    enast(old_wm->sagv.wm0.enable),
-		    enast(old_wm->sagv.trans_wm.enable),
-		    enast(new_wm->wm[0].enable), enast(new_wm->wm[1].enable),
-		    enast(new_wm->wm[2].enable), enast(new_wm->wm[3].enable),
-		    enast(new_wm->wm[4].enable), enast(new_wm->wm[5].enable),
-		    enast(new_wm->wm[6].enable), enast(new_wm->wm[7].enable),
-		    enast(new_wm->trans_wm.enable),
-		    enast(new_wm->sagv.wm0.enable),
-		    enast(new_wm->sagv.trans_wm.enable));
+		    PLANE_WM_EN_ARGS(old_wm),
+		    PLANE_WM_EN_ARGS(new_wm));
 
 	drm_dbg_kms(display->drm,
-		    "[PLANE:%d:%s]      lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%4d"
-		      " -> %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%4d\n",
+		    "[PLANE:%d:%s]      lines " PLANE_WM_FMT " -> " PLANE_WM_FMT "\n",
 		    plane->base.base.id, plane->base.name,
-		    enast(old_wm->wm[0].ignore_lines), old_wm->wm[0].lines,
-		    enast(old_wm->wm[1].ignore_lines), old_wm->wm[1].lines,
-		    enast(old_wm->wm[2].ignore_lines), old_wm->wm[2].lines,
-		    enast(old_wm->wm[3].ignore_lines), old_wm->wm[3].lines,
-		    enast(old_wm->wm[4].ignore_lines), old_wm->wm[4].lines,
-		    enast(old_wm->wm[5].ignore_lines), old_wm->wm[5].lines,
-		    enast(old_wm->wm[6].ignore_lines), old_wm->wm[6].lines,
-		    enast(old_wm->wm[7].ignore_lines), old_wm->wm[7].lines,
-		    enast(old_wm->trans_wm.ignore_lines), old_wm->trans_wm.lines,
-		    enast(old_wm->sagv.wm0.ignore_lines), old_wm->sagv.wm0.lines,
-		    enast(old_wm->sagv.trans_wm.ignore_lines), old_wm->sagv.trans_wm.lines,
-		    enast(new_wm->wm[0].ignore_lines), new_wm->wm[0].lines,
-		    enast(new_wm->wm[1].ignore_lines), new_wm->wm[1].lines,
-		    enast(new_wm->wm[2].ignore_lines), new_wm->wm[2].lines,
-		    enast(new_wm->wm[3].ignore_lines), new_wm->wm[3].lines,
-		    enast(new_wm->wm[4].ignore_lines), new_wm->wm[4].lines,
-		    enast(new_wm->wm[5].ignore_lines), new_wm->wm[5].lines,
-		    enast(new_wm->wm[6].ignore_lines), new_wm->wm[6].lines,
-		    enast(new_wm->wm[7].ignore_lines), new_wm->wm[7].lines,
-		    enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.lines,
-		    enast(new_wm->sagv.wm0.ignore_lines), new_wm->sagv.wm0.lines,
-		    enast(new_wm->sagv.trans_wm.ignore_lines), new_wm->sagv.trans_wm.lines);
+		    PLANE_WM_ARGS(old_wm, lines),
+		    PLANE_WM_ARGS(new_wm, lines));
 
 	drm_dbg_kms(display->drm,
-		    "[PLANE:%d:%s]     blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d"
-		    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d\n",
+		    "[PLANE:%d:%s]     blocks " PLANE_WM_FMT " -> " PLANE_WM_FMT "\n",
 		    plane->base.base.id, plane->base.name,
-		    old_wm->wm[0].blocks, old_wm->wm[1].blocks,
-		    old_wm->wm[2].blocks, old_wm->wm[3].blocks,
-		    old_wm->wm[4].blocks, old_wm->wm[5].blocks,
-		    old_wm->wm[6].blocks, old_wm->wm[7].blocks,
-		    old_wm->trans_wm.blocks,
-		    old_wm->sagv.wm0.blocks,
-		    old_wm->sagv.trans_wm.blocks,
-		    new_wm->wm[0].blocks, new_wm->wm[1].blocks,
-		    new_wm->wm[2].blocks, new_wm->wm[3].blocks,
-		    new_wm->wm[4].blocks, new_wm->wm[5].blocks,
-		    new_wm->wm[6].blocks, new_wm->wm[7].blocks,
-		    new_wm->trans_wm.blocks,
-		    new_wm->sagv.wm0.blocks,
-		    new_wm->sagv.trans_wm.blocks);
+		    PLANE_WM_ARGS(old_wm, blocks),
+		    PLANE_WM_ARGS(new_wm, blocks));
 
 	drm_dbg_kms(display->drm,
-		    "[PLANE:%d:%s]    min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d"
-		    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d\n",
+		    "[PLANE:%d:%s]    min_ddb " PLANE_WM_FMT " -> " PLANE_WM_FMT "\n",
 		    plane->base.base.id, plane->base.name,
-		    old_wm->wm[0].min_ddb_alloc, old_wm->wm[1].min_ddb_alloc,
-		    old_wm->wm[2].min_ddb_alloc, old_wm->wm[3].min_ddb_alloc,
-		    old_wm->wm[4].min_ddb_alloc, old_wm->wm[5].min_ddb_alloc,
-		    old_wm->wm[6].min_ddb_alloc, old_wm->wm[7].min_ddb_alloc,
-		    old_wm->trans_wm.min_ddb_alloc,
-		    old_wm->sagv.wm0.min_ddb_alloc,
-		    old_wm->sagv.trans_wm.min_ddb_alloc,
-		    new_wm->wm[0].min_ddb_alloc, new_wm->wm[1].min_ddb_alloc,
-		    new_wm->wm[2].min_ddb_alloc, new_wm->wm[3].min_ddb_alloc,
-		    new_wm->wm[4].min_ddb_alloc, new_wm->wm[5].min_ddb_alloc,
-		    new_wm->wm[6].min_ddb_alloc, new_wm->wm[7].min_ddb_alloc,
-		    new_wm->trans_wm.min_ddb_alloc,
-		    new_wm->sagv.wm0.min_ddb_alloc,
-		    new_wm->sagv.trans_wm.min_ddb_alloc);
+		    PLANE_WM_ARGS(old_wm, min_ddb_alloc),
+		    PLANE_WM_ARGS(new_wm, min_ddb_alloc));
 
 	if (DISPLAY_VER(display) >= 11)
 		return;
 
 	drm_dbg_kms(display->drm,
-		    "[PLANE:%d:%s] min_ddb_uv %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d"
-		    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d\n",
+		    "[PLANE:%d:%s] min_ddb_uv " PLANE_WM_FMT " -> " PLANE_WM_FMT "\n",
 		    plane->base.base.id, plane->base.name,
-		    old_wm->wm[0].min_ddb_alloc_uv, old_wm->wm[1].min_ddb_alloc_uv,
-		    old_wm->wm[2].min_ddb_alloc_uv, old_wm->wm[3].min_ddb_alloc_uv,
-		    old_wm->wm[4].min_ddb_alloc_uv, old_wm->wm[5].min_ddb_alloc_uv,
-		    old_wm->wm[6].min_ddb_alloc_uv, old_wm->wm[7].min_ddb_alloc_uv,
-		    old_wm->trans_wm.min_ddb_alloc_uv,
-		    old_wm->sagv.wm0.min_ddb_alloc_uv,
-		    old_wm->sagv.trans_wm.min_ddb_alloc_uv,
-		    new_wm->wm[0].min_ddb_alloc_uv, new_wm->wm[1].min_ddb_alloc_uv,
-		    new_wm->wm[2].min_ddb_alloc_uv, new_wm->wm[3].min_ddb_alloc_uv,
-		    new_wm->wm[4].min_ddb_alloc_uv, new_wm->wm[5].min_ddb_alloc_uv,
-		    new_wm->wm[6].min_ddb_alloc_uv, new_wm->wm[7].min_ddb_alloc_uv,
-		    new_wm->trans_wm.min_ddb_alloc_uv,
-		    new_wm->sagv.wm0.min_ddb_alloc_uv,
-		    new_wm->sagv.trans_wm.min_ddb_alloc_uv);
+		    PLANE_WM_ARGS(old_wm, min_ddb_alloc_uv),
+		    PLANE_WM_ARGS(new_wm, min_ddb_alloc_uv));
 }
 
+#undef PLANE_WM_EN_FMT
+#undef PLANE_WM_EN_ARGS
+#undef PLANE_WM_FMT
+#undef PLANE_WM_ARGS
+
 static void
 skl_print_wm_changes(struct intel_atomic_state *state)
 {
-- 
2.52.0

