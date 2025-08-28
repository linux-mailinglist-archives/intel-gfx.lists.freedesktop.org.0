Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80458B39D19
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:22:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D15AB10E9B5;
	Thu, 28 Aug 2025 12:22:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qq0PueHL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BB1E10E9AA;
 Thu, 28 Aug 2025 12:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383748; x=1787919748;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mTzGXG4lSf5lffncu3UlwuT1PF9Ho1gCrto7TSBax7A=;
 b=Qq0PueHLQsF6Wc01djVrunTD54PcQmlFhMRgeLm/fzvlnRU6t5WxZb7k
 gi3SnZCana4DEIkTl3EnOaNvbYN74uC0YXR5/chLWCf1iINdGiKnf9JpQ
 cVyHmJpRTTMxdSWngeBuytQb5QJ9LMcgKUWdyAOUzmzBD6dskNc0grP4t
 /epaRobpVrmyHOO2wcjxgj2cmEluEBQPDqF8g78n/TGUApijcJDNQeqjM
 zYB8nWOrevB/cHj3EEgupE2wQmbPQqdoephdopeRM11lfv1sRe91N4wxR
 fhjImomntAS2kNF3NGmKXlZgGVlNNQ0+jmlIJuoT7pE9ntpxHgAsEluDj A==;
X-CSE-ConnectionGUID: BFDoTI0pRe6gvJ1wwzfm4Q==
X-CSE-MsgGUID: sgkSNIWlTYSneH2of6Kn7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="84053280"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="84053280"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:28 -0700
X-CSE-ConnectionGUID: +smw3Qo9TRKPx54myU/k5g==
X-CSE-MsgGUID: J4CoYk84TGOliWc6mjef7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="170271288"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 17/20] drm/i915/lspcon: use generic poll_timeout_us() instead
 of wait_for()
Date: Thu, 28 Aug 2025 15:20:59 +0300
Message-ID: <4065fa96c0ef6afd51a384f365761d2ca802256b.1756383233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756383233.git.jani.nikula@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
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

Prefer generic poll helpers over i915 custom helpers.

The functional change is losing the exponentially growing sleep of
wait_for(), which used to be 10, 20, 40, ..., 640, and 1280 us.

Use an arbitrary constant 5 ms sleep instead. The timeouts remain, being
400 ms or 800 ms, depending on the case.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index abc4b562083d..d56026c4efdd 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -23,6 +23,8 @@
  *
  */
 
+#include <linux/iopoll.h>
+
 #include <drm/display/drm_dp_dual_mode_helper.h>
 #include <drm/display/drm_hdmi_helper.h>
 #include <drm/drm_atomic_helper.h>
@@ -181,6 +183,8 @@ static enum drm_lspcon_mode lspcon_wait_mode(struct intel_lspcon *lspcon,
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
 	struct intel_display *display = to_intel_display(intel_dp);
 	enum drm_lspcon_mode current_mode;
+	int timeout_us;
+	int ret;
 
 	current_mode = lspcon_get_current_mode(lspcon);
 	if (current_mode == mode)
@@ -189,9 +193,12 @@ static enum drm_lspcon_mode lspcon_wait_mode(struct intel_lspcon *lspcon,
 	drm_dbg_kms(display->drm, "Waiting for LSPCON mode %s to settle\n",
 		    lspcon_mode_name(mode));
 
-	wait_for((current_mode = lspcon_get_current_mode(lspcon)) == mode,
-		 lspcon_get_mode_settle_timeout(lspcon));
-	if (current_mode != mode)
+	timeout_us = lspcon_get_mode_settle_timeout(lspcon) * 1000;
+
+	ret = poll_timeout_us(current_mode = lspcon_get_current_mode(lspcon),
+			      current_mode == mode,
+			      5000, timeout_us, false);
+	if (ret)
 		drm_err(display->drm, "LSPCON mode hasn't settled\n");
 
 out:
-- 
2.47.2

