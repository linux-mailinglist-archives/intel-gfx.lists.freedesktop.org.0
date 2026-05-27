Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +C5eDDjBFmrOqgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 12:02:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 913965E253A
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 12:02:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10F9310E75E;
	Wed, 27 May 2026 10:02:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WZ3ZbfXR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91CEF10E75E;
 Wed, 27 May 2026 10:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779876149; x=1811412149;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZryyLwMQSboUg6YbBxk6MomCHcgioCu1uoV97AYQ7jY=;
 b=WZ3ZbfXRzbcDI1Gk5hjhqVOhl0YHRehvHGsdm6/N6T4vZGFg+aT8ukgU
 Jn5cUh6zZz1xhYqUNrT9P4ZchrDOC8bfwUlv1i2EsQjdkaf+oIgW381x4
 IV94OYxsCU1qXKAOkJSbrvFRsjUb1v9BZ/E4pTNoHL86FdTZlFQb9qc8t
 wbOfPUcePvbIbCv+JDO1T3R9Rr+zKe81rWbyXLsBxyouU4kA/NqqBzVG5
 PLer8ad+I0/JNYuBg8Jt8L4hL6d7wRvjbIUlPpIS5+cSAqgyH6pL9qHIm
 7c8gjFTJQAXmSZnSOf9fq5YtDxRfWhMW/QbOmddxoz74VVPJdJN2k0IPe w==;
X-CSE-ConnectionGUID: VY9km/sZR+a4aeEbDbSh7A==
X-CSE-MsgGUID: 9LYOTReLRGinGL1Ssh3zxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11798"; a="80608463"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="80608463"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 03:02:21 -0700
X-CSE-ConnectionGUID: PK+DY8ycTkezrWledEWppA==
X-CSE-MsgGUID: HbVBuzJyRC22W8/FNuSYKQ==
X-ExtLoop1: 1
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.38])
 by fmviesa003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2026 03:02:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 1/2] drm/i915/power: add "runtime" to
 intel_display_power_{suspend, resume}() names
Date: Wed, 27 May 2026 13:02:11 +0300
Message-ID: <4a8ae520e3151d6cf5d9e9e3a452f620cf781ee5.1779876087.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1779876087.git.jani.nikula@intel.com>
References: <cover.1779876087.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.975];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 913965E253A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The intel_display_power_suspend() and intel_display_power_resume()
functions are supposed to be called from the struct dev_pm_pops
.runtime_suspend and .runtime_resume hook paths. Name them accordingly
to intel_display_power_runtime_suspend() and
intel_display_power_runtime_resume().

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_power.h | 5 +++--
 drivers/gpu/drm/i915/i915_driver.c                 | 4 ++--
 3 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index b2dcfeedbd2c..2e51dfcd5dce 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2289,7 +2289,7 @@ void intel_display_power_resume_early(struct intel_display *display)
 	intel_power_domains_resume(display);
 }
 
-void intel_display_power_suspend(struct intel_display *display)
+void intel_display_power_runtime_suspend(struct intel_display *display)
 {
 	if (DISPLAY_VER(display) >= 11) {
 		icl_display_core_uninit(display);
@@ -2302,7 +2302,7 @@ void intel_display_power_suspend(struct intel_display *display)
 	}
 }
 
-void intel_display_power_resume(struct intel_display *display)
+void intel_display_power_runtime_resume(struct intel_display *display)
 {
 	struct i915_power_domains *power_domains = &display->power.domains;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index a43fab19e530..56dc89eed3f8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -179,12 +179,13 @@ void intel_display_power_sanitize_state(struct intel_display *display);
 
 void intel_display_power_suspend_late(struct intel_display *display, bool s2idle);
 void intel_display_power_resume_early(struct intel_display *display);
-void intel_display_power_suspend(struct intel_display *display);
-void intel_display_power_resume(struct intel_display *display);
 void intel_display_power_set_target_dc_state(struct intel_display *display,
 					     u32 state);
 u32 intel_display_power_get_current_dc_state(struct intel_display *display);
 
+void intel_display_power_runtime_suspend(struct intel_display *display);
+void intel_display_power_runtime_resume(struct intel_display *display);
+
 bool intel_display_power_is_enabled(struct intel_display *display,
 				    enum intel_display_power_domain domain);
 struct ref_tracker *intel_display_power_get(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 8b93bac600bf..d6b94a29c91d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1591,7 +1591,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	for_each_gt(gt, dev_priv, i)
 		intel_uncore_suspend(gt->uncore);
 
-	intel_display_power_suspend(display);
+	intel_display_power_runtime_suspend(display);
 
 	ret = vlv_suspend_complete(dev_priv);
 	if (ret) {
@@ -1685,7 +1685,7 @@ static int intel_runtime_resume(struct device *kdev)
 		drm_dbg(&dev_priv->drm,
 			"Unclaimed access during suspend, bios?\n");
 
-	intel_display_power_resume(display);
+	intel_display_power_runtime_resume(display);
 
 	ret = vlv_resume_prepare(dev_priv, true);
 
-- 
2.47.3

