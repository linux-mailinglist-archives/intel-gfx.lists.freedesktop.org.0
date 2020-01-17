Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9365F140565
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 09:23:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31D466F474;
	Fri, 17 Jan 2020 08:23:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFBC76F46A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 08:23:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 00:20:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,329,1574150400"; d="scan'208";a="424366253"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga005.fm.intel.com with ESMTP; 17 Jan 2020 00:20:46 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.152.24])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00H8KhBq014377; Fri, 17 Jan 2020 08:20:45 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 08:20:38 +0000
Message-Id: <20200117082039.65644-5-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20200117082039.65644-1-michal.wajdeczko@intel.com>
References: <20200117082039.65644-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/5] drm/i915/guc: Switch to CT_ERROR in
 ct_read
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

As we now have "ct" available in ct_read function we can switch
from generic DRM_ERROR to our custom CT_ERROR.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index b84b6ec37b8d..09467728bc9b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -620,12 +620,12 @@ static int ct_read(struct intel_guc_ct *ct, u32 *data)
 	/* message len with header */
 	len = ct_header_get_len(data[0]) + 1;
 	if (unlikely(len > (u32)available)) {
-		DRM_ERROR("CT: incomplete message %*ph %*ph %*ph\n",
-			  4, data,
-			  4 * (head + available - 1 > size ?
-			       size - head : available - 1), &cmds[head],
-			  4 * (head + available - 1 > size ?
-			       available - 1 - size + head : 0), &cmds[0]);
+		CT_ERROR(ct, "Incomplete message %*ph %*ph %*ph\n",
+			 4, data,
+			 4 * (head + available - 1 > size ?
+			      size - head : available - 1), &cmds[head],
+			 4 * (head + available - 1 > size ?
+			      available - 1 - size + head : 0), &cmds[0]);
 		goto corrupted;
 	}
 
@@ -639,8 +639,8 @@ static int ct_read(struct intel_guc_ct *ct, u32 *data)
 	return 0;
 
 corrupted:
-	DRM_ERROR("CT: Corrupted descriptor addr=%#x head=%u tail=%u size=%u\n",
-		  desc->addr, desc->head, desc->tail, desc->size);
+	CT_ERROR(ct, "Corrupted descriptor addr=%#x head=%u tail=%u size=%u\n",
+		 desc->addr, desc->head, desc->tail, desc->size);
 	desc->is_in_error = 1;
 	return -EPIPE;
 }
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
