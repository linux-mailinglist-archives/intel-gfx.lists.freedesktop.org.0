Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6798D87CA3E
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Mar 2024 09:50:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C41BC10E95C;
	Fri, 15 Mar 2024 08:50:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=puri.sm header.i=@puri.sm header.b="skwZd2/F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18B3010E95C
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Mar 2024 08:50:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="15901590"
X-IronPort-AV: E=Sophos;i="6.07,128,1708416000"; d="scan'208";a="15901590"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 01:50:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,128,1708416000"; d="scan'208";a="17268616"
Received: from denache-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.82])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 01:50:21 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Fri, 15 Mar 2024 10:50:15 +0200
Resent-Message-ID: <87h6h7ri9k.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from orviesa010.jf.intel.com (ORVIESA010.jf.intel.com
 [10.64.159.150])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 996A2580DA4;
 Wed, 13 Mar 2024 06:56:14 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="11835108"
Received: from orvoesa112.jf.intel.com ([10.18.183.152])
 by orviesa010-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 06:56:15 -0700
Authentication-Results: mtab.intel.com; spf=None
 smtp.pra=jonathon.hall@puri.sm; spf=Pass
 smtp.mailfrom=jonathon.hall@puri.sm; spf=None
 smtp.helo=postmaster@comms.puri.sm; dkim=pass (signature verified)
 header.i=@puri.sm; dmarc=pass (p=none dis=none) d=puri.sm
IronPort-SDR: 65f1b07c_zRQEY+lxfoM8u8/gAk465+67Lz5LcgAXo4qi0P99+yE7Ahf
 zRcMGwKEJblavjsPvpJGqkF3n/n4z/eI2ftfN3w==
X-IPAS-Result: =?us-ascii?q?A0HCBgAVr/Flfbndy59aHQEBAQEJARIBBQUBgg+COYFRM?=
 =?us-ascii?q?wQLSIpGjAqYG4dZDwEBAQEBAQEBAQlBAQIEAQEDBINrgRSIAQIeBwEENBMBA?=
 =?us-ascii?q?gECAQEBAQEDAgECAQEBAQEBCAEBAQICAQEBAgEBAgQDAQEBAQIQAQEkPCeFb?=
 =?us-ascii?q?A2CVYEmgSYBAQEBAQEBAQEBAQEdAg2BKAsBDQEBNwGBPRKDAIJgAwW2CjOBA?=
 =?us-ascii?q?YIKAQEGBAMCAbEWgWEJgUiRXoEhD4FVRIR9hApOOIV2gUFWgxIpnWSBbwOBc?=
 =?us-ascii?q?BsQHjcREAUODQMIbh0CMToDBQMEMgoSDAsfBVQDQwZJCwMCGgUDAwSBLgUNG?=
 =?us-ascii?q?gIQLCYDAxJJAhAUAzgDAwYDCjEwVUEMUANkHzIJPA8MGgIbFA0kIwIsPgMJC?=
 =?us-ascii?q?hACFgMdFgQwEQkLJgMqBjYCEgwGBgZdIBYJBCUDCAQDUgMgchEDBBoECwd4g?=
 =?us-ascii?q?z8EE0QDEIE0BoocggyBDAIFIwQmgXeBKRUDYUADC209NQYOGwYipVcBgQ6CK?=
 =?us-ascii?q?cVxNAeEFYFbBgyfOhozl0GSbAEuh1iQWSCoXIFCOSOBXDMag1pPAxkPV41JD?=
 =?us-ascii?q?BaKRIkpKjI7AgcLAQEDCYVGAQGDJjSBRwEB?=
IronPort-PHdr: A9a23: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
 O/2xRxR/gNGjYoiJojY
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:hhLD2qrxN/nd9RVF4VIRn5EaV5o2eYIsimQD101hICG9vPb3qy
 nIpoV/6faQslossR4b+exoVJPsfZq+z+8W3WBuB8bAYOCOggLBR+tfBODZogEIdReQytJg
