Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBD2C35FAC
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:08:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47A1610E76C;
	Wed,  5 Nov 2025 14:08:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HzZg/8pa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCABD10E76B;
 Wed,  5 Nov 2025 14:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762351731; x=1793887731;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AMS5ZKKf3OECTbX3xy/onJAip5tbANuxBk5zf47Nqj8=;
 b=HzZg/8paB/DSlA5cLn9I2XOD+LwbcQ+fHoNoTeNfMhl7elsFJP3YLAc7
 ofqPe+lOTUr0DX5Mc6KJd11dPdW96mPUyEDeptNMUBHvEKLzi20L0OFDY
 Kr0pPT39nLfXLGZbw+NWJzH8vlc6actLKKVsOsHhjyBcjiQhGzRhJkv/8
 BpaYILfybeNpvtIG9dSKQ/k5t5dxbdQ8PJDyWdfmhklfVHf3ORf+hKfH3
 FgS7PV0nZWT+f1DBNGJ17kgW9lk6nTNdRo920LKFSA9iuBFW2PKAtLQS+
 VM2iZPh4RugjCT7p2QTJygyR3pB/N69YhCOvBk0UaA0+YV2Fw1M7xKxxD w==;
X-CSE-ConnectionGUID: MeEtJKaZRLORNnFsIWYSqA==
X-CSE-MsgGUID: CaqCCI/+SFablU6l+JGVsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64348432"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64348432"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:33 -0800
X-CSE-ConnectionGUID: NfgJXMpbRd6I7hCXTDOmNQ==
X-CSE-MsgGUID: nOU9YC1ZTuCLZ1K5tF29vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191563024"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.124.221.150])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:32 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: [CI 16/17] drm/i915/xe3p_lpd: Always apply WaWmMemoryReadLatency
Date: Wed,  5 Nov 2025 11:07:05 -0300
Message-ID: <20251105140651.71713-35-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251105140651.71713-19-gustavo.sousa@intel.com>
References: <20251105140651.71713-19-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

When reading memory latencies for watermark calculations, previous
display releases instructed to apply an adjustment of adding a certain
value (e.g. 6us) to all levels when the level 0's memory latency read
from hardware was zero.

For Xe3p_LPD, the instruction is to always use 6us for level 0 and to
add that value to the other levels.  Add the necessary code in
sanitize_wm_latency() so that WaWmMemoryReadLatency is always applied
for Xe3p_LPD and beyond.

v2:
  - Rebased after addition of prep patch "drm/i915/wm: Reorder
    adjust_wm_latency() for Xe3_LPD" (dropped in v3).
v3:
  - Back to the simpler approach of doing the 'wm[0] = 0' step without
    modifying the rest of the code, and that inside
    sanitize_wm_latency(). (Matt Roper, Ville)

Bspec: 68986, 69126
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Link: https://patch.msgid.link/20251103-xe3p_lpd-basic-enabling-v3-20-00e87b510ae7@intel.com
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index c888b0896d89..95941e878bf1 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3184,6 +3184,13 @@ static void sanitize_wm_latency(struct intel_display *display)
 	u16 *wm = display->wm.skl_latency;
 	int level, num_levels = display->wm.num_levels;
 
+	/*
+	 * Xe3p and beyond should ignore level 0's reported latency and
+	 * always apply WaWmMemoryReadLatency logic.
+	 */
+	if (DISPLAY_VER(display) >= 35)
+		wm[0] = 0;
+
 	/*
 	 * If a level n (n > 1) has a 0us latency, all levels m (m >= n)
 	 * need to be disabled. We make sure to sanitize the values out
-- 
2.51.0

