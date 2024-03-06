Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC163872D3C
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 04:06:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77633112382;
	Wed,  6 Mar 2024 03:06:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TKeqSUEA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4301112382
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 03:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709694386; x=1741230386;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZAWGyNBOBH/Lk1u7Rc+GiELJ77g12p0bMOJIEZ91S5k=;
 b=TKeqSUEAq6ZaQcV2FGqcqSRBdC9xtYBCtS2UqEq3G3lGIlKvQPaL8xdz
 ljx/wnlQzVi25T4k8xr5/Vv8rObZQGkJVZ/xYaqi8jCdy0PV+2MNeI9ib
 12sNMcETEn1u00LWeI7Qf0+W5h0t0DuPzhYG0OdWD+PePPS1i5s+gsYm/
 9i22MbqWmS91yX67celZGderDFO+z1mHNEvSOYicieDRSJwJKgENgQmf/
 fOxpqqo9CwkA7UuTV+ELdp3X9tPN1PqZlQxWrXw+ZVLvXyG0P1ksOzIRR
 Ubaf38SIZkNtiSVTlYrN8afwcjFoAzfsUF8xabb0C2Aj9Ijt2jDUKI7O7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4458789"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; 
   d="scan'208";a="4458789"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 19:06:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="40479530"
Received: from gyu3-linux.itwn.intel.com ([10.225.64.197])
 by orviesa002.jf.intel.com with ESMTP; 05 Mar 2024 19:06:12 -0800
From: gareth.yu@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: Gareth Yu <gareth.yu@intel.com>
Subject: [PATCH] drm/i915/display: Fixed a screen flickering when turning on
 display from off
Date: Wed,  6 Mar 2024 11:13:48 +0800
Message-Id: <20240306031348.1344034-1-gareth.yu@intel.com>
X-Mailer: git-send-email 2.25.1
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

From: Gareth Yu <gareth.yu@intel.com>

Turn on the panel from zero brightness of the last state, the panel was set
a maximum PWM in the flow. Once the panel initialization is completed, the
backlight is restored to zero brightness. There is a flckering generated.

Set the brightness to the minimum value when the brightness is less or equal
to the minimum value to fix this flickering

Cc : Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Cc : Matt Roper <matthew.d.roper@intel.com>
Cc : Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gareth Yu <gareth.yu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 3f3cd944a1c5..855d6ead905c 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -762,7 +762,7 @@ static void __intel_backlight_enable(const struct intel_crtc_state *crtc_state,
 	WARN_ON(panel->backlight.max == 0);
 
 	if (panel->backlight.level <= panel->backlight.min) {
-		panel->backlight.level = panel->backlight.max;
+		panel->backlight.level = panel->backlight.min;
 		if (panel->backlight.device)
 			panel->backlight.device->props.brightness =
 				scale_hw_to_user(connector,
-- 
2.25.1

