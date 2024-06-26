Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D981D917B0F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 10:35:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3517010E7C1;
	Wed, 26 Jun 2024 08:35:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N//+bEoX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C204810E7BF;
 Wed, 26 Jun 2024 08:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719390941; x=1750926941;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3b8tybnh3wfXdFttrOGyHh3QtObJbZ3GWNfdF/SRQKY=;
 b=N//+bEoXthUbT0hbAKqcdiBBOOe7ZRyFrqhBdIOYyrSr5bW0cnjsJ2NG
 lr5bsvXUJkRhnShDy0lSxY3/VfMZb//+E3MbGX0ZDkdDt6Vqy4ZSz6wtc
 WSTALm1zMOLo5Xs3lzBkOhpcumMbmrZZ+It/XUR0PMijHCIE+uiWqYV7F
 vqCnY9gHSrJLEfm/rrutW7tn8YrZrDFfen1lnnqXV4+oKlyLi0nyWKzrq
 kYvgfiijFoT6nvlCDpqBRqbVcY3KC/fbj0D2GIdF/SbyQOfbNQvwpLY19
 1Hknej5n+tv+NHUhi4y+nQ9rh2EyS6F/bwXEkybBfLf9kM/uA5kG+r17R w==;
X-CSE-ConnectionGUID: 370Ot245T/Sn5vaO4o4cog==
X-CSE-MsgGUID: HWmQa52PRjO2pGqRwcoJgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="16673644"
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="16673644"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 01:35:40 -0700
X-CSE-ConnectionGUID: Ajc+NeHAQBOfsRcMsY0ogA==
X-CSE-MsgGUID: KWiE5EoTRUKusgWHLXGbqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="67144193"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 01:35:39 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH] drm/i915/dp: Wait more before rearming FIFO underrun during
 retrain
Date: Wed, 26 Jun 2024 14:06:24 +0530
Message-Id: <20240626083624.4042544-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
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

During Link re-training reporting underrun is disabled and then
renabled after re-training is completed. For BMG its seen that we get
FIFO underrun just after the retraining is completed and the underrun
reporting is re-enabled.
Add one more intel_crtc_wait_for_next_vblank before re-arming the
underruns.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3903f6ead6e6..25af51499383 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5325,7 +5325,12 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
-		/* Keep underrun reporting disabled until things are stable */
+		/*
+		 * Keep underrun reporting disabled until things are stable.
+		 * Wait for some more time, as we see (at least on BMG) that
+		 * underrun gets reported just after the reporting is enabled.
+		 */
+		intel_crtc_wait_for_next_vblank(crtc);
 		intel_crtc_wait_for_next_vblank(crtc);
 
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
-- 
2.40.1

