Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDF79E3EFA
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 17:01:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30EE610E500;
	Wed,  4 Dec 2024 16:00:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FijsFial";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0DB810E4F9;
 Wed,  4 Dec 2024 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733328055; x=1764864055;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JUyOMHXp1km4DrKccFna4uuDZBSg4swlgG6PH4VC7zM=;
 b=FijsFialSsZEGE4qH0mPOuNwFNvOEmNzPw47Y0fInyReE2a/Y4HIaoPP
 UpC4yjprmffZCPJWd+Cn4Ajh3WNEx7RnHhflZA03UTZcUSu9XP4nhgj98
 NLOpQZW7Dmg/2w7q+JxPmZJqsj+bs1MU3awAM03p7pLgV6BboQbmyf7C8
 P+Fdbg5UpuZ8wXsbCkJlR9mStNBbeUEPtGQYCDiNUWDyqWRsiHOs2j/3X
 +73WnOPTTd4o2ZlPkUJvX9t/IHq4N+HWBy1JXo1lWaPGVSP61qxhyvLUv
 MLeJMhKxT5YQ8Y/D8DdcMo0CCeKReTa2tcPh8tC/BxYFtmuAXt7UWfTZo g==;
X-CSE-ConnectionGUID: 0lREvTJxSrKesbNUeTxHMw==
X-CSE-MsgGUID: 1xthXRalQ+yo3l9zeguuCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="44075748"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44075748"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 08:00:54 -0800
X-CSE-ConnectionGUID: H8nTe9o4T92JHQjqG8Eb3Q==
X-CSE-MsgGUID: YBctM5IwSgOjkyIoo1DWUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93485487"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 08:00:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Paul Menzel <pmenzel@molgen.mpg.de>
Subject: [PATCH] drm/i915/pps: debug log the remaining power cycle delay to
 wait
Date: Wed,  4 Dec 2024 18:00:48 +0200
Message-Id: <20241204160048.2774419-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

While pps_init_delays() debug logs the power cycle delay, also debug log
the actual remaining time to wait in wait_panel_power_cycle().

Note that this still isn't the full picture; the power sequencer may
still wait after this one.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13007
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Cc: Paul Menzel <pmenzel@molgen.mpg.de>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 7784b3b760db..bfda52850150 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -668,23 +668,24 @@ static void wait_panel_power_cycle(struct intel_dp *intel_dp)
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	ktime_t panel_power_on_time;
-	s64 panel_power_off_duration;
-
-	drm_dbg_kms(display->drm,
-		    "[ENCODER:%d:%s] %s wait for panel power cycle\n",
-		    dig_port->base.base.base.id, dig_port->base.base.name,
-		    pps_name(intel_dp));
+	s64 panel_power_off_duration, remaining;
 
 	/* take the difference of current time and panel power off time
 	 * and then make panel wait for power_cycle if needed. */
 	panel_power_on_time = ktime_get_boottime();
 	panel_power_off_duration = ktime_ms_delta(panel_power_on_time, intel_dp->pps.panel_power_off_time);
 
+	remaining = max(0, intel_dp->pps.panel_power_cycle_delay - panel_power_off_duration);
+
+	drm_dbg_kms(display->drm,
+		    "[ENCODER:%d:%s] %s wait for panel power cycle (%lld ms remaining)\n",
+		    dig_port->base.base.base.id, dig_port->base.base.name,
+		    pps_name(intel_dp), remaining);
+
 	/* When we disable the VDD override bit last we have to do the manual
 	 * wait. */
-	if (panel_power_off_duration < (s64)intel_dp->pps.panel_power_cycle_delay)
-		wait_remaining_ms_from_jiffies(jiffies,
-				       intel_dp->pps.panel_power_cycle_delay - panel_power_off_duration);
+	if (remaining)
+		wait_remaining_ms_from_jiffies(jiffies, remaining);
 
 	wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE);
 }
-- 
2.39.5

