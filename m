Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A43D3BDF30
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 00:02:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA4FC6E5C1;
	Tue,  6 Jul 2021 22:02:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ADB36E5C1;
 Tue,  6 Jul 2021 22:02:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="206190486"
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; d="scan'208";a="206190486"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 15:02:19 -0700
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; d="scan'208";a="410367907"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 15:02:18 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue,  6 Jul 2021 15:20:05 -0700
Message-Id: <20210706222010.101522-3-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210706222010.101522-1-matthew.brost@intel.com>
References: <20210706222010.101522-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/guc: Improve error message for
 unsolicited CT response
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

Improve the error message when a unsolicited CT response is received by
printing fence that couldn't be found, the last fence, and all requests
with a response outstanding.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index b86575b99537..80db59b45c45 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -732,12 +732,16 @@ static int ct_handle_response(struct intel_guc_ct *ct, struct ct_incoming_msg *r
 		found = true;
 		break;
 	}
-	spin_unlock_irqrestore(&ct->requests.lock, flags);
-
 	if (!found) {
 		CT_ERROR(ct, "Unsolicited response (fence %u)\n", fence);
-		return -ENOKEY;
+		CT_ERROR(ct, "Could not find fence=%u, last_fence=%u\n", fence,
+			 ct->requests.last_fence);
+		list_for_each_entry(req, &ct->requests.pending, link)
+			CT_ERROR(ct, "request %u awaits response\n",
+				 req->fence);
+		err = -ENOKEY;
 	}
+	spin_unlock_irqrestore(&ct->requests.lock, flags);
 
 	if (unlikely(err))
 		return err;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
