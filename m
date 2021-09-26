Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3BC418A8D
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Sep 2021 20:46:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDF7089D7B;
	Sun, 26 Sep 2021 18:46:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2638E89D43
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Sep 2021 18:46:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10119"; a="224010108"
X-IronPort-AV: E=Sophos;i="5.85,324,1624345200"; d="scan'208";a="224010108"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2021 11:45:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,324,1624345200"; d="scan'208";a="475690619"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 26 Sep 2021 11:45:58 -0700
Received: from mwajdecz-MOBL.ger.corp.intel.com
 (mwajdecz-MOBL.ger.corp.intel.com [10.249.154.207])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 18QIjsYr013937; Sun, 26 Sep 2021 19:45:57 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sun, 26 Sep 2021 20:45:45 +0200
Message-Id: <20210926184545.1407-5-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210926184545.1407-1-michal.wajdeczko@intel.com>
References: <20210926184545.1407-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v2 4/4] drm/i915/guc: Move and improve error
 message for missed CTB reply
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

If we timeout waiting for a CT reply we print very simple error
message. Improve that and by moving error reporting to the caller
we can use CT_ERROR instead of DRM_ERROR and report just fence
as error code will be reported later anyway.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index e03f86d3b0b9..0a3504bc0b61 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -528,9 +528,6 @@ static int wait_for_ct_request_update(struct ct_request *req, u32 *status)
 		err = wait_for(done, GUC_CTB_RESPONSE_TIMEOUT_LONG_MS);
 #undef done
 
-	if (unlikely(err))
-		DRM_ERROR("CT: fence %u err %d\n", req->fence, err);
-
 	*status = req->status;
 	return err;
 }
@@ -728,8 +725,11 @@ static int ct_send(struct intel_guc_ct *ct,
 
 	err = wait_for_ct_request_update(&request, status);
 	g2h_release_space(ct, GUC_CTB_HXG_MSG_MAX_LEN);
-	if (unlikely(err))
+	if (unlikely(err)) {
+		CT_ERROR(ct, "No response for request %#x (fence %u)\n",
+			 action[0], request.fence);
 		goto unlink;
+	}
 
 	if (FIELD_GET(GUC_HXG_MSG_0_TYPE, *status) != GUC_HXG_TYPE_RESPONSE_SUCCESS) {
 		err = -EIO;
-- 
2.25.1

