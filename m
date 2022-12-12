Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0554A64A5B4
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 18:20:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDA9710E237;
	Mon, 12 Dec 2022 17:20:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9773610E237
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 17:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670865621; x=1702401621;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xzEJURbwfmaKmH86uCTxOZ9sm/Zq9tGeWfAtSZYcHdk=;
 b=Z10to+w89ExE00ylBfHXPiri9AUVK31McpAOUCBAaTNsZKokC3g4D89x
 /hx4JN2kC34gj7wVWbdarXUlboHKwCos2gyQgHuSNeyKViFKa/TlXf0oM
 QKKng3+EijauVcUKbQZV0t/JDBSR6qS9GT/WEoDAjdD4FPnAQHXpPn7NA
 amcekCorMv2WoFHzkBIJFOZA6pY2jOl7Yu3bStIgUOpvy4w5Ikkov3Fjz
 1plv05LaX5R5Eo3B7g2XoP1q6oeLLE62mwU6nTzuSx9B50okKPjxfYQm/
 xULzCZ35Y3gxEhM6zYuInhRZ8UL+fIPpoeCK73+4SbVwuwzdfgfU6cfEW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="319769724"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="319769724"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 09:20:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="650411398"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="650411398"
Received: from jzywicka-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.5.179])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 09:20:18 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Dec 2022 17:19:57 +0000
Message-Id: <20221212171958.82593-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/migrate: fix corner case in CCS
 aux copying
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
Cc: Shuicheng Lin <shuicheng.lin@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the case of lmem -> lmem transfers, which is currently only possible
with small-bar systems, we need to ensure we copy the CCS aux state
as-is, rather than nuke it. This should fix some nasty display
corruption sometimes seen on DG2 small-bar systems, when also using
DG2_RC_CCS_CC for the surface.

Fixes: e3afc690188b ("drm/i915/display: consider DG2_RC_CCS_CC when migrating buffers")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Shuicheng Lin <shuicheng.lin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_migrate.c | 37 +++++++++++++++++++------
 1 file changed, 29 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index e08a739b7091..3f638f198796 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -839,14 +839,35 @@ intel_context_migrate_copy(struct intel_context *ce,
 			if (err)
 				goto out_rq;
 
-			/*
-			 * While we can't always restore/manage the CCS state,
-			 * we still need to ensure we don't leak the CCS state
-			 * from the previous user, so make sure we overwrite it
-			 * with something.
-			 */
-			err = emit_copy_ccs(rq, dst_offset, INDIRECT_ACCESS,
-					    dst_offset, DIRECT_ACCESS, len);
+			if (src_is_lmem) {
+				/*
+				 * If the src is already in lmem, then we must
+				 * be doing an lmem -> lmem transfer, and so
+				 * should be safe to directly copy the CCS
+				 * state. In this case we have either
+				 * initialised the CCS aux state when first
+				 * clearing the pages (since it is already
+				 * allocated in lmem), or the user has
+				 * potentially populated it, in which case we
+				 * need to copy the CCS state as-is.
+				 */
+				err = emit_copy_ccs(rq,
+						    dst_offset, INDIRECT_ACCESS,
+						    src_offset, INDIRECT_ACCESS,
+						    len);
+			} else {
+				/*
+				 * While we can't always restore/manage the CCS
+				 * state, we still need to ensure we don't leak
+				 * the CCS state from the previous user, so make
+				 * sure we overwrite it with something.
+				 */
+				err = emit_copy_ccs(rq,
+						    dst_offset, INDIRECT_ACCESS,
+						    dst_offset, DIRECT_ACCESS,
+						    len);
+			}
+
 			if (err)
 				goto out_rq;
 
-- 
2.38.1

