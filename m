Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 490C3143206
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 20:18:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F0986EB0B;
	Mon, 20 Jan 2020 19:18:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43CDF6EB0B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2020 19:18:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 11:18:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,343,1574150400"; d="scan'208";a="215314488"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga007.jf.intel.com with ESMTP; 20 Jan 2020 11:18:21 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.136.181])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00KJIKR6031462; Mon, 20 Jan 2020 19:18:20 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jan 2020 19:18:17 +0000
Message-Id: <20200120191817.50164-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Don't GEM_BUG_ON on corrupted H2G
 CTB
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

We should never BUG_ON on any corruption in CTB descriptor as
data there can be also modified by the GuC. Instead we can
use flag "is_in_error" to indicate that we will not process
any further messages over this CTB (until reset).

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 32 ++++++++++++++++-------
 1 file changed, 22 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 02b543377e2b..d84812683364 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -317,18 +317,25 @@ static int ct_write(struct intel_guc_ct *ct,
 {
 	struct intel_guc_ct_buffer *ctb = &ct->ctbs[CTB_SEND];
 	struct guc_ct_buffer_desc *desc = ctb->desc;
-	u32 head = desc->head / 4;	/* in dwords */
-	u32 tail = desc->tail / 4;	/* in dwords */
-	u32 size = desc->size / 4;	/* in dwords */
-	u32 used;			/* in dwords */
+	u32 head = desc->head;
+	u32 tail = desc->tail;
+	u32 size = desc->size;
+	u32 used;
 	u32 header;
 	u32 *cmds = ctb->cmds;
 	unsigned int i;
 
-	GEM_BUG_ON(desc->size % 4);
-	GEM_BUG_ON(desc->head % 4);
-	GEM_BUG_ON(desc->tail % 4);
-	GEM_BUG_ON(tail >= size);
+	if (unlikely(desc->is_in_error))
+		return -EPIPE;
+
+	if (unlikely(!IS_ALIGNED(head | tail | size, 4) ||
+		     (tail | head) >= size))
+		goto corrupted;
+
+	/* later calculations will be done in dwords */
+	head /= 4;
+	tail /= 4;
+	size /= 4;
 
 	/*
 	 * tail == head condition indicates empty. GuC FW does not support
@@ -367,12 +374,17 @@ static int ct_write(struct intel_guc_ct *ct,
 		cmds[tail] = action[i];
 		tail = (tail + 1) % size;
 	}
+	GEM_BUG_ON(tail > size);
 
 	/* now update desc tail (back in bytes) */
 	desc->tail = tail * 4;
-	GEM_BUG_ON(desc->tail > desc->size);
-
 	return 0;
+
+corrupted:
+	CT_ERROR(ct, "Corrupted descriptor addr=%#x head=%u tail=%u size=%u\n",
+		 desc->addr, desc->head, desc->tail, desc->size);
+	desc->is_in_error = 1;
+	return -EPIPE;
 }
 
 /**
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
