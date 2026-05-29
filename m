Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ON4WFPFyGWogwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFBB601499
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6489C10FD39;
	Fri, 29 May 2026 11:05:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gikn5YRd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B79C210FD3D;
 Fri, 29 May 2026 11:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052714; x=1811588714;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f1OzGGGuZHXZD0edoS0nTex886cwO4vTO1UAA5P/9aY=;
 b=Gikn5YRdKdWP03DQC2yZfAoMD6hiKsNU87TZ6WvWMXgrTeNtG9pVr8IH
 PelV8LC1zGL8LWZ6w8UycwHNOYbnHav9jIFxxxDJVc6e+n/zW1HTz4bA7
 vOR4szoUSd6b4dFhZTUdRFRUuCtTNjLuEYW7GTC5O+f2L6pIx71e7w/A7
 29yIjmABV50txoUCW44NCMAYiYzIWXKep1u2zaWgTcuoy+nLGUZQA3cpD
 5lijJ8/wgkr39GzN1gsl/sdlUUOosms3TiM4YaIpney7Euom5ShfgpJM7
 vRoX9g8iEkOMYtIBZPst95VKTg3YXfSyB9tg4K0oSYsFM53a3DEjNMcjs Q==;
X-CSE-ConnectionGUID: 4kW6JRvnSnOxU80afU474A==
X-CSE-MsgGUID: wYKqbduRSXOVGBDtiary5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="80629279"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="80629279"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:14 -0700
X-CSE-ConnectionGUID: WwtDWFmlTmCv/5TWd+PmdA==
X-CSE-MsgGUID: NTycUGG5Tx2ibDvx0Ez0Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="236470906"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 13/24] drm/{i915,
 xe}: move more calls inside intel_display_driver_{register, unregister}()
Date: Fri, 29 May 2026 14:03:57 +0300
Message-ID: <6c62aaa40707fbc68b73a16929df2bb0566424ee.1780051905.git.jani.nikula@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: DBFBB601499
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The intel_display_driver_register() and
intel_display_driver_unregister() calls are followed and preceded by
intel_display_power_enable() and intel_display_power_disable() calls,
respectively. Move them inside the register/unregister calls.

Semantically, this is a weird location, as there's nothing really
"register" or "unregister" about them, but they retain the existing
sequence. Add comments to note that.

There's a slight functional change for !HAS_DISPLAY() in that
register/unregister return early. Assume this is what we want, and there
are no cases where display engine is present but all pipes have been
fused off.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 6 ++++++
 drivers/gpu/drm/i915/i915_driver.c                  | 2 --
 drivers/gpu/drm/xe/display/xe_display.c             | 2 --
 3 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 77fa4497b442..7fee9ef88224 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -578,6 +578,9 @@ void intel_display_driver_register(struct intel_display *display)
 					DISPLAY_RUNTIME_INFO(display), &p);
 
 	intel_register_dsm_handler();
+
+	/* Semantically out of place, just for the sequence */
+	intel_display_power_enable(display);
 }
 
 /* part #1: call before irq uninstall */
@@ -652,6 +655,9 @@ void intel_display_driver_unregister(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
+	/* Semantically out of place, just for the sequence */
+	intel_display_power_disable(display);
+
 	intel_unregister_dsm_handler();
 
 	drm_client_dev_unregister(display->drm);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 6fd3e8b155b1..b637c4dedf1b 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -661,7 +661,6 @@ static int i915_driver_register(struct drm_i915_private *dev_priv)
 
 	intel_display_driver_register(display);
 
-	intel_display_power_enable(display);
 	intel_runtime_pm_enable(&dev_priv->runtime_pm);
 
 	if (i915_switcheroo_register(dev_priv))
@@ -683,7 +682,6 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 	i915_switcheroo_unregister(dev_priv);
 
 	intel_runtime_pm_disable(&dev_priv->runtime_pm);
-	intel_display_power_disable(display);
 
 	intel_display_driver_unregister(display);
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index bbd4f527d5e3..e17e05a8854c 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -177,7 +177,6 @@ void xe_display_register(struct xe_device *xe)
 		return;
 
 	intel_display_driver_register(display);
-	intel_display_power_enable(display);
 }
 
 void xe_display_unregister(struct xe_device *xe)
@@ -187,7 +186,6 @@ void xe_display_unregister(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_display_power_disable(display);
 	intel_display_driver_unregister(display);
 }
 
-- 
2.47.3

