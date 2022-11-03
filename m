Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F1A617374
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 01:41:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D35C610E205;
	Thu,  3 Nov 2022 00:41:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5EBF10E205
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 00:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667436065; x=1698972065;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=klnimEKHAEk3d102LHWpwMigjrzUZKZuA+ZOzWY0IqU=;
 b=cds6QV9iU8UcX61DbbgFvPfsw9P/tw5aRV9f40mT9HWkkjs1N3YsYg2T
 8CUJc3XZTmoDG1yThgS8PXfLpn0EQepruTHxDEGqZaLJ9dWRU7tf1E1kV
 r/ayNZtjGRUzF4l+O2f2mwR7/EOC94ayGFwZH0VAy0KhOfiti5EpPI7p1
 txs11J0XEJ2+5EB1E+MssCG9zP9Bbf191cRH4KrjX/INTW3EhuI4d0Y/8
 SMmlG2mps1OQ/iurSDXtjfRY1PIy5xtOcbZHG294HdqYCID8hqiFts3hD
 czZOV1ZseRxATksneN3xyCM+fa0mPDp3Geu82Puf8W0+W+k6ZU/ce2N+a Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="310664847"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="310664847"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 17:41:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="963738176"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="963738176"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by fmsmga005.fm.intel.com with ESMTP; 02 Nov 2022 17:41:03 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Nov 2022 08:40:06 +0800
Message-Id: <20221103004006.24904-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221024064004.1879-1-shawn.c.lee@intel.com>
References: <20221024064004.1879-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v3] drm/i915/pps: improve eDP power on flow
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

After i915 dirver initialized, a panel power off cycle delay
always append before turn eDP on. If eDP display did not
power on before. With this change, power off duration might
longer than power cycle delay. So driver can save power cycle
delay to speed up driver initialization time.

v2: fix commit messages
v3: refine panel_power_off_time default value and modify
    commit messages

Cc: Shankar Uma <uma.shankar@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 21944f5bf3a8..a394bb1c92d0 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1098,7 +1098,7 @@ bool intel_pps_have_panel_power_or_vdd(struct intel_dp *intel_dp)
 
 static void pps_init_timestamps(struct intel_dp *intel_dp)
 {
-	intel_dp->pps.panel_power_off_time = ktime_get_boottime();
+	intel_dp->pps.panel_power_off_time = 0;
 	intel_dp->pps.last_power_on = jiffies;
 	intel_dp->pps.last_backlight_off = jiffies;
 }
-- 
2.17.1

