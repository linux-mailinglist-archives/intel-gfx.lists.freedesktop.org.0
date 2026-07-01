Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GLntLN8bRWqX7AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 15:53:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 540716EE638
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 15:53:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=CucvgnRl;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C26AF10E3A0;
	Wed,  1 Jul 2026 13:53:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDDC710E38F;
 Wed,  1 Jul 2026 13:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782914013; x=1814450013;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2BEIwAN4Sa+/ge+c3xc4+rbZM2bIaKScEgxc0QbkpF4=;
 b=CucvgnRlwXQZkVNyoW+39KYvuaBru1joiK1jhbPCeMCTStZ7UOZQ7x6+
 bEQs/5aOwW0J/UKntdoANW1bWsfsjQDAlwTu/6x3nHeVFdGDmePMqNzlN
 3v33e7NyUw+rTqjCqO33vquLzIaz2jHGWDkamgDr5CrgIdZV5PepJWDll
 XYrKToodFXfLq6Q/uw8Lk963S5g5SDqbTzkkYhPDO/B0h2A/3BsToVzWx
 k4L1BywiBLh6J3RUppzwInxM5sWehaf7SyCCf7kgymfsaJ8BGYUpYVxjD
 I50wgiCUCLuECHy9laej43VnykBEEg+3Q4CLccYNRCZ3a108XcormlING A==;
X-CSE-ConnectionGUID: l5mZz+fuRVuz05eSG87Jbg==
X-CSE-MsgGUID: Ta6gwNoCQJu5b0hISqGJlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="83733924"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="83733924"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 06:53:33 -0700
X-CSE-ConnectionGUID: s0o1BlI6SM2T6ASNT6WJ6Q==
X-CSE-MsgGUID: DkvJ/iO8S2+pi+zyuGuqEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="249207294"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.61])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 06:53:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 rodrigo.vivi@intel.com
Subject: [RESEND v2 5/8] drm/{i915,
 xe}: add new intel_display_driver_runtime_pm_{enable, disable}()
Date: Wed,  1 Jul 2026 16:53:03 +0300
Message-ID: <c95cb644a35ede7d4d456fd1654ce0b42b6eea33.1782913901.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1782913901.git.jani.nikula@intel.com>
References: <cover.1782913901.git.jani.nikula@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 540716EE638

Add new high-level functions intel_display_driver_runtime_pm_enable()
and intel_display_driver_runtime_pm_disable() to abstract the low-level
functions intel_display_power_enable() and
intel_display_power_disable(), respectively.

The asymmetry in the "runtime pm enable/disable" and "pm runtime
suspend/etc" naming is intentional, with the latter intended to be
called from the PM hooks.

Suggested-by: Ville Syrjala <ville.syrjala@linux.intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_display_driver.h |  3 +++
 drivers/gpu/drm/i915/i915_driver.c                  |  4 ++--
 drivers/gpu/drm/xe/display/xe_display.c             |  8 ++++----
 4 files changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 5f6619b7584a..70d112fd4287 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -888,6 +888,16 @@ void intel_display_driver_pm_resume(struct intel_display *display)
 	intel_display_power_enable(display);
 }
 
+void intel_display_driver_runtime_pm_enable(struct intel_display *display)
+{
+	intel_display_power_enable(display);
+}
+
+void intel_display_driver_runtime_pm_disable(struct intel_display *display)
+{
+	intel_display_power_disable(display);
+}
+
 /* before irq suspend */
 void intel_display_driver_pm_runtime_suspend(struct intel_display *display)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index 1b494337d629..1ae2ad7e95f6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -43,6 +43,9 @@ void intel_display_driver_suspend_access(struct intel_display *display);
 void intel_display_driver_resume_access(struct intel_display *display);
 bool intel_display_driver_check_access(struct intel_display *display);
 
+void intel_display_driver_runtime_pm_enable(struct intel_display *display);
+void intel_display_driver_runtime_pm_disable(struct intel_display *display);
+
 void intel_display_driver_pm_runtime_suspend(struct intel_display *display);
 void intel_display_driver_pm_runtime_suspend_late(struct intel_display *display);
 void intel_display_driver_pm_runtime_resume_early(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 259b39e31547..ce6d20958320 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -638,7 +638,7 @@ static int i915_driver_register(struct drm_i915_private *dev_priv)
 
 	intel_display_driver_register(display);
 
-	intel_display_power_enable(display);
+	intel_display_driver_runtime_pm_enable(display);
 	intel_runtime_pm_enable(&dev_priv->runtime_pm);
 
 	if (i915_switcheroo_register(dev_priv))
@@ -660,7 +660,7 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 	i915_switcheroo_unregister(dev_priv);
 
 	intel_runtime_pm_disable(&dev_priv->runtime_pm);
-	intel_display_power_disable(display);
+	intel_display_driver_runtime_pm_disable(display);
 
 	intel_display_driver_unregister(display);
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 92a4573db28a..e0376409d71c 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -158,7 +158,7 @@ void xe_display_register(struct xe_device *xe)
 		return;
 
 	intel_display_driver_register(display);
-	intel_display_power_enable(display);
+	intel_display_driver_runtime_pm_enable(display);
 }
 
 void xe_display_unregister(struct xe_device *xe)
@@ -168,7 +168,7 @@ void xe_display_unregister(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_display_power_disable(display);
+	intel_display_driver_runtime_pm_disable(display);
 	intel_display_driver_unregister(display);
 }
 
@@ -313,7 +313,7 @@ static void xe_display_enable_d3cold(struct xe_device *xe)
 	 * We do a lot of poking in a lot of registers, make sure they work
 	 * properly.
 	 */
-	intel_display_power_disable(display);
+	intel_display_driver_runtime_pm_disable(display);
 
 	intel_display_flush_cleanup_work(display);
 
@@ -346,7 +346,7 @@ static void xe_display_disable_d3cold(struct xe_device *xe)
 
 	intel_opregion_resume(display);
 
-	intel_display_power_enable(display);
+	intel_display_driver_runtime_pm_enable(display);
 }
 
 void xe_display_pm_runtime_suspend(struct xe_device *xe)
-- 
2.47.3

