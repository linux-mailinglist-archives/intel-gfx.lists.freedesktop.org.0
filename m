Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B499BF8D4
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 23:04:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52E7410E791;
	Wed,  6 Nov 2024 22:04:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bHSqlMiW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6907510E782
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2024 22:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730930654; x=1762466654;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=N2KFMqvdIQH37pV8DztH2bfHM0WH2iPc7NlLaxyd0ac=;
 b=bHSqlMiWRrEEyPOYyCXh3ujTFcWMLWsDMs0O09ZzMy7znbKB2n3JZME4
 WwxpGHmNxcHu3UAEpT6Lm1PHTS1QglfXP5LKGV+pjjI57f3T+quMHbBZ2
 1JzlcYnjLu7uzZVbF5L6BqtgWVH4utXsHPAZsvuryhoaj/pusqHGwNgtV
 v5MvFXRBNR6jGJIc9gn1UQsx1i+riUY1PaYczp/sKHW8eQ0YWsGzgJbqm
 bDcqsaw+cD82Ru6CJomY0MRR9iuPkotY331sVgQZxLmw8jwBL6lcaL5sg
 HyPG9G/DLWvdEKCVQ3xqfnAviK6jm6a6nKus82EC/ctFH0FpV8kp4cyz7 w==;
X-CSE-ConnectionGUID: jLn+hmXrTs+Wp0t8adBzFw==
X-CSE-MsgGUID: giSZstCCT0aY+gHnFyc7Iw==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="42157323"
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="42157323"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 14:04:09 -0800
X-CSE-ConnectionGUID: RvzJxoE0QyWh0kKIpKwWyg==
X-CSE-MsgGUID: yAxL8iKTR8ysB3GxTE47/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="84879561"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Nov 2024 13:59:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Nov 2024 23:59:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 7/8] drm/i915/pps: Extract pps_units_to_msecs()
Date: Wed,  6 Nov 2024 23:58:58 +0200
Message-ID: <20241106215859.25446-8-ville.syrjala@linux.intel.com>
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

Add pps_units_to_msecs() as the counterpart to msecs_pps_units_to().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 5be2903c6aaf..378a525eec16 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1468,6 +1468,12 @@ static int msecs_to_pps_units(int msecs)
 	return msecs * 10;
 }
 
+static int pps_units_to_msecs(int val)
+{
+	/* PPS uses 100us units */
+	return DIV_ROUND_UP(val, 10);
+}
+
 static void pps_init_delays_bios(struct intel_dp *intel_dp,
 				 struct intel_pps_delays *bios)
 {
@@ -1554,7 +1560,7 @@ static void pps_init_delays(struct intel_dp *intel_dp)
 	assign_final(power_cycle);
 #undef assign_final
 
-#define get_delay(field)	(DIV_ROUND_UP(final->field, 10))
+#define get_delay(field)	pps_units_to_msecs(final->field)
 	intel_dp->pps.panel_power_up_delay = get_delay(power_up);
 	intel_dp->pps.backlight_on_delay = get_delay(backlight_on);
 	intel_dp->pps.backlight_off_delay = get_delay(backlight_off);
-- 
2.45.2

