Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m2B3IINjVmp/4gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 18:27:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCBD756EE0
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 18:27:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b="kC/wjNzr";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 364E010EDF8;
	Tue, 14 Jul 2026 16:27:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D368510EDDE;
 Tue, 14 Jul 2026 16:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1784046461;
 bh=a+wbG35+w4I/cqUCaw2OzIFFbdDAqa/oUV7xbL7nxc4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kC/wjNzrenpy3YEolJaX29FRN1/oiqsYZuXknX1XLnM1XLzG9YSYceDMUv035HNiK
 nJxcqzmgGf7P5Xsx1xUdaM8fVxCn7s+vbrxDZsZG353UUqi8YoCfjw43NnI8cxNpLH
 T4bXtw2H09A3HVvOddWLWBMOSGl4W1holH/QAw43fX4vQjgYBFoeraFDbH+AslP8Ao
 B7vd+tyaKnOCQ4szOnaInzWwX04sMBG7S0uoO3h74v6kgf+8YMrxLTygwLv4CqVefI
 1KmhADotKUD2krgMKOi2QfyN6H43i6dlDu3puQO1MQkuygHApWE/e/U+3S6capEhg3
 IZMNDsSFJMWtw==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 7/7] drm/xe/ggtt: Remove xe_ggtt_insert_bo_at
Date: Tue, 14 Jul 2026 18:28:24 +0200
Message-ID: <20260714162824.2063637-8-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260714162824.2063637-1-dev@lankhorst.se>
References: <20260714162824.2063637-1-dev@lankhorst.se>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4FCBD756EE0

This code was created specifically for the display handover,
and can be removed now that we temporarily reserve the area
of GGTT that contains the original framebuffer contents.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/xe_bo.c   |  8 +-------
 drivers/gpu/drm/xe/xe_ggtt.c | 16 ----------------
 drivers/gpu/drm/xe/xe_ggtt.h |  2 --
 3 files changed, 1 insertion(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
index ae730bd6f4b26..41b42aad783ad 100644
--- a/drivers/gpu/drm/xe/xe_bo.c
+++ b/drivers/gpu/drm/xe/xe_bo.c
@@ -2548,13 +2548,7 @@ __xe_bo_create_locked(struct xe_device *xe,
 			if (t != tile && !(bo->flags & XE_BO_FLAG_GGTTx(t)))
 				continue;
 
-			if (flags & XE_BO_FLAG_FIXED_PLACEMENT) {
-				err = xe_ggtt_insert_bo_at(t->mem.ggtt, bo,
-							   start + xe_bo_size(bo), U64_MAX,
-							   exec);
-			} else {
-				err = xe_ggtt_insert_bo(t->mem.ggtt, bo, exec);
-			}
+			err = xe_ggtt_insert_bo(t->mem.ggtt, bo, exec);
 			if (err)
 				goto err_unlock_put_bo;
 		}
diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
index 7aa075edf9d28..c38d5957d316e 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.c
+++ b/drivers/gpu/drm/xe/xe_ggtt.c
@@ -904,22 +904,6 @@ static int __xe_ggtt_insert_bo_at(struct xe_ggtt *ggtt, struct xe_bo *bo,
 	return err;
 }
 
-/**
- * xe_ggtt_insert_bo_at - Insert BO at a specific GGTT space
- * @ggtt: the &xe_ggtt where bo will be inserted
- * @bo: the &xe_bo to be inserted
- * @start: address where it will be inserted
- * @end: end of the range where it will be inserted
- * @exec: The drm_exec transaction to use for exhaustive eviction.
- *
- * Return: 0 on success or a negative error code on failure.
- */
-int xe_ggtt_insert_bo_at(struct xe_ggtt *ggtt, struct xe_bo *bo,
-			 u64 start, u64 end, struct drm_exec *exec)
-{
-	return __xe_ggtt_insert_bo_at(ggtt, bo, start, end, exec);
-}
-
 /**
  * xe_ggtt_insert_bo - Insert BO into GGTT
  * @ggtt: the &xe_ggtt where bo will be inserted
diff --git a/drivers/gpu/drm/xe/xe_ggtt.h b/drivers/gpu/drm/xe/xe_ggtt.h
index 83654544feb6d..02e72dbae0e58 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.h
+++ b/drivers/gpu/drm/xe/xe_ggtt.h
@@ -36,8 +36,6 @@ void xe_ggtt_node_remove_noclear(struct xe_ggtt_node *node);
 size_t xe_ggtt_node_pt_size(const struct xe_ggtt_node *node);
 void xe_ggtt_map_bo_unlocked(struct xe_ggtt *ggtt, struct xe_bo *bo);
 int xe_ggtt_insert_bo(struct xe_ggtt *ggtt, struct xe_bo *bo, struct drm_exec *exec);
-int xe_ggtt_insert_bo_at(struct xe_ggtt *ggtt, struct xe_bo *bo,
-			 u64 start, u64 end, struct drm_exec *exec);
 void xe_ggtt_remove_bo(struct xe_ggtt *ggtt, struct xe_bo *bo);
 u64 xe_ggtt_largest_hole(struct xe_ggtt *ggtt, u64 alignment, u64 *spare);
 
-- 
2.53.0

