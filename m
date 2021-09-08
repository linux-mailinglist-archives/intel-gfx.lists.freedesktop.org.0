Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B946403251
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 03:43:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2548C6E101;
	Wed,  8 Sep 2021 01:43:05 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ABA06E0F5;
 Wed,  8 Sep 2021 01:43:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="207473738"
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="207473738"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 18:43:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="431134839"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga003.jf.intel.com with ESMTP; 07 Sep 2021 18:43:00 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Cc: DRI-Devel@Lists.FreeDesktop.Org,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Date: Tue,  7 Sep 2021 18:42:59 -0700
Message-Id: <20210908014259.50346-9-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210908014259.50346-1-John.C.Harrison@Intel.com>
References: <20210908014259.50346-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/8] drm/i915: Get PM ref before accessing HW
 register
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

From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Seeing these errors when GT is likely in suspend state-
"RPM wakelock ref not held during HW access"

Ensure GT is awake before trying to access HW registers. Avoid
reading the register if that is not the case.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 3489f5f0cac1..e1a198bbd135 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1969,8 +1969,14 @@ u32 intel_rps_read_actual_frequency(struct intel_rps *rps)
 u32 intel_rps_read_punit_req(struct intel_rps *rps)
 {
 	struct intel_uncore *uncore = rps_to_uncore(rps);
+	struct intel_runtime_pm *rpm = rps_to_uncore(rps)->rpm;
+	intel_wakeref_t wakeref;
+	u32 freq = 0;
 
-	return intel_uncore_read(uncore, GEN6_RPNSWREQ);
+	with_intel_runtime_pm_if_in_use(rpm, wakeref)
+		freq = intel_uncore_read(uncore, GEN6_RPNSWREQ);
+
+	return freq;
 }
 
 static u32 intel_rps_get_req(u32 pureq)
-- 
2.25.1

