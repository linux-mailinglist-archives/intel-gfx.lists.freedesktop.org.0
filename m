Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CqTMK42AS2oASgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 12:16:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6B970F06D
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 12:16:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=pixelcluster.dev header.s=ovhmo-selector-1 header.b="eUJyg/Kh";
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D052710E884;
	Mon,  6 Jul 2026 10:16:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8.mo533.mail-out.ovh.net (8.mo533.mail-out.ovh.net
 [54.36.140.183])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89A3210E878
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2026 10:16:40 +0000 (UTC)
Received: from director5.derp.mail-out.ovh.net
 (director5.derp.mail-out.ovh.net [57.128.106.70])
 by mo533.mail-out.ovh.net (Postfix) with ESMTPS id 4gv0SN34SFz64D7;
 Mon,  6 Jul 2026 10:08:52 +0000 (UTC)
Received: from director5.derp.mail-out.ovh.net
 (director5.derp.mail-out.ovh.net. [127.0.0.1])
 by director5.derp.mail-out.ovh.net (inspect_sender_mail_agent) with SMTP
 for <alexander.deucher@amd.com>; Mon,  6 Jul 2026 10:08:52 +0000 (UTC)
Received: from mta6.priv.ovhmail-u1.ea.mail.ovh.net (unknown [10.110.113.205])
 by director5.derp.mail-out.ovh.net (Postfix) with ESMTPS id
 4gv0SM6Kn7z7tDb; Mon,  6 Jul 2026 10:08:51 +0000 (UTC)
Received: from pixelcluster.dev (unknown [10.1.6.11])
 (Authenticated sender: nat@pixelcluster.dev)
 by mta6.priv.ovhmail-u1.ea.mail.ovh.net (Postfix) with ESMTPSA id C3DC88E18F1; 
 Mon,  6 Jul 2026 10:08:49 +0000 (UTC)
X-OVh-ClientIp: 88.133.252.134
From: Natalie Vock <nat@pixelcluster.dev>
Date: Mon, 06 Jul 2026 12:07:48 +0200
Subject: [PATCH v2 06/10] drm/ttm: move zombie handling into ttm_bo_evict
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260706-ttm_2_drm_exec-v2-6-4bf6bfc0d320@pixelcluster.dev>
References: <20260706-ttm_2_drm_exec-v2-0-4bf6bfc0d320@pixelcluster.dev>
In-Reply-To: <20260706-ttm_2_drm_exec-v2-0-4bf6bfc0d320@pixelcluster.dev>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>, 
 Matthew Auld <matthew.auld@intel.com>, 
 Matthew Brost <matthew.brost@intel.com>, 
 =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 Alex Deucher <alexander.deucher@amd.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 amd-gfx@lists.freedesktop.org
