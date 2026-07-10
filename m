Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id d1ceJCFDUWroBQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 21:08:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C22073D900
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 21:08:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ZAWL07Zk;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C633610F952;
	Fri, 10 Jul 2026 19:08:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53F0310F950
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2026 19:08:04 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id
 5b1f17b1804b1-493f25d47dcso9961005e9.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2026 12:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1783710483; x=1784315283; darn=lists.freedesktop.org;
 h=content-transfer-encoding:reply-to:content-type:mime-version
 :references:in-reply-to:message-id:date:subject:to:from:from:to:cc
 :subject:date:message-id:reply-to:content-type;
 bh=XYmheRZks84ebbE/VW7oiD93RBquqkXcsU3VJTJ0fDE=;
 b=ZAWL07ZkFh+E4CSLwiWku7/SewVUE0qjfvmQAr7FP+GpFv8Q8fQg2GFQMsISesbDQ3
 KUjzFsUBkrUz3F8YqThM2z+rNzXTgDbyJC/yMFSxOjJmu8PNoxiKjsyYfWRjSHO+MGJ6
 YG2fbEr0I41zChzujkDD4Z7UWS3zvTrNMjVpvNO2a6DLn1Cds+XX5LXvFUwwqVOkA1t9
 WIrkgq/BHWtK+G2i1i1uhlOK+H8O/b8LFkRKubKbsBNGPxhDjRM071JyvLglCkQPL2dg
 k2dtzRlo2U9Bz5YA+dawU/ZL1hMtWWg2Zdmy9G+Jw86j3EHJwNIUITh30JyK5YMOjA0K
 1/2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783710483; x=1784315283;
 h=content-transfer-encoding:reply-to:content-type:mime-version
 :references:in-reply-to:message-id:date:subject:to:from:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
 :content-type;
 bh=XYmheRZks84ebbE/VW7oiD93RBquqkXcsU3VJTJ0fDE=;
 b=rkVAmMb2uFnXSaStVi6hB2yltD2L7yqb6KhDMKlFDSFfmIjEWz8H4TWDzBYmGaMVJd
 qXZwkLA6d0/KhWTDRQZL/aaXywat9e9gzytyUvz1PwEhn6JFUCO/V+GxRJs3tmz7fcPx
 iSzFGfVsfEK1oteGIwggEDr6F30LuP+6YB7kNShPY0nWfET8P1fR4zZHH0QJg7ZcKi2g
 oNSc6G4TALt6xSXK9bcA+pnAs7nrs68CVvnKtuqUQRaUhq1o3wx1erxZ8Evz7oej/gXG
 b/0Wcfqvfc3sfBJI4EONcBG6+rOHTJzwgKIkCuFCp29WklsdK+St0H3WP4qcVbEqr4ZS
 DQTQ==
X-Forwarded-Encrypted: i=1;
 AHgh+RrMv6MPbW0lEvSUKYPXaMkID3K4sXEdOkIJuY1B7amyeY+rFk2ttodb1UG1eorGA7XrHlGA+y4Qp3w=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxdgMXqMkmrMxny7JBI5fYw0lacZFcEIRP/ZLALe7Sr5DOZBXqg
 aFWY4rjACJX98rpD1R2zgnb4jhYRP2RrV6Iii5O/gFMBRbaA2lNh0WcnLSdzLrETLKU=
X-Gm-Gg: AfdE7cm0xmHRcEAEo0xR83vJhBzcjMBIAxMhm3YHxRicewF2YnNrtQ2NolhgtVT0taw
 050q8rzOIAMQIJDWs3S6VHVC5Kx1+Nfw0TZUV0OQJJPrQue7/rEYhVHUxB8SwqhJoD+SC3tVe6T
 lms0X+87vHqF5n5HB6sbn+FmgLb9RFbIZ8J4SEqiUNtcbIVJguje4qyNoyxYrPq8NO2U1Y+J2TN
 HylADTzpI8pY1SCtdR6je6yMdMJ7J4BdqPDe4+/WU+6rKEUJQ3m4Y/v23EkxT548WEPjdq9PF4m
 03UOucXC1M23U0PacT6W9BiSiTqffiRyVY3GYUToQaKmD8lL9h7Szq3EjQGytlMbYev/jTL51Vm
 F/o46FIyphjT3bXv1AagBXNDy+5M2HxhN4B+YNMTZHv7bd0OmsVO7QrD0OjKOI6tKGyet5AhalQ
 BpxxgiVXXfMPibXJ50ZTcqVBZNhg==
