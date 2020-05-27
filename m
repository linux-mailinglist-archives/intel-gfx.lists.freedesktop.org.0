Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C37C1E4EC5
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 22:04:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D10A46E0E9;
	Wed, 27 May 2020 20:04:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A29276E0E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 20:04:13 +0000 (UTC)
IronPort-SDR: e4nqPwhZqNbhLati+TvCbt4zmBOzpQkmvCcAPrz8bRz77KGf3jh20EgcmfaBjF9BMVI7p7f7uE
 tTZBLt6EBoQg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 13:04:13 -0700
IronPort-SDR: 6HGY00/z0Kz6Mx9sevzk5qGlet3/KE0nrr6Lh8zHPflfj6V0h6Epm7lfQevL9Mr/ZbIXRKH4ZH
 e4yz/DN3q6QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,442,1583222400"; d="scan'208";a="291721532"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga004.fm.intel.com with ESMTP; 27 May 2020 13:04:10 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 May 2020 23:00:22 +0300
Message-Id: <20200527200022.28003-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v1] drm/i915: Minor link training logic fixes
 for dp_mst
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

First of all *_needs_link_retraining function should return
false is link_train is set to true but not false.

Also if we detect channel eq problem when checking mst status
we simply bail out, without setting link_train to false again,
which might end up in a situation that we don't do link retraining
when needed.

There were some issues, when we had several problems with dp mst
and at the same time the log was floode by messages about
"channel eq not ok, need retraining" however the actual training
seems to be never done.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1768731678a1..9288dc1f8914 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5627,6 +5627,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 			drm_dbg_kms(&i915->drm,
 				    "channel EQ not ok, retraining\n");
 			need_retrain = true;
+			intel_dp->link_trained = false;
 		}
 
 		drm_dbg_kms(&i915->drm, "got esi %3ph\n", esi);
@@ -5654,7 +5655,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 {
 	u8 link_status[DP_LINK_STATUS_SIZE];
 
-	if (!intel_dp->link_trained)
+	if (intel_dp->link_trained)
 		return false;
 
 	/*
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
