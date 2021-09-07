Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3177C403182
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 01:27:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AEEE6E0E6;
	Tue,  7 Sep 2021 23:27:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5A716E0E1;
 Tue,  7 Sep 2021 23:27:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="242632326"
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="242632326"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 16:27:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="503278036"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga008.fm.intel.com with ESMTP; 07 Sep 2021 16:27:28 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Date: Tue,  7 Sep 2021 16:27:04 -0700
Message-Id: <20210907232704.12982-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Get PM ref before accessing HW
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
2.25.0