X-Talos-CUID: 9a23:Z/Rvu2xOzUYISMk3HS1EBgUyA/8acE2E8k7/fRXhB01JS5m3REO5rfY=
X-Talos-MUID: =?us-ascii?q?9a23=3AblQenw0Suz9iO60PST8PHuVWBDUj0oeJOhowqrc?=
 =?us-ascii?q?/mMSKJTJIJTGyoQ2sXdpy?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="4968551"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="4968551"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from comms.puri.sm ([159.203.221.185])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2024
 06:56:12 -0700
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id 4B155E7CE6;
 Wed, 13 Mar 2024 06:56:12 -0700 (PDT)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UKUs71YCXFd8; Wed, 13 Mar 2024 06:56:11 -0700 (PDT)
From: Jonathon Hall <jonathon.hall@puri.sm>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=puri.sm; s=comms;
 t=1710338171; bh=8qtHRFqFZ2rbe52sUD4by7YDRxEdBcPf5IDzrs6Gjqk=;
 h=From:To:Cc:Subject:Date:From;
 b=skwZd2/FqDgucBW9TVZI7DDHLSeEqLuS6GX+OxZWnbxS94J7b5xXqbyf4dB2LCC7t
 rkPNwVVnSTzp+Z4/DZNVjs8R4PtJ1KvjJGSf3p/p4RaVfmINKTtatBrXSmzzWB/mf9
 x8lPunfhdCNq7U39Eb8Nu0oZxfUTI1RmlHVNpvMt3JkxM6awOnjzG4k7Rwkm6vdQEB
 7xuvk1SeePRNVBruhxrcSNvXFXTUsQRIAm3OviQ2DTyXCJfjz6LFUWg/v76egWXC5L
 2E0CRRgWGybYV8g/A3DA+bxoWgdhJlAogbAFjhOKvYLW9SLs3OT+msma+0x8Nymt8K
 tJgmp+ZDJRI5w==
To: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.viv@intel.com, tursulin@ursulin.net
Cc: Jonathon Hall <jonathon.hall@puri.sm>,
	stable@vger.kernel.org
Subject: [PATCH] drm/i915: Do not match JSL in
 ehl_combo_pll_div_frac_wa_needed()
Date: Wed, 13 Mar 2024 09:54:25 -0400
Message-Id: <20240313135424.3731410-1-jonathon.hall@puri.sm>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TUID: 5JaSfku48eZW
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

Since commit 0c65dc062611 ("drm/i915/jsl: s/JSL/JASPERLAKE for
platform/subplatform defines"), boot freezes on a Jasper Lake tablet
(Librem 11), usually with graphical corruption on the eDP display,
but sometimes just a black screen.  This commit was included in 6.6 and
later.

That commit was intended to refactor EHL and JSL macros, but the change
to ehl_combo_pll_div_frac_wa_needed() started matching JSL incorrectly
when it was only intended to match EHL.

It replaced:
	return ((IS_PLATFORM(i915, INTEL_ELKHARTLAKE) &&
		 IS_JSL_EHL_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||
with:
	return (((IS_ELKHARTLAKE(i915) || IS_JASPERLAKE(i915)) &&
		 IS_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||

Remove IS_JASPERLAKE() to fix the regression.

Signed-off-by: Jonathon Hall <jonathon.hall@puri.sm>
Cc: stable@vger.kernel.org
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ef57dad1a9cb..57a97880dcb3 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2509,7 +2509,7 @@ static void icl_wrpll_params_populate(struct skl_wrpll_params *params,
 static bool
 ehl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
 {
-	return (((IS_ELKHARTLAKE(i915) || IS_JASPERLAKE(i915)) &&
+	return ((IS_ELKHARTLAKE(i915) &&
 		 IS_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||
 		 IS_TIGERLAKE(i915) || IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) &&
 		 i915->display.dpll.ref_clks.nssc == 38400;
-- 
2.39.2

