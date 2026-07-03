Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6i5RGDvwR2p6hwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9DF704A01
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 19:24:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmx.de header.s=s31663417 header.b=DR858GQe;
	dmarc=pass (policy=quarantine) header.from=gmx.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D57810F885;
	Fri,  3 Jul 2026 17:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86DC510E64C;
 Fri,  3 Jul 2026 16:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1783096370; x=1783701170; i=natalie.vock@gmx.de;
 bh=uHb05nHKG0Jsmt5Pv2JXb+Ha/yc9reaX1XLKdw9oNLc=;
 h=X-UI-Sender-Class:From:Date:Subject:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Message-Id:References:In-Reply-To:To:Cc:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=DR858GQeX27oMtr+TGpqFm2yYNweA/jW/AlmsYgKP2awsJpu53FzYCanzScatFI/
 DGmUkSn7L0qEpYjE0BlCZdl52A1SArkI6foLIXCKc+DUEdBR+B7BMxlMNAqzHh+KX
 xscl3x6TNBpxBbNSDbXCmMaI72xHNwvhVHF4HR7aEnveLn1j8nOkyryaDRDK2JhDY
 kVnWZEm87dw3PrJVc5HctFRQpDo8om2UMwpQLsqsaPg90tc9ukXjSBt3LxMm2gUHM
 t0QJf54iEmJoNvtIybWMXeTn7JvrYMJQ74vSLQyhKO0IVlW6SxKj2srjrtsnz/ERM
 w7r/or37nH/XQDePnA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MDQic-1wmnoq05Cg-00CM3U; Fri, 03
 Jul 2026 18:32:50 +0200
From: Natalie Vock <natalie.vock@gmx.de>
Date: Fri, 03 Jul 2026 18:31:24 +0200
Subject: [PATCH 04/10] drm/ttm: grab BO reference before locking it
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20260703-ttm_2_drm_exec-v1-4-43685ac1286b@gmx.de>
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
X-Provags-ID: V03:K1:wkIRtJsDxE4/k1jUQhTA71NfSr2dAw9uT0wpAwrcY79QviG1hvm
 vJos5YNBF63amUELoVSEQZPC0HT+D48LbZk/4VXZEcOzemz2UP1sDc2TnG8S9+pspRU0k0T
 jmbqx9R4EA51W/AS7e7AOXc1wJ8yeRR2r/JIb6am5hN71LUOyyL1FL2z3PoaI/Epo+Mz3l+
 fMihP+cE2YRID3wesaCuA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:yH7PTTRTzMY=;K5OVNLARYPKN+YflfZY6UbUJeYb
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
X-Rspamd-Queue-Id: 0B9DF704A01

From: Christian K=C3=B6nig <christian.koenig@amd.com>

Previously we always grabbed the BO reference after taking the lock, but
that isn't necessary any more.

So avoid doing that and cleanup the handling here.

Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
=2D--
 drivers/gpu/drm/ttm/ttm_bo_util.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/ttm_b=
o_util.c
index 29f068944a972..a53b25e8c2967 100644
=2D-- a/drivers/gpu/drm/ttm/ttm_bo_util.c
+++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
@@ -1010,14 +1010,17 @@ __ttm_bo_lru_cursor_next(struct ttm_bo_lru_cursor =
*curs)
 			break;
=20
 		bo =3D res->bo;
-		if (ttm_lru_walk_trylock(curs, bo))
-			bo_locked =3D true;
-		else if (!arg->ticket || arg->ctx->no_wait_gpu || arg->trylock_only)
+		if (!ttm_bo_get_unless_zero(bo))
 			continue;
=20
-		if (!ttm_bo_get_unless_zero(bo)) {
-			if (curs->needs_unlock)
-				dma_resv_unlock(bo->base.resv);
+		if (ttm_lru_walk_trylock(curs, bo)) {
+			bo_locked =3D true;
+
+		} else if (!arg->ticket || arg->ctx->no_wait_gpu ||
+			   arg->trylock_only) {
+			spin_unlock(lru_lock);
+			ttm_bo_put(bo);
+			spin_lock(lru_lock);
 			continue;
 		}
=20

=2D-=20
2.55.0

