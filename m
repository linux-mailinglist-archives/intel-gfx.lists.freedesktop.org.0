Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE78526C5B4
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 19:17:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 457FE6EA8D;
	Wed, 16 Sep 2020 17:17:10 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A8A76EA85
 for <Intel-GFX@lists.freedesktop.org>; Wed, 16 Sep 2020 17:16:55 +0000 (UTC)
IronPort-SDR: fh6+Bc5sgMwp33TdAs/8NNQhNbJpSM/9s44w6e4/TmQxq41lZaeCxdBw3V5uAnq7oiSDEhrbxc
 Zw4x3CPVkDhA==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="139534271"
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="139534271"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 10:16:54 -0700
IronPort-SDR: fegJHUHsUbQTnK8wXWm8ZN2o5S9yfuz/oZ2ku47DcP0TBUbTCxSVLqR5L5JWwmM1Ml2RxDFxfV
 jbl/GS3Pa6gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="287259446"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga007.fm.intel.com with ESMTP; 16 Sep 2020 10:16:54 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 16 Sep 2020 10:16:46 -0700
Message-Id: <20200916171653.2021483-6-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 05/12] drm/i915/guc: Kill
 guc_ads.reg_state_buffer
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

From: Michal Wajdeczko <michal.wajdeczko@intel.com>

Starting GuC firmware version 40.0 reg_state_buffer is maintained
internally by the GuC as part of "private data".

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c  | 2 --
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 2 +-
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 7c16ade44b2b..a662825f67ad 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -83,7 +83,6 @@ struct __guc_ads_blob {
 	struct guc_gt_system_info system_info;
 	struct guc_clients_info clients_info;
 	struct guc_ct_pool_entry ct_pool[GUC_CT_POOL_SIZE];
-	u8 reg_state_buffer[GUC_S3_SAVE_SPACE_PAGES * PAGE_SIZE];
 } __packed;
 
 static void __guc_ads_init(struct intel_guc *guc)
@@ -141,7 +140,6 @@ static void __guc_ads_init(struct intel_guc *guc)
 
 	/* ADS */
 	blob->ads.scheduler_policies = base + ptr_offset(blob, policies);
-	blob->ads.reg_state_buffer = base + ptr_offset(blob, reg_state_buffer);
 	blob->ads.reg_state_addr = base + ptr_offset(blob, reg_state);
 	blob->ads.gt_system_info = base + ptr_offset(blob, system_info);
 	blob->ads.clients_info = base + ptr_offset(blob, clients_info);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index d4e2c32f44cf..f375388e8c50 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -407,7 +407,7 @@ struct guc_clients_info {
 /* GuC Additional Data Struct */
 struct guc_ads {
 	u32 reg_state_addr;
-	u32 reg_state_buffer;
+	u32 reserved0;
 	u32 scheduler_policies;
 	u32 gt_system_info;
 	u32 clients_info;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
