Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 215374C99EC
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 01:34:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DF0F10E781;
	Wed,  2 Mar 2022 00:34:02 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A325E10E666;
 Wed,  2 Mar 2022 00:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646181239; x=1677717239;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2IJ7sSSfG/HfauHHGiwyGRv4WGJYp1scqsdWF8JFufM=;
 b=TfCAJ8+m6Knsas3zdO11k+HxqJUFyvcP8UmDlORRyXFiXfyMJJdl3zCL
 xw5yaL2wEzYPemYhKUlsxKbkZYePdRs78jNKtEl7N48MCAEwS/WaST9KX
 U6EmQPsi0YMmef+4RrO/o1xs8a0ZieJJMqK1vqg3U1iwrUjDgRMKYCUWu
 IlXlz8J3Br9N/pCih9dHhrYm4Bh6yQyKyuZJ544lmQwzYh7Lkcjw1O4wt
 gAwtxRWJPk232KmBKnidDP0ugsGJntqSUlsT0fLIe1GqydHzl2lXC6r8O
 wA5fnrtTQf0R+tBPnMvYFvKipS/3/XMolvub5i771qvCoBxHZIbrgkv8A g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="233243145"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="233243145"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 16:33:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="639577391"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga002.fm.intel.com with ESMTP; 01 Mar 2022 16:33:58 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Tue,  1 Mar 2022 16:33:57 -0800
Message-Id: <20220302003357.4188363-9-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302003357.4188363-1-John.C.Harrison@Intel.com>
References: <20220302003357.4188363-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 8/8] drm/i915/guc: Fix potential invalid
 pointer dereferences when decoding G2Hs
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

Some G2H handlers were reading the context id field from the payload
before checking the payload met the minimum length required.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 5dbebf15fae1..a85e10af0d24 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -3892,12 +3892,13 @@ int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
 					  u32 len)
 {
 	struct intel_context *ce;
-	u32 ctx_id = msg[0];
+	u32 ctx_id;
 
 	if (unlikely(len < 1)) {
 		drm_err(&guc_to_gt(guc)->i915->drm, "Invalid length %u\n", len);
 		return -EPROTO;
 	}
+	ctx_id = msg[0];
 
 	ce = g2h_context_lookup(guc, ctx_id);
 	if (unlikely(!ce))
@@ -3943,12 +3944,13 @@ int intel_guc_sched_done_process_msg(struct intel_guc *guc,
 {
 	struct intel_context *ce;
 	unsigned long flags;
-	u32 ctx_id = msg[0];
+	u32 ctx_id;
 
 	if (unlikely(len < 2)) {
 		drm_err(&guc_to_gt(guc)->i915->drm, "Invalid length %u\n", len);
 		return -EPROTO;
 	}
+	ctx_id = msg[0];
 
 	ce = g2h_context_lookup(guc, ctx_id);
 	if (unlikely(!ce))
-- 
2.25.1

