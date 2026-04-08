Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PkMMd8R1mmxAwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:29:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C403B9093
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:29:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E87CB10E576;
	Wed,  8 Apr 2026 08:29:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lw7xVvIr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D41D110E576;
 Wed,  8 Apr 2026 08:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775636957; x=1807172957;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3siODLB5V/yPd6lZ9g1a9Gjy3AKlFGIkt23ubmghYx4=;
 b=lw7xVvIrB8R7CEZSIwaLMz5cqVsOf4oq3aSGdamPMBROcOCSVWtrQ3kY
 G5vmlAKuPHgZnVgDpnAZYid2eny/1zUst55RkvSOz6nZ8oDd78DGxS6hU
 3aFL0951Ll2pRA46uJH8i87+JWeK8zwFNcdoTvanAc3y1X00U3SgXZZNl
 Eob6r8kxJEhEPRO4IqmYz8XYiPO0DWD/kRaEMS2S8Car28DQHc5YJMimu
 IwmmghOb/nRW+B/nQbOWsms3LYgd7zdhlmDwT+FYyqzqskqQeEkCBFZKA
 1ZfHVIPAGAZaSHiglCNnoZpzdtFl+RGietx3ew3rx17+csD9FNgCOKU/i Q==;
X-CSE-ConnectionGUID: 5BHGLG72TUKQM84x1Og5Lw==
X-CSE-MsgGUID: Qwf5Oyg0RI+PZOMv+v6odA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="88068630"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="88068630"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:29:17 -0700
X-CSE-ConnectionGUID: m6qE6bSRTFS9ZI5CfyKC8Q==
X-CSE-MsgGUID: 8QhkZyg8QpOBG6L3Wtti7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="224116556"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.1])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:29:15 -0700
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Cc: Direct Rendering Infrastructure - Development
 <dri-devel@lists.freedesktop.org>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>
Subject: [PATCH] drm/i915/gem: Don't use VMA from wrong VM in EXECBUF
Date: Wed,  8 Apr 2026 11:28:59 +0300
Message-ID: <20260408082859.69823-1-joonas.lahtinen@linux.intel.com>
X-Mailer: git-send-email 2.53.0
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxfoundation.org:email,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 60C403B9093
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Do not pick VMA with non-matching VM (ppGTT) on quick path
of BO handle lookup for a given EXECBUF call. VMA from wrong VM
could be picked if same BO is repeatedly used in EXECBUF
calls on same context with alternating VMs (ppGTTs).

Also avoids returning a VMA without increasing the refcount,
which may potentially lead to UAF.

References: https://lore.kernel.org/all/20260324151741.29338-1-sosohero200@gmail.com/
Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Linus Torvalds <torvalds@linuxfoundation.org>
Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index bd608cea396f..7463c3262651 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -897,6 +897,8 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
 		vma = radix_tree_lookup(&eb->gem_context->handles_vma, handle);
 		if (likely(vma && vma->vm == vm))
 			vma = i915_vma_tryget(vma);
+		else
+			vma = NULL;
 		rcu_read_unlock();
 		if (likely(vma))
 			return vma;
-- 
2.53.0

