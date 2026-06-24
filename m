Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c3TjMqnrO2qDfQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 16:37:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C8D6BF2E7
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 16:37:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=GKl1Ewrs;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D37E510EF6E;
	Wed, 24 Jun 2026 14:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 577F310EF74;
 Wed, 24 Jun 2026 14:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782311846; x=1813847846;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gxgi635hMODSHi7fzeOmAnosjan7VxZDh77J6hTlies=;
 b=GKl1EwrsxkF7U0P42eVwDocBUsNPOMR0Wt9N+wr64HABjkzyDy0ih3CM
 80NokTuUL98fT6C2dpig69GLije/2tc40wzMeCMa7c0FV4x6OdEL8iWN7
 X34KlJHlz7AIwxwgbofxdO07zL/ZZcS2inHpQqoA0W20uAArOBY2MJChG
 lZr3nwg53Lx4DZoeTzHKG6PI0FurVXUNDXq8lgEnQ1gq7wgjUk3f3kp/z
 UelTemzHiB0hubCdhkXGv9+7zEudaSyGuM5IMC7opncDT7I0FEbutTeia
 7mjRBk4IZN2+6OSDJTUNI5jZq+oQ2pJb93ciqA90LYWzHHJb6ZKuolRsh Q==;
X-CSE-ConnectionGUID: QO+2o1J3RV+O3kMt187zXg==
X-CSE-MsgGUID: K5Z2afcoQki/Y+tMMYkAjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="86920322"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="86920322"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 07:37:26 -0700
X-CSE-ConnectionGUID: 3Ny2NuNNS5ekhysGwaxBCA==
X-CSE-MsgGUID: EZS8LmgPQ++JoHbkemcUbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="253799123"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.187])
 by ORVIESA003-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jun 2026 07:37:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v2 5/8] drm/{i915,
 xe}: add new intel_display_driver_runtime_pm_{enable, disable}()
Date: Wed, 24 Jun 2026 17:36:52 +0300
Message-ID: <cae980c060580983557c70e87a1784caa7849ce6.1782311749.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1782311749.git.jani.nikula@intel.com>
References: <cover.1782311749.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 48C8D6BF2E7

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
index 0ea8a848a8e6..eda34c05ed46 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -869,6 +869,16 @@ void intel_display_driver_pm_resume(struct intel_display *display)
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
index 9ebafd339411..4ba0ae238f93 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -659,7 +659,7 @@ static int i915_driver_register(struct drm_i915_private *dev_priv)
 
 	intel_display_driver_register(display);
 
-	intel_display_power_enable(display);
+	intel_display_driver_runtime_pm_enable(display);
 	intel_runtime_pm_enable(&dev_priv->runtime_pm);
 
 	if (i915_switcheroo_register(dev_priv))
@@ -681,7 +681,7 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 	i915_switcheroo_unregister(dev_priv);
 
 	intel_runtime_pm_disable(&dev_priv->runtime_pm);
-	intel_display_power_disable(display);
+	intel_display_driver_runtime_pm_disable(display);
 
 	intel_display_driver_unregister(display);
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index a5768736dbbc..493e9e09b6c9 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -176,7 +176,7 @@ void xe_display_register(struct xe_device *xe)
 		return;
 
 	intel_display_driver_register(display);
-	intel_display_power_enable(display);
+	intel_display_driver_runtime_pm_enable(display);
 }
 
 void xe_display_unregister(struct xe_device *xe)
@@ -186,7 +186,7 @@ void xe_display_unregister(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_display_power_disable(display);
+	intel_display_driver_runtime_pm_disable(display);
 	intel_display_driver_unregister(display);
 }
 
@@ -331,7 +331,7 @@ static void xe_display_enable_d3cold(struct xe_device *xe)
 	 * We do a lot of poking in a lot of registers, make sure they work
 	 * properly.
 	 */
-	intel_display_power_disable(display);
+	intel_display_driver_runtime_pm_disable(display);
 
 	intel_display_flush_cleanup_work(display);
 
@@ -364,7 +364,7 @@ static void xe_display_disable_d3cold(struct xe_device *xe)
 
 	intel_opregion_resume(display);
 
-	intel_display_power_enable(display);
+	intel_display_driver_runtime_pm_enable(display);
 }
 
 void xe_display_pm_runtime_suspend(struct xe_device *xe)
-- 
2.47.3

