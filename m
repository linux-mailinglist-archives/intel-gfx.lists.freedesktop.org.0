Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBDFADEB41
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 14:04:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 627F610E13E;
	Wed, 18 Jun 2025 12:04:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cXpnADcJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5F4410E13E;
 Wed, 18 Jun 2025 12:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750248243; x=1781784243;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AT4ZxFz2MTqBjL0LY4MOfFXxYj+zaGk1J6ZJXreqEJQ=;
 b=cXpnADcJTpSjZg4R0COKR8FNb5eipynkFYP2ZMrAJl8KD2jr2L439axq
 FPtysrDvwvMZiz3+A53/ec8r5U44xZQFhndXopIYMJstR7T8XTry7sQdF
 ZPhwaNXRXI4GdT2igq6bvf1nUHTD+uTVnjoXIyReJFPuFEkzjmwn9klJw
 HhQXo01M3aHSI7gy7tdjTNkUBfIeZPqVL5edXZ4eGKow2RYRv9VE58Gxq
 W9qWvpry1sWcdNddHlDJYkafpKcIlqhWJb6+OPHGyatF4OX6qpI+KqDE2
 kz0E+hBu+t3YMdoJ5AFRoI1KWyugXpFmkoTRUFoWIOdMH/cl8qVlDS/Vd g==;
X-CSE-ConnectionGUID: mr9n3lntT6SOQXDIxH1GnQ==
X-CSE-MsgGUID: 89egrin7QbyJF5xURoaY/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52437715"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="52437715"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 05:04:02 -0700
X-CSE-ConnectionGUID: OiW5smrrRfK7ikatrOPSDg==
X-CSE-MsgGUID: 36b6GqXNQ+ChQV/uhs8NZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="149919275"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa008.fm.intel.com with ESMTP; 18 Jun 2025 05:03:58 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: dibin.moolakadan.subrahmanian@intel.com, ankit.k.nautiyal@intel.com,
 imre.deak@intel.com, chaitanya.kumar.borah@intel.com
Subject: [PATCH] drm/xe/display: read PCON capability only when present
Date: Wed, 18 Jun 2025 17:15:53 +0530
Message-Id: <20250618114553.3974479-1-chaitanya.kumar.borah@intel.com>
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

Read PCON capabilities only when it is present. This will prevent
spurious DCPD read failures.

[drm] *ERROR* Failed to read DPCD register 0x92

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 277b40b13948..8a1c2a37a56b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5681,7 +5681,8 @@ intel_dp_update_dfp(struct intel_dp *intel_dp,
 		    intel_dp->dfp.max_tmds_clock,
 		    intel_dp->dfp.pcon_max_frl_bw);
 
-	intel_dp_get_pcon_dsc_cap(intel_dp);
+	if (drm_dp_is_branch(intel_dp->dpcd))
+		intel_dp_get_pcon_dsc_cap(intel_dp);
 }
 
 static bool
-- 
2.25.1

