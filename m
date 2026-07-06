Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zAhQMJSAS2oMSgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 12:16:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC3A70F09D
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 12:16:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=pixelcluster.dev header.s=ovhmo-selector-1 header.b=cHeSgi80;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B01910E33F;
	Mon,  6 Jul 2026 10:16:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5.mo534.mail-out.ovh.net (5.mo534.mail-out.ovh.net
 [54.36.140.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57F3E10E892
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2026 10:16:47 +0000 (UTC)
Received: from director6.derp.mail-out.ovh.net
 (director6.derp.mail-out.ovh.net [51.255.22.22])
 by mo534.mail-out.ovh.net (Postfix) with ESMTPS id 4gv0SG4RP3z6JNt;
 Mon,  6 Jul 2026 10:08:46 +0000 (UTC)
Received: from director6.derp.mail-out.ovh.net
 (director6.derp.mail-out.ovh.net. [127.0.0.1])
 by director6.derp.mail-out.ovh.net (inspect_sender_mail_agent) with SMTP
 for <alexander.deucher@amd.com>; Mon,  6 Jul 2026 10:08:46 +0000 (UTC)
Received: from mta6.priv.ovhmail-u1.ea.mail.ovh.net (unknown [10.110.188.61])
 by director6.derp.mail-out.ovh.net (Postfix) with ESMTPS id
 4gv0SG3D58z7tKd; Mon,  6 Jul 2026 10:08:46 +0000 (UTC)
Received: from pixelcluster.dev (unknown [10.1.6.11])
 (Authenticated sender: nat@pixelcluster.dev)
 by mta6.priv.ovhmail-u1.ea.mail.ovh.net (Postfix) with ESMTPSA id 658228E1900; 
 Mon,  6 Jul 2026 10:08:44 +0000 (UTC)
X-OVh-ClientIp: 88.133.252.134
From: Natalie Vock <nat@pixelcluster.dev>
Date: Mon, 06 Jul 2026 12:07:45 +0200
Subject: [PATCH v2 03/10] drm/ttm: remove ttm_lru_walk_ops
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260706-ttm_2_drm_exec-v2-3-4bf6bfc0d320@pixelcluster.dev>
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
x-ovh-tracer-id: 9128233496850358588
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTF2rMupFDtSz5VGJXaGrwYUaRUbsc9Nn7nc8ghpwc35VyZFauYARogcas+VOSD8wf0IhZl41F2o83TSTJEqn1M70AEfTiU3uOfrR34AN46Y0JjeW4xo6cV+rH2TUD4SE1NDtof+377HjW5jUw1vYYddQq9f46CIv1pXDMg+OvLcv0mAeBq8idZd3/oeDOqFYW+mp/D/hf65ucF8pcrq4BoeAZT2yueghykMKcN1pOaBvVNRQXaTXALuE+8w2Owws5LoK70lx9jAX+i5vFCotZFddZWqe5L2MI0ywEcZRGnxLB/PRWCfMsAV61ff3CxEAEQBj4aCGHb8mrffVRaINrHzcRpKKoY7Gtf57EkJJ2EJ2On7AWz6HYmAqPwk0Ji9fkrtOutngurpFhVNgszUI/SLQtmkCdJMToQTjJW5Ju5ErW7FkPFXHDtcgHcOovBmnVMxv3QguXn8YjMgyBCx6jN7Uf65EiTwYZ/JUpTeM2g8Dj6r2JbJfEJPaFvQp3UUycCxIUVfE3LH2+kCvad2ao+ij+NXwb0S/jJpSM/dx5cmpikbkRhPGhAWiFROqgNsfB54ibFc9TJUCKzU3SMekKBxBCfKGwHO51GcwMCxNxIB8LimCZu4eqjnIA+CksDmmcor4vKUYJ7jvwMPGAZKJm6SfWexZqjVtmT6bLrBitMnLw
DKIM-Signature: a=rsa-sha256; bh=jmgO1VqoCmbZK7RpvAI9AVCGbRxKc/AL/4JQ8AkCTDk=; 
 c=relaxed/relaxed; d=pixelcluster.dev; h=From;
 s=ovhmo-selector-1; t=1783332526; v=1;
 b=cHeSgi801Q1TZkJKx1CF7btk76tysmEH+/ubEWnddIH1wZsMdu+KnRQu+E4XPEDuCC2KlHlY
 LODHMaswSF79Hm25kxtF9j9wPuO0NqDlvPSdfd8EIb6uEWg1qY2fmCD5cl337mzBQHfOKUBDm5n
 umubUhMTpE+tsvsMp6lBENKGb3Cq+01v1xm6XbjS2Yzk69zZ7g2PS+dK8/8Rz1aZRraMW5izgIL
 RC6HOih8gqkDBfuAB2y/LkYeV60QHe88u0v4iISTe73TMkaLT3rrn+atRco3vwQCrg0ZWPrr4vQ
 N22CXcfw9oNvVjUNtj6OgCt2ywC21pS1NBbCk+5fAjGTg==
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
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:christian.koenig@amd.com,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:alexander.deucher@amd.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[pixelcluster.dev:s=ovhmo-selector-1];
	DMARC_NA(0.00)[pixelcluster.dev];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com];
	FORGED_SENDER(0.00)[nat@pixelcluster.dev,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	DKIM_TRACE(0.00)[pixelcluster.dev:+];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
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
X-Rspamd-Queue-Id: 6CC3A70F09D

It's just another layer of indirection.

Signed-off-by: Christian König <christian.koenig@amd.com>
Signed-off-by: Natalie Vock <nat@pixelcluster.dev>
---
 drivers/gpu/drm/ttm/ttm_bo.c      | 12 ++----------
 drivers/gpu/drm/ttm/ttm_bo_util.c |  2 +-
 include/drm/ttm/ttm_bo.h          | 34 ++++++++++++++--------------------
 3 files changed, 17 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index 2b470c1746f60..1fb8c53da0362 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -545,10 +545,6 @@ static s64 ttm_bo_evict_cb(struct ttm_lru_walk *walk, struct ttm_buffer_object *
 	return lret;
 }
 
-static const struct ttm_lru_walk_ops ttm_evict_walk_ops = {
-	.process_bo = ttm_bo_evict_cb,
-};
-
 static int ttm_bo_evict_alloc(struct ttm_device *bdev,
 			      struct ttm_resource_manager *man,
 			      const struct ttm_place *place,
@@ -560,7 +556,7 @@ static int ttm_bo_evict_alloc(struct ttm_device *bdev,
 {
 	struct ttm_bo_evict_walk evict_walk = {
 		.walk = {
-			.ops = &ttm_evict_walk_ops,
+			.process_bo = ttm_bo_evict_cb,
 			.arg = {
 				.ctx = ctx,
 				.ticket = ticket,
@@ -1187,10 +1183,6 @@ ttm_bo_swapout_cb(struct ttm_lru_walk *walk, struct ttm_buffer_object *bo)
 	return ret;
 }
 
-const struct ttm_lru_walk_ops ttm_swap_ops = {
-	.process_bo = ttm_bo_swapout_cb,
-};
-
 /**
  * ttm_bo_swapout() - Swap out buffer objects on the LRU list to shmem.
  * @bdev: The ttm device.
@@ -1209,7 +1201,7 @@ s64 ttm_bo_swapout(struct ttm_device *bdev, struct ttm_operation_ctx *ctx,
 {
 	struct ttm_bo_swapout_walk swapout_walk = {
 		.walk = {
-			.ops = &ttm_swap_ops,
+			.process_bo = ttm_bo_swapout_cb,
 			.arg = {
 				.ctx = ctx,
 				.trylock_only = true,
diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/ttm_bo_util.c
index 7ed085adf1c9b..29f068944a972 100644
--- a/drivers/gpu/drm/ttm/ttm_bo_util.c
+++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
@@ -919,7 +919,7 @@ s64 ttm_lru_walk_for_evict(struct ttm_lru_walk *walk, struct ttm_device *bdev,
 	s64 lret;
 
 	ttm_bo_lru_for_each_reserved_guarded(&cursor, man, &walk->arg, bo) {
-		lret = walk->ops->process_bo(walk, bo);
+		lret = walk->process_bo(walk, bo);
 		if (lret == -EBUSY || lret == -EALREADY)
 			lret = 0;
 		progress = (lret < 0) ? lret : progress + lret;
diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
index 1eae9eea5ff32..0fcd5082a7080 100644
--- a/include/drm/ttm/ttm_bo.h
+++ b/include/drm/ttm/ttm_bo.h
@@ -189,24 +189,6 @@ struct ttm_operation_ctx {
 	uint64_t bytes_moved;
 };
 
-struct ttm_lru_walk;
-
-/** struct ttm_lru_walk_ops - Operations for a LRU walk. */
-struct ttm_lru_walk_ops {
-	/**
-	 * process_bo - Process this bo.
-	 * @walk: struct ttm_lru_walk describing the walk.
-	 * @bo: A locked and referenced buffer object.
-	 *
-	 * Return: Negative error code on error, User-defined positive value
-	 * (typically, but not always, size of the processed bo) on success.
-	 * On success, the returned values are summed by the walk and the
-	 * walk exits when its target is met.
-	 * 0 also indicates success, -EBUSY means this bo was skipped.
-	 */
-	s64 (*process_bo)(struct ttm_lru_walk *walk, struct ttm_buffer_object *bo);
-};
-
 /**
  * struct ttm_lru_walk_arg - Common part for the variants of BO LRU walk.
  */
@@ -223,8 +205,20 @@ struct ttm_lru_walk_arg {
  * struct ttm_lru_walk - Structure describing a LRU walk.
  */
 struct ttm_lru_walk {
-	/** @ops: Pointer to the ops structure. */
-	const struct ttm_lru_walk_ops *ops;
+	/**
+	 * process_bo - Process this bo.
+	 * @walk: struct ttm_lru_walk describing the walk.
+	 * @bo: A locked and referenced buffer object.
+	 *
+	 * Return: Negative error code on error, User-defined positive value
+	 * (typically, but not always, size of the processed bo) on success.
+	 * On success, the returned values are summed by the walk and the
+	 * walk exits when its target is met.
+	 * 0 also indicates success, -EBUSY means this bo was skipped.
+	 */
+	s64 (*process_bo)(struct ttm_lru_walk *walk,
+			  struct ttm_buffer_object *bo);
+
 	/** @arg: Common bo LRU walk arguments. */
 	struct ttm_lru_walk_arg arg;
 };

-- 
2.55.0

