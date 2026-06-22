Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4hKcJLx6OWrtuAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 20:11:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DC96B1B89
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 20:11:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=X97dCqFB;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A57FF10E827;
	Mon, 22 Jun 2026 18:10:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B2FF10E80A;
 Mon, 22 Jun 2026 18:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1782151847;
 bh=bvf3RHGbi5q5Jtj6LoRjwYoOARoPWEB04P4tBVx9AYY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=X97dCqFB3dsBnOCN15p3ucVcNcLOzMZhic4xK6kAwMsjA+VRDxp8l6qAkJILc1qsb
 Srsh+SPXzWb/0Lb/7XUJ6NTO7Qt3MEizp4aX/IMUH7M6gqS9eewKCCe6z2AfQGcF/i
 dysxp6rscvfiHj7pE2DByakXwm6WqnTfY8QPG+atD7xjE4mhb9gG58f/Lk4SA/2mGS
 MhvoIOq8hMxPPjzPnmHJNYM63ddg5fFUGedQBcBLTV4UztkJTcmRYXLrz7+CQWXT+S
 1mITqqVLqcjEXmSfUlrK3zelmFEbwge++M1kksUZCpoXDZ2KEbtI1vKVdD7KSjesQ1
 xcPWPKNBfLzIA==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v9 22/30] Revert "drm/i915: Depend on !PREEMPT_RT."
Date: Mon, 22 Jun 2026 20:10:35 +0200
Message-ID: <20260622181044.39335-23-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260622181044.39335-1-dev@lankhorst.se>
References: <20260622181044.39335-1-dev@lankhorst.se>
MIME-Version: 1.0
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 63DC96B1B89

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Once the known issues are addressed, it should be safe to enable the
driver.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 5e939004b6463..40a9234e6e5dc 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -3,7 +3,6 @@ config DRM_I915
 	tristate "Intel 8xx/9xx/G3x/G4x/HD Graphics"
 	depends on DRM
 	depends on X86 && PCI
-	depends on !PREEMPT_RT
 	select INTEL_GTT if X86
 	select INTERVAL_TREE
 	# we need shmfs for the swappable backing store, and in particular
-- 
2.53.0

