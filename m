Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5CA9756C7
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 17:18:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3383B10E09A;
	Wed, 11 Sep 2024 15:18:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NbZFbo77";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D4DC10E09A
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 15:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726067920; x=1757603920;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gwZ3O9+seann8Fcp4KWanWse+muK35t7E+cSfAtYB0E=;
 b=NbZFbo774skxE67w6T2te6brwhAH4BSO3bkPBP7oaGtg4296lD3wCwmZ
 43/5HsgEDAA5wON9I++g20tUtfTMWUeyhYieUt4zmqUHGKzC4hFYRYeDU
 x6XCeb6ns8A70UDiqNAT4ideWM+yJeOKWRJnsXMGV2SNwbIsh1gkVT2WH
 p7VzgNpU3rtjRWYGz+2E7OAKQnXzEsgvMmteeYPSOfToLyD8F1AgctNdt
 1goIi3zDAypaFmcDklX7i5+fcAQTD4Rd/Bj21Ypw9oDzQ09Q2+MzNNY86
 hr4pUB5Areizhv7bYzEmQwDGjFWksvMjHiewIcBQMyBt2YOfNMiNxoVf1 Q==;
X-CSE-ConnectionGUID: 3TdiW68hSLWcT3djkVs+4g==
X-CSE-MsgGUID: UQIuR4SRTK60+W+9QqHRQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="28612165"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="28612165"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 08:18:39 -0700
X-CSE-ConnectionGUID: lEor5uNtQC2HFqC2CLI2ZA==
X-CSE-MsgGUID: s7sHgNS6S06exLoHvisQiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67465176"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Sep 2024 08:18:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2024 18:18:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/psr: Fix PSR sink enable sequence
Date: Wed, 11 Sep 2024 18:18:36 +0300
Message-ID: <20240911151836.16800-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

According to the eDP spec, the source must first configure all
PSR related DPCD registers apart from the actual enable bit,
and only then set the enable bit. Split the current single DPCD
write to two to match the spec.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1a4ef231a53c..2b7c0c73f335 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -745,7 +745,7 @@ static void _psr_enable_sink(struct intel_dp *intel_dp,
 			     const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	u8 val = DP_PSR_ENABLE;
+	u8 val = 0;
 
 	if (crtc_state->has_sel_update) {
 		val |= DP_PSR_ENABLE_PSR2 | DP_PSR_IRQ_HPD_WITH_CRC_ERRORS;
@@ -765,7 +765,9 @@ static void _psr_enable_sink(struct intel_dp *intel_dp,
 
 	if (intel_dp->psr.entry_setup_frames > 0)
 		val |= DP_PSR_FRAME_CAPTURE;
+	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, val);
 
+	val |= DP_PSR_ENABLE;
 	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, val);
 }
 
-- 
2.44.2

