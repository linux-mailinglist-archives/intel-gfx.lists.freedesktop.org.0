Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WydeGGtpV2qeMwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 13:05:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F24475D480
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 13:05:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=B3g49HxL;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB20210EFCD;
	Wed, 15 Jul 2026 11:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0631510EFC9;
 Wed, 15 Jul 2026 11:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1784113510;
 bh=eowTLQqczcYI+CUVlxdNRWQEiE5if0J55Fz2gqOLbbs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=B3g49HxL+Jc7zoUHa3+lYxS+JmD/337inocuYJ0iXbBced2ouxHSaZDE/zES7DN10
 R6nVvwLtrTuqOD4MX9KS751lcmy5u+GaGFgHYlrRWJfI2sGBtk7Xh5bmFdJX+yksiI
 NqHHihtCzFeezh8HmQJGdy+sN3XxQUgk5aRuZJhyifpg03CFBiZM+8eeR5i03FnM8n
 F96PgXBlGoS1pmTVhw0dzIhIlxaZQAmBu7qpA798xTTtD3Eq0qQLSXrVwazssDxhbO
 UFsqO797ULdbjNDG9Kc039FoKhA/UAG5DNnJPAY1fXzFiGJruh3wkR497kUuibe5JC
 EL+2hnvDfB/xw==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v2 5/6] drm/xe/display: Remove duplicated code
Date: Wed, 15 Jul 2026 13:05:56 +0200
Message-ID: <20260715110557.2172095-6-dev@lankhorst.se>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lankhorst.se:from_mime,lankhorst.se:mid,lankhorst.se:email,lankhorst.se:dkim,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2F24475D480

The order of pte vs checks isn't important, so read the pte
outside the if block. This makes it slightly more readable.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 35 ++++++-------------
 1 file changed, 11 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 5540b0fca392a..e16a6a1e6288a 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -64,7 +64,7 @@ initial_plane_bo(struct xe_device *xe,
 	struct xe_bo *bo;
 	resource_size_t phys_base;
 	u32 base, size, flags;
-	u64 page_size = xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K ? SZ_64K : SZ_4K;
+	u64 page_size = xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K ? SZ_64K : SZ_4K, pte;
 	struct xe_ggtt_node *original_ggtt_node;
 
 	if (plane_config->size == 0)
@@ -77,16 +77,14 @@ initial_plane_bo(struct xe_device *xe,
 			page_size);
 	size -= base;
 
-	if (IS_DGFX(xe)) {
-		u64 pte = xe_ggtt_read_pte(tile0->mem.ggtt, base);
-
-		if (is_pte_local(pte) != need_pte_local(xe)) {
-			drm_err(&xe->drm, "Initial plane PTE has bad local memory bit\n");
-			return NULL;
-		}
-
-		phys_base = pte & ~(page_size - 1);
+	pte = xe_ggtt_read_pte(tile0->mem.ggtt, base);
+	phys_base = pte & ~(page_size - 1);
+	if (is_pte_local(pte) != need_pte_local(xe)) {
+		drm_err(&xe->drm, "Initial plane PTE has bad local memory bit\n");
+		return NULL;
+	}
 
+	if (IS_DGFX(xe)) {
 		flags |= XE_BO_FLAG_VRAM0;
 
 		/*
@@ -104,25 +102,14 @@ initial_plane_bo(struct xe_device *xe,
 			    "Using phys_base=%pa, based on initial plane programming\n",
 			    &phys_base);
 	} else {
-		struct ttm_resource_manager *stolen;
-		u64 pte;
+		flags |= XE_BO_FLAG_STOLEN;
+		phys_base -= xe_ttm_stolen_gpu_offset(xe);
 
-		stolen = ttm_manager_type(&xe->ttm, XE_PL_STOLEN);
-		if (!stolen) {
+		if (!ttm_manager_type(&xe->ttm, XE_PL_STOLEN)) {
 			drm_dbg_kms(&xe->drm, "No stolen for initial FB\n");
 			return NULL;
 		}
 
-		pte = xe_ggtt_read_pte(tile0->mem.ggtt, base);
-
-		if (is_pte_local(pte) != need_pte_local(xe)) {
-			drm_err(&xe->drm, "Initial plane PTE has bad local memory bit\n");
-			return NULL;
-		}
-
-		phys_base = (pte & ~(page_size - 1)) - xe_ttm_stolen_gpu_offset(xe);
-		flags |= XE_BO_FLAG_STOLEN;
-
 		if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
 		    IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION) &&
 		    !xe_display_bo_fbdev_prefer_stolen(xe, plane_config->size)) {
-- 
2.53.0