X-Received: by 2002:a05:600c:1502:b0:493:c773:c3f4 with SMTP id
 5b1f17b1804b1-493f881d64cmr624905e9.22.1783710482709; 
 Fri, 10 Jul 2026 12:08:02 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:154f:ec00:aa08:de24:db33:4496])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-493f567eadfsm55000755e9.6.2026.07.10.12.08.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jul 2026 12:08:02 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: thomas.hellstrom@linux.intel.com, dakr@kernel.org, ecourtney@nvidia.com,
 simona@ffwll.ch, matthew.brost@intel.com, nat@pixelcluster.dev,
 airlied@gmail.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH 08/12] drm/ttm: use dma_resv reference in
 ttm_device_clear_lru_dma_mappings
Date: Fri, 10 Jul 2026 20:52:48 +0200
Message-ID: <20260710190752.2355-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260710190752.2355-1-christian.koenig@amd.com>
References: <20260710190752.2355-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Reply-To: christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:thomas.hellstrom@linux.intel.com,m:dakr@kernel.org,m:ecourtney@nvidia.com,m:simona@ffwll.ch,m:matthew.brost@intel.com,m:nat@pixelcluster.dev,m:airlied@gmail.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,nvidia.com,ffwll.ch,intel.com,pixelcluster.dev,gmail.com,lists.freedesktop.org,vger.kernel.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[ckoenigleichtzumerken@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[christian.koenig@amd.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:replyto,amd.com:mid,amd.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3C22073D900

Instead of trying to grab a BO reference.

Also lock the dma_resv object, that TT unpopulate is done without
holding the lock looks extremely suspicious.

Only compile tested!

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/ttm/ttm_device.c | 24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_device.c b/drivers/gpu/drm/ttm/ttm_device.c
index e4188e2ee7ab1..be6fc42772f9d 100644
--- a/drivers/gpu/drm/ttm/ttm_device.c
+++ b/drivers/gpu/drm/ttm/ttm_device.c
@@ -293,19 +293,29 @@ static void ttm_device_clear_lru_dma_mappings(struct ttm_device *bdev,
 
 	spin_lock(&bdev->lru_lock);
 	while ((res = ttm_lru_first_res_or_null(list))) {
-		struct ttm_buffer_object *bo = res->bo;
+		struct dma_resv *resv;
 
 		/* Take ref against racing releases once lru_lock is unlocked */
-		if (!ttm_bo_get_unless_zero(bo))
-			continue;
+		resv = dma_resv_get(res->bo->base.resv);
+		spin_unlock(&bdev->lru_lock);
+
+		dma_resv_lock(resv, NULL);
 
-		list_del_init(&bo->resource->lru.link);
+		/* Double check that res and bo is still valid */
+		spin_lock(&bdev->lru_lock);
+		if (res != ttm_lru_first_res_or_null(list)) {
+			dma_resv_unlock(resv);
+			dma_resv_put(resv);
+			continue;
+		}
+		list_del_init(&res->lru.link);
 		spin_unlock(&bdev->lru_lock);
 
-		if (bo->ttm)
-			ttm_tt_unpopulate(bo->bdev, bo->ttm);
+		if (res->bo->ttm)
+			ttm_tt_unpopulate(res->bo->bdev, res->bo->ttm);
 
-		ttm_bo_put(bo);
+		dma_resv_unlock(resv);
+		dma_resv_put(resv);
 		spin_lock(&bdev->lru_lock);
 	}
 	spin_unlock(&bdev->lru_lock);
-- 
2.43.0

