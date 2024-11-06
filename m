Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A57829BF8CF
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 23:04:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5F7110E0BC;
	Wed,  6 Nov 2024 22:04:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g5SB2ubK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA68D10E0BC
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2024 22:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730930654; x=1762466654;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CoQwGlu58bXh9l9MkL/aE6sACsol59EXptdiRhrmIgg=;
 b=g5SB2ubKuR3P7BXFTWjFwS7FT6DlIH045KiHlF4QhNdIoVjn21Br6RCN
 OV11ROY2jfhlvgSkTNalS1mMltFYS+joxF/K3Q6SaDJSfDflzzsQWlnaE
 9pPW+MOZZBst0ey+rrm7wqBrG4J2r+BVEB7bIat6fEAjnzdtfGSMpmPwx
 NzWL37hWo+TQG7QshFsEhZBxrHQHY41BDSgS8IitgGhuOjHjQsqPU+pTI
 Iw7YGq1lOY0l4CRUOpJKotmCvmWE034OD1AFnv3BjUM3RgN2QIPQj34QJ
 8/gJEKxLArcsU1SeUQ5mWgttSlPAOzcD0wGH2qKpaOGsULK6ZmT1Bf/Uz w==;
X-CSE-ConnectionGUID: MA/FtGHSTsGbeQS9HHwjhA==
X-CSE-MsgGUID: iGZKYkjaS8yHLkX+De11eA==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="42157324"
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="42157324"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 14:04:09 -0800
X-CSE-ConnectionGUID: 5/RjfJLMQCqsBJpuRCaP0Q==
X-CSE-MsgGUID: y3DUBTaSRRmwd0q/CcPPDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="84879566"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Nov 2024 13:59:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Nov 2024 23:59:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 8/8] drm/i915/pps: Eliminate pointless get_delay() macro
Date: Wed,  6 Nov 2024 23:58:59 +0200
Message-ID: <20241106215859.25446-9-ville.syrjala@linux.intel.com>
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

Now that we have pps_units_to_msecs(), get_delay() looks
rather pointless. Nuke it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 378a525eec16..173bcae5f0e2 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1560,13 +1560,11 @@ static void pps_init_delays(struct intel_dp *intel_dp)
 	assign_final(power_cycle);
 #undef assign_final
 
-#define get_delay(field)	pps_units_to_msecs(final->field)
-	intel_dp->pps.panel_power_up_delay = get_delay(power_up);
-	intel_dp->pps.backlight_on_delay = get_delay(backlight_on);
-	intel_dp->pps.backlight_off_delay = get_delay(backlight_off);
-	intel_dp->pps.panel_power_down_delay = get_delay(power_down);
-	intel_dp->pps.panel_power_cycle_delay = get_delay(power_cycle);
-#undef get_delay
+	intel_dp->pps.panel_power_up_delay = pps_units_to_msecs(final->power_up);
+	intel_dp->pps.backlight_on_delay = pps_units_to_msecs(final->backlight_on);
+	intel_dp->pps.backlight_off_delay = pps_units_to_msecs(final->backlight_off);
+	intel_dp->pps.panel_power_down_delay = pps_units_to_msecs(final->power_down);
+	intel_dp->pps.panel_power_cycle_delay = pps_units_to_msecs(final->power_cycle);
 
 	drm_dbg_kms(display->drm,
 		    "panel power up delay %d, power down delay %d, power cycle delay %d\n",
-- 
2.45.2

