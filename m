Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC5D58371A
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 04:43:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6205810FC09;
	Thu, 28 Jul 2022 02:42:50 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A27510F27F;
 Thu, 28 Jul 2022 02:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658976148; x=1690512148;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R3DFCS0YA+EucRtMbS6/AzTUE+QIYg+vGi/QxLZYT5A=;
 b=jGH8oSBRCISWc9m35jnS+2xt9e77XONbnqK+o4H8K1tvuQJFm3W0dkbi
 fnAkQuuEtskNiv1ckenJsv0R3V0+KlHj9svNR1PY2r81l9735sYYtngRA
 CE7uOcl44O7KznKm4/1D2shMUcVwUhFzUGGVVdlQJhLXUVziOArEMuSGM
 gwRjFNnHeZN/RMzhlzF0UCKwdsZ9JHZYCbm7qtLEVLRQCPqaXDjKGXbAI
 MkSjDGDcrvlt/8j9KvMWsdJjRuU6ixeEtpmA9nTOFJlYrecrNvwaiH9Cn
 NtPJVlIAx1+3e2ty4U9PexvM13t1N1pgMcSCcvud5zDTl47tFAzYoOkAs Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="271443544"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="271443544"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 19:42:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="690096057"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Jul 2022 19:42:26 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 27 Jul 2022 19:42:25 -0700
Message-Id: <20220728024225.2363663-7-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220728024225.2363663-1-John.C.Harrison@Intel.com>
References: <20220728024225.2363663-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/guc: Don't abort on CTB_UNUSED
 status
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

When the KMD sends a CLIENT_RESET request to GuC (as part of the
suspend sequence), GuC will mark the CTB buffer as 'UNUSED'. If the
KMD then checked the CTB queue, it would see a non-zero status value
and report the buffer as corrupted.

Technically, no G2H messages should be received once the CLIENT_RESET
has been sent. However, if a context was outstanding on an engine then
it would get reset and a reset notification would be sent. So, don't
actually treat UNUSED as a catastrophic error. Just flag it up as
unexpected and keep going.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 .../i915/gt/uc/abi/guc_communication_ctb_abi.h |  8 +++++---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c      | 18 ++++++++++++++++--
 2 files changed, 21 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
index df83c1cc7c7a6..28b8387f97b77 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
@@ -37,6 +37,7 @@
  *  |   |       |   - _`GUC_CTB_STATUS_OVERFLOW` = 1 (head/tail too large)     |
  *  |   |       |   - _`GUC_CTB_STATUS_UNDERFLOW` = 2 (truncated message)      |
  *  |   |       |   - _`GUC_CTB_STATUS_MISMATCH` = 4 (head/tail modified)      |
+ *  |   |       |   - _`GUC_CTB_STATUS_UNUSED` = 8 (CTB is not in use)         |
  *  +---+-------+--------------------------------------------------------------+
  *  |...|       | RESERVED = MBZ                                               |
  *  +---+-------+--------------------------------------------------------------+
@@ -49,9 +50,10 @@ struct guc_ct_buffer_desc {
 	u32 tail;
 	u32 status;
 #define GUC_CTB_STATUS_NO_ERROR				0
-#define GUC_CTB_STATUS_OVERFLOW				(1 << 0)
-#define GUC_CTB_STATUS_UNDERFLOW			(1 << 1)
-#define GUC_CTB_STATUS_MISMATCH				(1 << 2)
+#define GUC_CTB_STATUS_OVERFLOW				BIT(0)
+#define GUC_CTB_STATUS_UNDERFLOW			BIT(1)
+#define GUC_CTB_STATUS_MISMATCH				BIT(2)
+#define GUC_CTB_STATUS_UNUSED				BIT(3)
 	u32 reserved[13];
 } __packed;
 static_assert(sizeof(struct guc_ct_buffer_desc) == 64);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index f01325cd1b625..11b5d4ddb19ce 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -816,8 +816,22 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
 	if (unlikely(ctb->broken))
 		return -EPIPE;
 
-	if (unlikely(desc->status))
-		goto corrupted;
+	if (unlikely(desc->status)) {
+		u32 status = desc->status;
+
+		if (status & GUC_CTB_STATUS_UNUSED) {
+			/*
+			 * Potentially valid if a CLIENT_RESET request resulted in
+			 * contexts/engines being reset. But should never happen as
+			 * no contexts should be active when CLIENT_RESET is sent.
+			 */
+			CT_ERROR(ct, "Unexpected G2H after GuC has stopped!\n");
+			status &= ~GUC_CTB_STATUS_UNUSED;
+		}
+
+		if (status)
+			goto corrupted;
+	}
 
 	GEM_BUG_ON(head > size);
 
-- 
2.37.1

