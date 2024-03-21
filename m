Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25655881C01
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 05:44:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FB4D10EE38;
	Thu, 21 Mar 2024 04:44:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RrNaHiSV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF1CC10EE38
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Mar 2024 04:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710996280; x=1742532280;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H4+ZWqEZtz6eNFo7zMOdOFkW+uBqYOhAvceGp4pKaQ8=;
 b=RrNaHiSVpQmw/SwyW+XZtPfGsj+W5jT5/BtMq+jKYzCfqZWDurK68OMt
 eCb4hYgKDFKu+mxwQLYecAOjwFTaxQ29mQ8ogdUjb4DuAF7ExL8WtuMTh
 ilLRwCVRCes8HtWcAgDdt9ZnNJ3u4aza1066vmGwKEFs/lh64XNOEBqd1
 e/uk/5k9Ae6u+Mkv+CFFQyg48lYWUy4KAmhvlZNFFtJ+e86tENiZYrprm
 ZQsbGGL5kg8JgkpJ6Y4D1Jm7P4RWTPeAzOe9yhqkCd0jewMMn3Pun8opa
 ilz4xLKr7yhXKOBQExCuHzHqaL2IpaZa4TVwP6uvkvp6WnIli3HiU4Mjj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="5811393"
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; 
   d="scan'208";a="5811393"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 21:44:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="19100814"
Received: from gyu3-linux.itwn.intel.com ([10.225.64.197])
 by orviesa005.jf.intel.com with ESMTP; 20 Mar 2024 21:44:38 -0700
From: gareth.yu@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: Gareth Yu <gareth.yu@intel.com>
Subject: [PATCH] drm/i915/display: Fixed a screen flickering when turning on
 display from off
Date: Thu, 21 Mar 2024 12:53:11 +0800
Message-Id: <20240321045311.2124111-1-gareth.yu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240306031348.1344034-1-gareth.yu@intel.com>
References: <20240306031348.1344034-1-gareth.yu@intel.com>
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

Turn on the panel from zero brightness of the last state, the panel was
set a maximum PWM in the flow. Once the panel initialization is completed,
the backlight is restored to xero brightness. There is a flckering
generated. This flicker happens in "Screen dimming and power off" of
Google's design and resume from sleep. The sample of DMESG is below.

(suspend)
[53949.248875] i915 0000:00:02.0: [drm:intel_edp_backlight_off]
[53949.452046] i915 0000:00:02.0: [drm:intel_backlight_set_pwm_level] set backlight PWM = 0

(wakeup)
[53986.067356] i915 0000:00:02.0: [drm:intel_edp_backlight_on]
[53986.067367] i915 0000:00:02.0: [drm:intel_backlight_enable] pipe A
[53986.067476] i915 0000:00:02.0: [drm:intel_backlight_set_pwm_level] set backlight PWM = 96000
[53986.119766] backlight intel_backlight: PM: calling backlight_resume+0x0/0x7a @ 4916, parent: card0-eDP-1
[53986.119781] backlight intel_backlight: PM: backlight_resume+0x0/0x7a returned 0 after 0 usecs
[53986.220068] [drm:intel_backlight_device_update_status] updating intel_backlight, brightness=26321/96000
[53986.220086] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight] set backlight level = 27961

Set the brightness to the minimum value when the new brightness is less
or equal to the minimum value to mitigate this flickering.

Cc : Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Cc : Matt Roper <matthew.d.roper@intel.com>
Cc : Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gareth Yu <gareth.yu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 3f3cd944a1c5..23fd011b6bfb 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -761,8 +761,8 @@ static void __intel_backlight_enable(const struct intel_crtc_state *crtc_state,
 
 	WARN_ON(panel->backlight.max == 0);
 
-	if (panel->backlight.level <= panel->backlight.min) {
-		panel->backlight.level = panel->backlight.max;
+	if (panel->backlight.level < panel->backlight.min) {
+		panel->backlight.level = panel->backlight.min;
 		if (panel->backlight.device)
 			panel->backlight.device->props.brightness =
 				scale_hw_to_user(connector,
-- 
2.25.1

