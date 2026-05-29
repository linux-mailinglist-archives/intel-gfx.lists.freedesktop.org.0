Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GF3sERhzGWogwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:06:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C6C601502
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DF0A10FD58;
	Fri, 29 May 2026 11:05:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QkA3L0RI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A62EA10FD5A;
 Fri, 29 May 2026 11:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052755; x=1811588755;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9xnAOAvYIm9+yca0dcDTd2YTKzCeD34LMG6yfIpde/U=;
 b=QkA3L0RI+Nod8sA7FBDJg/hXhILKjkW6Jgg+PAk/IVVudNd0/L90BnIb
 fz2rMOdLdUAMMQijd+L+wg6RnpD1wODb5z4sx68BUHVaNVDnkxtLxX108
 SEve44SWQNNYIIiVZQCoMiKD1F09cJrZVd9Do2vy+M8Z4dvkifBZRLF0F
 OqLKS86mQ3zxg5bJyNXnf3+cysl7dIf5FY1PVlmzmSk0sft1EXgayr6NQ
 q7VXCM3hHnYJOmfpa8cxfRST7fBDLRrF+jySWJHx41nQQqilKwyKp5AHX
 ksqdCU2RrHmMwY9IAYGAJWIqyKW6YQCIhx6ex0fU6/lx8PSKzfawsoMGw w==;
X-CSE-ConnectionGUID: Ee0cJpn9QAGUdIUxWFe/yw==
X-CSE-MsgGUID: LnXTdxd0SMy9afTX7MjYKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="81087061"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="81087061"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:53 -0700
X-CSE-ConnectionGUID: LzuunOdrS6i5Rz3MGSEatQ==
X-CSE-MsgGUID: UilhzwieRIaUxBovUMpdjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="240273012"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 21/24] drm/{i915,
 xe}: keep moving stuff to intel_display_driver_pm_resume()
Date: Fri, 29 May 2026 14:04:05 +0300
Message-ID: <91a5bee38be9c985a124b02189f9646a78d59b2a.1780051905.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780051905.git.jani.nikula@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
	NEURAL_HAM(-0.00)[-0.971];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: D4C6C601502
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The calls to intel_display_driver_pm_resume() are preceded with similar
calls. Move the calls inside intel_display_driver_pm_resume().

In i915 the calls are interspersed among other things, so this is a
functional change. Fingers crossed.

There's a slight functional change in that
intel_display_driver_pm_resume() returns early for
!HAS_DISPLAY(). Assume this is what we want, and there are no cases
where display engine is present but all pipes have been fused off.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 6 ++++++
 drivers/gpu/drm/i915/i915_driver.c                  | 8 --------
 drivers/gpu/drm/xe/display/xe_display.c             | 7 -------
 3 files changed, 6 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 1525ff7a1dc2..84807a9bff2b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -831,6 +831,12 @@ void intel_display_driver_pm_resume(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
+	intel_dmc_resume(display);
+
+	drm_mode_config_reset(display->drm);
+
+	intel_display_driver_init_hw(display);
+
 	intel_display_driver_resume_access(display);
 
 	intel_hpd_init(display);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 7d0f98cbf5d9..6b9e1b268a89 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -57,7 +57,6 @@
 #include "display/intel_display_device.h"
 #include "display/intel_display_driver.h"
 #include "display/intel_display_power.h"
-#include "display/intel_dmc.h"
 #include "display/intel_dp.h"
 #include "display/intel_dpt.h"
 #include "display/intel_dram.h"
@@ -1233,8 +1232,6 @@ static int i915_drm_resume(struct drm_device *dev)
 	/* Must be called after GGTT is resumed. */
 	intel_dpt_resume(display);
 
-	intel_dmc_resume(display);
-
 	i9xx_display_sr_restore(display);
 
 	intel_gmbus_reset(display);
@@ -1255,13 +1252,8 @@ static int i915_drm_resume(struct drm_device *dev)
 	 */
 	intel_irq_resume(dev_priv);
 
-	if (intel_display_device_present(display))
-		drm_mode_config_reset(dev);
-
 	i915_gem_resume(dev_priv);
 
-	intel_display_driver_init_hw(display);
-
 	intel_clock_gating_init(&dev_priv->drm);
 
 	intel_display_driver_pm_resume(display);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 73891b36341b..b153bf9c83d8 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -301,13 +301,6 @@ void xe_display_pm_resume(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_dmc_resume(display);
-
-	if (intel_display_device_present(display))
-		drm_mode_config_reset(&xe->drm);
-
-	intel_display_driver_init_hw(display);
-
 	intel_display_driver_pm_resume(display);
 }
 
-- 
2.47.3

