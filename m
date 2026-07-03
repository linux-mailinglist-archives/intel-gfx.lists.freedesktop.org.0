Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PF9CFD7wR2qDhwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3ACE704A1B
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmx.de header.s=s31663417 header.b=TTs4BOpX;
	dmarc=pass (policy=quarantine) header.from=gmx.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2539C10F890;
	Fri,  3 Jul 2026 17:24:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D18EA10F857;
 Fri,  3 Jul 2026 16:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1783096372; x=1783701172; i=natalie.vock@gmx.de;
 bh=Rm+VRdqIFplNcwupWSFVQ20wUcYY6y1Q1wNpZTO2Mbw=;
 h=X-UI-Sender-Class:From:Date:Subject:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Message-Id:References:In-Reply-To:To:Cc:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=TTs4BOpXo3ZnGzVGYlGMwyScuDa6GZLXG6wIg1tzixe8U19p+LOdSS8hEFiLWVxl
 2qNC8/II3yBzq2+TMQ9YSYDqlDkPGf0BSGq+gVRvnqAVOSaWgbrvquHjC3cIjd4Im
 0pTX85+NEVbK1nq1w1XF6tRRHFiWfpsRT653L9GRunSBqK5sRvLBiObrrk/2i9UEg
 socRR7dO4svJlq9ZID3/5eb+ACw30JwudpnBMJ7lqtE5U5PCUsaY2sB/4RUkZmuCP
 8YYwGOw/x296qwVD1htRX5diqEXx7oNesGsUfoBK05b9gBBmsLKNnpGGw5zXkfoNq
 8Pd2HeOMBiS11CHuRg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MgesG-1xKGtj3awO-00fKxO; Fri, 03
 Jul 2026 18:32:51 +0200
From: Natalie Vock <natalie.vock@gmx.de>
Date: Fri, 03 Jul 2026 18:31:26 +0200
Subject: [PATCH 06/10] drm/ttm: move zombie handling into ttm_bo_evict
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20260703-ttm_2_drm_exec-v1-6-43685ac1286b@gmx.de>
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
X-Provags-ID: V03:K1:srm/kuzYQ4VjFw563aMDUD/lTSVxS4VTYTlxdzxHf55AUusOIBi
 EukvUwg7NV3uL60mZQsubopTbKzQHTRwjHkLrRjT1Wa9qMYeIBNgQs5NnofmYfdJNLNfZNF
 MLwV9QH2Ho5zLPCISlS+vPXoXCMOG2lHEMQ+kKkJGKGaxIFxtfG3Yhx/AXfOsT0vzhAg9Xi
 0OmL5dsi2t00x8eRPb70g==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:yg2Xj8zjZH0=;ozpV9xt2PXs6MYW3RwrP+mIAfj4
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
X-Rspamd-Queue-Id: F3ACE704A1B

From: Christian K=C3=B6nig <christian.koenig@amd.com>

Both callers do the same thing, so we can trivially unify that.

Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
=2D--
 drivers/gpu/drm/ttm/ttm_bo.c | 24 +++++++++---------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index 24c52df169ac8..54f01611ec823 100644
=2D-- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -359,6 +359,13 @@ static int ttm_bo_evict(struct ttm_buffer_object *bo,
 	struct ttm_place hop;
 	int ret =3D 0;
=20
+	if (ttm_bo_is_zombie(bo)) {
+		ret =3D ttm_bo_wait_ctx(bo, ctx);
+		if (!ret)
+			ttm_bo_cleanup_memtype_use(bo);
+		return ret;
+	}
+
 	memset(&hop, 0, sizeof(hop));
=20
 	dma_resv_assert_held(bo->base.resv);
@@ -466,13 +473,7 @@ int ttm_bo_evict_first(struct ttm_device *bdev, struc=
t ttm_resource_manager *man
 	if (!bo->resource || bo->resource->mem_type !=3D mem_type)
 		goto out_bo_moved;
=20
-	if (ttm_bo_is_zombie(bo)) {
-		ret =3D ttm_bo_wait_ctx(bo, ctx);
-		if (!ret)
-			ttm_bo_cleanup_memtype_use(bo);
-	} else {
-		ret =3D ttm_bo_evict(bo, ctx);
-	}
+	ret =3D ttm_bo_evict(bo, ctx);
 out_bo_moved:
 	dma_resv_unlock(bo->base.resv);
 out_no_lock:
@@ -520,14 +521,7 @@ static s64 ttm_bo_evict_cb(struct ttm_lru_walk *walk,=
 struct ttm_buffer_object *
 	if (bo->pin_count || !bo->bdev->funcs->eviction_valuable(bo, evict_walk-=
>place))
 		return 0;
=20
-	if (ttm_bo_is_zombie(bo)) {
-		lret =3D ttm_bo_wait_ctx(bo, walk->arg.ctx);
-		if (!lret)
-			ttm_bo_cleanup_memtype_use(bo);
-	} else {
-		lret =3D ttm_bo_evict(bo, walk->arg.ctx);
-	}
-
+	lret =3D ttm_bo_evict(bo, walk->arg.ctx);
 	if (lret)
 		goto out;
=20

=2D-=20
2.55.0

