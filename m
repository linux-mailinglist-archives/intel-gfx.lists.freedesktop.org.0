Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7991CC35F85
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:08:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1AD610E757;
	Wed,  5 Nov 2025 14:08:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VjMO9iGC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7388910E22E;
 Wed,  5 Nov 2025 14:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762351707; x=1793887707;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cT/DsiB428o1sWm+9OQCGlJ4+i4t/mwav8HXM8OaofI=;
 b=VjMO9iGCVD1/w0ks14rKO33dL7CI7cDAVz8uzApZBqLD0sNSUe3M8xzh
 sOr6yrKoaJ/PP3sKC8/FQGyC5h4N0aAKyyGvrBKHOR6JPhSDiID9ZIXDk
 n64fifdHuCUZCQzwEFWI2PBJodRo+vtWGt9Pnw5p+JGBgA7RvWLDJfuVX
 btPPQFZkj4AXMC2fohDmTFTbcAIPcORQ8bFpvhDkkW7YcLDLh/B8Dm1kz
 SSlfjFXIGeV23xlWZpNgRbDYcWnLWtPXi3sIwcomXwR1c9uU6tb1EfH7B
 5P0zsmWBiVDK3VUQfsLDow4MrhX+5IKHL5WwNxAwOA6n6Wv1SSujmgVp5 Q==;
X-CSE-ConnectionGUID: EFBfl04KQaOi5dJ0uRPT8g==
X-CSE-MsgGUID: NTYxlveeTHiy8m+cG3y9og==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64348212"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64348212"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:13 -0800
X-CSE-ConnectionGUID: a/Q/F9e0QUmFU/Ymxd6hpA==
X-CSE-MsgGUID: zuqodFogTQC6BtLHOVldqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191562930"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.124.221.150])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:11 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: [CI 02/17] drm/i915/xe3p_lpd: Drop north display reset option
 programming
Date: Wed,  5 Nov 2025 11:06:51 -0300
Message-ID: <20251105140651.71713-21-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251105140651.71713-19-gustavo.sousa@intel.com>
References: <20251105140651.71713-19-gustavo.sousa@intel.com>
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

From: Matt Roper <matthew.d.roper@intel.com>

The NDE_RSTWRN_OPT has been removed on Xe3p platforms and reset option
programming is no longer necessary during display init.

Bspec: 68846, 69137
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
Link: https://patch.msgid.link/20251103-xe3p_lpd-basic-enabling-v3-2-00e87b510ae7@intel.com
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index fbfa823b6dce..74fcd9cfe911 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1438,6 +1438,9 @@ static void intel_pch_reset_handshake(struct intel_display *display,
 	i915_reg_t reg;
 	u32 reset_bits;
 
+	if (DISPLAY_VER(display) >= 35)
+		return;
+
 	if (display->platform.ivybridge) {
 		reg = GEN7_MSG_CTL;
 		reset_bits = WAIT_FOR_PCH_FLR_ACK | WAIT_FOR_PCH_RESET_ACK;
-- 
2.51.0

