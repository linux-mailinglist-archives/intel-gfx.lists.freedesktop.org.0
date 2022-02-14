Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3BA4B4576
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 10:18:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEED810E2B5;
	Mon, 14 Feb 2022 09:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2104110E2B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 09:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644830306; x=1676366306;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VtGM7t8bP4Ig1udolijPIR5eXP0/XCLSHYL9fQGs8Vc=;
 b=ENk3egmXG0HaZSAVOucfMFgMIIXjlu+l2Y2pcioDrtJsaaP6sOgFj6Wn
 SlV/YFEfxRIeU0sngWcukgoKxEVOxIKzlPvVrKLNUggzzWOmUfrvcR3Em
 xdbJkElds1as/NHuM/yCtIVjImjKxPGwF+MYxWNWDHPBtLS0rl+QtgaBY
 cCtrDYmQ6FWIsi00Ug0bwje1ggtixaKkKSBVpw4OnMMalZz8sr53PWgEy
 753EGnSrf6TjFa0pSLLnxSgJb8koJ6o8TlOTxy3Q0h2s7ePLPaFmg2Dxp
 pMzGsFakongXDH38aRMhdEUcY70ewAaySj9KllrQzNFG1BtyY6CyxNtA8 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="237459610"
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="237459610"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 01:18:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="624070427"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 14 Feb 2022 01:18:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Feb 2022 11:18:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Feb 2022 11:18:08 +0200
Message-Id: <20220214091811.13725-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220214091811.13725-1-ville.syrjala@linux.intel.com>
References: <20220214091811.13725-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Widen the QGV point mask
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

adlp+ adds some extra bits to the QGV point mask. The code attempts
to handle that but forgot to actually make sure we can store those
bits in the bw state. Fix it.

Cc: stable@vger.kernel.org
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Fixes: 192fbfb76744 ("drm/i915: Implement PSF GV point support")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 46c6eecbd917..0ceaed1c9656 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -30,19 +30,19 @@ struct intel_bw_state {
 	 */
 	u8 pipe_sagv_reject;
 
+	/* bitmask of active pipes */
+	u8 active_pipes;
+
 	/*
 	 * Current QGV points mask, which restricts
 	 * some particular SAGV states, not to confuse
 	 * with pipe_sagv_mask.
 	 */
-	u8 qgv_points_mask;
+	u16 qgv_points_mask;
 
 	unsigned int data_rate[I915_MAX_PIPES];
 	u8 num_active_planes[I915_MAX_PIPES];
 
-	/* bitmask of active pipes */
-	u8 active_pipes;
-
 	int min_cdclk;
 };
 
-- 
2.34.1

