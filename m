Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGY9CtnrAmpKygEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 10:59:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F137951D27C
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 10:59:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E286510E9C5;
	Tue, 12 May 2026 08:59:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rqjsx+VG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9576310E41A;
 Tue, 12 May 2026 08:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778576340; x=1810112340;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IDqTYkqeLCuHmh9WImLh4KRoHpG0pBSsL3dXx9fjTac=;
 b=Rqjsx+VG3NHXKuycXdgMyS8N8t46lXS1P+1cjpXpi+rggVMy8H2csr7f
 UE8xU6u3cOidiyqz+M/3Y9Ciqlgg+rsDlwotpJx7HBI9ca860hFQ8dSq4
 efct6Y6X7SZR/pJMl7E925GOiPOod0IxcvOZ/rYIiLPGogTO0WljNi5Mw
 KYz7Ztgta0BH/U5vzgqWHa3ja0fsGTDoewadRjcvhIdZiLWfSppC8lEch
 qLnckMeeJPrGZlODWXwwul9SCStI7l2lH3xrJxPk6xcAqP6prfP98yfnn
 DJUi+IOErcxhZC8UDl70NOFDdG5R7H/3udYzJrPE/vU4xcK3Kvbrk/Xgs Q==;
X-CSE-ConnectionGUID: BqkdBkPZR4+w7ojJcpHoRg==
X-CSE-MsgGUID: RFIn3qHQRw26s1fnwRlnrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79590254"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="79590254"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 01:58:59 -0700
X-CSE-ConnectionGUID: nS10rpWkQmKWy6sAIjl6sQ==
X-CSE-MsgGUID: h0yvphaXQo28M4tdAojpkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="275832110"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.137])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 01:58:57 -0700
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Cc: Direct Rendering Infrastructure - Development
 <dri-devel@lists.freedesktop.org>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: [PATCH] Revert "i915: don't use a vma that didn't match the context
 VM"
Date: Tue, 12 May 2026 11:58:48 +0300
Message-ID: <20260512085848.208008-1-joonas.lahtinen@linux.intel.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Queue-Id: F137951D27C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,intel.com:dkim,ursulin.net:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

This reverts commit 5401b9adebc9e5f68df58226f51493ef0e6ceb4d.

Commit is no-op as per discussion in the linked mail thread.
The debated UAF scenario has not been possible in mainline kernel
since 2021.

Link: https://lore.kernel.org/intel-gfx/CAHk-=whfUM8y3PoFfT21+guKWK-mJmAE=8uLzOT+7HGv5NtqSw@mail.gmail.com/
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>
Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 05997e8bbb29..1f303d4eaa4d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -898,8 +898,6 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
 		vma = radix_tree_lookup(&eb->gem_context->handles_vma, handle);
 		if (likely(vma))
 			vma = i915_vma_tryget(vma);
-		else
-			vma = NULL;
 		rcu_read_unlock();
 		if (likely(vma))
 			return vma;
-- 
2.54.0

