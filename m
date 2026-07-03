Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jVR9Iz3wR2qAhwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A3B704A10
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmx.de header.s=s31663417 header.b=gNvHndL7;
	dmarc=pass (policy=quarantine) header.from=gmx.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7151910F88D;
	Fri,  3 Jul 2026 17:24:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFE7310F85E;
 Fri,  3 Jul 2026 16:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1783096374; x=1783701174; i=natalie.vock@gmx.de;
 bh=PfQns9PekZetmqhbMwMpfZqx0qE0XMmZ6d8JAN1PRrg=;
 h=X-UI-Sender-Class:From:Date:Subject:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Message-Id:References:In-Reply-To:To:Cc:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=gNvHndL7q5GL0uKeb+a+Ezewtf2ExR8RGKtew2Z+JvA3dWtlnR89F8bIzSUZzXl2
 7IV96LphC2DoGXDrA7TMAtUBZekH5488/+BgaovkCMpiR8JzSYgq37WY8uG8atgRw
 N1lSfvG2WGi0DVzgwzwHCjI81ZSnW35h0out5c1fGcmgg6vUs//sqCMj3MAESGWBB
 mMwifgUuEjSZerg0jxT1D3G6l4azENftaUzKTMKzHtALwOSrVWws/AlijhHTG/meE
 I/Nu8/ABS/eKmNmA4OahXMqgCz5XVT8NhFDa/AKGjVZK4xgurUDLpNRe6mcCcyH6V
 ApBbyGoodL9DqJI+9g==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MeU4y-1xDe7u2dCG-00d82E; Fri, 03
 Jul 2026 18:32:54 +0200
From: Natalie Vock <natalie.vock@gmx.de>
Date: Fri, 03 Jul 2026 18:31:29 +0200
Subject: [PATCH 09/10] drm/ttm: support using drm_exec during eviction v4
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20260703-ttm_2_drm_exec-v1-9-43685ac1286b@gmx.de>
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
X-Provags-ID: V03:K1:db61SuE4mS6aMWKG0dXRcbUZi7owPea5RswFJOmxvQgC1Csj/mL
 3a+/Ea1unC27hVBanPGDIXmGrDQVIami+Id7z1/AC0eur4OkY/RW5jr4dQ62ZfkDHpjXPz3
 fZJAkGzowz17pxUH9l66YqsIGlmiucW331wD7toqft7sX5RhobABRtrp9Jkg/SvEX3/yso7
 kYAo4m4Sd8FGKQ9QcsPSg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:46tbzE7nlQQ=;2DgazXOsOIBhOv+zamY2zSdXhL6
 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
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
X-Rspamd-Queue-Id: 07A3B704A10

From: Christian K=C3=B6nig <christian.koenig@amd.com>

Allow specifying a drm_exec object in TTMs operation context which is
used to lock objects during eviction.

This allows to handle deadlocks much more gracefully and with that
avoid returning -ENOMEM on heavily contended domains.

v2: rebased on top of Thomas work
v3: rebased again
v4: rebased, fixed locks of already-reserved buffers being dropped

Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
=2D--
 drivers/gpu/drm/ttm/ttm_bo_util.c | 30 ++++++++++++++++++++++--------
 include/drm/ttm/ttm_bo.h          |  5 +++++
 2 files changed, 27 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/ttm_b=
o_util.c
index a53b25e8c2967..96699532817c2 100644
=2D-- a/drivers/gpu/drm/ttm/ttm_bo_util.c
+++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
@@ -38,6 +38,7 @@
 #include <drm/ttm/ttm_tt.h>
=20
 #include <drm/drm_cache.h>
+#include <drm/drm_exec.h>
=20
 #include "ttm_bo_internal.h"
=20
@@ -837,6 +838,8 @@ static bool ttm_lru_walk_trylock(struct ttm_bo_lru_cur=
sor *curs,
 	struct ttm_operation_ctx *ctx =3D curs->arg->ctx;
=20
 	curs->needs_unlock =3D false;
+	if (ctx->exec)
+		return false;
=20
 	if (dma_resv_trylock(bo->base.resv)) {
 		curs->needs_unlock =3D true;
@@ -857,7 +860,9 @@ static int ttm_lru_walk_ticketlock(struct ttm_bo_lru_c=
ursor *curs,
 	struct ttm_lru_walk_arg *arg =3D curs->arg;
 	int ret;
=20
-	if (arg->ctx->interruptible)
+	if (arg->ctx->exec)
+		ret =3D drm_exec_lock_obj_report_dup(arg->ctx->exec, &bo->base);
+	else if (arg->ctx->interruptible)
 		ret =3D dma_resv_lock_interruptible(bo->base.resv, arg->ticket);
 	else
 		ret =3D dma_resv_lock(bo->base.resv, arg->ticket);
@@ -871,7 +876,11 @@ static int ttm_lru_walk_ticketlock(struct ttm_bo_lru_=
cursor *curs,
 		 * trylocking for this walk.
 		 */
 		arg->ticket =3D NULL;
-	} else if (ret =3D=3D -EDEADLK) {
+
+	} else if (arg->ctx->exec && arg->ctx->allow_res_evict &&
+		   ret =3D=3D -EALREADY) {
+		ret =3D 0;
+	} else if (!arg->ctx->exec && ret =3D=3D -EDEADLK) {
 		/* Caller needs to exit the ww transaction. */
 		ret =3D -ENOSPC;
 	}
@@ -937,12 +946,17 @@ static void ttm_bo_lru_cursor_cleanup_bo(struct ttm_=
bo_lru_cursor *curs)
 {
 	struct ttm_buffer_object *bo =3D curs->bo;
=20
-	if (bo) {
-		if (curs->needs_unlock)
+	if (!bo)
+		return;
+
+	if (curs->needs_unlock) {
+		if (curs->arg->ctx->exec)
+			drm_exec_unlock_obj(curs->arg->ctx->exec, &bo->base);
+		else
 			dma_resv_unlock(bo->base.resv);
-		ttm_bo_put(bo);
-		curs->bo =3D NULL;
 	}
+	ttm_bo_put(bo);
+	curs->bo =3D NULL;
 }
=20
 /**
@@ -1016,8 +1030,8 @@ __ttm_bo_lru_cursor_next(struct ttm_bo_lru_cursor *c=
urs)
 		if (ttm_lru_walk_trylock(curs, bo)) {
 			bo_locked =3D true;
=20
-		} else if (!arg->ticket || arg->ctx->no_wait_gpu ||
-			   arg->trylock_only) {
+		} else if ((!arg->ticket || arg->ctx->no_wait_gpu ||
+			    arg->trylock_only) && !arg->ctx->exec) {
 			spin_unlock(lru_lock);
 			ttm_bo_put(bo);
 			spin_lock(lru_lock);
diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
index a4060e44d23d0..156444b5e85d8 100644
=2D-- a/include/drm/ttm/ttm_bo.h
+++ b/include/drm/ttm/ttm_bo.h
@@ -187,6 +187,11 @@ struct ttm_operation_ctx {
 	 * @bytes_moved: Statistics on how many bytes have been moved.
 	 */
 	uint64_t bytes_moved;
+	/**
+	 * @exec: optional drm_exec object to use for locking BOs and
+	 * tracking which are locked.
+	 */
+	struct drm_exec *exec;
 };
=20
 /**

=2D-=20
2.55.0

