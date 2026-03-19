Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJZeM+Tgu2lXpQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 12:41:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 823A72CA797
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 12:41:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 057E210E98B;
	Thu, 19 Mar 2026 11:41:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Oy02jw+y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FCA910E98B;
 Thu, 19 Mar 2026 11:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773920483; x=1805456483;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vmlkv9gmr4kVXl1JHX/doghJ9Xzx7DALAx2FD2/uM7Y=;
 b=Oy02jw+yEqlx5VdiY3Tub9/F+obrD8MWrAGoz+e5ZoV3a9HCFl6iZcJ3
 vDYNnPQ6E+gbz5RzyLEYUhdax1ZhxZ7Z2iYvBFHNpgnFZs8yVOf2P3brS
 r57O3AkceIgepkZUHvTjbTtFNXFfWjapGFF59DFzR17+lu0UFqTrtFGTU
 bv98QkieE8iNbKTeY8Xo6pTo2voCcz0OU25U7BkikP6Qbljnqq4IwZDqH
 +i1GieKQ0ER0v3bZnsSUMtiCWiwo9eE3ZOdoWdfIC2Jkedu8vTao0dJGj
 k27di+maACc27zRam3df9Jj3U5ewLgIy7Mv/UVR3/v7SyBjK7yIrr1OdP A==;
X-CSE-ConnectionGUID: BF2FYZfUTy6ybQS6FkWv7g==
X-CSE-MsgGUID: 7dSLMXymRJGwtUQTvAI+7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="85691630"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="85691630"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 04:41:22 -0700
X-CSE-ConnectionGUID: EfFGk2nqTzyGt6RLh2FWbg==
X-CSE-MsgGUID: KAW9FYKjQYaQT8QSG7S83Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="227629248"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.169])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 04:41:21 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 9/9] drm/i915/wm: Include .min_ddb_alloc_uv in the wm dumps
Date: Thu, 19 Mar 2026 13:40:34 +0200
Message-ID: <20260319114034.7093-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260319114034.7093-1-ville.syrjala@linux.intel.com>
References: <20260319114034.7093-1-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 823A72CA797
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We include the Y/RGB .min_ddb_alloc in the wm state change dumps.
Do the same for .min_ddb_alloc_uv, on the platforms where it is
used.

Also adjust the whitespace in the other debug prints to keep
the values for each wm level lined up across all the lines.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 30 +++++++++++++++++---
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 345767349988..4725927acfd4 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2624,7 +2624,7 @@ skl_print_plane_wm_changes(struct intel_plane *plane,
 	struct intel_display *display = to_intel_display(plane);
 
 	drm_dbg_kms(display->drm,
-		    "[PLANE:%d:%s]   level %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm,%cswm,%cstwm"
+		    "[PLANE:%d:%s]      level %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm,%cswm,%cstwm"
 		    " -> %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm,%cswm,%cstwm\n",
 		    plane->base.base.id, plane->base.name,
 		    enast(old_wm->wm[0].enable), enast(old_wm->wm[1].enable),
@@ -2643,7 +2643,7 @@ skl_print_plane_wm_changes(struct intel_plane *plane,
 		    enast(new_wm->sagv.trans_wm.enable));
 
 	drm_dbg_kms(display->drm,
-		    "[PLANE:%d:%s]   lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%4d"
+		    "[PLANE:%d:%s]      lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%4d"
 		      " -> %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%4d\n",
 		    plane->base.base.id, plane->base.name,
 		    enast(old_wm->wm[0].ignore_lines), old_wm->wm[0].lines,
@@ -2670,7 +2670,7 @@ skl_print_plane_wm_changes(struct intel_plane *plane,
 		    enast(new_wm->sagv.trans_wm.ignore_lines), new_wm->sagv.trans_wm.lines);
 
 	drm_dbg_kms(display->drm,
-		    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d"
+		    "[PLANE:%d:%s]     blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d"
 		    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d\n",
 		    plane->base.base.id, plane->base.name,
 		    old_wm->wm[0].blocks, old_wm->wm[1].blocks,
@@ -2689,7 +2689,7 @@ skl_print_plane_wm_changes(struct intel_plane *plane,
 		    new_wm->sagv.trans_wm.blocks);
 
 	drm_dbg_kms(display->drm,
-		    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d"
+		    "[PLANE:%d:%s]    min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d"
 		    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d\n",
 		    plane->base.base.id, plane->base.name,
 		    old_wm->wm[0].min_ddb_alloc, old_wm->wm[1].min_ddb_alloc,
@@ -2706,6 +2706,28 @@ skl_print_plane_wm_changes(struct intel_plane *plane,
 		    new_wm->trans_wm.min_ddb_alloc,
 		    new_wm->sagv.wm0.min_ddb_alloc,
 		    new_wm->sagv.trans_wm.min_ddb_alloc);
+
+	if (DISPLAY_VER(display) >= 11)
+		return;
+
+	drm_dbg_kms(display->drm,
+		    "[PLANE:%d:%s] min_ddb_uv %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d"
+		    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d\n",
+		    plane->base.base.id, plane->base.name,
+		    old_wm->wm[0].min_ddb_alloc_uv, old_wm->wm[1].min_ddb_alloc_uv,
+		    old_wm->wm[2].min_ddb_alloc_uv, old_wm->wm[3].min_ddb_alloc_uv,
+		    old_wm->wm[4].min_ddb_alloc_uv, old_wm->wm[5].min_ddb_alloc_uv,
+		    old_wm->wm[6].min_ddb_alloc_uv, old_wm->wm[7].min_ddb_alloc_uv,
+		    old_wm->trans_wm.min_ddb_alloc_uv,
+		    old_wm->sagv.wm0.min_ddb_alloc_uv,
+		    old_wm->sagv.trans_wm.min_ddb_alloc_uv,
+		    new_wm->wm[0].min_ddb_alloc_uv, new_wm->wm[1].min_ddb_alloc_uv,
+		    new_wm->wm[2].min_ddb_alloc_uv, new_wm->wm[3].min_ddb_alloc_uv,
+		    new_wm->wm[4].min_ddb_alloc_uv, new_wm->wm[5].min_ddb_alloc_uv,
+		    new_wm->wm[6].min_ddb_alloc_uv, new_wm->wm[7].min_ddb_alloc_uv,
+		    new_wm->trans_wm.min_ddb_alloc_uv,
+		    new_wm->sagv.wm0.min_ddb_alloc_uv,
+		    new_wm->sagv.trans_wm.min_ddb_alloc_uv);
 }
 
 static void
-- 
2.52.0

