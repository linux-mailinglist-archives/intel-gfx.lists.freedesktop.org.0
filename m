Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A927DD135
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 17:08:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A6AF10E562;
	Tue, 31 Oct 2023 16:08:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5842B10E562
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 16:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698768484; x=1730304484;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ARIOz1uRSILfIncqilUxnTQVM+Qph8vY5+N3A0/En5s=;
 b=Yq8fc0p5NRi4VXUM+4MDu7FwcbhxbDPxE2zmDdswzQl62W7MWH0bXJrq
 0PAWlw7bkgaBW6Ktdepq7rwMcvIwr58kYlQyr1dNwZzk7/QjCZCOCW9m2
 +nd6YHHkhNwMa0a9Er980L5jZS2lk6j7LdAuvU4yfrLTSPHPK6z2beB//
 ZuckKpVqcQ/Ire3WsL4aTNK1s1bSsxaanCLqRhnrd9AlR7QBdho8uYW+t
 i/UpARujruhOBrHLs6NfgV8TRIfDjgg81er1Whk6zAvCkskV3mGQTtTLF
 injvJkKcVnnxnSosNtx9ZtLDYsXBasKQIaWAmdH7u2bZ5EF+rSxNcu1PS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="385506026"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="385506026"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 09:08:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="754186133"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="754186133"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 31 Oct 2023 09:08:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 31 Oct 2023 18:08:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Oct 2023 18:08:00 +0200
Message-ID: <20231031160800.18371-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Bump GLK CDCLK frequency when driving
 multiple pipes
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

On GLK CDCLK frequency needs to be at least 2*96 MHz when accessing
the audio hardware. Currently we bump the CDCLK frequency up
temporarily (if not high enough already) whenever audio hardware
is being accessed, and drop it back down afterwards.

With a single active pipe this works just fine as we can switch
between all the valid CDCLK frequencies by changing the cd2x
divider, which doesn't require a full modeset. However with
multiple active pipes the cd2x divider trick no longer works,
and thus we end up blinking all displays off and back on.

To avoid this let's just bump the CDCLK frequency to >=2*96MHz
whenever multiple pipes are active. The downside is slightly
higher power consumption, but that seems like an acceptable
tradeoff. With a single active pipe we can stick to the current
more optiomal (from power comsumption POV) behaviour.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9599
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 6d7ba4d0f130..3ddf4201e224 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2750,6 +2750,18 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
 	for_each_pipe(dev_priv, pipe)
 		min_cdclk = max(cdclk_state->min_cdclk[pipe], min_cdclk);
 
+	/*
+	 * Avoid glk_force_audio_cdclk() causing excessive screen
+	 * blinking when multiple pipes are active by making sure
+	 * cdclk frequency is always high enough for audio. With a
+	 * single active pipe we can always change CDCLK frequency
+	 * by changing the cd2x divider (see glk_cdclk_table[]) and
+	 * thus a full modeset won't be needed then.
+	 */
+	if (DISPLAY_VER(dev_priv) == 10 && cdclk_state->active_pipes &&
+	    !is_power_of_2(cdclk_state->active_pipes))
+		min_cdclk = max(2 * 96000, min_cdclk);
+
 	if (min_cdclk > dev_priv->display.cdclk.max_cdclk_freq) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
-- 
2.41.0

