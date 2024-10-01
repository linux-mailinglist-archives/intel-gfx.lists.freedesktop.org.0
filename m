Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDE598BC1B
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 14:32:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9514210E2E8;
	Tue,  1 Oct 2024 12:32:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IVRaeUN1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11A6F10E2E8
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2024 12:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727785953; x=1759321953;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ebkbEoBD0bmuAG/mP8rPe8vF/TiVHwdgerwLYHIe22U=;
 b=IVRaeUN1dfkN+dC0tQUGK3gdFelaCWMKod3knAJU/L5No/Y1xyav1gf2
 SrUE/q4irO5kcjUGYB5di8vK/JAsDJgQeZe62kh3QvXN563mJA9HFwjO/
 9VZrnmTxbMdIPTFuxdk3zUhNI6ndKKyOHpRl5Z0qIUDu6xtyeTmlJLHEr
 qqvufTZRfBhYHUAAK9muqFV4aXLnPUyjAMVoHLvd8Hrlaesl3P9ezoR2c
 hxE3SbMCndB5Hd/Ur1xMIFZuLQPCA+gTrrhUWSYAj190rRpz1I/HIobOe
 IrqqPfwlS1wdKXenh3Ww2IvvuXCOg/vRoxgj9UgohpvOcmhXUm8wliUI6 w==;
X-CSE-ConnectionGUID: MfptCAv4STiRKnCJpfQ3kQ==
X-CSE-MsgGUID: ZENqSrFITzmPjvaTVp83rg==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="30624383"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="30624383"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 05:32:33 -0700
X-CSE-ConnectionGUID: cWh3IaJjRROAMSuixzhJFA==
X-CSE-MsgGUID: qOdbozV6Qhyz87V/EEUnuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="74448035"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 05:32:32 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 1/3] drm/i915/dp: Initialize the source OUI write timestamp
 always
Date: Tue,  1 Oct 2024 15:32:57 +0300
Message-ID: <20241001123259.616486-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

If the source OUI DPCD register value matches the expected Intel OUI
value, the write timestamp doesn't get updated leaving it at the 0
initial value if the OUI wasn't written before. This can lead to an
incorrect wait duration in intel_dp_wait_source_oui(), since jiffies is
not inited to 0 in general (on a 32 bit system INITIAL_JIFFIES is set to
5 minutes ahead of wrap-around). Fix this by intializing the write
timestamp in the above case as well.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 16dc1d26d2a25..b7661529f1927 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3349,8 +3349,11 @@ intel_edp_init_source_oui(struct intel_dp *intel_dp, bool careful)
 		if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(buf)) < 0)
 			drm_err(&i915->drm, "Failed to read source OUI\n");
 
-		if (memcmp(oui, buf, sizeof(oui)) == 0)
+		if (memcmp(oui, buf, sizeof(oui)) == 0) {
+			/* Assume the OUI was written now. */
+			intel_dp->last_oui_write = jiffies;
 			return;
+		}
 	}
 
 	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0)
-- 
2.44.2

