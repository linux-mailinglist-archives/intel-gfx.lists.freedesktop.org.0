Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGIELdrk5WkupAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 10:33:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B914282C2
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 10:33:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD1DA10E112;
	Mon, 20 Apr 2026 08:33:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="TvWlJkMD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F9EE10E122;
 Mon, 20 Apr 2026 08:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1776674005;
 bh=R/96uZ5fqh8sHy0/coNH0vTTtGdeF6AbJ0GU05YtAKk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TvWlJkMD428u9ludIRye6j//QyGU4235eP1/P/TexRtO24b+nzUE60izn5Dj/zwXW
 hkmqBIp57L52cUzOTVpHlbvcQ9rTauLk6QTyvhqioAuDazG54pRLorBdTNW09XFYrA
 uKaRZlal4UqnZoHPLLDTrbzgT/vcDmMk2eB8fdhhoC5cV0oedywyDOIj/s9T2ZMWep
 5XiS28bPIEV8KhSSWlN/wOdc9cmQ0CyNeJ/fmGNwtervUufsLeHq4uEJbLviIlZIaq
 izjND7tdAezZQikjdWPMVs58v0j0EhCxvw1f8yTW0yV/Zt/Tps9ZbbPw8KTM1RhHBN
 PMavriENMbwlg==
From: Maarten Lankhorst <dev@lankhorst.se>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 1/4] drm/doc/rfc: Remove i915_gem_lmem.rst
Date: Mon, 20 Apr 2026 10:33:19 +0200
Message-ID: <20260420083318.92038-7-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260420083318.92038-6-dev@lankhorst.se>
References: <20260420083318.92038-6-dev@lankhorst.se>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lankhorst.se:email,lankhorst.se:dkim,lankhorst.se:mid]
X-Rspamd-Queue-Id: 39B914282C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The doc talks about DG1, but we do already support DG2 in i915, and
a new driver was created specifically to handle all lmem cases
even better.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 Documentation/gpu/rfc/i915_gem_lmem.rst | 22 ----------------------
 Documentation/gpu/rfc/index.rst         |  6 +-----
 2 files changed, 1 insertion(+), 27 deletions(-)
 delete mode 100644 Documentation/gpu/rfc/i915_gem_lmem.rst

diff --git a/Documentation/gpu/rfc/i915_gem_lmem.rst b/Documentation/gpu/rfc/i915_gem_lmem.rst
deleted file mode 100644
index b421a3c1806ec..0000000000000
--- a/Documentation/gpu/rfc/i915_gem_lmem.rst
+++ /dev/null
@@ -1,22 +0,0 @@
-=========================
-I915 DG1/LMEM RFC Section
-=========================
-
-Upstream plan
-=============
-For upstream the overall plan for landing all the DG1 stuff and turning it for
-real, with all the uAPI bits is:
-
-* Merge basic HW enabling of DG1(still without pciid)
-* Merge the uAPI bits behind special CONFIG_BROKEN(or so) flag
-        * At this point we can still make changes, but importantly this lets us
-          start running IGTs which can utilize local-memory in CI
-* Convert over to TTM, make sure it all keeps working. Some of the work items:
-        * TTM shrinker for discrete
-        * dma_resv_lockitem for full dma_resv_lock, i.e not just trylock
-        * Use TTM CPU pagefault handler
-        * Route shmem backend over to TTM SYSTEM for discrete
-        * TTM purgeable object support
-        * Move i915 buddy allocator over to TTM
-* Send RFC(with mesa-dev on cc) for final sign off on the uAPI
-* Add pciid for DG1 and turn on uAPI for real
diff --git a/Documentation/gpu/rfc/index.rst b/Documentation/gpu/rfc/index.rst
index ef19b0ba2a3ea..8313194af0683 100644
--- a/Documentation/gpu/rfc/index.rst
+++ b/Documentation/gpu/rfc/index.rst
@@ -20,10 +20,6 @@ host such documentation:
 
     gpusvm.rst
 
-.. toctree::
-
-    i915_gem_lmem.rst
-
 .. toctree::
 
     i915_scheduler.rst
@@ -37,4 +33,4 @@ host such documentation:
     i915_vm_bind.rst
 
 .. toctree::
-    color_pipeline.rst
\ No newline at end of file
+    color_pipeline.rst
-- 
2.53.0

