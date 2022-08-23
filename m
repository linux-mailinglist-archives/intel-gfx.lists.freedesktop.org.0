Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D2059ED9D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 22:42:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1128510E84D;
	Tue, 23 Aug 2022 20:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C53B910E76C
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 20:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661287322; x=1692823322;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=641/tqHD4cZqRXgJBnNiCPyh0v5dfz3mzuDP84IQseg=;
 b=HzTbQnsm48L8M3/1tMK0wBmYhzVxNamXm0089yvtyLlnzK7ufXRq6YyH
 wrq+MIpbijpyQ2YUjJJJyTNU7sLoywC66p97LiDRPbT7kwMlHOtlMBC3F
 kWAQZbcE7x8/lK5sj5bUsA1SIR9MTfOwcNcqGf7l0c5Rr0seTVq07Le3u
 M/FNBEsqPJD4xMWXw8YZjYUtqDFZMHOUGh93a+Flmv7CyFAUvMcryJwaW
 BvyzlL901AYM72bY+g+VCWxHu5c50dlFnLnFeYh3iPFPKvSD7PFtd4GpG
 lE2SS1eI+AU7xovAToEQ+h7wKllhkXbzycC8msYxLcduEOX3h0+sk2MfP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="294579395"
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="294579395"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 13:42:00 -0700
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="638815682"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 13:42:00 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Aug 2022 20:41:53 +0000
Message-Id: <20220823204155.8178-18-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/19] drm/i915/perf: Save/restore EU flex
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

