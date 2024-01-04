Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2DB823D72
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 09:30:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FB9010E3C6;
	Thu,  4 Jan 2024 08:30:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B80010E3C6
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 08:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704357002; x=1735893002;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nX4sZFc19e1Q75lCHBLWqrz6T74idhJKPQV90pPv7cM=;
 b=nn+v9yWp23yNU7wB2pjhq9rFafmDQaUR8YptqpvV/wO5nd0rA4K2zqRY
 kEHQLY6+bHy9NgsbGun5SaZGf1FYAa3yNq5jQ4LKZCVG43Nxda/Su79Pt
 22mDq6tE9OqzWXSsSzy5yAxVxfvhXhqw1Chnk3xdbccJiStnqPl39TSCn
 zdJNbkTpROUhfdt+53xSvk2tE5xqt/PhEDUoG8ZgVX4cY9lPmI0m23cjI
 I+FDnhik7Pz8jjdqSmZ1n9i//nQpTSSkiWFIOu113pbxqowHn3HLjeo4F
 T/t5SREUQBPZI/srFNl/ffyvbbHvS9rGTnBGOp2wAN4iJPiXtxCT0yjwl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="387624512"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="387624512"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:30:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="773422628"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="773422628"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:30:01 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/12] drm/i915: Disable intel HPD poll after DRM poll
 init/enable
Date: Thu,  4 Jan 2024 10:30:00 +0200
Message-Id: <20240104083008.2715733-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104083008.2715733-1-imre.deak@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
MIME-Version: 1.0
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

The only purpose of intel_hpd_poll_disable() during driver loading and
system resume - at which point polling should be disabled anyway, except
for connectors in an IRQ storm, for which the polling will stay enabled -
is to force-detect all the connectors. However this detection in
i915_hpd_poll_init_work() depends on drm.mode_config.poll_enabled, which
will get set in drm_kms_helper_poll_init(), possibly after
i915_hpd_poll_init_work() is scheduled. Hence the initial detection of
connectors during driver loading may not happen.

Fix the above by moving intel_hpd_poll_disable() after
i915_hpd_poll_init_work(), the proper place anyway for doing the above
detection after all the HW initialization steps are complete. Change the
order the same way during system resume as well. The above race
condition shouldn't matter here - as drm.mode_config.poll_enabled will
be set - but the detection should happen here as well after the HW init
steps are done.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 2 +-
 drivers/gpu/drm/i915/i915_driver.c                  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index da549962feccd..1974f2394a518 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -374,7 +374,6 @@ int intel_display_driver_probe(struct drm_i915_private *i915)
 
 	/* Only enable hotplug handling once the fbdev is fully set up. */
 	intel_hpd_init(i915);
-	intel_hpd_poll_disable(i915);
 
 	skl_watermark_ipc_init(i915);
 
@@ -412,6 +411,7 @@ void intel_display_driver_register(struct drm_i915_private *i915)
 	 * fbdev->async_cookie.
 	 */
 	drm_kms_helper_poll_init(&i915->drm);
+	intel_hpd_poll_disable(i915);
 
 	intel_display_device_info_print(DISPLAY_INFO(i915),
 					DISPLAY_RUNTIME_INFO(i915), &p);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c7d7c3b7ecc63..be86596a8904d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1249,9 +1249,9 @@ static int i915_drm_resume(struct drm_device *dev)
 	intel_dp_mst_resume(dev_priv);
 	intel_display_driver_resume(dev_priv);
 
-	intel_hpd_poll_disable(dev_priv);
 	if (HAS_DISPLAY(dev_priv))
 		drm_kms_helper_poll_enable(dev);
+	intel_hpd_poll_disable(dev_priv);
 
 	intel_opregion_resume(dev_priv);
 
-- 
2.39.2

