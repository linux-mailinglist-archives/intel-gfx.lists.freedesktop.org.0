Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A67134795
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 17:20:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EF586E0A0;
	Wed,  8 Jan 2020 16:20:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CDCA6E0A0
 for <Intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 16:19:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 08:19:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="215998409"
Received: from kumarjai-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.83.12])
 by orsmga008.jf.intel.com with ESMTP; 08 Jan 2020 08:19:57 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jan 2020 16:19:54 +0000
Message-Id: <20200108161954.29739-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Revert "drm/i915/tgl: Wa_1607138340"
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

This reverts commit 08fff7aeddc9dd72161b4c8fc27fbab12b4b9352.

For some yet unexplained reason not having this improves stability of some
media workloads.

Promise is that the media hang will be root caused properly and in the
meantime absence of this workaround is unlikely to cause problems.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Sudeep Dutt <sudeep.dutt@intel.com>
Cc: Francesco Balestrieri <francesco.balestrieri@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Tony Ye <tony.ye@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index bd74b76c6403..2217c09ca227 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1351,10 +1351,6 @@ static u64 execlists_update_context(struct i915_request *rq)
 	 */
 	wmb();
 
-	/* Wa_1607138340:tgl */
-	if (IS_TGL_REVID(rq->i915, TGL_REVID_A0, TGL_REVID_A0))
-		desc |= CTX_DESC_FORCE_RESTORE;
-
 	ce->lrc_desc &= ~CTX_DESC_FORCE_RESTORE;
 	return desc;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
