Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DF59BF8D9
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 23:04:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE0D010E79E;
	Wed,  6 Nov 2024 22:04:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M7plEQO5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B48E010E782
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2024 22:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730930655; x=1762466655;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8DfbPbKikWrT8gMngMKJiEbun4xPElFxxSc40kq5RZw=;
 b=M7plEQO5WJEOulNJuCOtqMEFHCgWNAnfwq9NuOPvG3BB3xLvimusZgVM
 UvAERbVhCxydx7WskOXAWHHlXh66byv20aA+2ks/qEWXcC3RzC+B6mPPT
 Clm0gfRPpmtKhuEWeJYMeX3NC1fnzksLR3txET8Wl+eJEGzdnw56eo8Cv
 7NgYF1CecHwzJrv7Uj/r8yFbgWKF6143IVE/X3vsa+/Eqf1fRALyi3vDt
 l0GTPfHkDZS3nccbTlHmuAfHu0Na1CgaT9ciB1xQsdRrQiBp0VASeqC1A
 y6Iyeur56Vy/hG1MNawbut/KyQnVeBsp1bk3pncDsVL1tC1bsVmxpKjLX w==;
X-CSE-ConnectionGUID: pRgYFMKmReOc2gv+ZJQ7uw==
X-CSE-MsgGUID: bjcfh9pZQPOvnEy/ZMSpzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="42157321"
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="42157321"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 14:04:09 -0800
X-CSE-ConnectionGUID: WMODeUmLQSyP8ZnrdIeVjQ==
X-CSE-MsgGUID: bU/p6WfFQiWlfa31OmXnBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="84879556"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Nov 2024 13:59:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Nov 2024 23:59:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/8] drm/i915/pps: Spell out the eDP spec power sequencing
 delays a bit more clearly
Date: Wed,  6 Nov 2024 23:58:56 +0200
Message-ID: <20241106215859.25446-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
References: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
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

We determine the "spec" eDP power sequencing delays
by refercing some max values from the eDP spec. Write
out each number from the spec explicitly instead
of precomputing the final number (that's the job of
the computer). Makes it a bit easier to see what the
supposed spec defined numbers actually are.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index ed52f84d4cf3..6946ba0004eb 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1512,11 +1512,11 @@ static void pps_init_delays_spec(struct intel_dp *intel_dp,
 
 	/* Upper limits from eDP 1.3 spec. Note that we use the clunky units of
 	 * our hw here, which are all in 100usec. */
-	spec->power_up = 210 * 10; /* T1+T3 */
+	spec->power_up = (10 + 200) * 10; /* T1+T3 */
 	spec->backlight_on = 50 * 10; /* no limit for T8, use T7 instead */
 	spec->backlight_off = 50 * 10; /* no limit for T9, make it symmetric with T8 */
 	spec->power_down = 500 * 10; /* T10 */
-	spec->power_cycle = 510 * 10; /* T11+T12 */
+	spec->power_cycle = (10 + 500) * 10; /* T11+T12 */
 
 	intel_pps_dump_state(intel_dp, "spec", spec);
 }
-- 
2.45.2

