Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB50913C4F5
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 15:08:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC9756EAA9;
	Wed, 15 Jan 2020 14:08:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E677A6EAAB
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 14:08:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 06:08:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,322,1574150400"; d="scan'208";a="253669513"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 15 Jan 2020 06:08:34 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.138])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00FE8USR003035; Wed, 15 Jan 2020 14:08:34 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jan 2020 14:08:19 +0000
Message-Id: <20200115140822.55756-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20200115140822.55756-1-michal.wajdeczko@intel.com>
References: <20200115140822.55756-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] i915/drm/guc: Don't pass CTB while writing
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

Since we only have one SEND buffer we don't need to explicitly pass
it to the write function.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 0d3556a820a3..dedbf3b8ab01 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -311,12 +311,13 @@ static u32 ct_get_next_fence(struct intel_guc_ct *ct)
  *                   ^-----------------len-------------------^
  */
 
-static int ctb_write(struct intel_guc_ct_buffer *ctb,
-		     const u32 *action,
-		     u32 len /* in dwords */,
-		     u32 fence,
-		     bool want_response)
+static int ct_write(struct intel_guc_ct *ct,
+		    const u32 *action,
+		    u32 len /* in dwords */,
+		    u32 fence,
+		    bool want_response)
 {
+	struct intel_guc_ct_buffer *ctb = &ct->ctbs[CTB_SEND];
 	struct guc_ct_buffer_desc *desc = ctb->desc;
 	u32 head = desc->head / 4;	/* in dwords */
 	u32 tail = desc->tail / 4;	/* in dwords */
@@ -492,7 +493,7 @@ static int ct_send(struct intel_guc_ct *ct,
 	list_add_tail(&request.link, &ct->requests.pending);
 	spin_unlock_irqrestore(&ct->requests.lock, flags);
 
-	err = ctb_write(ctb, action, len, fence, !!response_buf);
+	err = ct_write(ct, action, len, fence, !!response_buf);
 	if (unlikely(err))
 		goto unlink;
 
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
