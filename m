Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B29525E78F3
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 13:01:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22B7210E899;
	Fri, 23 Sep 2022 11:01:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1080A10E867
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 11:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663930857; x=1695466857;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZawCXDJ9d51Hvx21qgAy5Ddxa+rnNz1avwcybtS8Xrg=;
 b=Uea7dkCxlHRtW4afGcRkTNyxPDTQfPcWN9JN1E1phw6Yd5ZgfApc6Xdh
 tATdHDHUcMYaxkiFbZbssX01em/pti5Mj2lj+QVAd663CLAGEshQ6ftsU
 4nvfzmUQVxyFxWQ4ok+dEBSWG6ur0dfsWxVQkUq6ADNhjjKZmDJc3AVXd
 2Eq6cwqZ2gArL66xPqBZ6nIl7TE4g7JDVwuUsXXBtZdZfCVsv5leVLMKs
 8rOQvBXZimR8Mm3WUgSiMCHQ7wnRORmXWRasqTseEWt9GU5KHT8tk19AM
 cQjzQfKR52RiPun1HJ/lrdfNmGUrr68y7Q9WQEYrGoxlUAcLvWPUkv2lc g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="386858219"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="386858219"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 04:00:56 -0700
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="653363769"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 04:00:54 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Sep 2022 16:30:42 +0530
Message-Id: <20220923110043.789178-3-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220923110043.789178-1-riana.tauro@intel.com>
References: <20220923110043.789178-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/selftests: Add helper function
 measure_power
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

move the power measurement and the triangle filter
to a different function. No functional changes.

Signed-off-by: Riana Tauro <riana.tauro@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index cfb4708dd62e..99a372486fb7 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -1107,21 +1107,27 @@ static u64 __measure_power(int duration_ms)
 	return div64_u64(1000 * 1000 * dE, dt);
 }
 
-static u64 measure_power_at(struct intel_rps *rps, int *freq)
+static u64 measure_power(struct intel_rps *rps, int *freq)
 {
 	u64 x[5];
 	int i;
 
-	*freq = rps_set_check(rps, *freq);
 	for (i = 0; i < 5; i++)
 		x[i] = __measure_power(5);
-	*freq = (*freq + read_cagf(rps)) / 2;
+
+	*freq = (*freq + intel_rps_read_actual_frequency(rps)) / 2;
 
 	/* A simple triangle filter for better result stability */
 	sort(x, 5, sizeof(*x), cmp_u64, NULL);
 	return div_u64(x[1] + 2 * x[2] + x[3], 4);
 }
 
+static u64 measure_power_at(struct intel_rps *rps, int *freq)
+{
+	*freq = rps_set_check(rps, *freq);
+	return measure_power(rps, freq);
+}
+
 int live_rps_power(void *arg)
 {
 	struct intel_gt *gt = arg;
-- 
2.25.1

