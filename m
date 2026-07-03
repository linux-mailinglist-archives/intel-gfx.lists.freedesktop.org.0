Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id B3dCNTnwR2p3hwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 824117049F7
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmx.de header.s=s31663417 header.b=lVAq7okG;
	dmarc=pass (policy=quarantine) header.from=gmx.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2470E10F872;
	Fri,  3 Jul 2026 17:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C40E710E64C;
 Fri,  3 Jul 2026 16:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1783096369; x=1783701169; i=natalie.vock@gmx.de;
 bh=SfsP9Uq9xBeVvKBkWmQm7u7nfAQJNxcA+ziZA7132K0=;
 h=X-UI-Sender-Class:From:Date:Subject:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Message-Id:References:In-Reply-To:To:Cc:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=lVAq7okGihZAjjtO6OrKrWkPYN8kGQuLTvkvOJeXvXIi/nTl+Wte0xRMzY0FrakF
 rdKlLCd9NLUfOXj61dafCs8BBNJIPax03K45EEnb1TrvPJGZwZ1nbBan7HUVNedeG
 Z8qVeWHtKUrgtsc6hLBpeZA+mJorjaDZD12WPYTZxCg5yBb7SY+RZ0BzDZobmn2oV
 YkE1QHq9zitABILp4hQAn/Hxin8DAIdngzj5bX1xoD3HK8VWYxOooStqVLVbfTvi2
 tJH1kRv+KL0JzLgaJ6f++kpn39Thq78hIeF3/rlSEq9B7UglHWzQaXtSpKPbfKx/9
 OXL8rVX6zaS/h0DlIQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MOiDX-1wSio20L8R-00NXFx; Fri, 03
 Jul 2026 18:32:49 +0200
From: Natalie Vock <natalie.vock@gmx.de>
Date: Fri, 03 Jul 2026 18:31:23 +0200
Subject: [PATCH 03/10] drm/ttm: remove ttm_lru_walk_ops
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20260703-ttm_2_drm_exec-v1-3-43685ac1286b@gmx.de>
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
In-Reply-To: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
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
X-Provags-ID: V03:K1:TAs8i8ODW2n5IusMlt8o1eELDqYPMo8zfJ6zSJ86PEj7OkjMVij
 KAFH2+gyYBXci7uYUdbJpX78+6rbJz17y0Gf3NEB3xRIs1Xe2ExpsK1PNjnnqvdn0sZPaSW
 3hgzTTXW0rbFvt5nJn6ProW3NVEadZtOZmxsUa+hwWG0YFy+yT1pZ22Qkx4UZKnCfVM1B1j
 3fK7pv7Q/Q5UkRg7o5Bmg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:bskwBY9oZSs=;zHyS4VJXFyAE6JWqlDE7pBycEqF
 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
 ccly6bKIkJwvDaOxIRRhC6yoQoI=
X-Mailman-Approved-At: Fri, 03 Jul 2026 17:24:06 +0000
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gmx.de,quarantine];
	R_DKIM_ALLOW(-0.20)[gmx.de:s=s31663417];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmx.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[natalie.vock@gmx.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmx.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gmx.de:from_mime,gmx.de:email,gmx.de:mid,gmx.de:dkim,amd.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 824117049F7

From: Christian K=C3=B6nig <christian.koenig@amd.com>

It's just another layer of indirection.

Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
=2D--
 drivers/gpu/drm/ttm/ttm_bo.c      | 12 ++----------
 drivers/gpu/drm/ttm/ttm_bo_util.c |  2 +-
 include/drm/ttm/ttm_bo.h          | 34 ++++++++++++++--------------------
 3 files changed, 17 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index 2b470c1746f60..1fb8c53da0362 100644
=2D-- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -545,10 +545,6 @@ static s64 ttm_bo_evict_cb(struct ttm_lru_walk *walk,=
 struct ttm_buffer_object *
 	return lret;
 }
=20
-static const struct ttm_lru_walk_ops ttm_evict_walk_ops =3D {
-	.process_bo =3D ttm_bo_evict_cb,
-};
-
 static int ttm_bo_evict_alloc(struct ttm_device *bdev,
 			      struct ttm_resource_manager *man,
 			      const struct ttm_place *place,
@@ -560,7 +556,7 @@ static int ttm_bo_evict_alloc(struct ttm_device *bdev,
 {
 	struct ttm_bo_evict_walk evict_walk =3D {
 		.walk =3D {
-			.ops =3D &ttm_evict_walk_ops,
+			.process_bo =3D ttm_bo_evict_cb,
 			.arg =3D {
 				.ctx =3D ctx,
 				.ticket =3D ticket,
@@ -1187,10 +1183,6 @@ ttm_bo_swapout_cb(struct ttm_lru_walk *walk, struct=
 ttm_buffer_object *bo)
 	return ret;
 }
=20
-const struct ttm_lru_walk_ops ttm_swap_ops =3D {
-	.process_bo =3D ttm_bo_swapout_cb,
-};
-
 /**
  * ttm_bo_swapout() - Swap out buffer objects on the LRU list to shmem.
  * @bdev: The ttm device.
@@ -1209,7 +1201,7 @@ s64 ttm_bo_swapout(struct ttm_device *bdev, struct t=
tm_operation_ctx *ctx,
 {
 	struct ttm_bo_swapout_walk swapout_walk =3D {
 		.walk =3D {
-			.ops =3D &ttm_swap_ops,
+			.process_bo =3D ttm_bo_swapout_cb,
 			.arg =3D {
 				.ctx =3D ctx,
 				.trylock_only =3D true,
diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/ttm_b=
o_util.c
index 7ed085adf1c9b..29f068944a972 100644
=2D-- a/drivers/gpu/drm/ttm/ttm_bo_util.c
+++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
@@ -919,7 +919,7 @@ s64 ttm_lru_walk_for_evict(struct ttm_lru_walk *walk, =
struct ttm_device *bdev,
 	s64 lret;
=20
 	ttm_bo_lru_for_each_reserved_guarded(&cursor, man, &walk->arg, bo) {
-		lret =3D walk->ops->process_bo(walk, bo);
+		lret =3D walk->process_bo(walk, bo);
 		if (lret =3D=3D -EBUSY || lret =3D=3D -EALREADY)
 			lret =3D 0;
 		progress =3D (lret < 0) ? lret : progress + lret;
diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
index 1eae9eea5ff32..0fcd5082a7080 100644
=2D-- a/include/drm/ttm/ttm_bo.h
+++ b/include/drm/ttm/ttm_bo.h
@@ -189,24 +189,6 @@ struct ttm_operation_ctx {
 	uint64_t bytes_moved;
 };
=20
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
-	s64 (*process_bo)(struct ttm_lru_walk *walk, struct ttm_buffer_object *b=
o);
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

=2D-=20
2.55.0

