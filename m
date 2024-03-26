Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DD988CED4
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 21:31:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ACCC10F2C2;
	Tue, 26 Mar 2024 20:31:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cHtdMDqZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CD0310F2C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 20:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711485100; x=1743021100;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=G2GWjD15rgRzXnEA4MM9m+OOcEdb/11Ma3gWJaC1IB8=;
 b=cHtdMDqZ6NhXlyYfdN4DWFyPE4nn6EuSPQsuFJd8tsNB9pWeHmGGXc+V
 4eMrs05uRPS0SkqE0P5XEjdP5HwMdVH/wwBb0MjIxfpbnTRgqEviBPGC5
 tkcR/DFjVnPanWYSb880oxXZs+/U85Wstmf+k6s/k4I0u2EdsMZeLdegn
 m32RF86ixRL2iszi2xeCyk6nJsCKDTxMmrYCj9Y9i4YphLFBq1I4wGk23
 nuUCrIbjfYz/Moc5/1jaIgMCqd2t2XTeB93Bs06mykC+VOzytmlf5JBxW
 51Ni7RVB554vsHjDrFVicqsbNU/e7p7bFepQGj7xNCh2nmPfIJTlgAD0N A==;
X-CSE-ConnectionGUID: VcUViwKYSMSAasP4ik0lVA==
X-CSE-MsgGUID: od6FrZ8LTZu6Ux5/WrxPuQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6453435"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; 
   d="scan'208";a="6453435"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 13:31:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="827785432"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="827785432"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 26 Mar 2024 13:31:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Mar 2024 22:31:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915/cdclk: Drop tgl/dg2 cdclk bump hacks
Date: Tue, 26 Mar 2024 22:31:28 +0200
Message-ID: <20240326203128.10259-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240326203128.10259-1-ville.syrjala@linux.intel.com>
References: <20240326203128.10259-1-ville.syrjala@linux.intel.com>
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

No ever figured out why bumping the cdclk helped
with whatever issue we were having at the time.
Remove the hacks and start from scratch so that we
can actually see if any problems still remain.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ce60d10666a2..f0de66109933 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2800,25 +2800,6 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->dsc.compression_enable)
 		min_cdclk = max(min_cdclk, intel_vdsc_min_cdclk(crtc_state));
 
-	/*
-	 * HACK. Currently for TGL/DG2 platforms we calculate
-	 * min_cdclk initially based on pixel_rate divided
-	 * by 2, accounting for also plane requirements,
-	 * however in some cases the lowest possible CDCLK
-	 * doesn't work and causing the underruns.
-	 * Explicitly stating here that this seems to be currently
-	 * rather a Hack, than final solution.
-	 */
-	if (IS_TIGERLAKE(dev_priv) || IS_DG2(dev_priv)) {
-		/*
-		 * Clamp to max_cdclk_freq in case pixel rate is higher,
-		 * in order not to break an 8K, but still leave W/A at place.
-		 */
-		min_cdclk = max_t(int, min_cdclk,
-				  min_t(int, crtc_state->pixel_rate,
-					dev_priv->display.cdclk.max_cdclk_freq));
-	}
-
 	return min_cdclk;
 }
 
-- 
2.43.2

