Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B07FF3AC9F2
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 13:32:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A2EA6E9F2;
	Fri, 18 Jun 2021 11:32:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 084846E9F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 11:32:18 +0000 (UTC)
IronPort-SDR: c+dWxb/tQeEt9bmF5HVKpacD5G8YWDRG9KYmSDVD/wV/lAmYwh5uL2JVYk1Vvx4ecMwRcwhJ9W
 7Bnf+2cphukQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="186231060"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="186231060"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 04:32:18 -0700
IronPort-SDR: Ca5P69SpJJbx99ygM73uQz7cV3ZL0Z4O6MH+Fh8c+bDzZb0FY57B6dkzXTXglbmV7jzjDanatT
 gBvJrs0tJPZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="554707893"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga004.jf.intel.com with ESMTP; 18 Jun 2021 04:32:16 -0700
Received: from mwajdecz-MOBL.ger.corp.intel.com
 (mwajdecz-MOBL.ger.corp.intel.com [10.249.155.199])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 15IBWFbg023871; Fri, 18 Jun 2021 12:32:15 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Jun 2021 13:32:04 +0200
Message-Id: <20210618113204.1551-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Verify result from CTB
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In commit b839a869dfc9 ("drm/i915/guc: Add support for data
reporting in GuC responses") we missed the hypothetical case
that GuC might return positive non-zero value as success data.

While that would be lucky treated as error case, and at the
end will result in reporting valid -EIO, in the meantime this
value will be passed to ERR_PTR that could be misleading.

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 8f7b148fef58..72ce234f764d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -149,9 +149,12 @@ static int guc_action_register_ct_buffer(struct intel_guc *guc,
 		sizeof(struct guc_ct_buffer_desc),
 		type
 	};
+	int ret;
 
 	/* Can't use generic send(), CT registration must go over MMIO */
-	return intel_guc_send_mmio(guc, action, ARRAY_SIZE(action), NULL, 0);
+	ret = intel_guc_send_mmio(guc, action, ARRAY_SIZE(action), NULL, 0);
+
+	return ret > 0 ? -EPROTO : ret;
 }
 
 static int ct_register_buffer(struct intel_guc_ct *ct, u32 desc_addr, u32 type)
@@ -171,9 +174,12 @@ static int guc_action_deregister_ct_buffer(struct intel_guc *guc, u32 type)
 		CTB_OWNER_HOST,
 		type
 	};
+	int ret;
 
 	/* Can't use generic send(), CT deregistration must go over MMIO */
-	return intel_guc_send_mmio(guc, action, ARRAY_SIZE(action), NULL, 0);
+	ret = intel_guc_send_mmio(guc, action, ARRAY_SIZE(action), NULL, 0);
+
+	return ret > 0 ? -EPROTO : ret;
 }
 
 static int ct_deregister_buffer(struct intel_guc_ct *ct, u32 type)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
