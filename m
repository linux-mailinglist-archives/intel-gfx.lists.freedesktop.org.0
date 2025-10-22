Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E93BFB4E6
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 12:07:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 959FF10E733;
	Wed, 22 Oct 2025 10:07:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JT9lHwYD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B31010E733;
 Wed, 22 Oct 2025 10:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761127651; x=1792663651;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L8Zc3LSXOiZFbVTmx4kY3IYLXNA6TuIkX4n6nrlRTrs=;
 b=JT9lHwYDSFUoHZtL1NiXuSjzmJTTU92WVnpNFE4aQ/PRGTrudygS5dlX
 xNZM/S97TyUehgxBE8ZzlSpuWXxNstwZ9ZddiqbivAX7W2tL6m+ZpqnML
 bgZ57Le1KlAVlHH53lukgyZlGVVS8j6Seb579+zPkcsB2famwasAf+FWt
 dCFqKsjnlLe6N+8D3L3h0NrhXXPHBSPcps0NH2l1/4a4PzSMAiJxk/uIF
 dgr6VsWmAk6gzQiIrBuuUGHfi59WR/D5XxMOqgr3SiAEdjtwbyJGjX0iS
 KKJX46fNoRI+n1MyZ6JajyxiySTdtPshbTR45sieG3Ab3b9v+6+s9Texh w==;
X-CSE-ConnectionGUID: 6OUrDMZXS9SpSZLubEqmGg==
X-CSE-MsgGUID: L57WQInKQ4WdwgkMJzJEVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="67107477"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="67107477"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 03:07:31 -0700
X-CSE-ConnectionGUID: 9EFlPPrdTVSMIqYAoURXZQ==
X-CSE-MsgGUID: UZF5U9kTReWn6+7oLrPN8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="184235360"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.74])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 03:07:29 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Petr Vorel <pvorel@suse.cz>
Subject: [PATCH 2/3] drm/i915/dmc: Fixup TGL/ADL-S HRR event handler type
Date: Wed, 22 Oct 2025 13:07:17 +0300
Message-ID: <20251022100718.24803-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251022100718.24803-1-ville.syrjala@linux.intel.com>
References: <20251022100718.24803-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

TGL/ADL-S DMC firmware incorrectly uses the undelayed vblank
trigger for the HRR event, when it should be using the delayed
vblank trigger.

Fixed DMC firmware was never relaesed and isntead the Windows
driver just fixes this up by hand. Follow suit.

Not that we actually enable the HRR event currently. But let's
fix up the event ID, just in case someone ever needs to enable
this.

Tested-by: Petr Vorel <pvorel@suse.cz>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 5ba531e3bc36..02ef0a252220 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -577,6 +577,21 @@ static bool fixup_dmc_evt(struct intel_display *display,
 		return true;
 	}
 
+	/*
+	 * TGL/ADL-S DMC firmware incorrectly uses the undelayed vblank
+	 * event for the HRR handler, when it should be using the delayed
+	 * vblank event instead. Fixed firmware was never released
+	 * so the Windows driver just hacks around it by overriding
+	 * the event ID. Do the same.
+	 */
+	if ((display->platform.tigerlake || display->platform.alderlake_s) &&
+	    is_event_handler(display, dmc_id, MAINDMC_EVENT_VBLANK_A, reg_ctl, *data_ctl)) {
+		*data_ctl &= ~DMC_EVT_CTL_EVENT_ID_MASK;
+		*data_ctl |=  REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
+					     MAINDMC_EVENT_VBLANK_DELAYED_A);
+		return true;
+	}
+
 	return false;
 }
 
@@ -598,7 +613,7 @@ static bool disable_dmc_evt(struct intel_display *display,
 
 	/* also disable the HRR event on the main DMC on TGL/ADLS */
 	if ((display->platform.tigerlake || display->platform.alderlake_s) &&
-	    is_event_handler(display, dmc_id, MAINDMC_EVENT_VBLANK_A, reg, data))
+	    is_event_handler(display, dmc_id, MAINDMC_EVENT_VBLANK_DELAYED_A, reg, data))
 		return true;
 
 	return false;
-- 
2.49.1

