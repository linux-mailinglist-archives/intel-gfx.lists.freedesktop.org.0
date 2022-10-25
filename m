Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D514060D560
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 22:17:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8488410E1E4;
	Tue, 25 Oct 2022 20:17:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3C5610E1E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 20:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666729031; x=1698265031;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=S6TU5IPCKqugKuXPsfWSoRIT1EXNM/yiDDISPsvQZ4M=;
 b=CLsuKkxvv6riwHZxIB0xiN7HEqTRwMozH2hxX/stecL3ZzzYFUBgCxan
 VydFXpIbLwLSdrzZZpikporXI4JlecY+sXmTb6oLRranaIz5eybL+jLsd
 C56nkRjV+k++NvlgMOOBreUXWTQ645CwJ499J9EF1S2HkRSpYtr6ho4kK
 1CP0PdTEln4SRAbZpNvfKDMpR4BkGGKgLMf7c4EkiSoD9cNq/HdEnVGiE
 nMt/5obHVVwqHbDXjt60jMuzNJtSDX30Ts+a5+RC9nSjKzt3PF/L3M8aY
 2W5Ir9hwijgUB5BWqTrfjjFi2sBrIiObvqIL33LKf0O48GBBrZ6xLRqt6 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="369847679"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="369847679"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 13:17:09 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="609699732"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="609699732"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 13:17:09 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 20:17:05 +0000
Message-Id: <20221025201708.84018-14-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221025201708.84018-1-umesh.nerlige.ramappa@intel.com>
References: <20221025201708.84018-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 13/16] drm/i915/perf: Save/restore EU flex
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

v2:
- Save/restore eu flex config only for gen12, as for pre-gen12, these
  are saved and restored in the context image.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 34ef4f36e660..a419d60166c8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -392,6 +392,16 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
 		else
 			ret |= GUC_MMIO_REG_ADD(gt, regset, GEN9_LNCFCMOCS(i), false);
 
+	if (GRAPHICS_VER(engine->i915) >= 12) {
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL0, false);
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL1, false);
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL2, false);
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL3, false);
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL4, false);
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL5, false);
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL6, false);
+	}
+
 	return ret ? -1 : 0;
 }
 
-- 
2.25.1

