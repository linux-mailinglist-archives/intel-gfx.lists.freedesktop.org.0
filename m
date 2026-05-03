Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBAMK4CU+GnRwgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 14:43:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3794BD18D
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 14:43:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F20510E6A7;
	Mon,  4 May 2026 12:43:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pI//y/az";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA82010E16C
 for <intel-gfx@lists.freedesktop.org>; Sun,  3 May 2026 03:45:41 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id
 98e67ed59e1d1-35fbca04006so1514220a91.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 02 May 2026 20:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1777779941; x=1778384741; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=SI2MBPlJf9O7ukydYqfXIQUzeildkAOurtWd8SQi+24=;
 b=pI//y/az09OvWTAVBRVXwpH6H4OEt9QCCGL+3fWU1VEfJxivkPeZXCSljNH8IDgTOP
 zstjhYN1B/1IU/OIhzHuQTVo0obJR4wD4VC4o2EMao5Qfu5xeHwerDD/qUruuAEWs2hC
 IYTqZ9qVv5iiDyEdVh1/jpN2OTYEsnCg/cCmQ3JuouWu2P345ftKv2DXztK7BCx03tWU
 zsfutVL9ob0/lnjBdAwlovQfRP6wOfyJSqPC68RcEywagEP8vCMon3gy5jpUz5KgeaJ+
 Wh9BOk7lEJz3CT08xvtMUokySrE4w+5XMJ2F8kpIyZHKO5aTbvfaVW991mQX3lPqt9kF
 ed4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777779941; x=1778384741;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SI2MBPlJf9O7ukydYqfXIQUzeildkAOurtWd8SQi+24=;
 b=Ql1D8/OfEI+9zy4kQpgNbZFT3sIFJ6s+10WWNRZj1P0o3lDbG7T6TH0KMzeWuf6VxO
 QYIO8o0p/33vx5fnXk2sjDZLO0nFJfcm0RAibUdHA2rWvMGSG6dvY+QLdaetjoYm6wS9
 ayUmmcDWLnrgABvE6zVDKZaoAmFKzi6XhFVZZvcoCsIZZ9y7x3NO+VODtA9WgqBreHfE
 LzYLPqFEen/RMflTNW76bpmjtc++lEh9wSrj4Oly6TysEvemMYeaqssuIwnymznBsxSv
 c1w80Rqbu5kJNvLCIxynSx1S55i809p4lagZAc8l8w5IqHFb0vvokafvzcFVWhXguOo6
 2V5A==
X-Forwarded-Encrypted: i=1;
 AFNElJ/O6UgCz3o/4wKDIt15ahoRQBHMLJlF89lCKYEGV+tptjBQJGMmZUsIKgy/HJzA0H6V0cGjAImObps=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy7GLa3Y9jRqOGAVxgjcgBzathrRw6oJwRlGtY4JHWRgkGEDxtf
 LYSAtGGFXqp7imz6cNIVVG+U52dVMvBvd/KHZvGyuXpWQsaMlhDrqzYv
X-Gm-Gg: AeBDiesrOS1J/aXQQrYomNeWgRIc/gGCgIgM7J+GdKrS9xBbaJ1mzgGjp2D2L1qCIjZ
 1qo+jYCmbKlWyQfwXjEKWPS+b1/em6n26tZLqd6KBprXfG4keXgLI6oIVN/J0gPiA+AnHrfMDHc
 B5D4DSQu50kihyRztoXZVfNOlH4VRMlQrF0j2uoMJhFkDm8qw9pqzOvGvXjFj0+fDjervFiK9tg
 TXo3tx6Nquo+2YVaDRI+gw5OCT5iprPyDa8e+0KH9C+wM3U3hLXGWSW+27dTxCr3fMDbNqHl7YP
 p2vqFJXgiBtKWv+5yhh/NEOxWTxrniyxU0iNP/WFFw02aUok3cq9dNL+s7pCk3dLAbyLYiQdKOn
 oQxIdbQz2B2tFNUU3D/XAgJMPGO3RWd59G7gof542KQNGvrgg7I79kEWAsJnwRZRCyUz56JIkSd
 WxdMQ0jde4RRjwRZ2iaTHbLKX4bjz2QzVoZe4E5PgZLJRYYvmO+C20snq2CdGNvKkn
X-Received: by 2002:a17:90b:5887:b0:35e:581c:6bca with SMTP id
 98e67ed59e1d1-3650cd25673mr5014165a91.3.1777779941198; 
 Sat, 02 May 2026 20:45:41 -0700 (PDT)
Received: from jester ([159.192.33.28]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-364bdf54203sm10082989a91.7.2026.05.02.20.45.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2026 20:45:40 -0700 (PDT)
From: Jonas Emilsson <jonas.emilsson@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Jonas Emilsson <jonas.emilsson@gmail.com>, Imre Deak <imre.deak@intel.com>,
 Lyude Paul <lyude@redhat.com>, stable@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/dp_mst: Handle torn-down topology gracefully in
 drm_dp_mst_topology_queue_probe()
Date: Sun,  3 May 2026 05:45:33 +0200
Message-ID: <20260503034533.1023686-1-jonas.emilsson@gmail.com>
X-Mailer: git-send-email 2.51.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 04 May 2026 12:43:41 +0000
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
X-Rspamd-Queue-Id: 2B3794BD18D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[32];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:dri-devel@lists.freedesktop.org,m:jonas.emilsson@gmail.com,m:imre.deak@intel.com,m:lyude@redhat.com,m:stable@vger.kernel.org,m:jonasemilsson@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[jonasemilsson@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonasemilsson@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,redhat.com,vger.kernel.org,lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

A hotplug or link-loss event can tear down the MST topology
(setting mgr->mst_state = false and mgr->mst_primary = NULL) concurrently
with a caller invoking drm_dp_mst_topology_queue_probe(). Since the check
is already performed under mgr->lock, the condition is not a programming
error but a valid race -- the topology was valid when the caller decided
to call this function, but was torn down before the lock was acquired.

Replace the drm_WARN_ON() with a graceful early return. This eliminates
spurious kernel warnings and the resulting compositor crashes observed
when connecting/disconnecting DP MST monitors, while keeping the correct
behavior of doing nothing when MST is not active. A drm_dbg_mst() trace
is added so the skipped probe remains observable under MST debug logging.

The existing WARN_ON(mgr->mst_primary) in drm_dp_mst_topology_mgr_set_mst()
already catches the case where the topology is initialized twice, so no
diagnostic coverage is lost.

Fixes: dbaeef363ea5 ("drm/dp_mst: Add a helper to queue a topology probe")
Cc: Imre Deak <imre.deak@intel.com>
Cc: Lyude Paul <lyude@redhat.com>
Cc: stable@vger.kernel.org
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Jonas Emilsson <jonas.emilsson@gmail.com>
---
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index 8757972e8..0cb341ce1 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -3738,8 +3738,10 @@ void drm_dp_mst_topology_queue_probe(struct drm_dp_mst_topology_mgr *mgr)
 {
 	mutex_lock(&mgr->lock);

-	if (drm_WARN_ON(mgr->dev, !mgr->mst_state || !mgr->mst_primary))
+	if (!mgr->mst_state || !mgr->mst_primary) {
+		drm_dbg_mst(mgr->dev, "queue_probe skipped: topology torn down\n");
 		goto out_unlock;
+	}

 	drm_dp_mst_topology_mgr_invalidate_mstb(mgr->mst_primary);
-- 
2.51.2

