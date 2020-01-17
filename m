Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 864B2140563
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 09:23:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C8DB6F46A;
	Fri, 17 Jan 2020 08:23:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F5FC6F46A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 08:23:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 00:20:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,329,1574150400"; d="scan'208";a="214396402"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga007.jf.intel.com with ESMTP; 17 Jan 2020 00:20:46 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.152.24])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00H8KhBp014377; Fri, 17 Jan 2020 08:20:45 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 08:20:37 +0000
Message-Id: <20200117082039.65644-4-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20200117082039.65644-1-michal.wajdeczko@intel.com>
References: <20200117082039.65644-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/5] drm/i915/guc: Don't pass CTB while
 reading
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

Since we only have one RECV buffer we don't need to explicitly pass
it to the read function.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 25d912d57fa2..b84b6ec37b8d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -576,8 +576,9 @@ static inline bool ct_header_is_response(u32 header)
 	return !!(header & GUC_CT_MSG_IS_RESPONSE);
 }
 
-static int ctb_read(struct intel_guc_ct_buffer *ctb, u32 *data)
+static int ct_read(struct intel_guc_ct *ct, u32 *data)
 {
+	struct intel_guc_ct_buffer *ctb = &ct->ctbs[CTB_RECV];
 	struct guc_ct_buffer_desc *desc = ctb->desc;
 	u32 head = desc->head;
 	u32 tail = desc->tail;
@@ -833,7 +834,6 @@ static int ct_handle_request(struct intel_guc_ct *ct, const u32 *msg)
  */
 void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
 {
-	struct intel_guc_ct_buffer *ctb = &ct->ctbs[CTB_RECV];
 	u32 msg[GUC_CT_MSG_LEN_MASK + 1]; /* one extra dw for the header */
 	int err = 0;
 
@@ -843,7 +843,7 @@ void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
 	}
 
 	do {
-		err = ctb_read(ctb, msg);
+		err = ct_read(ct, msg);
 		if (err)
 			break;
 
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
