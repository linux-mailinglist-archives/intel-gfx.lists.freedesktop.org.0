Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 664099BF321
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 17:23:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07B7210E728;
	Wed,  6 Nov 2024 16:23:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rd5Fekiy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35E7D10E71C;
 Wed,  6 Nov 2024 16:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730910212; x=1762446212;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UYtOwpDw+itSicBUPVWFN8ZrT4KWfwMb7vBJd0X/J5U=;
 b=Rd5FekiyQy5uj7g143C+o5pfFcTXkUXOqQqQ8F6GI9/x/WHVGHtbE3qD
 7ZSPiEoBBSub/oK6eeZCd1rI/d4zySWlmHFIymCE1UpiZUfYLTqxyt50v
 s8U4G3zq2IsUTJhBZO386noDm804QfBmsI1fI/D1EzvmIeS3be2dGPMfA
 WYZfFirFQAAp7WTwuIPh3bpNfWolbzJg92u2KdN72NCDt5UZCQOIC+ObN
 hcV24zgggYHleiEJn8o/TmzncYzcZSK4Z/g4IN8Sg6xvZeRhj2z+bloHE
 E8CVhkJS5iXL6ftJpnlnmeQ4JAFjdSZsuo070mrUFUBv2oZApOUdA5LEu A==;
X-CSE-ConnectionGUID: LJthleZTTYqehW3PTbLsig==
X-CSE-MsgGUID: k6tk4+ZIRtyN0YENN5ynWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="41311390"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="41311390"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 08:23:32 -0800
X-CSE-ConnectionGUID: YsLRaLpDS46z4oIFT6IRqA==
X-CSE-MsgGUID: LsG9ep75SDeVeockNYBO5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="89164674"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.143])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 08:23:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Clint Taylor <clinton.a.taylor@intel.com>,
 Imre Deak <imre.deak@intel.com>
Subject: [PATCH] drm/i915/dp: demote source OUI read/write failure logging to
 debug
Date: Wed,  6 Nov 2024 18:23:25 +0200
Message-Id: <20241106162325.4065078-1-jani.nikula@intel.com>
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

Commit 1f12d63a14d7 ("drm/i915/dp: Write the source OUI for non-eDP
sinks as well") started writing source OUI for non-eDP sinks as well,
increasing the possibilities of hitting read/write failures either due
to the sink behaviour or hotplug or whatever.

Even before that, commit 3fb0501f0c07 ("drm/i915/display/dp: Reduce log
level for SOURCE OUI write failures") already reduced write failures to
info level when source OUI was just for eDP.

Further reduce the log level to just debug. Switch to struct intel_dp
while at it.

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/3372
Cc: Clint Taylor <clinton.a.taylor@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5b918363df16..95c71e425fbe 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3432,7 +3432,7 @@ void intel_dp_sink_disable_decompression(struct intel_atomic_state *state,
 static void
 intel_dp_init_source_oui(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	u8 oui[] = { 0x00, 0xaa, 0x01 };
 	u8 buf[3] = {};
 
@@ -3446,7 +3446,7 @@ intel_dp_init_source_oui(struct intel_dp *intel_dp)
 	 * already set to what we want, so as to avoid clearing any state by accident
 	 */
 	if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(buf)) < 0)
-		drm_err(&i915->drm, "Failed to read source OUI\n");
+		drm_dbg_kms(display->drm, "Failed to read source OUI\n");
 
 	if (memcmp(oui, buf, sizeof(oui)) == 0) {
 		/* Assume the OUI was written now. */
@@ -3455,7 +3455,7 @@ intel_dp_init_source_oui(struct intel_dp *intel_dp)
 	}
 
 	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0) {
-		drm_info(&i915->drm, "Failed to write source OUI\n");
+		drm_dbg_kms(display->drm, "Failed to write source OUI\n");
 		WRITE_ONCE(intel_dp->oui_valid, false);
 	}
 
-- 
2.39.5

