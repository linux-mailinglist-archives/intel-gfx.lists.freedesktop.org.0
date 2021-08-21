Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7629B3F3A42
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Aug 2021 12:42:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D65526EB66;
	Sat, 21 Aug 2021 10:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F30416EB66
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Aug 2021 10:42:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10082"; a="302477523"
X-IronPort-AV: E=Sophos;i="5.84,340,1620716400"; d="scan'208";a="302477523"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2021 03:42:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,340,1620716400"; d="scan'208";a="596001764"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 21 Aug 2021 03:42:53 -0700
Received: from mwajdecz-MOBL.ger.corp.intel.com
 (mwajdecz-MOBL.ger.corp.intel.com [10.249.145.218])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 17LAgkZE007248; Sat, 21 Aug 2021 11:42:52 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sat, 21 Aug 2021 12:42:35 +0200
Message-Id: <20210821104238.981-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210821104238.981-1-michal.wajdeczko@intel.com>
References: <20210821104238.981-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/4] drm/i915/guc: Verify result from CTB
 (de)register action
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

In commit b839a869dfc9 ("drm/i915/guc: Add support for data
reporting in GuC responses") we missed the hypothetical case
that GuC might return positive non-zero value as success data.

While that would be lucky treated as error case, and at the
end will result in reporting valid -EIO, in the meantime this
value will be passed to ERR_PTR that could be misleading.

v2: rebased

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 22b4733b55e2..4e6bb2d6b058 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -168,12 +168,15 @@ static int guc_action_register_ct_buffer(struct intel_guc *guc, u32 type,
 		FIELD_PREP(HOST2GUC_REGISTER_CTB_REQUEST_MSG_2_DESC_ADDR, desc_addr),
 		FIELD_PREP(HOST2GUC_REGISTER_CTB_REQUEST_MSG_3_BUFF_ADDR, buff_addr),
 	};
+	int ret;
 
 	GEM_BUG_ON(type != GUC_CTB_TYPE_HOST2GUC && type != GUC_CTB_TYPE_GUC2HOST);
 	GEM_BUG_ON(size % SZ_4K);
 
 	/* CT registration must go over MMIO */
-	return intel_guc_send_mmio(guc, request, ARRAY_SIZE(request), NULL, 0);
+	ret = intel_guc_send_mmio(guc, request, ARRAY_SIZE(request), NULL, 0);
+
+	return ret > 0 ? -EPROTO : ret;
 }
 
 static int ct_register_buffer(struct intel_guc_ct *ct, u32 type,
@@ -201,11 +204,14 @@ static int guc_action_deregister_ct_buffer(struct intel_guc *guc, u32 type)
 		FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION, GUC_ACTION_HOST2GUC_DEREGISTER_CTB),
 		FIELD_PREP(HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_1_TYPE, type),
 	};
+	int ret;
 
 	GEM_BUG_ON(type != GUC_CTB_TYPE_HOST2GUC && type != GUC_CTB_TYPE_GUC2HOST);
 
 	/* CT deregistration must go over MMIO */
-	return intel_guc_send_mmio(guc, request, ARRAY_SIZE(request), NULL, 0);
+	ret = intel_guc_send_mmio(guc, request, ARRAY_SIZE(request), NULL, 0);
+
+	return ret > 0 ? -EPROTO : ret;
 }
 
 static int ct_deregister_buffer(struct intel_guc_ct *ct, u32 type)
-- 
2.25.1

