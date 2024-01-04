Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AFA823D71
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 09:30:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F7410E3BE;
	Thu,  4 Jan 2024 08:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08FDC10E3BE
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 08:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704357001; x=1735893001;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fMzroJfoLAOv2mX8XEj/nD413L/lJZHQiio4dVXkERc=;
 b=Fvm/BmHTz2L4QyoJEW46owgEFM8QdQ0N7Zg/SEyf5Pfqu97295nnY321
 znQZLLjqhF2qjamGkmQMmeaSFE13wkYLc7CbwMUny54SiZ7uYOWbvcwu8
 j9U7wUe3fOBEkGVXALC8RrpzgaMRLOoV93gX6EW/8NpDQfv0YlSE/gjVJ
 GSf2ZPB60t21nDA5Dhi4goDCWjCyUw0eRW21rADesI6Hoko/2xxVtg5nX
 CF+lIFwSEdLP86BGzmvu3YuE+1qj7CPf2lI9yk/aQkkfPtn04c9yCbWz+
 7ZZ5he+oZ80kaZP72zKktYl1zkeOtShXxPOsoBKFG6iZkw9NWxjAY6KiJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="387624507"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="387624507"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:30:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="773422626"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="773422626"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:30:00 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/12] drm/i915: Move audio deinit after disabling polling
Date: Thu,  4 Jan 2024 10:29:59 +0200
Message-Id: <20240104083008.2715733-4-imre.deak@intel.com>
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

Deinitialize audio during driver unload after disabling polling. This is
in preparation to do all the display HW init/deinit steps at a point
where no HPD IRQ or polling initiated connector detection or modeset can
change the HW state. This may still happen here via an HPD IRQ ->
hotplug detection work or a connector sysfs (state/detect) access, but
these will be prevented by later changes in this patchset.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 9df9097a0255a..da549962feccd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -486,14 +486,15 @@ void intel_display_driver_unregister(struct drm_i915_private *i915)
 		return;
 
 	intel_fbdev_unregister(i915);
-	intel_audio_deinit(i915);
-
 	/*
 	 * After flushing the fbdev (incl. a late async config which
 	 * will have delayed queuing of a hotplug event), then flush
 	 * the hotplug events.
 	 */
 	drm_kms_helper_poll_fini(&i915->drm);
+
+	intel_audio_deinit(i915);
+
 	drm_atomic_helper_shutdown(&i915->drm);
 
 	acpi_video_unregister();
-- 
2.39.2

