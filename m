Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6EF3B945A
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 17:56:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56F476EB41;
	Thu,  1 Jul 2021 15:56:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2D866EB41;
 Thu,  1 Jul 2021 15:56:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="188942712"
X-IronPort-AV: E=Sophos;i="5.83,314,1616482800"; d="scan'208";a="188942712"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 08:56:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,314,1616482800"; d="scan'208";a="558694892"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga004.jf.intel.com with ESMTP; 01 Jul 2021 08:56:03 -0700
Received: from mwajdecz-MOBL.ger.corp.intel.com
 (mwajdecz-MOBL.ger.corp.intel.com [10.249.146.9])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 161Fu0L9001058; Thu, 1 Jul 2021 16:56:02 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Date: Thu,  1 Jul 2021 17:55:11 +0200
Message-Id: <20210701155513.2024-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210701155513.2024-1-michal.wajdeczko@intel.com>
References: <20210701155513.2024-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/guc: Print error name on CTB
 (de)registration failure
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

Instead of plain error value (%d) print more user friendly error
name (%pe).

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index a26bb55c0898..18d52c39f0c2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -167,8 +167,8 @@ static int ct_register_buffer(struct intel_guc_ct *ct, u32 type,
 	err = guc_action_register_ct_buffer(ct_to_guc(ct), type,
 					    desc_addr, buff_addr, size);
 	if (unlikely(err))
-		CT_ERROR(ct, "Failed to register %s buffer (err=%d)\n",
-			 guc_ct_buffer_type_to_str(type), err);
+		CT_ERROR(ct, "Failed to register %s buffer (%pe)\n",
+			 guc_ct_buffer_type_to_str(type), ERR_PTR(err));
 	return err;
 }
 
@@ -195,8 +195,8 @@ static int ct_deregister_buffer(struct intel_guc_ct *ct, u32 type)
 	int err = guc_action_deregister_ct_buffer(ct_to_guc(ct), type);
 
 	if (unlikely(err))
-		CT_ERROR(ct, "Failed to deregister %s buffer (err=%d)\n",
-			 guc_ct_buffer_type_to_str(type), err);
+		CT_ERROR(ct, "Failed to deregister %s buffer (%pe)\n",
+			 guc_ct_buffer_type_to_str(type), ERR_PTR(err));
 	return err;
 }
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
