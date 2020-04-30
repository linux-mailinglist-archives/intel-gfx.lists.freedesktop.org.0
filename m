Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 882DA1C0AE3
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 01:16:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E468B6EA47;
	Thu, 30 Apr 2020 23:16:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07CE66EA45
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 23:15:55 +0000 (UTC)
IronPort-SDR: R3kBivjx1lvC8tuZPcMbH7Kv+9k7Ws5t0cgGWjp3Cm77pX6z3ruV81Iz0LstuP1HLxf+YUH6dI
 wSYGOkO9cVLA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 16:15:55 -0700
IronPort-SDR: ela7xuv1+4IXn6BrutcRRo26BBX5ZzDfMnUBC5rouSTnEINvMi1s/0LKPMae9W7bzN3QhmiflO
 ayRJ2AOM51rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="293731893"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga002.fm.intel.com with ESMTP; 30 Apr 2020 16:15:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 16:15:28 -0700
Message-Id: <20200430231529.295556-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200430231529.295556-1-matthew.d.roper@intel.com>
References: <20200430231529.295556-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Don't skip verification of MCR
 engine workarounds
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
Cc: chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that we manually steer multicast register reads during workaround
verification, it should be safe to verify these ones too.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 73a3937c689b..d1b7a445f2da 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1812,13 +1812,9 @@ static int engine_wa_list_verify(struct intel_context *ce,
 	}
 
 	err = 0;
-	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
-		if (mcr_range(rq->i915, i915_mmio_reg_offset(wa->reg)))
-			continue;
-
+	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
 		if (!wa_verify(rq->i915, wa, results[i], wal->name, from))
 			err = -ENXIO;
-	}
 
 	i915_gem_object_unpin_map(vma->obj);
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
