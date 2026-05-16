Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YD3QMpdECGrphAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 16 May 2026 12:19:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B74155B1B0
	for <lists+intel-gfx@lfdr.de>; Sat, 16 May 2026 12:19:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B4AC10E195;
	Sat, 16 May 2026 10:19:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JsVlS5El";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C09D10E172
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 May 2026 10:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778926739; x=1810462739;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oYNRYzaTY9h9gK8z2RVpGoD0G1xFwcXXHJTPTlIZMV8=;
 b=JsVlS5El+sbbYWkLZP0q1nOgUrBXjCghDUrCJUYIxbaYtDDvNO5sJgAE
 +BUDuM4ske/D7XYYj8oDbUdyaZhd68GGoFCo6Q3sE29OVY3QaR9waAmBg
 dsLFPDT2F0gqbiOCxud05YUk45H1Jn/Pv6NOKInDDcaK0NuFB/E7QNJi/
 3jVSLJN8Aiv4MP48ls3UjksEEOChoHhCLHVqyQsrJqsTY4fHPaxOT4g6g
 pIaNndsoLtMv45NS25nh8IzJXbXzr5H/miL7N6IZajWGNsV7PouvCtW5Y
 YHv8jNYCnv/JuimDjr054+oZRotMCiyMau6voA/Euc5vn+6xeq7z1QPXd g==;
X-CSE-ConnectionGUID: sXPJnrlmSvunK/8zVpgt7w==
X-CSE-MsgGUID: g3le+I/eSO+0CnMqxXxKtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11787"; a="79842823"
X-IronPort-AV: E=Sophos;i="6.23,238,1770624000"; d="scan'208";a="79842823"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2026 03:18:59 -0700
X-CSE-ConnectionGUID: azAwQZzTQD6mFCX816b7WQ==
X-CSE-MsgGUID: TrQvt/0hRdyhemDudB9y9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,238,1770624000"; d="scan'208";a="239046559"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2026 03:18:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915: relocate intel_hpd_cancel_work() call
Date: Sat, 16 May 2026 13:18:52 +0300
Message-ID: <20260516101852.1373108-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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
X-Rspamd-Queue-Id: 5B74155B1B0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.962];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

The i915 and xe calls to display, in particular for
probe/cleanup/suspend/resume, need to be unified. It does not help to
have the related calls scattered around. As a small step forward,
relocate the intel_hpd_cancel_work() call from intel_irq_uninstall() to
i915_driver_remove().

Note that the other intel_irq_uninstall() call sites don't need the
call, as they're on error paths where hotplug hasn't been enabled yet.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 1 +
 drivers/gpu/drm/i915/i915_irq.c    | 3 ---
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index f06b2e8cf7d4..b8a4b50baf83 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -971,6 +971,7 @@ void i915_driver_remove(struct drm_i915_private *i915)
 	intel_display_driver_remove(display);
 
 	intel_irq_uninstall(i915);
+	intel_hpd_cancel_work(display);
 
 	intel_display_driver_remove_noirq(display);
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 30ce462e92ab..932409b943ad 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -37,7 +37,6 @@
 #include <drm/intel/intel_gmd_interrupt_regs.h>
 
 #include "display/intel_display_irq.h"
-#include "display/intel_hotplug.h"
 
 #include "gt/intel_breadcrumbs.h"
 #include "gt/intel_gt.h"
@@ -1140,7 +1139,6 @@ int intel_irq_install(struct drm_i915_private *dev_priv)
  */
 void intel_irq_uninstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = dev_priv->display;
 	int irq = to_pci_dev(dev_priv->drm.dev)->irq;
 
 	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->irqs_enabled))
@@ -1150,7 +1148,6 @@ void intel_irq_uninstall(struct drm_i915_private *dev_priv)
 
 	free_irq(irq, dev_priv);
 
-	intel_hpd_cancel_work(display);
 	dev_priv->irqs_enabled = false;
 }
 
-- 
2.47.3

