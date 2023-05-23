Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1813970E067
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 17:26:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FB3110E44F;
	Tue, 23 May 2023 15:26:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A52E410E44F;
 Tue, 23 May 2023 15:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684855570; x=1716391570;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PV8wjwgB6FNsu5rkhWdW3xwv1TaAC035PhfsKeF457Y=;
 b=C2DUKaWNUIIx/9rHnEdHYhtId/ILeHY95jymkdGJC2U7cnhS0Ug7GJSg
 GpERTnbC4VbcgkibsGsUKkQBvaLY+nZC6M0wwlyGKnBDlWAohCrqh3Zid
 Fr83TjJx7I+zVyDzapBjQ7/1saYD15cozr6zD/HEma7RQQv/7cdfcUw+s
 ag4vMSay3z0v+wFyeaTyEZ6qfbVP1aBd3WGrjlXg4JS5esd/ig1Jm5ZAf
 CzDUyp2rUX7QdMY+7qgwGFWBy2GW9FXuNXqzLV0FH/1t4gqHc1lh87SVh
 3djVDDzcMoQSaA6lGKJPrYmCvOsxipacljtmS6uN/0UYBf4dk3IXob18v A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="353296676"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="353296676"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 08:25:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="950586537"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="950586537"
Received: from cboylan-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.203.203])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 08:25:54 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Tue, 23 May 2023 16:24:07 +0100
Message-Id: <20230523152407.828236-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Fix frequency and rc6
 counters
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Need to reset aggregated counters before adding to them otherwise numbers
will grow endlessly.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: 3dadeff69d4a ("intel_gpu_top: Switch pmu_counter to use aggregated values")
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 tools/intel_gpu_top.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 4e49367a70c7..a89f13d46f11 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -710,6 +710,10 @@ static void pmu_sample(struct engines *engines)
 	engines->ts.prev = engines->ts.cur;
 	engines->ts.cur = pmu_read_multi(engines->fd, num_val, val);
 
+	engines->freq_req.val.cur = engines->freq_req.val.prev = 0;
+	engines->freq_act.val.cur = engines->freq_act.val.prev = 0;
+	engines->rc6.val.cur = engines->rc6.val.prev = 0;
+
 	for (i = 0; i < engines->num_gts; i++) {
 		update_sample(&engines->freq_req_gt[i], val);
 		engines->freq_req.val.cur += engines->freq_req_gt[i].val.cur;
-- 
2.39.2

