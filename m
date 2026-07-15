Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oWWqOGtpV2qgMwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 13:05:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CD575D487
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 13:05:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=O0q2kEPI;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE2C810EFCE;
	Wed, 15 Jul 2026 11:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB34E10EFC3;
 Wed, 15 Jul 2026 11:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1784113509;
 bh=M4118sCtzF0TKAWBOI/0RGOW+RtUnQrhgULc6L1L9gk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=O0q2kEPI+TFsJOQiOtWEFi/iUzVeOkguPZ6WZcDT2ui4i6oPz4rpkRWdYvAfZ5ljr
 zfuqh8uSHYPt0i6X6NTKWznVH79eIBFWhKcH0kzxvn22moeGE0Lk63S0k7sGSNQnbT
 uE79y3adBTxtX1ujZEvcWQwJMuZAxPzO3pHVEB7pc4MK0xDDgnbimWkbZWpU5R017x
 cXq95ppkBRcUaYczz+rFmfXzMSDZbDfJnHTwH2thM8HjzzKcKSwlv37BMfhV/ZWG15
 z28jul9KVF9Ezu4V3C9NAptUmPCFw+pk33XaM4Hi3nGV5FBvoY9dec54kjmUfj+YmU
 qQG6aKX9KX+zA==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v2 3/6] drm/xe/display: Reserve the original GGTT space before
 creating a bo
Date: Wed, 15 Jul 2026 13:05:54 +0200
Message-ID: <20260715110557.2172095-4-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260715110557.2172095-1-dev@lankhorst.se>
References: <20260715110557.2172095-1-dev@lankhorst.se>
MIME-Version: 1.0
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,lankhorst.se:from_mime,lankhorst.se:mid,lankhorst.se:email,lankhorst.se:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B4CD575D487

Annotate the original area of the framebuffer as reserved in the GGTT
before creating a new GGTT entry. This allows us to remove the
range restrictions of GGTT in xe_bo_create_pin_map_at_novm().

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 0f86b73036d03..f49dda8e28255 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -37,6 +37,25 @@ static bool need_pte_local(struct xe_device *xe)
 	return IS_DGFX(xe) || has_lmembar(xe);
 }
 
+static struct xe_ggtt_node *reserve_original_node(struct xe_ggtt *ggtt, u32 base, u32 size, u64 page_size)
+{
+	u64 ggtt_start = xe_ggtt_start(ggtt), ggtt_end = ggtt_start + xe_ggtt_size(ggtt);
+
+	/* Completely truncated? */
+	if (base + size <= ggtt_start || base >= ggtt_end)
+		return NULL;
+
+	/* Partially truncated? */
+	if (base <= ggtt_start) {
+		size -= ggtt_start - base;
+		base = ggtt_start;
+	} else if (base + size >= ggtt_end) {
+		size = ggtt_end - base;
+	}
+
+	return xe_ggtt_insert_node_at(ggtt, size, page_size, base, base + size);
+}
+
 static struct xe_bo *
 initial_plane_bo(struct xe_device *xe,
 		 struct intel_initial_plane_config *plane_config)
@@ -46,6 +65,7 @@ initial_plane_bo(struct xe_device *xe,
 	resource_size_t phys_base;
 	u32 base, size, flags;
 	u64 page_size = xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K ? SZ_64K : SZ_4K;
+	struct xe_ggtt_node *original_ggtt_node;
 
 	if (plane_config->size == 0)
 		return NULL;
@@ -111,8 +131,15 @@ initial_plane_bo(struct xe_device *xe,
 		}
 	}
 
+	original_ggtt_node = reserve_original_node(tile0->mem.ggtt, base, size, page_size);
+	if (IS_ERR(original_ggtt_node))
+		return NULL;
+
 	bo = xe_bo_create_pin_map_at_novm(xe, tile0, size, phys_base,
 					  ttm_bo_type_kernel, flags, 0, false);
+	if (original_ggtt_node)
+		xe_ggtt_node_remove_noclear(original_ggtt_node);
+
 	if (IS_ERR(bo)) {
 		drm_dbg_kms(&xe->drm,
 			    "Failed to create bo phys_base=%pa size %u with flags %x: %li\n",
-- 
2.53.0

