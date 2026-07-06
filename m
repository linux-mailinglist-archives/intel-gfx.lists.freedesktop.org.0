Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wwfhLYmAS2r7SQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 12:16:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BA670F057
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 12:16:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=pixelcluster.dev header.s=ovhmo-selector-1 header.b=un6e2Xv4;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8344910E87C;
	Mon,  6 Jul 2026 10:16:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 470 seconds by postgrey-1.36 at gabe;
 Mon, 06 Jul 2026 10:16:38 UTC
Received: from smtpout2.mo533.mail-out.ovh.net
 (smtpout2.mo533.mail-out.ovh.net [51.210.94.139])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8804910E33F
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2026 10:16:38 +0000 (UTC)
Received: from director5.derp.mail-out.ovh.net
 (director5.derp.mail-out.ovh.net [57.128.106.70])
 by mo533.mail-out.ovh.net (Postfix) with ESMTPS id 4gv0SJ5Ky8z64KM;
 Mon,  6 Jul 2026 10:08:48 +0000 (UTC)
Received: from director5.derp.mail-out.ovh.net
 (director5.derp.mail-out.ovh.net. [127.0.0.1])
 by director5.derp.mail-out.ovh.net (inspect_sender_mail_agent) with SMTP
 for <alexander.deucher@amd.com>; Mon,  6 Jul 2026 10:08:48 +0000 (UTC)
Received: from mta6.priv.ovhmail-u1.ea.mail.ovh.net (unknown [10.110.96.8])
 by director5.derp.mail-out.ovh.net (Postfix) with ESMTPS id 4gv0SJ1x31z7tDj;
 Mon,  6 Jul 2026 10:08:48 +0000 (UTC)
Received: from pixelcluster.dev (unknown [10.1.6.11])
 (Authenticated sender: nat@pixelcluster.dev)
 by mta6.priv.ovhmail-u1.ea.mail.ovh.net (Postfix) with ESMTPSA id 280418E1903; 
 Mon,  6 Jul 2026 10:08:46 +0000 (UTC)
X-OVh-ClientIp: 88.133.252.134
From: Natalie Vock <nat@pixelcluster.dev>
Date: Mon, 06 Jul 2026 12:07:46 +0200
Subject: [PATCH v2 04/10] drm/ttm: grab BO reference before locking it
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260706-ttm_2_drm_exec-v2-4-4bf6bfc0d320@pixelcluster.dev>
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
x-ovh-tracer-id: 9128796448561848636
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTF2rMupFDtSz5VGJXaGrwYUaRUbsc9Nn7nc8ghpwc35VyZFauYARogcas+VOSD8wf0IhZl41F2o83TSTJEqn1M70AEfTiU3uOfrR34AN46Y0JjeW4xo6cV+rH2TUD4SE1NDtof+377HjW5jUw1vYYddQq9f46CIv1pXDMg+OvLcv0mAeBq8idZd3/oeDOqFYW+mp/D/hf65ucF8pcrq4BoeAZT2yueghykMKcN1pOaBvVNRQXaTXALuE+8w2Owws5LoK70lx9jAX+i5vFCotZFddZWqe5L2MI0ywEcZRGnxLB/PRWCfMsAV61ff3CxEAEQBj4aCGHb8mrffVRaINrHze7ZOeRvAY5Xkp0vrVNGkK8+RJnyzVoe/LOecOZELTwlB63OAA+WiB2M00rs3kyaG8GOESvA92OgSN0L8sVN6xZIPI0IQgVz6u4W1aaRbK/iyfkwJtG33fwLm0iFxYzJ0qaeQyQgTPJeTJtr3C6tDpPzEhzqZ9s9Jmil5DjGXu375kInZ+rL8OGHB2BpZHCcDHT11HW4E+h/XgbISwzi+8IJUPK3XdDQYvcj5CUHrMWxUnTlG/vSmCK61rnfbq9nqiCEZN+ZisO6TZ1NQXJRNkKmi4LazbfDhi2Gh8UkpGoc2JQhGzIdLNkF3pgk3zk6QCydoYfaV6JJ6vp25wL+Ncg
DKIM-Signature: a=rsa-sha256; bh=Ust/Lq5DbKVlp/aaj05H8qrX9vfxF8zPwOwSKnBCPBU=; 
 c=relaxed/relaxed; d=pixelcluster.dev; h=From;
 s=ovhmo-selector-1; t=1783332529; v=1;
 b=un6e2Xv4cTU7fmByjvHV6GE/6N/JiXRrk3IFarOyX8OjDj/6AgGBQLQyCI3a/hOKb1j0JHcN
 1x3BhatK3UUjm54m1ueOs/BTHJVKAtwjjAkKCzDcYyod/N+gAed6Y7n3cvutD/xAX9g/GaiScZI
 PSd9WHtSP4rTOn0FCSvYmDhT7Lx6mcdQiZRP0pBfye2ckx3WvfY/0ll3kplNNkBAv0/LRebQsP4
 XJtm3FRrFfIkgTPoaANlCGNemOObhH8r0MDuGJTjCEXiEXQbI/dLjWGrEpAmnmzxNBsz07aivNi
 Qgk/zvwUvxnbyZsckwWDy3csWPSP7/hYmbyNm/zytOp/A==
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
X-Rspamd-Queue-Id: 44BA670F057

Previously we always grabbed the BO reference after taking the lock, but
that isn't necessary any more.

So avoid doing that and cleanup the handling here.

Signed-off-by: Christian König <christian.koenig@amd.com>
Signed-off-by: Natalie Vock <nat@pixelcluster.dev>
---
 drivers/gpu/drm/ttm/ttm_bo_util.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/ttm_bo_util.c
index 29f068944a972..a53b25e8c2967 100644
--- a/drivers/gpu/drm/ttm/ttm_bo_util.c
+++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
@@ -1010,14 +1010,17 @@ __ttm_bo_lru_cursor_next(struct ttm_bo_lru_cursor *curs)
 			break;
 
 		bo = res->bo;
-		if (ttm_lru_walk_trylock(curs, bo))
-			bo_locked = true;
-		else if (!arg->ticket || arg->ctx->no_wait_gpu || arg->trylock_only)
+		if (!ttm_bo_get_unless_zero(bo))
 			continue;
 
-		if (!ttm_bo_get_unless_zero(bo)) {
-			if (curs->needs_unlock)
-				dma_resv_unlock(bo->base.resv);
+		if (ttm_lru_walk_trylock(curs, bo)) {
+			bo_locked = true;
+
+		} else if (!arg->ticket || arg->ctx->no_wait_gpu ||
+			   arg->trylock_only) {
+			spin_unlock(lru_lock);
+			ttm_bo_put(bo);
+			spin_lock(lru_lock);
 			continue;
 		}
 

-- 
2.55.0

