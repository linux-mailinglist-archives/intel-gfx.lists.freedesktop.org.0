Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1D660AC80
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 16:08:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E4D410E766;
	Mon, 24 Oct 2022 14:08:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6253D10E770
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 14:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666620488; x=1698156488;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eCuKnh5kPix0BjzodPyUKkbHuwC9kjgHNEtbRznYMrA=;
 b=h+HvNpXEwewwAD6moc+fNf1SzFWWk5Kz1dZBQdmTHlFnWp06ey8oBEyF
 w69LLb1L1Laspb39Eu1J2ePqooscVvbMhOt+zssEAgznuJXewE+aYrEi4
 DzSboduBwLBK6g4DrpTvfS26LyN4omH1sm3XnauVC+vMTlcASIPh7uoFY
 BdIA2q0xZ9uDFmyGBqXCBk+fQjw/f1fRmn9q9qntJiePqDG6mCaRLmoC0
 VPLawFamKUe1+ZBH++Z50d4ZpsnAm2uXI/V15ppUyYXk+rIujNJafFy03
 MdFu7H84XHFhD96IsiOnA4VksQj2MZ+6+G5i+rpnyFkH1cECmfGAM9Efo A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="290725438"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="290725438"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 07:07:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="694560867"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="694560867"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by fmsmga008.fm.intel.com with ESMTP; 24 Oct 2022 07:07:04 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Oct 2022 22:06:07 +0800
Message-Id: <20221024140607.25271-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221024064004.1879-1-shawn.c.lee@intel.com>
References: <20221024064004.1879-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v2] drm/i915/pps: improve eDP power on flow
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

A panel power off cycle delay always append before turn eDP on.
Driver should check last_power_on and last_backlight_off before
insert this delay. If these values are the same, it means eDP
was off until now and driver can bypass power off cycle delay
to save some times to speed up eDP power on sequence.

v2: fix commit messages

Cc: Shankar Uma <uma.shankar@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 21944f5bf3a8..290473ec70d5 100644
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
@@ -1100,7 +1107,7 @@ static void pps_init_timestamps(struct intel_dp *intel_dp)
 {
 	intel_dp->pps.panel_power_off_time = ktime_get_boottime();
 	intel_dp->pps.last_power_on = jiffies;
-	intel_dp->pps.last_backlight_off = jiffies;
+	intel_dp->pps.last_backlight_off = intel_dp->pps.last_power_on;
 }
 
 static void
-- 
2.17.1

