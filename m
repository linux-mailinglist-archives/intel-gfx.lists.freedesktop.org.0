Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 251646FCF2D
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 22:11:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0759310E071;
	Tue,  9 May 2023 20:11:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E6A810E071
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 May 2023 20:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683663086; x=1715199086;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1b51JKUek5Vu8pkfEQmuwXcV744Br+IEjcnwJLIY/Wo=;
 b=SqNyR0JT0FiSdZ80Vdz15QD8ZWmtZ9//Z5RuWciOG0jkbDJ+23jda8b5
 TEZvcSQF+3owOzcTFZ2Jvism6Mjd3u1O/GDbSyjW/UnYI+12M3ZQ8/UI2
 8sNxuJ6muh+zCXpJtPnbvCdSEZHzrxhzJcdD/fsqLtvrzkq3UemocgczY
 ZG9rg9J7/OXyozSIuvSqjNQbgBeVQcrlX0LTQNzV6yXz7o1QNxbOjTKzE
 NmuVHdl7wdqUwkD/U9LMFNYojfDJ3oKigI/qxDUC/uBgKl6GVe2RSJ1Tl
 XhjN+puoJGdXwDNxS0lSDoGWrB+FBG+nvwUu/INAcWwDu8hBySV0i80Au g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="347506298"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="347506298"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 13:11:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="699028375"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="699028375"
Received: from mwajdecz-mobl.ger.corp.intel.com ([10.249.140.41])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 13:11:23 -0700
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 May 2023 22:11:03 +0200
Message-Id: <20230509201103.538-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Drop legacy CTB definitions
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

We've already switched to new HXG definitions some time ago,
drop legacy CTB definitions to avoid mistakes.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Piotr Piórkowski <piotr.piorkowski@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
---
 .../gt/uc/abi/guc_communication_ctb_abi.h     | 21 -------------------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  2 +-
 2 files changed, 1 insertion(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
index 28b8387f97b7..f7d70db16d76 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
@@ -167,25 +167,4 @@ static_assert(sizeof(struct guc_ct_buffer_desc) == 64);
  * - **flags**, holds various bits to control message handling
  */
 
-/*
- * Definition of the command transport message header (DW0)
- *
- * bit[4..0]	message len (in dwords)
- * bit[7..5]	reserved
- * bit[8]	response (G2H only)
- * bit[8]	write fence to desc (H2G only)
- * bit[9]	write status to H2G buff (H2G only)
- * bit[10]	send status back via G2H (H2G only)
- * bit[15..11]	reserved
- * bit[31..16]	action code
- */
-#define GUC_CT_MSG_LEN_SHIFT			0
-#define GUC_CT_MSG_LEN_MASK			0x1F
-#define GUC_CT_MSG_IS_RESPONSE			(1 << 8)
-#define GUC_CT_MSG_WRITE_FENCE_TO_DESC		(1 << 8)
-#define GUC_CT_MSG_WRITE_STATUS_TO_BUFF		(1 << 9)
-#define GUC_CT_MSG_SEND_STATUS			(1 << 10)
-#define GUC_CT_MSG_ACTION_SHIFT			16
-#define GUC_CT_MSG_ACTION_MASK			0xFFFF
-
 #endif /* _ABI_GUC_COMMUNICATION_CTB_ABI_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 99a0a89091e7..fe355f316d37 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -640,7 +640,7 @@ static int ct_send(struct intel_guc_ct *ct,
 
 	GEM_BUG_ON(!ct->enabled);
 	GEM_BUG_ON(!len);
-	GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_MASK);
+	GEM_BUG_ON(len > GUC_CTB_HXG_MSG_MAX_LEN - GUC_CTB_HDR_LEN);
 	GEM_BUG_ON(!response_buf && response_buf_size);
 	might_sleep();
 
-- 
2.25.1

