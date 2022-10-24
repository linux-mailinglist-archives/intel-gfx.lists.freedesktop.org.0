Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A87A1609AAF
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 08:41:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6163610E277;
	Mon, 24 Oct 2022 06:41:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A171E10E286
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 06:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666593658; x=1698129658;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZnBLD2gb626kWNJO+lW90grYMGVoBO8vHwHhhK30cnU=;
 b=VUv73bU1viGzFzvqMkL+u+6a49YjivQCaokoC1f6DvsJkgCdMXPPHfhj
 38aajh+KytazxMwD8d3iJ92JGZKEx7mfR5NKMt3406wpQ2nAm9Nca5L+w
 1CWUoTanBY6AJrJjW4hOy0lUKswhl6H7+KH+0U35sZjiD00vCqXS9UBBC
 QCUGna8TVs8832Ibspp79UK96tGfNMSs8eFUp0CcL80Rr4Agyr/L6tdJd
 sVzKbaa6A5SZn5smbFEAkp955/GbIQqBVua8UykIIMzYE7vp3zZjm+xUc
 j1vkbGUpvtKKGSwUxnpLrP1ah42H47ZGsWG+0ptoAnTcLYIsIIBnIpcSj Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="393664863"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="393664863"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2022 23:40:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="582326442"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="582326442"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by orsmga003.jf.intel.com with ESMTP; 23 Oct 2022 23:40:54 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Oct 2022 14:40:04 +0800
Message-Id: <20221024064004.1879-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pps: improve eDP power on flow.
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

Driver always apply panel power off cycle delay before eDP enable.
If eDP display was enabled at pre-os stage, driver would always
trigger modeset to optimize cdclk setting after boot into kernel.
So last_power_on and last_backlight_off value will be updated.

We can check last_power_on and last_backlight_off before insert
panel power cycle delay. If these values are the same, it means eDP
was off until now and driver should bypass this delay to save
some times to speed up eDP power on sequence.

Cc: Shankar Uma <uma.shankar@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 21944f5bf3a8..f3485a4fbfd0 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -509,6 +509,13 @@ static void wait_panel_power_cycle(struct intel_dp *intel_dp)
 	ktime_t panel_power_on_time;
 	s64 panel_power_off_duration;
 
+	/* When last_power_on equal to last_backlight_off, it means driver did not
+	 * turn on or off eDP panel so far. So we can bypass power cycle delay to
+	 * save some times here.
+	 */
+	if (intel_dp->pps.last_power_on == intel_dp->pps.last_backlight_off)
+		return;
+
 	drm_dbg_kms(&i915->drm, "Wait for panel power cycle\n");
 
 	/* take the difference of current time and panel power off time
@@ -1098,9 +1105,11 @@ bool intel_pps_have_panel_power_or_vdd(struct intel_dp *intel_dp)
 
 static void pps_init_timestamps(struct intel_dp *intel_dp)
 {
+	unsigned long tmp_jiffies = jiffies;
+
 	intel_dp->pps.panel_power_off_time = ktime_get_boottime();
-	intel_dp->pps.last_power_on = jiffies;
-	intel_dp->pps.last_backlight_off = jiffies;
+	intel_dp->pps.last_power_on = tmp_jiffies;
+	intel_dp->pps.last_backlight_off = tmp_jiffies;
 }
 
 static void
-- 
2.17.1

