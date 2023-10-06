Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 841F57BB6EB
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 13:48:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E893510E0D2;
	Fri,  6 Oct 2023 11:48:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DA3810E0D2
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 11:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696592892; x=1728128892;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=04/cmMpC/RYQghbj4cX4s3efw+i37izm//bT1QQL1T8=;
 b=ljMwoHBoXGAU9/7XY/9ABDds8yWmAKq4SbJTOA6AeiDkvd4CbZLeS2I4
 HegTcVLaYIaZ2K7eSJjTxrwNW2Z+ivdmgXcTLOWbKElo1jcTYpp3HkoXH
 6wUClVpAhdG2GfWSs+3mVqAhfJg/AKSN5uV8f7vXOCtIj7jbp3xX57ILc
 JxB+bkMOmo91InPyynXFj+a0+TPSTF+/+Pdi4SYDGmbk32B3Ba4VCiw+6
 HkKszUEVvH9PLt3IpW5C3WYYd/yCv2Dp7y5uZppjdOcU9psjkLWHOMat5
 UGVJD/iejWsXh6m7d7GZfr7ZqALh2TLONiReKidqoq5K08uORIDO+x0ek A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="364013508"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="364013508"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 04:48:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="728817028"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728817028"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga006.jf.intel.com with ESMTP; 06 Oct 2023 04:48:09 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 14:42:10 +0300
Message-Id: <20231006114210.535229-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/lnl: Remove watchdog timers for PSR
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

Currently we are not using watchdog timers for PSR/PSR2.
The patch disables these timers so they are not in use.

BSpec: 69895

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 850b11f20285..13b58dceb2bf 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -672,11 +672,15 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 max_sleep_time = 0x1f;
-	u32 val = EDP_PSR_ENABLE;
+	u32 val = 0;
 
-	val |= EDP_PSR_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
 
-	val |= EDP_PSR_MAX_SLEEP_TIME(max_sleep_time);
+	if (DISPLAY_VER(dev_priv) < 20) {
+		val =  EDP_PSR_ENABLE;
+		val |= EDP_PSR_MAX_SLEEP_TIME(max_sleep_time);
+	}
+
+	val |= EDP_PSR_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
 	if (IS_HASWELL(dev_priv))
 		val |= EDP_PSR_MIN_LINK_ENTRY_TIME_8_LINES;
 
@@ -1398,10 +1402,16 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	 * runtime_pm besides preventing  other hw tracking issues now we
 	 * can rely on frontbuffer tracking.
 	 */
-	mask = EDP_PSR_DEBUG_MASK_MEMUP |
-	       EDP_PSR_DEBUG_MASK_HPD |
-	       EDP_PSR_DEBUG_MASK_LPSP |
-	       EDP_PSR_DEBUG_MASK_MAX_SLEEP;
+	if (DISPLAY_VER(dev_priv) >= 20)
+		mask = EDP_PSR_DEBUG_MASK_MEMUP |
+		       EDP_PSR_DEBUG_MASK_HPD |
+		       EDP_PSR_DEBUG_MASK_LPSP;
+	else
+		mask = EDP_PSR_DEBUG_MASK_MEMUP |
+		       EDP_PSR_DEBUG_MASK_HPD |
+		       EDP_PSR_DEBUG_MASK_LPSP |
+		       EDP_PSR_DEBUG_MASK_MAX_SLEEP;
+
 
 	/*
 	 * No separate pipe reg write mask on hsw/bdw, so have to unmask all
-- 
2.34.1

