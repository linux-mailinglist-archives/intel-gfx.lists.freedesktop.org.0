Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5BA4B7037
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 17:35:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74ECA10E6CE;
	Tue, 15 Feb 2022 16:35:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A267F10E6CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 16:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644942954; x=1676478954;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nE95wAKEkGzd6R/jjs+tnxyHnPsxY+FezZ2Ygq9c9G0=;
 b=ClXg744z2vUPV+1CEayuYwYKIvJyu5OpGsgyNuPEYy0BoicmWet6UMmI
 jb1UCXgCI/hxvh7tXoA9StSdSSvuErXgPxct80Z2PMNDThdFrvLmxRjB3
 XruZRaxzkBBBhAvY8rhRBGDnrrolRCHEnG0eOkaTXZIReFtX6/LNhV4NW
 ippTSaTQqzYIIexDXxW9vUoAXKva0QsOm895F4pgnqwTh7mu9PeWCatXF
 mYS3hudIMtJQmr2F92BBMEG8/DHV5+2pOgZmQIF4T+rndF7ei5NMfazG3
 hCw85Pqxh49P2I/0VuhUy7lQ/5Cs8UsAEROLB7OK2jRGqUGT8URwVvQlF g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="311129816"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="311129816"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 08:35:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="502528393"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 08:35:53 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 08:35:45 -0800
Message-Id: <20220215163545.2175730-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Print PHY name properly on
 calibration error
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

We need to use phy_name() to convert the PHY value into a human-readable
character in the error message.

Fixes: a6a128116e55 ("drm/i915/dg2: Wait for SNPS PHY calibration during display init")
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 8573a458811a..8fd00de981fc 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -35,7 +35,7 @@ void intel_snps_phy_wait_for_calibration(struct drm_i915_private *i915)
 		if (intel_de_wait_for_clear(i915, ICL_PHY_MISC(phy),
 					    DG2_PHY_DP_TX_ACK_MASK, 25))
 			drm_err(&i915->drm, "SNPS PHY %c failed to calibrate after 25ms.\n",
-				phy);
+				phy_name(phy));
 	}
 }
 
-- 
2.34.1

