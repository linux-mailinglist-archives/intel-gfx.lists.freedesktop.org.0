Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CE0rNHOYFWqnWgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 14:56:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4A45D5DEE
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 14:56:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEDEA10E636;
	Tue, 26 May 2026 12:56:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J21OT58x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71C7F10E636;
 Tue, 26 May 2026 12:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779800177; x=1811336177;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o0GDSroeBgbkNV7kJY8BPgilG8roM24s7s1qdo/24qY=;
 b=J21OT58xtYtcZnyq8UVHVwiZuhcLSbwmDniOIbSl4m5W0n7WsNa81Tnf
 AyhPB+40tfuIVnghzkMlvM0nfgBFLCUpIY4CxAn+kPkoOYrbxlx/Pwaqe
 SfLTe+VDDc2m3qGeRr4YTgAlpqE1S9K5HZDD9nHmJwmQ1yUBKXfmTFyQC
 K885a77C6duZ8Xoct5MlUKhDE7YKvaYcHkAl0Fz8SGjnebAlxU754xKNM
 PWjpepmykg5pwgDLSPQI8IB8+NSO9i3L2/kZFsEw/OUz36KwzD3R5LAGA
 Bm3LuWY+CBtNBCJbaGmO0J5dWElCdCJT8MgF6n/WI8CL9WaK3MD8aK4Gl w==;
X-CSE-ConnectionGUID: pXzslc3aS/eFpZ+5ERrioA==
X-CSE-MsgGUID: 45vaSv3nTqGhQRftJ1OHow==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="84465965"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="84465965"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 05:56:17 -0700
X-CSE-ConnectionGUID: cYo+L8E3R9yR5XfdloDVcw==
X-CSE-MsgGUID: 4oZYXNqUSG+Yg2Pj3LT8CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="238897544"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.104])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 05:56:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 3/3] drm/i915/power: drop resume parameter from
 intel_display_power_init_hw()
Date: Tue, 26 May 2026 15:55:59 +0300
Message-ID: <63666514d457f548c69ccd35c02f2b8200ca08a1.1779800132.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1779800132.git.jani.nikula@intel.com>
References: <cover.1779800132.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 4C4A45D5DEE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

intel_power_domains_resume() calling intel_display_power_init_hw() with
the resume parameter is an internal implementation detail. Hide it
inside intel_display_power.c, and provide a clean external interface
without the parameter.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |  2 +-
 .../drm/i915/display/intel_display_power.c    | 40 ++++++++++---------
 .../drm/i915/display/intel_display_power.h    |  2 +-
 3 files changed, 24 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 6b7411f5c6a8..d0729936f681 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -218,7 +218,7 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 
 	intel_pmdemand_init_early(display);
 
-	intel_display_power_init_hw(display, false);
+	intel_display_power_init_hw(display);
 
 	if (!HAS_DISPLAY(display))
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 4264b9031938..88640bf1c5f7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1917,23 +1917,7 @@ static void assert_isp_power_gated(struct intel_display *display)
 
 static void intel_power_domains_verify_state(struct intel_display *display);
 
-/**
- * intel_display_power_init_hw - initialize hardware power domain state
- * @display: display device instance
- * @resume: Called from resume code paths or not
- *
- * This function initializes the hardware power domain state and enables all
- * power wells belonging to the INIT power domain. Power wells in other
- * domains (and not in the INIT domain) are referenced or disabled by
- * intel_modeset_readout_hw_state(). After that the reference count of each
- * power well must match its HW enabled state, see
- * intel_power_domains_verify_state().
- *
- * It will return with power domains disabled (to be enabled later by
- * intel_display_power_enable()) and must be paired with
- * intel_display_power_driver_remove().
- */
-void intel_display_power_init_hw(struct intel_display *display, bool resume)
+static void __intel_display_power_init_hw(struct intel_display *display, bool resume)
 {
 	struct i915_power_domains *power_domains = &display->power.domains;
 
@@ -1984,6 +1968,26 @@ void intel_display_power_init_hw(struct intel_display *display, bool resume)
 	power_domains->initializing = false;
 }
 
+/**
+ * intel_display_power_init_hw - initialize hardware power domain state
+ * @display: display device instance
+ *
+ * This function initializes the hardware power domain state and enables all
+ * power wells belonging to the INIT power domain. Power wells in other
+ * domains (and not in the INIT domain) are referenced or disabled by
+ * intel_modeset_readout_hw_state(). After that the reference count of each
+ * power well must match its HW enabled state, see
+ * intel_power_domains_verify_state().
+ *
+ * It will return with power domains disabled (to be enabled later by
+ * intel_display_power_enable()) and must be paired with
+ * intel_display_power_driver_remove().
+ */
+void intel_display_power_init_hw(struct intel_display *display)
+{
+	__intel_display_power_init_hw(display, false);
+}
+
 /**
  * intel_display_power_driver_remove - deinitialize hw power domain state
  * @display: display device instance
@@ -2152,7 +2156,7 @@ static void intel_power_domains_resume(struct intel_display *display)
 	struct i915_power_domains *power_domains = &display->power.domains;
 
 	if (power_domains->display_core_suspended) {
-		intel_display_power_init_hw(display, true);
+		__intel_display_power_init_hw(display, true);
 		power_domains->display_core_suspended = false;
 	} else {
 		drm_WARN_ON(display->drm, power_domains->init_wakeref);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index be051911514f..a43fab19e530 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -171,7 +171,7 @@ struct intel_display_power_domain_set {
 
 int intel_display_power_init(struct intel_display *display);
 void intel_display_power_cleanup(struct intel_display *display);
-void intel_display_power_init_hw(struct intel_display *display, bool resume);
+void intel_display_power_init_hw(struct intel_display *display);
 void intel_display_power_driver_remove(struct intel_display *display);
 void intel_display_power_enable(struct intel_display *display);
 void intel_display_power_disable(struct intel_display *display);
-- 
2.47.3

