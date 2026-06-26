Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ksrQHM+BPmoDHQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 15:42:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 432DB6CDA21
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 15:42:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=Btncb1ix;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75CF010F61A;
	Fri, 26 Jun 2026 13:42:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2E0110F5E5;
 Fri, 26 Jun 2026 13:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1782481336;
 bh=veyMqeP/HHsUinNhNIPK3SHl0Euc6gBrTNuDuscCi+0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Btncb1ixxX3rcbBCSTF7ntd9MNkyKUosDbDx/ai9CRzW9jLCfir8ZkUeVv394Dz9n
 KU+e3L9F/yskwDdH6Y2rn7ZsKInrnIbKXAjYSyKd7KpHA1QTrorj7SPeJOwdOyW+9/
 N/YKg1EQEr8w33X6Vw+mvRm9aDcE1shqfowhak/Lpw/R0LueDr52ucFuuNT7qdJ12+
 XJQgKH/Nxz9fBgbmqw8kXRQrzc8kM9qjGJKAkyN7bkgBEIc/ezsgZpKq3zCwPEgxco
 F5DOXNL3rKUeanX6Sz1hHvEP240bm+AgBYtW0ga0nPkYsaqQCY1vJ3Ld0tISNxCT6Z
 wGKabD2VJIAmw==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v10.5 28/29] drm/xe/display: Do not allocate into stolen for
 new framebuffers.
Date: Fri, 26 Jun 2026 15:42:19 +0200
Message-ID: <20260626134222.1198252-29-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260626134222.1198252-1-dev@lankhorst.se>
References: <20260626134222.1198252-1-dev@lankhorst.se>
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
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:dkim,lankhorst.se:email,lankhorst.se:mid,lankhorst.se:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 432DB6CDA21

Prefer to use system memory for global framebuffers, and reserve
the space for FBC use only.

Now that multiple CRTC's can use FBC's, the simple heuristic
of using less than half of stolen is no longer sufficient.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/display/xe_display_bo.c | 33 ++++------------------
 1 file changed, 6 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display_bo.c b/drivers/gpu/drm/xe/display/xe_display_bo.c
index a5080f6540d46..1bde12b509fcb 100644
--- a/drivers/gpu/drm/xe/display/xe_display_bo.c
+++ b/drivers/gpu/drm/xe/display/xe_display_bo.c
@@ -153,33 +153,12 @@ static struct drm_gem_object *xe_display_bo_fbdev_create(struct drm_device *drm,
 	struct xe_device *xe = to_xe_device(drm);
 	struct xe_bo *obj;
 
-	obj = ERR_PTR(-ENODEV);
-
-	if (xe_display_bo_fbdev_prefer_stolen(xe, size)) {
-		obj = xe_bo_create_pin_map_novm(xe, xe_device_get_root_tile(xe),
-						size,
-						ttm_bo_type_kernel,
-						XE_BO_FLAG_FORCE_WC |
-						XE_BO_FLAG_STOLEN |
-						XE_BO_FLAG_GGTT,
-						false);
-		if (!IS_ERR(obj))
-			drm_info(&xe->drm, "Allocated fbdev into stolen\n");
-		else
-			drm_info(&xe->drm, "Allocated fbdev into stolen failed: %li\n", PTR_ERR(obj));
-	} else {
-		drm_info(&xe->drm, "Allocating fbdev: Stolen memory not preferred.\n");
-	}
-
-	if (IS_ERR(obj)) {
-		obj = xe_bo_create_pin_map_novm(xe, xe_device_get_root_tile(xe), size,
-						ttm_bo_type_kernel,
-						XE_BO_FLAG_FORCE_WC |
-						XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(xe)) |
-						XE_BO_FLAG_GGTT,
-						false);
-	}
-
+	obj = xe_bo_create_pin_map_novm(xe, xe_device_get_root_tile(xe), size,
+					ttm_bo_type_kernel,
+					XE_BO_FLAG_FORCE_WC |
+					XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(xe)) |
+					XE_BO_FLAG_GGTT,
+					false);
 	if (IS_ERR(obj)) {
 		drm_err(&xe->drm, "failed to allocate framebuffer (%pe)\n", obj);
 		return ERR_PTR(-ENOMEM);
-- 
2.53.0