X-Mailer: b4 0.15.2
x-ovh-tracer-id: 9129922348778611004
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTF2rMupFDtSz5VGJXaGrwYUaRUbsc9Nn7nc8ghpwc35VyZFauYARogcas+VOSD8wf0IhZl41F2o83TSTJEqn1M70AEfTiU3uOfrR34AN46Y0JjeW4xo6cV+rH2TUD4SE1NDtof+377HjW5jUw1vYYddQq9f46CIv1pXDMg+OvLcv0mAeBq8idZd3/oeDOqFYW+mp/D/hf65ucF8pcrq4BoeAZT2yueghykMKcN1pOaBvVNRQXaTXALuE+8w2Owws5LoK70lx9jAX+i5vFCotZFddZWqe5L2MI0ywEcZRGnxLB/PRWCfMsAV61ff3CxEAEQBj4aCGHb8mrffVRaINrHzSOGJlXIUmJVwzUoH3BiotNBdeFHV2G71DUEencJEovZdqlMYUuhIAKjA+DfgjS3epEpEQNrzwPCKX2QgC5ldjdmvqjhO6m/WaW7AUu/ZUELhH43surbBI3DIUpdGLhRX8JNLcXwghofbs+01qhIeZxb1zkmYRQBbWo2Y8ozysScI3nlhIZDDntC275P1NiineIUI2cuFBMTmng7YcvOds0YdN9LWNMpWToi3AmaiWuIpn2hvQ6l7CMyrbKhV1zhntLZPe8aW3YFAGk3mXEHHaKn2q35sh1wDwOoxfvgLRxWhNns49UdPIv7G3QOsm+QGLosyNGvX9QaQMuvduSQGLQ
DKIM-Signature: a=rsa-sha256; bh=e8QHyuDL2skEkQjNtYLhoBSaqvz+SM6k98JVY9giwR0=; 
 c=relaxed/relaxed; d=pixelcluster.dev; h=From;
 s=ovhmo-selector-1; t=1783332532; v=1;
 b=eUJyg/KhLJxqzbeR8X8fv308CF/T3a0hdfG/bBr+nFr+3YsuvxnMub7QzWMolJwsdEYmMj6n
 327Wv7hJcXwAMJdmbIRQTFF2jj/PcMin2O8QErzsN39K/kg/rfpoTsykFg7T8sIovxbHEIJjV0n
 T+OrsnDJiOruY/AxvbhYplnG4EmY7ZcLgxfLJ1gWDytfi/qsJGqzf82QmxOUEr3hRU8vWvQqliR
 0xGisukUHwaIpYRgZhNMTlJqLQn+VSiA2glo7arWxyl/GSLCu2Rol/Kb7JX1B5ogMLTvwg6BKhP
 7iHCL8Od0xVKOb+1OS7Guc6CG/VjTtuYMCowegzj6+eQA==
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
X-Spamd-Result: default: False [2.69 / 15.00];
	SEM_URIBL_FRESH15(3.00)[pixelcluster.dev:from_mime,pixelcluster.dev:email,pixelcluster.dev:mid,pixelcluster.dev:dkim];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pixelcluster.dev];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[pixelcluster.dev:s=ovhmo-selector-1];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:christian.koenig@amd.com,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:alexander.deucher@amd.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	DKIM_TRACE(0.00)[pixelcluster.dev:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[nat@pixelcluster.dev,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nat@pixelcluster.dev,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:131.252.210.177:c];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pixelcluster.dev:from_mime,pixelcluster.dev:email,pixelcluster.dev:mid,pixelcluster.dev:dkim,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5B6B970F06D

Both callers do the same thing, so we can trivially unify that.

Signed-off-by: Christian König <christian.koenig@amd.com>
Signed-off-by: Natalie Vock <nat@pixelcluster.dev>
---
 drivers/gpu/drm/ttm/ttm_bo.c | 24 +++++++++---------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index 24c52df169ac8..54f01611ec823 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -359,6 +359,13 @@ static int ttm_bo_evict(struct ttm_buffer_object *bo,
 	struct ttm_place hop;
 	int ret = 0;
 
+	if (ttm_bo_is_zombie(bo)) {
+		ret = ttm_bo_wait_ctx(bo, ctx);
+		if (!ret)
+			ttm_bo_cleanup_memtype_use(bo);
+		return ret;
+	}
+
 	memset(&hop, 0, sizeof(hop));
 
 	dma_resv_assert_held(bo->base.resv);
@@ -466,13 +473,7 @@ int ttm_bo_evict_first(struct ttm_device *bdev, struct ttm_resource_manager *man
 	if (!bo->resource || bo->resource->mem_type != mem_type)
 		goto out_bo_moved;
 
-	if (ttm_bo_is_zombie(bo)) {
-		ret = ttm_bo_wait_ctx(bo, ctx);
-		if (!ret)
-			ttm_bo_cleanup_memtype_use(bo);
-	} else {
-		ret = ttm_bo_evict(bo, ctx);
-	}
+	ret = ttm_bo_evict(bo, ctx);
 out_bo_moved:
 	dma_resv_unlock(bo->base.resv);
 out_no_lock:
@@ -520,14 +521,7 @@ static s64 ttm_bo_evict_cb(struct ttm_lru_walk *walk, struct ttm_buffer_object *
 	if (bo->pin_count || !bo->bdev->funcs->eviction_valuable(bo, evict_walk->place))
 		return 0;
 
-	if (ttm_bo_is_zombie(bo)) {
-		lret = ttm_bo_wait_ctx(bo, walk->arg.ctx);
-		if (!lret)
-			ttm_bo_cleanup_memtype_use(bo);
-	} else {
-		lret = ttm_bo_evict(bo, walk->arg.ctx);
-	}
-
+	lret = ttm_bo_evict(bo, walk->arg.ctx);
 	if (lret)
 		goto out;
 

-- 
2.55.0

