Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ucgXDZaAS2oPSgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 12:16:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D25AB70F0AA
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 12:16:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=pixelcluster.dev header.s=ovhmo-selector-1 header.b=HtnZymoT;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD88A10E89D;
	Mon,  6 Jul 2026 10:16:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 10.mo534.mail-out.ovh.net (10.mo534.mail-out.ovh.net
 [46.105.32.219])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 696ED10E894;
 Mon,  6 Jul 2026 10:16:46 +0000 (UTC)
Received: from director6.derp.mail-out.ovh.net
 (director6.derp.mail-out.ovh.net [51.255.22.22])
 by mo534.mail-out.ovh.net (Postfix) with ESMTPS id 4gv0SR2vl7z6JVC;
 Mon,  6 Jul 2026 10:08:55 +0000 (UTC)
Received: from director6.derp.mail-out.ovh.net
 (director6.derp.mail-out.ovh.net. [127.0.0.1])
 by director6.derp.mail-out.ovh.net (inspect_sender_mail_agent) with SMTP
 for <alexander.deucher@amd.com>; Mon,  6 Jul 2026 10:08:55 +0000 (UTC)
Received: from mta6.priv.ovhmail-u1.ea.mail.ovh.net (unknown [10.110.168.36])
 by director6.derp.mail-out.ovh.net (Postfix) with ESMTPS id
 4gv0SR1qmVz7tLG; Mon,  6 Jul 2026 10:08:55 +0000 (UTC)
Received: from pixelcluster.dev (unknown [10.1.6.11])
 (Authenticated sender: nat@pixelcluster.dev)
 by mta6.priv.ovhmail-u1.ea.mail.ovh.net (Postfix) with ESMTPSA id 4C6098E18F1; 
 Mon,  6 Jul 2026 10:08:53 +0000 (UTC)
