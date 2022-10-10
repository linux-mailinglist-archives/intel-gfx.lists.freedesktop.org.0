Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F5D5FA33F
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 20:15:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68B3610E6BE;
	Mon, 10 Oct 2022 18:15:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4789210E6E5
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 18:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665425678; x=1696961678;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=x2lHFOUnq8PbtpW6UnPhOShY0313BeMQbob4BegoYx4=;
 b=WnINdEFQGpt5jxtS+JhbO6U9d+zRKTpJMhXRN+fF44GfsR5NU4zqiKtx
 cvQbIHUrSJVlKH86VAY2M8M+lURKyB4yJ5RiFWy15aCaA6sGTg+raaBnt
 T8YMLUZzphXMIQlD8OCJCAn7q7+vUEbw7pBR7xGoRa2VUWV7JQ6Ptj9wk
 +E/1MAOClSaJapOod00uZQl2Xu5/n8jxoprvYImmXBPkMp9l/1iOAx/RU
 1yTjDvdsvcuoHiJjDqJDE+q5JZ2JvGFcgGEJX2YQDNHIAdwxrI7FhFwJQ
 bl8yGPuqDQDYZj4WR7kE/+LKs8MLEB9WkxzvY01Q5U2EVqbfi8LJr4CxB g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="368439662"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="368439662"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 11:14:37 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="603820300"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="603820300"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 11:14:36 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Mon, 10 Oct 2022 18:14:31 +0000
Message-Id: <20221010181434.513477-14-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221010181434.513477-1-umesh.nerlige.ramappa@intel.com>
References: <20221010181434.513477-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 13/16] drm/i915/perf: Save/restore EU flex
 counters across reset
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

If a drm client is killed, then hw contexts used by the client are reset
immediately. This reset clears the EU flex counter configuration. If an
OA use case is running in parallel, it would start seeing zeroed eu
counter values following the reset even if the drm client is restarted.
Save/restore the EU flex counter config so that the EU counters can be
monitored continuously across resets.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 74cbe8eaf531..3e152219fcb2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -375,6 +375,14 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
 	for (i = 0; i < GEN9_LNCFCMOCS_REG_COUNT; i++)
 		ret |= GUC_MMIO_REG_ADD(gt, regset, GEN9_LNCFCMOCS(i), false);
 
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL0, false);
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL1, false);
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL2, false);
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL3, false);
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL4, false);
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL5, false);
+	ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL6, false);
+
 	return ret ? -1 : 0;
 }
 
-- 
2.25.1

