Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3484D62C1CC
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 16:07:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E554C10E4B3;
	Wed, 16 Nov 2022 15:07:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9B9810E4B3
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Nov 2022 15:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668611235; x=1700147235;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3YhQquSUh+PZjw73J/vgzUdDSN04+O3tyn0J8OxQ0vA=;
 b=kxEysAL6eBCd36kp+CaIRbNMPp/lX12FvLJu3DjzT1JUSN1RFTQ09KEZ
 6sVxRCLmxDXFgTRFGScOWxLC4JOFiVYj8EtjD0L6y432pP64RJzx3SUrP
 XpmIMT2JiHS560MqebCHeD+35iBgZYkZcMrUv7CUs2bdOmeKoxtnZfc8s
 mwOyMLa4NinbsUtckEBb4ipHt6Eu48QXsx0End3S5Nw2Tn6bOwDw9munz
 DwRpJjnDY+GvC+97NzGuNAwBHRufcyVX4BxQZqMvci5vacyuf0XTu8SoY
 i4DrcyA13ZifOkBz6zfTnxMhnoX0dQMN9jusTc2ccIMLFbK/XF9umGYvi A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="311272283"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="311272283"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 07:07:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="884436256"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="884436256"
Received: from dariofax-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.59.5])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 07:07:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Nov 2022 17:06:57 +0200
Message-Id: <20221116150657.1347504-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/edp: wait power off delay at driver
 remove to optimize probe
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Panel power off delay is the time the panel power needs to remain off
after being switched off, before it can be switched on again.

For the purpose of respecting panel power off delay at driver probe,
assuming the panel was last switched off at driver probe is overly
pessimistic. If the panel was never on, we'd end up waiting for no
reason.

We don't know what has happened before kernel boot, but we can make some
assumptions:

- The panel may have been switched off right before kernel boot by some
  pre-os environment.

- After kernel boot, the panel may only be switched off by i915.

- At i915 driver probe, only a previously loaded and removed i915 may
  have switched the panel power off.

With these assumptions, we can initialize the last power off time to
kernel boot time, if we also ensure i915 driver remove waits for the
panel power off delay after switching panel power off.

This shaves off the time it takes from kernel boot to i915 probe from
the first panel enable, if (and only if) the panel was not already
enabled at boot.

The encoder destroy hook is pretty much the last place where we can
wait, right after we've ensured the panel power has been switched off,
and before the whole encode is destroyed.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7417
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 6 ++++++
 drivers/gpu/drm/i915/display/intel_pps.c | 8 +++++++-
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 914161d7d122..67089711d9e2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4877,6 +4877,12 @@ void intel_dp_encoder_flush_work(struct drm_encoder *encoder)
 
 	intel_pps_vdd_off_sync(intel_dp);
 
+	/*
+	 * Ensure power off delay is respected on module remove, so that we can
+	 * reduce delays at driver probe. See pps_init_timestamps().
+	 */
+	intel_pps_wait_power_cycle(intel_dp);
+
 	intel_dp_aux_fini(intel_dp);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 81ee7f3aadf6..9bbf41a076f7 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1100,7 +1100,13 @@ bool intel_pps_have_panel_power_or_vdd(struct intel_dp *intel_dp)
 
 static void pps_init_timestamps(struct intel_dp *intel_dp)
 {
-	intel_dp->pps.panel_power_off_time = ktime_get_boottime();
+	/*
+	 * Initialize panel power off time to 0, assuming panel power could have
+	 * been toggled between kernel boot and now only by a previously loaded
+	 * and removed i915, which has already ensured sufficient power off
+	 * delay at module remove.
+	 */
+	intel_dp->pps.panel_power_off_time = 0;
 	intel_dp->pps.last_power_on = jiffies;
 	intel_dp->pps.last_backlight_off = jiffies;
 }
-- 
2.34.1

