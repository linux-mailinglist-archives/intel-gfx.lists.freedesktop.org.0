Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uACAJjxNAmpaqQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:42:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 152B35166F8
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:42:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 914AA10E8F9;
	Mon, 11 May 2026 21:42:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MDKgjjSj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2315010E8FE;
 Mon, 11 May 2026 21:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778535737; x=1810071737;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ROd+F48g1AeRAQa5Wq9i4Gq1uL0o7XbjXNj/nhDyUUM=;
 b=MDKgjjSj+ziqtfUzTDgEft9vbqLPfWvEJiKL+r21iICcMale9MZCv4sX
 d0MqlnRCFlewzCmnumL50W20jJ2EG8r68ytB39Rz/gwafmhJX9hf2k/5g
 RTVeEXCesNyTvAyUwl5O6+RBYaHVRsTQ5uCxHXQ3CtnIMn32fQhpb3q5G
 ax57OSd2MNaoT1Rx5GhOBXy1sQj9jGgLVtL0980VXrv7xRjvp+Rt5jqHY
 1ZZgs9g0MOgwYd5bO8LTOVbsrK4/q87QZUfSAEmXJZvHh3dltXgjirt3L
 j3lgJcHNcahs6phGtls1EpURj27dN/raNZXPaEgGmbnNr/pX/DJmhRVYK w==;
X-CSE-ConnectionGUID: Us5VXekiTnS+V9+MkDYQyg==
X-CSE-MsgGUID: fEr2b4cJSwWKlyPJZFqcTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90816905"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="90816905"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:42:17 -0700
X-CSE-ConnectionGUID: DKCoENdPSyalD7BGMQYyEg==
X-CSE-MsgGUID: xtLlpUUDTeSDMQ0wr7s21A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="275702943"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.104])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:42:15 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 12/14] drm/xe: Use the correct stolen offset in initial FB
 readout
Date: Tue, 12 May 2026 00:41:20 +0300
Message-ID: <20260511214122.8468-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
References: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 152B35166F8
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:email,intel.com:dkim]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The current assumption that the initial FB offset into stolen and
GGTT are the same is completely wrong for MTL+. On these platforms
the GOP always places the FB at start of stolen, but then maps it
to the top of GGTT.

Read the correct phys_base from the PTE so that we at least take
over the correct part of the physical memory.

The GGTT offset is more annoying to deal with there. The horrible
ggtt->start and GUC_GGTT_TOP hacks prevent us from even keeping the
original GGTT mapping (ggtt->start blocks pre-MTL hardware and
GUC_GGTT_TOP blcoks MTL+). For now just hack this and remap the
FB to live at ggtt->start. On MTL+ this might even work correctly
since we're unlikely to overlap with the original mapping. But on
earlier platforms we're guaranteed to have an overlap if the FB
is larger than ggtt->start. Such an overlap will cause visible
glitches on the screen as the PTEs get overwritten while the
display hardware is still using them for scanout.

On i915 we don't have the ggtt->start hack and thus can always
bind the FB to actual start of GGTT. i915 does have the equivalent
of GUC_GGTT_TOP so it can't leave the mapping to the end of GGTT
either sadly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 35 +++++++++++++++----
 1 file changed, 28 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index d0a9f8599096..da44f6d1a5f8 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -42,6 +42,7 @@ initial_plane_bo(struct xe_device *xe,
 {
 	struct xe_tile *tile0 = xe_device_get_root_tile(xe);
 	struct xe_bo *bo;
+	dma_addr_t dma_addr;
 	resource_size_t phys_base;
 	u32 base, size, flags;
 	u64 page_size = xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K ? SZ_64K : SZ_4K;
@@ -64,7 +65,8 @@ initial_plane_bo(struct xe_device *xe,
 			return NULL;
 		}
 
-		phys_base = pte & ~(page_size - 1);
+		dma_addr = pte & ~(page_size - 1);
+		phys_base = dma_addr;
 
 		flags |= XE_BO_FLAG_VRAM0;
 
@@ -78,10 +80,6 @@ initial_plane_bo(struct xe_device *xe,
 				&phys_base);
 			return NULL;
 		}
-
-		drm_dbg_kms(&xe->drm,
-			    "Using phys_base=%pa, based on initial plane programming\n",
-			    &phys_base);
 	} else {
 		struct ttm_resource_manager *stolen;
 		u64 pte;
@@ -99,11 +97,29 @@ initial_plane_bo(struct xe_device *xe,
 			return NULL;
 		}
 
-		phys_base = base;
+		dma_addr = pte & ~(page_size - 1);
+		phys_base = dma_addr - xe_ttm_stolen_gpu_offset(xe);
+
 		flags |= XE_BO_FLAG_STOLEN;
 	}
 
-	bo = xe_bo_create_pin_map_at_novm(xe, tile0, size, phys_base, phys_base,
+	drm_dbg_kms(&xe->drm,
+		    "Initial plane dma_addr=%pa phys_base=%pa\n",
+		    &dma_addr, &phys_base);
+
+	/*
+	 * Pin to xe_ggtt_start() to avoid conflicting with
+	 * the horrible ggtt->start and GUC_GGTT_TOP hacks.
+	 *
+	 * FIXME this is complete crap. To do this properly we
+	 * need to prevent the original PTEs from being overwritten
+	 * while bindind to the new address. Any overlap between
+	 * the old and new ranges will corrupt the old PTEs that
+	 * the display hardware is currently using for scanout.
+	 */
+	base = xe_ggtt_start(tile0->mem.ggtt);
+
+	bo = xe_bo_create_pin_map_at_novm(xe, tile0, size, phys_base, base,
 					  ttm_bo_type_kernel, flags, 0, false);
 	if (IS_ERR(bo)) {
 		drm_dbg_kms(&xe->drm,
@@ -112,6 +128,11 @@ initial_plane_bo(struct xe_device *xe,
 		return NULL;
 	}
 
+	drm_dbg_kms(&xe->drm,
+		    "Initial plane fb bound to 0x%llx in the ggtt (original 0x%x)\n",
+		    xe_ggtt_node_addr(bo->ggtt_node[tile0->id]),
+		    plane_config->base);
+
 	return bo;
 }
 
-- 
2.52.0

