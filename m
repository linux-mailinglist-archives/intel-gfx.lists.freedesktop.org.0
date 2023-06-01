Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9972719650
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 11:03:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CAC810E21B;
	Thu,  1 Jun 2023 09:03:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 358DB10E21B
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 09:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685610234; x=1717146234;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PDbopT5dF2xGITX3cviIHOaeh6R+BajMISpyXFBwj/Q=;
 b=ARMJyJzTQRmup2Tuzi8hs2cRsjL4wuGtsYQZPr+Ss29TwoQj8i1tsS6y
 HnlkVedxTYZzJhoWPIxSaSOssud2pLMidKi6QJuFN6DOd49S32i0nuh37
 8Hoie3/LNRPc6XcS12F93rIBFdJYoZF0zUYvt0wJinEpL2+8DfJMxEqMu
 o/gvdvOWZBz8FZc4/05umh4l5rJAWE1O3TDnnB5uW7wLncwjIlWvwYBuo
 Dqko/TUbJ8zH4pOEmr+D9x6sA61rXdrX78KJUvXyKStOPvGxUgkfIT8GA
 YSEITlhe+Q5tTluuv5WFh28rgQaVCSIl5fKKkwFCiCNVLOMfkiepDF415 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="335121666"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="335121666"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 02:03:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="701463376"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="701463376"
Received: from lhogeweg-mobl.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.55.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 02:03:51 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jun 2023 12:03:38 +0300
Message-Id: <20230601090338.80284-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: pre-initialize some values in
 probe_gmdid_display()
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

When intel_display_device_probe() (and, subsequently,
probe_gmdid_display()) returns, the caller expects ver, rel and step
to be initialized.  Since there's no way to check that there was a
failure and no_display was returned without some further refactoring,
pre-initiliaze all these values to zero to keep it simple and safe.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 464df1764a86..fb6354e9e704 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -731,6 +731,15 @@ probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step
 	u32 val;
 	int i;
 
+	/* The caller expects to ver, rel and step to be initialized
+	 * here, and there's no good way to check when there was a
+	 * failure and no_display was returned.  So initialize all these
+	 * values here zero, to be sure.
+	 */
+	*ver = 0;
+	*rel = 0;
+	*step = 0;
+
 	addr = pci_iomap_range(pdev, 0, i915_mmio_reg_offset(GMD_ID_DISPLAY), sizeof(u32));
 	if (!addr) {
 		drm_err(&i915->drm, "Cannot map MMIO BAR to read display GMD_ID\n");
-- 
2.39.2

