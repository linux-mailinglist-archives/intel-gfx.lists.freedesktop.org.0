Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A285E8300
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 22:12:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FAED10E92F;
	Fri, 23 Sep 2022 20:12:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D272C10E8D0
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 20:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663963924; x=1695499924;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=x2lHFOUnq8PbtpW6UnPhOShY0313BeMQbob4BegoYx4=;
 b=cHYj6IEwMbVeUlWMgXDe7d1WXRyM8c4CR/lJ4TO8v4WctOwbGDVeBTqm
 XDbFKh0Flyxw/vbhMTNpk3m5hY31Ghj7YdygisXr5keYg+MTACqUL9Gcm
 jY6S6zm9KmNPq/gxuRsXmUMIRyelilu4KNVqe/Zmj15CavU1jbXB5N3QN
 CIBfGyWHQaa0mEmnHXRyjozfdutDC6xUYsC8+7b4TFgiUq8ZhiuHG+j1T
 Ru04eGoJ0J2X2WffuCOdTWqgmue2kEnnl4XhyG345nqHBD6/Bl6zN1iAx
 LoNSBhN+No8JaIT4qzCyJU5h/sqMKPpXTCp9Qe9nynRPCaDSuYtaWnt5U Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="287807868"
X-IronPort-AV: E=Sophos;i="5.93,340,1654585200"; d="scan'208";a="287807868"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 13:12:03 -0700
X-IronPort-AV: E=Sophos;i="5.93,340,1654585200"; d="scan'208";a="762747309"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 13:12:03 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Fri, 23 Sep 2022 20:11:52 +0000
Message-Id: <20220923201154.283784-14-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220923201154.283784-1-umesh.nerlige.ramappa@intel.com>
References: <20220923201154.283784-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/15] drm/i915/perf: Save/restore EU flex
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

