Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E87DF9BF8D6
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 23:04:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B73D710E794;
	Wed,  6 Nov 2024 22:04:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eYvL7/q+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1E0B10E784
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2024 22:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730930655; x=1762466655;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ifbOk6oordk8aMah7bf3M3sZmRa3wc7uzHY4m7c6WMw=;
 b=eYvL7/q+GvOykx/XERvn5dGxfAKMtrq4MJyDz3yU3VqZk3bI7seIDleU
 ZNpfoqGtbzHV9Zl74ISi81WpnnF6HaGg6g1ttmUM/7nEYkQSi9OcL9qx9
 hrN4pIlh+j3akU7mkSO7JhTiDlvrSGhokFGS4lC9boW2sMU++k4GF9d8C
 vL1r8CIcYyU2izkkQLqUyleBKODC7wwdLDJbUIkAKkiBn1mZfigaI3PnY
 +6UuG+VSUZoD+fakkqDVUM5NTPMyhyjh/upFm3/5vbhUqsfbHVP/5/BuS
 WvyOFXk9VK6Ewhs54j7VWevdK3/bCF7tazyNyVSSP6rVtEVJeGWJ4mbwu w==;
X-CSE-ConnectionGUID: Bcu/k5QVS1yAsaU0qCe5+w==
X-CSE-MsgGUID: ZyM75PEbTr+1fbpo7PyjdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="42157322"
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="42157322"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 14:04:09 -0800
X-CSE-ConnectionGUID: dJnjo2NPTbWjFjFU1EF3XA==
X-CSE-MsgGUID: 3qjGNnW+Q+2PnF4JrwHNfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="84879559"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Nov 2024 13:59:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Nov 2024 23:59:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/8] drm/i915/pps: Extract msecs_to_pps_units()
Date: Wed,  6 Nov 2024 23:58:57 +0200
Message-ID: <20241106215859.25446-7-ville.syrjala@linux.intel.com>
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

Replace all the hand rolled *10 stuff with something a bit
more descriptive (msecs_to_pps_units()).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 23 ++++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 6946ba0004eb..5be2903c6aaf 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1462,6 +1462,12 @@ static bool pps_delays_valid(struct intel_pps_delays *delays)
 		delays->power_down || delays->power_cycle;
 }
 
+static int msecs_to_pps_units(int msecs)
+{
+	/* PPS uses 100us units */
+	return msecs * 10;
+}
+
 static void pps_init_delays_bios(struct intel_dp *intel_dp,
 				 struct intel_pps_delays *bios)
 {
@@ -1494,7 +1500,7 @@ static void pps_init_delays_vbt(struct intel_dp *intel_dp,
 	 * seems sufficient to avoid this problem.
 	 */
 	if (intel_has_quirk(display, QUIRK_INCREASE_T12_DELAY)) {
-		vbt->power_cycle = max_t(u16, vbt->power_cycle, 1300 * 10);
+		vbt->power_cycle = max_t(u16, vbt->power_cycle, msecs_to_pps_units(1300));
 		drm_dbg_kms(display->drm,
 			    "Increasing T12 panel delay as per the quirk to %d\n",
 			    vbt->power_cycle);
@@ -1510,13 +1516,12 @@ static void pps_init_delays_spec(struct intel_dp *intel_dp,
 
 	lockdep_assert_held(&display->pps.mutex);
 
-	/* Upper limits from eDP 1.3 spec. Note that we use the clunky units of
-	 * our hw here, which are all in 100usec. */
-	spec->power_up = (10 + 200) * 10; /* T1+T3 */
-	spec->backlight_on = 50 * 10; /* no limit for T8, use T7 instead */
-	spec->backlight_off = 50 * 10; /* no limit for T9, make it symmetric with T8 */
-	spec->power_down = 500 * 10; /* T10 */
-	spec->power_cycle = (10 + 500) * 10; /* T11+T12 */
+	/* Upper limits from eDP 1.3 spec */
+	spec->power_up = msecs_to_pps_units(10 + 200); /* T1+T3 */
+	spec->backlight_on = msecs_to_pps_units(50); /* no limit for T8, use T7 instead */
+	spec->backlight_off = msecs_to_pps_units(50); /* no limit for T9, make it symmetric with T8 */
+	spec->power_down = msecs_to_pps_units(500); /* T10 */
+	spec->power_cycle = msecs_to_pps_units(10 + 500); /* T11+T12 */
 
 	intel_pps_dump_state(intel_dp, "spec", spec);
 }
@@ -1582,7 +1587,7 @@ static void pps_init_delays(struct intel_dp *intel_dp)
 	 * HW has only a 100msec granularity for power_cycle so round it up
 	 * accordingly.
 	 */
-	final->power_cycle = roundup(final->power_cycle, 100 * 10);
+	final->power_cycle = roundup(final->power_cycle, msecs_to_pps_units(100));
 }
 
 static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd)
-- 
2.45.2

