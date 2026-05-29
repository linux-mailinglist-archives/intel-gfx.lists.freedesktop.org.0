Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHCtJ+ByGWoQwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54043601473
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C87D510FD25;
	Fri, 29 May 2026 11:05:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AMZ4tjdW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06E0610FD36;
 Fri, 29 May 2026 11:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052702; x=1811588702;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ESvUhOQMykLtyaM+ty2VCdI+gsrpUKJKx13CDvPMncI=;
 b=AMZ4tjdW2Cwj4xHnELJkd7mA2Hduk52RWOC/Q10yD9GX72RwAihVprKP
 TDWhXpmCk3U9x/NqT1lcS9m4hxRQ1m2VKMx6ZU796F3mjbu7CPcK/pd/m
 wHdO5ZhlDlDxLgPE3DI5Ik0TTMlrOyMVChq8JbSaV2pufVPIaIH1Jr1Hn
 wIgzw3+G93XgahhlljufiSVVAEzy14PTQ45SjR7A1flOxcDrs9MTiXsPV
 Xfx6KkVdx+WNe44tIkJbrc8aEhjAUGq8+GN6bIwgKk9d6M6wAihkqcd/L
 Sz2H92dRoQeH4p9ORWQ78Q0tDjdoTVvxpO3rxhm5yG72RgK06gKwl3Kqz Q==;
X-CSE-ConnectionGUID: cqQG0DduQ5WuG+QmZ3rEGw==
X-CSE-MsgGUID: Bd2hsXUSRbSokLVF4Dic4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="80629255"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="80629255"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:01 -0700
X-CSE-ConnectionGUID: vy1qwOHnRNKyPagArt7z9Q==
X-CSE-MsgGUID: ThPJJOZxRVKxw6zgEjQrdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="236470863"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 10/24] drm/{i915,
 xe}: move more calls inside intel_display_driver_pm_suspend()
Date: Fri, 29 May 2026 14:03:54 +0300
Message-ID: <12d3749c215c7277d460bba4eeb9f78b8a5fea42.1780051905.git.jani.nikula@intel.com>
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
	NEURAL_HAM(-0.00)[-0.968];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 54043601473
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The intel_display_driver_pm_suspend() calls are surrounded by near
identical display calls. Move the calls inside
intel_display_driver_pm_suspend().

There's a slight functional change in that
intel_display_driver_pm_suspend() returns early for
!HAS_DISPLAY(). Assume this is what we want, and there are no cases
where display engine is present but all pipes have been fused off.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 11 ++++++++++
 drivers/gpu/drm/i915/i915_driver.c            |  9 --------
 drivers/gpu/drm/xe/display/xe_display.c       | 22 ++-----------------
 3 files changed, 13 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 9be4c94740dc..41a2244985fa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -686,6 +686,17 @@ int intel_display_driver_pm_suspend(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return 0;
 
+	/*
+	 * We do a lot of poking in a lot of registers, make sure they work
+	 * properly.
+	 */
+	intel_display_power_disable(display);
+
+	drm_client_dev_suspend(display->drm);
+
+	drm_kms_helper_poll_disable(display->drm);
+	intel_display_driver_disable_user_access(display);
+
 	state = drm_atomic_helper_suspend(display->drm);
 	ret = PTR_ERR_OR_ZERO(state);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index bd73d64c1ccb..f161723f653e 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1130,15 +1130,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
-	/* We do a lot of poking in a lot of registers, make sure they work
-	 * properly. */
-	intel_display_power_disable(display);
-	drm_client_dev_suspend(dev);
-	if (intel_display_device_present(display)) {
-		drm_kms_helper_poll_disable(dev);
-		intel_display_driver_disable_user_access(display);
-	}
-
 	intel_display_driver_pm_suspend(display);
 
 	intel_encoder_block_all_hpds(display);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 38ebcc2b712a..027db7b6ceb5 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -198,14 +198,7 @@ void xe_display_shutdown(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_display_power_disable(display);
-	drm_client_dev_suspend(&xe->drm);
-
-	if (intel_display_device_present(display)) {
-		drm_kms_helper_poll_disable(&xe->drm);
-		intel_display_driver_disable_user_access(display);
-		intel_display_driver_pm_suspend(display);
-	}
+	intel_display_driver_pm_suspend(display);
 
 	intel_encoder_block_all_hpds(display);
 	intel_hpd_cancel_work(display);
@@ -297,18 +290,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	/*
-	 * We do a lot of poking in a lot of registers, make sure they work
-	 * properly.
-	 */
-	intel_display_power_disable(display);
-	drm_client_dev_suspend(&xe->drm);
-
-	if (intel_display_device_present(display)) {
-		drm_kms_helper_poll_disable(&xe->drm);
-		intel_display_driver_disable_user_access(display);
-		intel_display_driver_pm_suspend(display);
-	}
+	intel_display_driver_pm_suspend(display);
 
 	intel_encoder_block_all_hpds(display);
 
-- 
2.47.3

