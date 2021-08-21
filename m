Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE973F3A48
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Aug 2021 12:43:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CE016EB6C;
	Sat, 21 Aug 2021 10:43:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 272766EB6C
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Aug 2021 10:43:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10082"; a="216922034"
X-IronPort-AV: E=Sophos;i="5.84,340,1620716400"; d="scan'208";a="216922034"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2021 03:43:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,340,1620716400"; d="scan'208";a="574186697"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga004.jf.intel.com with ESMTP; 21 Aug 2021 03:42:59 -0700
Received: from mwajdecz-MOBL.ger.corp.intel.com
 (mwajdecz-MOBL.ger.corp.intel.com [10.249.145.218])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 17LAgkZH007248; Sat, 21 Aug 2021 11:42:58 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sat, 21 Aug 2021 12:42:38 +0200
Message-Id: <20210821104238.981-5-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210821104238.981-1-michal.wajdeczko@intel.com>
References: <20210821104238.981-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 4/4] drm/i915/guc: Move and improve error message
 for missed CTB reply
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
index 5658c9c8c890..a15d7cb30292 100644
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