X-OVh-ClientIp: 88.133.252.134
From: Natalie Vock <nat@pixelcluster.dev>
Date: Mon, 06 Jul 2026 12:07:50 +0200
Subject: [PATCH v2 08/10] drm/xe: remove workaround for TTM internals
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260706-ttm_2_drm_exec-v2-8-4bf6bfc0d320@pixelcluster.dev>
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
x-ovh-tracer-id: 9130766770950267196
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTFMobFMhrI6mwdMIl0lqtl+jezqUsZKJEyxHHMvx1PsgGmhE5En/0ZDeXryAId2Em9Mti8vRUtIpVOn34/99l1LQ5l030FgMhMXOhVLq+uBm75VRIHj8rLyfz57Jhny6pfLI/a5uMuUBxpgTHiF4Nm51UDgsM1GTjEqQdO2rrr5aKw8so40daAKRKUV/l8A6+ijQJxCtS4zhdGd3Y4dJeQFCQjwYxQZLH5omJZDNaE6whidqSgL6+1HipjQPAFyJDuayta6IuE6t8k2dyZTEl7shc/jp3BLOkEEp/W6WxCVj1xm3fYRykYHxmmG6YjlwsomrEf7+MIILpb+XKIutt3OJ7CA1TJ/vMDYXDKTaoXwPoy3ieHmghJM9xDISzSfl5j/onWhhc7KnKEjIe8aaSq+Br5IdnSj077vprrymbsZBXJ3RwWazEUgqr+vkZ1iV6XeUtoOSfubd+9wZbHy6xtGaHn9xkRv7uZgoIHjo+xDxuKWGDXYUPixYXVsUBrrW9FZ3yXfmla5QaToqulPvdgMAk35Q5gWYvLvFbdWpdZwW0MYAPO6MLgHUuGgA8lon5pB6pIEWNP0vSeZNCscgGMOko2/3FNjatlyI8vkRKfQsIiyoBf+wwrdfqp8bT/tmiauKLyUcpqfBtkhMsBcZyEaOlIoL/38tkH9r+Vb0lSTDg
DKIM-Signature: a=rsa-sha256; bh=V1VfkBOzIlL1diOCJO7aBkMIwTJ+y/SjTldGqzLicPY=; 
 c=relaxed/relaxed; d=pixelcluster.dev; h=From;
 s=ovhmo-selector-1; t=1783332535; v=1;
 b=HtnZymoTFsua9NRHq9CojE+JhLNQNw/fO5lZi4G6jCuQ7BUkBu8FsCQXKQfMN/Dsx+B/4S8A
 ya4QAIFY/nmv6Yl+f85BY3QfaSOkxjzGWsTHJnas9nAb7r8HD2DkAr6Gd1mJWQZru8miAIQaDVP
 +qLLb5ZclQfvfgd3JZ9ILADvCQKw/Axf1O4hKtkB60rJV31kCXxi6f2HKxuJKMKqThUMw93Ayx5
 BSc5AWhne6wBn1ISPUOxHpWUUtk3WSZju0KBgs4hW8djIy9CI9vjbScT73WLDJlAr/zHTaou1Oi
 9AuR+AlcXO7/PUbtVuJithM/VpM+6rvYNN2MkYD9n6BNQ==
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
	FORWARDED(0.00)[alexander.deucher@amd.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[alexander.deucher@amd.com];
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
X-Rspamd-Queue-Id: D25AB70F0AA

This should no longer be necessary, TTM doesn't lock the BO without a
reference any more.

Only compile tested!

Signed-off-by: Christian König <christian.koenig@amd.com>
Signed-off-by: Natalie Vock <nat@pixelcluster.dev>
---
 drivers/gpu/drm/xe/xe_bo.c | 32 +++++---------------------------
 1 file changed, 5 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
index 5843f850339c7..34eae56716076 100644
--- a/drivers/gpu/drm/xe/xe_bo.c
+++ b/drivers/gpu/drm/xe/xe_bo.c
@@ -1642,31 +1642,6 @@ static unsigned long xe_ttm_io_mem_pfn(struct ttm_buffer_object *ttm_bo,
 
 static void __xe_bo_vunmap(struct xe_bo *bo);
 
-/*
- * TODO: Move this function to TTM so we don't rely on how TTM does its
- * locking, thereby abusing TTM internals.
- */
-static bool xe_ttm_bo_lock_in_destructor(struct ttm_buffer_object *ttm_bo)
-{
-	struct xe_device *xe = ttm_to_xe_device(ttm_bo->bdev);
-	bool locked;
-
-	xe_assert(xe, !kref_read(&ttm_bo->base.refcount));
-
-	/*
-	 * We can typically only race with TTM trylocking under the
-	 * lru_lock, which will immediately be unlocked again since
-	 * the ttm_bo refcount is zero at this point. So trylocking *should*
-	 * always succeed here, as long as we hold the lru lock.
-	 */
-	spin_lock(&ttm_bo->bdev->lru_lock);
-	locked = dma_resv_trylock(&ttm_bo->base._resv);
-	spin_unlock(&ttm_bo->bdev->lru_lock);
-	xe_assert(xe, locked);
-
-	return locked;
-}
-
 static void xe_ttm_bo_release_notify(struct ttm_buffer_object *ttm_bo)
 {
 	struct dma_resv_iter cursor;
@@ -1680,8 +1655,11 @@ static void xe_ttm_bo_release_notify(struct ttm_buffer_object *ttm_bo)
 	bo = ttm_to_xe_bo(ttm_bo);
 	xe_assert(xe_bo_device(bo), !(bo->created && kref_read(&ttm_bo->base.refcount)));
 
-	if (!xe_ttm_bo_lock_in_destructor(ttm_bo))
-		return;
+	/*
+	 * This should never fail since there are no other references to the BO
+	 * any more.
+	 */
+	WARN_ON(!dma_resv_trylock(ttm_bo->base.resv));
 
 	/*
 	 * Scrub the preempt fences if any. The unbind fence is already

-- 
2.55.0

