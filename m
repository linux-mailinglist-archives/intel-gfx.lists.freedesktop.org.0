Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9534E249E
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 11:48:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D59310E277;
	Mon, 21 Mar 2022 10:48:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C1A910E277
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 10:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647859708; x=1679395708;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Bto11pxGpnA1Yu4pe54P09BR9N6SAUGKvPoPV6XwJgw=;
 b=L1l3zGsZQMkfHujcYzH7ZzPywt+yikzMGobDXVu3DkQJrEXGGPgfFITA
 eoI1lpNcJOe0omC+mzLm8+mzDxjIu5sEGgnqVoOsmopiTc1nl6evofjMO
 WCYz5kLOgWUvNfAcKLjYzJQYBY7orl/KsxVuVyhi38Nee8RtT1poLEPqd
 59W9CljkXS4FbMoXse1pAEB5uTt9EEvJZ1EiFgdHR0IHEdrZG66Pm71Om
 CZb9f3lKgYbBB/b8T+JlfmGKjxVIsVbI8nLoUJKwwV7c3ZhPCNGe3WK6H
 yJ8vVyJG4nlRXqQRTQGaOfV4pCHVS+akKlzLuXRABq7fjmpHhWe2XD19U g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="256340142"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="256340142"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 03:48:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="648521334"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga004.jf.intel.com with ESMTP; 21 Mar 2022 03:48:25 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Mar 2022 12:49:04 +0200
Message-Id: <20220321104904.12425-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/adl_p: Increase CDCLK by 15% if PSR2
 is used
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

We are currently getting FIFO underruns, in particular
when PSR2 is enabled. There seem to be no existing workaround
or patches, which can fix that issue(were expecting some recent
selective fetch update and DBuf bw/SAGV fixes to help,
which unfortunately didn't).
Current idea is that it looks like for some reason the
DBuf prefill time isn't enough once we exit PSR2, despite its
theoretically correct.
So bump it up a bit by 15%(minimum experimental amount required
to get it working), if PSR2 is enabled.
For PSR1 there is no need in this hack, so we limit it only
to PSR2 and Alderlake.

v2: - Added comment(Jose Souza)
    - Fixed 15% calculation(Jose Souza)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 26 ++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 8888fda8b701..92d57869983a 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2325,6 +2325,32 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 					dev_priv->max_cdclk_freq));
 	}
 
+
+	/*
+	 * HACK.  We are getting FIFO underruns, in particular
+	 * when PSR2 is enabled. There seem to be no existing workaround
+	 * or patches as of now.
+	 * Current idea is that it looks like for some reason the
+	 * DBuf prefill time isn't enough once we exit PSR2, despite its
+	 * theoretically correct.
+	 * So bump it up a bit by 15%(minimum experimental amount required
+	 * to get it working), if PSR2 is enabled.
+	 * For PSR1 there is no need in this hack, so we limit it only
+	 * to PSR2 and Alderlake.
+	 */
+	if (IS_ALDERLAKE_P(dev_priv)) {
+		struct intel_encoder *encoder;
+
+		for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
+			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+			if (intel_dp->psr.psr2_enabled) {
+				min_cdclk = DIV_ROUND_UP(min_cdclk * 115, 100);
+				break;
+			}
+		}
+	}
+
 	if (min_cdclk > dev_priv->max_cdclk_freq) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
-- 
2.24.1.485.gad05a3d8e5

