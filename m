Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E193EADFC94
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 06:44:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46E6310E13B;
	Thu, 19 Jun 2025 04:44:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VmJACNm+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B78B10E13B;
 Thu, 19 Jun 2025 04:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750308276; x=1781844276;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f0oLDjxHkUWeUq2lbAZSUEBEVnp4dL74A0YGdNPbRss=;
 b=VmJACNm+sAgFVKsg0fSaILaY75EdYpNlA8Znd3KAiOFZeHnDwrUsHWDN
 w9RwlghnrIaOBval86GUed+k8CwPremRKRg3GIlN5WIwHBZsjn7UdlVMP
 HONVGkxp3N37e5pAM/CD+0+6xznhN2GIaK95iIzTvprKgzxy4pCVeKKMZ
 gM/ebqMLDPpx1D9xU2AxAU+YOlK+k1sfH7OiLoJ2Ve86Ftu1FiXvsVU9q
 eZplV8nmPR0vBy877MxkG1HVxepvHw2Yf5tbg0boJgaF7sUiGxE5ETK9M
 d84prHg2oDS0JoSUlg8vdZm770YFiKtao0PPNYon5w4NBMvGP/uNxPp/2 A==;
X-CSE-ConnectionGUID: lrZoeEXfTh+LEX/YjuvHYQ==
X-CSE-MsgGUID: AQqYngKVScKzWQSiGuru+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52425424"
X-IronPort-AV: E=Sophos;i="6.16,247,1744095600"; d="scan'208";a="52425424"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 21:44:35 -0700
X-CSE-ConnectionGUID: O8ouPItARi+x2GzoqOxBXQ==
X-CSE-MsgGUID: nYq5cg0IR8+mOFxN/wYziQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,247,1744095600"; d="scan'208";a="150902344"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa008.fm.intel.com with ESMTP; 18 Jun 2025 21:44:33 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: dibin.moolakadan.subrahmanian@intel.com, ankit.k.nautiyal@intel.com,
 imre.deak@intel.com, chaitanya.kumar.borah@intel.com
Subject: [PATCH v2] drm/xe/display: read PCON capability only when present
Date: Thu, 19 Jun 2025 09:56:29 +0530
Message-Id: <20250619042629.3980244-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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

Avoid reading the PCON capabilities redundantly on non-branch devices.

v2:
 - Make commit description more accurate. (Imre)
 - Clear intel_dp->pcon_dsc_dpcd irrespective of presense of PCON. (Imre)

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 277b40b13948..f48912f308df 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3726,6 +3726,9 @@ static void intel_dp_get_pcon_dsc_cap(struct intel_dp *intel_dp)
 
 	memset(intel_dp->pcon_dsc_dpcd, 0, sizeof(intel_dp->pcon_dsc_dpcd));
 
+	if (!drm_dp_is_branch(intel_dp->dpcd))
+		return;
+
 	if (drm_dp_dpcd_read(&intel_dp->aux, DP_PCON_DSC_ENCODER,
 			     intel_dp->pcon_dsc_dpcd,
 			     sizeof(intel_dp->pcon_dsc_dpcd)) < 0)
-- 
2.25.1

