Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 891C368D545
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 12:16:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C384010E038;
	Tue,  7 Feb 2023 11:16:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E3C010E038
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 11:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675768592; x=1707304592;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0TRu6ICI1BT0OYHWf1pJPO652RlOs7P+i3Z9o+RUllo=;
 b=fLgz6V1uBq1I8yMcjVS6JKLFn3AE7vRyPBmsWsO5moI2jlKLVWSqVmgc
 SXXakKefXQazYjse+9n8UP30W3AxOgOB5nXCzkHIBpwJhYVwLIk1e3Y2z
 kXDvVk/xp4IZ+4QwXvVUh9RSufPg7YNKPNQxq2I7SJuOI+7PtCW4SO3xZ
 o5iJPCWKxNMwAE/C4S/BcjvSGZ88SdNvE05/SxdbNKgaPLHUYr984kaW7
 pWXRD1a3fPWXFwTSzoW1KIC/g7hXMG/m4FDr+GwrM53qUY6gEcJMmM5Vm
 t/Ant3rwNfipoUrrHB1K2D4fhMpGjN2Ogi1lPGacvCrM89k8ei8W+i31k Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="313127100"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="313127100"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 03:16:31 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="660194924"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="660194924"
Received: from tronach-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.11])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 03:16:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Feb 2023 13:16:26 +0200
Message-Id: <20230207111626.1839645-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/bios: set default backlight controller
 index
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With backlight controller set to -1 in intel_panel_init_alloc() to
distinguish uninitialized values, and controller later being set only if
it's present in VBT, we can end up with -1 for the controller:

    [drm:intel_bios_init_panel [i915]] VBT backlight PWM modulation
    frequency 200 Hz, active high, min brightness 0, level 255,
    controller 4294967295

There's no harm if it happens on platforms that ignore controller due to
only one backlight controller being present, like on VLV above, but play
it safe.

Fixes: bf38bba3e7d6 ("drm/i915: Try to use the correct power sequencer intiially on bxt/glk")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index e6ca51232dcf..ad833069f59c 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1033,6 +1033,7 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 	}
 
 	panel->vbt.backlight.type = INTEL_BACKLIGHT_DISPLAY_DDI;
+	panel->vbt.backlight.controller = 0;
 	if (i915->display.vbt.version >= 191) {
 		size_t exp_size;
 
-- 
2.34.1

