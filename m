Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F30944A19
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 13:09:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0CA210E90D;
	Thu,  1 Aug 2024 11:09:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nlyiZfxG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DF0210E90D
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2024 11:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722510550; x=1754046550;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FosSePS2ACpIFGTzmk/ZyUrIknuIXLxXUgWTBpLI1yE=;
 b=nlyiZfxGWlzoE7k1NvmtOlBv6DV7Bhjd89XZYjgxg11S4QGXqycavIDQ
 in/HuHz6KIQ8rF+J14qLGl/qLm06Gh9E+TdEO6DXlHY4BFwz4htZoeOpO
 r+VusiYGrWOXIO8CaGZxzZgnf7JvJEExGtLXDxTo69MpZb039dE97fx9X
 K39HLtuDJohSQwQPSjfnJBao8FUC56iYBNT9dlMfjHUG72WdfonAkASCB
 R7Sktfvx+VNkWdYA0TRFuxKatIKqhH+4eSCofkDznYgnRC4D8xMQIAsy1
 UnP4ohbafiXU7/OqKsDWf/liN/CMENULtfvyAAgtlAFlkPeEcDz0D3EeT Q==;
X-CSE-ConnectionGUID: ZG3SirVFQp2pvVo9Zuq9EA==
X-CSE-MsgGUID: CkUfd0IyTP67GtpL489a4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="20343563"
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="20343563"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 04:09:10 -0700
X-CSE-ConnectionGUID: 1CmJr5R0TeizKWw1cyt8fg==
X-CSE-MsgGUID: XadMf/cQRsqcgQFYf+YvQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="59323054"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmviesa005.fm.intel.com with ESMTP; 01 Aug 2024 04:09:08 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, haridhar.kalvala@intel.com,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH] drm/i915/display: correct dual pps handling for MTL_PCH+
Date: Thu,  1 Aug 2024 16:41:41 +0530
Message-Id: <20240801111141.574854-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
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

On the PCH side the second PPS was introduced in ICP+.Add condition
On MTL_PCH and greater platform also having the second PPS.

Note that DG1/2 south block only has the single PPS, so need
to exclude the fake DG1/2 PCHs

Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11488
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c | 3 +++
 drivers/gpu/drm/i915/display/intel_pps.c       | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 071668bfe5d1..6c3333136737 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -1449,6 +1449,9 @@ bxt_setup_backlight(struct intel_connector *connector, enum pipe unused)
 
 static int cnp_num_backlight_controllers(struct drm_i915_private *i915)
 {
+	if (INTEL_PCH_TYPE(i915) >= PCH_MTL)
+		return 2;
+
 	if (INTEL_PCH_TYPE(i915) >= PCH_DG1)
 		return 1;
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 42306bc4ba86..7ce926241e83 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -351,6 +351,9 @@ static int intel_num_pps(struct drm_i915_private *i915)
 	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
 		return 2;
 
+	if (INTEL_PCH_TYPE(i915) >= PCH_MTL)
+		return 2;
+
 	if (INTEL_PCH_TYPE(i915) >= PCH_DG1)
 		return 1;
 
-- 
2.34.1

