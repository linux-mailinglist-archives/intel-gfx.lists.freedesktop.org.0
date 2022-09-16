Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDA65BB14D
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 18:52:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8324E10E4DF;
	Fri, 16 Sep 2022 16:52:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E20C10E4DF
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 16:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663347134; x=1694883134;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Wgih7+boqkfNKcIsBPbWYDyCwJHfwOOJKHQwZtftljc=;
 b=m/NtjoGYT3U5aYjnogv6Njig+9sFP3OGnj2VNV8dY/3mNIRYfGUsGNBd
 ZNIMCF1Vel2w6adtMMicuu1kyS1umqGDSLAXydUmCrco3+136lsWqzDO4
 3bES9crld0BlX4Y7jnD3bFJ2EzWszoYcVpbQMvryYnKlDGyXPO15K5LTV
 K/zo1OQbXNvRQUCDk6dMnwb8OX++OInZKbp8l5LfjodUbw78ac/iBGAr4
 ORLgCSDh14QXQHYBARpjHgIqwrF4BRR8T2MeaaQqklK6C56f8SPgkvLH/
 S9bM1qt88M4fHidtNNOv3q+Vj+36cG7soyxbhOfREQWMtK5HaMwLMQ1Ii A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="300394421"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="300394421"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 09:52:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="595313520"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 16 Sep 2022 09:52:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Sep 2022 19:52:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 19:52:04 +0300
Message-Id: <20220916165206.1499-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Nuke stale plane cdclk ratio
 FIXMEs
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

The plane ratio stuff got implemented in
commit bb6ae9e653dc ("drm/i915: Allow planes to
declare their minimum acceptable cdclk") so these
FIXMEs have no business being here.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ed05070b7307..a12e86d92783 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2464,10 +2464,6 @@ static int bdw_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
 	if (min_cdclk < 0)
 		return min_cdclk;
 
-	/*
-	 * FIXME should also account for plane ratio
-	 * once 64bpp pixel formats are supported.
-	 */
 	cdclk = bdw_calc_cdclk(min_cdclk);
 
 	cdclk_state->logical.cdclk = cdclk;
@@ -2534,10 +2530,6 @@ static int skl_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
 
 	vco = skl_dpll0_vco(cdclk_state);
 
-	/*
-	 * FIXME should also account for plane ratio
-	 * once 64bpp pixel formats are supported.
-	 */
 	cdclk = skl_calc_cdclk(min_cdclk, vco);
 
 	cdclk_state->logical.vco = vco;
-- 
2.35.1

