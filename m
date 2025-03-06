Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE4AA55131
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:35:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F1D410EA0E;
	Thu,  6 Mar 2025 16:35:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mOdzPXEL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93DB210EA0E
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741278914; x=1772814914;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UUOJQf8CmJupLag/i1ew9UFKGSN+58nCQSYuOQnzUVY=;
 b=mOdzPXELXxFmoOu5RuN0ZEwmnJ52ZEbuVsWjWpNvCiNh15ulhDFjlFXH
 jACf8CQIWkmkMEtPlcgRKfr0ryAMnl80SVQTp+PT6vrjAPOXF9y+VgFNa
 jYePbiFeYmg31KI8qhSBAKYuGjqMLRh7nHIqCznTizkbn/8DpRgdbPK5u
 qa8Gheic4laAc0ynn4IG7tVDny6B3f5t4wQzSSdINzrkXoGWO6zCU0Pg9
 EOyItQ6s69jf/huSbFG/mV9j+osUJkSLAA0XpIXaTv01yk9pC4v+LHq6u
 CKS57Bjmwa6PnlvovgJ/aqZMpsTAKhJ1s98yWKczcDIoCmQWIeZnuPrse Q==;
X-CSE-ConnectionGUID: vkVvhdt0S9ymB0YY+O6Gew==
X-CSE-MsgGUID: ZAb+12xpSVOABpD8Zl0/Dw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53704397"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53704397"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:35:14 -0800
X-CSE-ConnectionGUID: oZInXwbCTHSf+iQ+SCIqXQ==
X-CSE-MsgGUID: 02wm2sTyTWaX/j+P86xOxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124289243"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:35:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:35:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 16/18] drm/i915: Do wm readout ealier for skl+
Date: Thu,  6 Mar 2025 18:34:18 +0200
Message-ID: <20250306163420.3961-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
References: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
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

Move the wm readout to happen earlier. This is needed because
the bw_state readout will need ddb information populated by
the wm readout.

For now limit this to skl+ as I've not really analyzed the
implications of doing this on other platforms.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 03c0facfad7a..6a4142d7d025 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -880,6 +880,10 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 						 crtc_state->port_clock);
 	}
 
+	/* TODO move here (or even earlier?) on all platforms */
+	if (DISPLAY_VER(display) >= 9)
+		intel_wm_get_hw_state(i915);
+
 	intel_bw_update_hw_state(display);
 	intel_cdclk_update_hw_state(display);
 
@@ -990,7 +994,9 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 
 	intel_dpll_sanitize_state(display);
 
-	intel_wm_get_hw_state(i915);
+	/* TODO move earlier on all platforms */
+	if (DISPLAY_VER(display) < 9)
+		intel_wm_get_hw_state(i915);
 	intel_wm_sanitize(i915);
 
 	for_each_intel_crtc(&i915->drm, crtc) {
-- 
2.45.3

