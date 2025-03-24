Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 815A0A6DBE5
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 14:44:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1275F10E43F;
	Mon, 24 Mar 2025 13:44:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ox6obM8N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 482B110E440;
 Mon, 24 Mar 2025 13:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742823897; x=1774359897;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+onqxst8+HEmQgmlX20rZBtY8zJwfYVAOnIx7F/cWQc=;
 b=Ox6obM8NFlGClsrX4whbqD7WJsdorC+nWVlEr+V+brCaS7wiIkF+GEkP
 eD/YwWslcSFpdsjXnOWw6GADhJhrhDVgCCoWmyS1TWVxDBVI9RMsTw6di
 z3kPIVrGXHkcwy3FLG0Puz+I1alQ5hyjKylkh+owNOHXGxfO1uYL2gecH
 LxLr3PYfNhBMI2BcjOO3E/fQzrZA98qAptofBoXubwixxmGY1qr7oXw3Y
 h59iFXJ48BWEZPidKKJ18HvtPrzMpVJjmlB1WyAzHRjg7AeXgA0poFMdc
 +1gEneg2GpMndUihbMSIfuW9YTIXiiWcdETK6G2cX9VaSJp8rBHUI2W4X A==;
X-CSE-ConnectionGUID: U8T2RM4zRaC1IEjX4Z1Owg==
X-CSE-MsgGUID: g3MICvdFRcmxw8QettMADQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="43955730"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="43955730"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:44:57 -0700
X-CSE-ConnectionGUID: ds2D+cGrRuOtX61EiHDsvg==
X-CSE-MsgGUID: J5DNIjcnQJ+oAlgR8gCz8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="124040666"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:44:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 10/16] drm/i915/display: Use fixed rr timings in
 intel_set_transcoder_timings_lrr()
Date: Mon, 24 Mar 2025 19:02:42 +0530
Message-ID: <20250324133248.4071909-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
References: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
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

Update the intel_set_transcoder_timings_lrr() function to use
fixed refresh rate timings.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 +++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 1 -
 drivers/gpu/drm/i915/display/intel_vrr.h     | 1 +
 3 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b68b86923dca..d26e696ec037 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2769,6 +2769,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
+
+	intel_vrr_set_fixed_rr_timings(crtc_state);
+	intel_vrr_transcoder_enable(crtc_state);
 }
 
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index f225fd7f34ff..352b853c10eb 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -286,7 +286,6 @@ int intel_vrr_fixed_rr_flipline(const struct intel_crtc_state *crtc_state)
 	return intel_vrr_fixed_rr_vtotal(crtc_state);
 }
 
-static
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 859f1dc8a6d7..c95acf1ad238 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -38,5 +38,6 @@ int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
+void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

