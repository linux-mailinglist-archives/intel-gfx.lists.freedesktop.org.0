Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBfEBAL3nmn7YQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 14:20:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE0F197F54
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 14:20:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A4CA10E785;
	Wed, 25 Feb 2026 13:20:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="mIO/pNuC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A33F10E787
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Feb 2026 13:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1772025595;
 bh=Qyjkrg23NvqAtrZ6SXaT7ACN9JWfiY1iU+ZEiaE5bX4=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=mIO/pNuCKtk7gb8y/PXDopTwU/5rPRa8JEtEQESMZFyXzpd1nxoqWkXugHrSzEjG1
 zhAbBAZlTMQNcHcdH9OaE4SDkQftP78yDoPgEwcAjT5hjM7U3wu3nLIn5bUWh5+O6X
 l85AN7A8qfRfm4ySBuchHlKFwV6SjSHM9PuHLPcia1FA+0wDSWUt7zeutR80XVUldJ
 RLNMSUKNkTSQKmXHZBP9MDIdniqvI43SfTjn51qIG7IlbXn8IJXZA2a5B4aNUUPfwa
 +beUO+BQB1W5cXM2kFzhnYoBiDCtOmXN0ipOFoX3GxFkgfe59z8Ecf+TkXsXZR9R2Y
 /TV5wnlfHPkZg==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org
Subject: [i915-ci-only NO-REVIEW 23/25] Revert "drm/i915: Depend on
 !PREEMPT_RT."
Date: Wed, 25 Feb 2026 14:19:27 +0100
Message-ID: <20260225131931.60724-24-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260225131931.60724-1-dev@lankhorst.se>
References: <20260225131931.60724-1-dev@lankhorst.se>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,lankhorst.se:mid,lankhorst.se:dkim,lankhorst.se:email]
X-Rspamd-Queue-Id: DAE0F197F54
X-Rspamd-Action: no action

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
2.51.0

