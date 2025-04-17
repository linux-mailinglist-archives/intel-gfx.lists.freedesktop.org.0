Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA13CA91B29
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 13:45:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33C7010EADF;
	Thu, 17 Apr 2025 11:45:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LNUf7yen";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FFF410EADF
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Apr 2025 11:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744890313; x=1776426313;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1D0Upe53E70YW+fiXAcK6lElvrCSd5ufbrnmcsNi7ZU=;
 b=LNUf7yen+vl7C6HRfG08mhQVdua+zJ96NipqBvGjBsepK23J2glN2CFQ
 OPHpbquSJi/Wt/J4y/FJCEs2k5/5OGHub33bWRpal0moi0AnMeIuZefdQ
 jCOT38cINrIS6/P3FLDWNKPloxd1eJkaTTFhnBXSJRWLQ9QSlJ2/4ybHb
 KT6tZgbvNweztcOPSisr+YEaVFCBKRv1druOCA/NrOYAJ6cZzFQiEIBpk
 /GsY3+Sq/7AuA/h4cI8IF4iqKqjDoPebWqFOzcow4TusPVKZRCcTyH+Jx
 dZqvesCesx7KQZkrOr1GI11RoinnOUdnWBx/Py4Std3oQvJi2Yy/qIyzC Q==;
X-CSE-ConnectionGUID: HWkDaO6pRy29R1omP3IYqw==
X-CSE-MsgGUID: SbK4wFZ8QsO/fdQ4AFOIRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46638263"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="46638263"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 04:45:12 -0700
X-CSE-ConnectionGUID: G8XykgwWQ9y2BVBIqqlaDQ==
X-CSE-MsgGUID: ZIeLtS5WQHqgdsTN5DaPXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="135943664"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 17 Apr 2025 04:45:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Apr 2025 14:45:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/6] drm/i915/vga: Nuke vga_redisable_power_on()
Date: Thu, 17 Apr 2025 14:44:53 +0300
Message-ID: <20250417114454.12836-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
References: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Now that intel_vga_disable() itself will print a debug
message, intel_vga_redisable_power_on() is completely redudant.
Get rid of it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_power_well.c |  2 +-
 drivers/gpu/drm/i915/display/intel_vga.c            | 13 +------------
 drivers/gpu/drm/i915/display/intel_vga.h            |  1 -
 3 files changed, 2 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index b9b4359751cc..9641fb5b846b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1252,7 +1252,7 @@ static void vlv_display_power_well_init(struct intel_display *display)
 			intel_crt_reset(&encoder->base);
 	}
 
-	intel_vga_redisable_power_on(display);
+	intel_vga_disable(display);
 
 	intel_pps_unlock_regs_wa(display);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 7ee689a9da92..d01de61105c1 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -74,17 +74,6 @@ void intel_vga_disable(struct intel_display *display)
 	intel_de_posting_read(display, vga_reg);
 }
 
-void intel_vga_redisable_power_on(struct intel_display *display)
-{
-	i915_reg_t vga_reg = intel_vga_cntrl_reg(display);
-
-	if (!(intel_de_read(display, vga_reg) & VGA_DISP_DISABLE)) {
-		drm_dbg_kms(display->drm,
-			    "Something enabled VGA plane, disabling it\n");
-		intel_vga_disable(display);
-	}
-}
-
 void intel_vga_redisable(struct intel_display *display)
 {
 	intel_wakeref_t wakeref;
@@ -102,7 +91,7 @@ void intel_vga_redisable(struct intel_display *display)
 	if (!wakeref)
 		return;
 
-	intel_vga_redisable_power_on(display);
+	intel_vga_disable(display);
 
 	intel_display_power_put(display, POWER_DOMAIN_VGA, wakeref);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vga.h b/drivers/gpu/drm/i915/display/intel_vga.h
index 824dfc32a199..d0716782c1f9 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.h
+++ b/drivers/gpu/drm/i915/display/intel_vga.h
@@ -11,7 +11,6 @@ struct intel_display;
 void intel_vga_reset_io_mem(struct intel_display *display);
 void intel_vga_disable(struct intel_display *display);
 void intel_vga_redisable(struct intel_display *display);
-void intel_vga_redisable_power_on(struct intel_display *display);
 int intel_vga_register(struct intel_display *display);
 void intel_vga_unregister(struct intel_display *display);
 
-- 
2.49.0

