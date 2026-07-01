Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id W3LyLdUbRWqR7AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 15:53:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6753F6EE620
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 15:53:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="Z/HKJGJA";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F209310E3AA;
	Wed,  1 Jul 2026 13:53:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67B0510E3A0;
 Wed,  1 Jul 2026 13:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782914004; x=1814450004;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EwAAkIbzpjGs34Cdjxl8VOuZpaPNCLbi6IzbdymF4+A=;
 b=Z/HKJGJA+szlGgFoYts8zb6b5U8prTcXYAU5LX7cBB1Os0amXfAqG++j
 armYtzG/xIcnY5hNNMhepDB0xs/C5l6ntCQhFk/8wpiaJ7AroWA76Ek0P
 ovYf+0IxG4YK1wLQSH4W3uQdJwq7GKClbbj/6vmXN8XRNQZZcDT/eFGxV
 qqN3iD0Oe4G0Fuw9sMLWU6R0dZyp6Y2DdkQAMmHus+gNzcBWb9P2qJSPe
 ianD1vtbNqPbWYvf8GTlYQ58GnVP+mPECOFIX9ucF+tgXvNwVf5CtZ6CY
 5ODr5Q7jY4i/rzuDHskfzJu05aOOx4jCisVsq/IyBvjIqCOjL6qpB+F5e g==;
X-CSE-ConnectionGUID: tYQEMYZcSE2H5EPe36xPFg==
X-CSE-MsgGUID: kK1uf4+4Rk6U72tTqLpkYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="94002807"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="94002807"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 06:53:24 -0700
X-CSE-ConnectionGUID: ay1bKr7qSwy2atUoY1P4uA==
X-CSE-MsgGUID: 80/hQMDcSBmSfXlze465oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="256484718"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.61])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 06:53:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 rodrigo.vivi@intel.com
Subject: [RESEND v2 3/8] drm/i915: move some display runtime suspend
 operations earlier
Date: Wed,  1 Jul 2026 16:53:01 +0300
Message-ID: <00d016457a78589b97972203a52a390f5f1a3541.1782913901.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1782913901.git.jani.nikula@intel.com>
References: <cover.1782913901.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6753F6EE620

In preparation for abstracting display runtime suspend/resume calls,
relocate opregion adapter notification and hotplug poll enable slightly
earlier. Even though this is intended to be a non-functional change, do
it as a separate step to pinpoint any issues here.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 54 ++++++++++++++++--------------
 1 file changed, 28 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 10427f8f5699..b3d87acc142c 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1518,11 +1518,39 @@ static int i915_pm_runtime_suspend(struct device *kdev)
 
 	intel_display_power_runtime_suspend(display);
 
+	/*
+	 * FIXME: We really should find a document that references the arguments
+	 * used below!
+	 */
+	if (IS_BROADWELL(dev_priv)) {
+		/*
+		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
+		 * being detected, and the call we do at i915_pm_runtime_resume()
+		 * won't be able to restore them. Since PCI_D3hot matches the
+		 * actual specification and appears to be working, use it.
+		 */
+		intel_opregion_notify_adapter(display, PCI_D3hot);
+	} else {
+		/*
+		 * current versions of firmware which depend on this opregion
+		 * notification have repurposed the D1 definition to mean
+		 * "runtime suspended" vs. what you would normally expect (D3)
+		 * to distinguish it from notifications that might be sent via
+		 * the suspend path.
+		 */
+		intel_opregion_notify_adapter(display, PCI_D1);
+	}
+
+	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
+		intel_hpd_poll_enable(display);
+
 	ret = vlv_suspend_complete(dev_priv);
 	if (ret) {
 		drm_err(&dev_priv->drm,
 			"Runtime suspend failed, disabling it (%d)\n", ret);
 
+		intel_opregion_notify_adapter(display, PCI_D0);
+
 		intel_display_power_runtime_resume(display);
 
 		for_each_gt(gt, dev_priv, i)
@@ -1554,34 +1582,8 @@ static int i915_pm_runtime_suspend(struct device *kdev)
 	if (root_pdev)
 		pci_d3cold_disable(root_pdev);
 
-	/*
-	 * FIXME: We really should find a document that references the arguments
-	 * used below!
-	 */
-	if (IS_BROADWELL(dev_priv)) {
-		/*
-		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
-		 * being detected, and the call we do at i915_pm_runtime_resume()
-		 * won't be able to restore them. Since PCI_D3hot matches the
-		 * actual specification and appears to be working, use it.
-		 */
-		intel_opregion_notify_adapter(display, PCI_D3hot);
-	} else {
-		/*
-		 * current versions of firmware which depend on this opregion
-		 * notification have repurposed the D1 definition to mean
-		 * "runtime suspended" vs. what you would normally expect (D3)
-		 * to distinguish it from notifications that might be sent via
-		 * the suspend path.
-		 */
-		intel_opregion_notify_adapter(display, PCI_D1);
-	}
-
 	assert_forcewakes_inactive(&dev_priv->uncore);
 
-	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
-		intel_hpd_poll_enable(display);
-
 	drm_dbg(&dev_priv->drm, "Device suspended\n");
 	return 0;
 }
-- 
2.47.3

