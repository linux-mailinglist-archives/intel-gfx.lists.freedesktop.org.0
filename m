Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA25597BFD5
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 19:48:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E22F10E60C;
	Wed, 18 Sep 2024 17:48:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XRQ9k6/R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E38CC10E60C;
 Wed, 18 Sep 2024 17:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726681706; x=1758217706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0gQxRtVG+myPuw/T6xne4iQd6ntysvygDohT+qKfnHk=;
 b=XRQ9k6/RyxiBmxhnEVO7ikvKB50o2PaQFLs/67CLi1VGS7xCSF+CV3z1
 VtDgGjiaL37SYIi7QRW/YZkUS+ohioVb372Q3UVngrTO7/dtWUpvY/ICk
 gy1+9RdxFLLcqyWPpRq0Ho1RPX2a0+Eitzj1pdvIvAwhKVCwz4X54xt9O
 fTfonOrSKBrNTTL/iBR0diZ0XerRXqMZ6sgX6dKsnzqanNq87Dw98lbs7
 /9t3pw5odVXEiqhSdWQ39rPu3ZJlOBSLW7tN7V86Sry7vgCkPWP3FEJeW
 i+nITe9mYWE9vfx0InDSBzfPU7ytLNyVsXVzPF/h0X61uDryL2KGNyXZQ g==;
X-CSE-ConnectionGUID: IE2Mr8+QTGet5C8t4LxVIQ==
X-CSE-MsgGUID: a2aV63QKRjyV388liaVCrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25492988"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="25492988"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:48:26 -0700
X-CSE-ConnectionGUID: P0xCYr3ARYe7flpccjX7Aw==
X-CSE-MsgGUID: OZb2kBWxQbq+tlvcKI+eYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69660484"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:48:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 6/9] drm/i915/pps: add vlv_pps_port_disable()
Date: Wed, 18 Sep 2024 20:47:46 +0300
Message-Id: <2546716a448205ca5af085cec9faeb5e5deac287.1726681620.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726681620.git.jani.nikula@intel.com>
References: <cover.1726681620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add vlv_pps_port_disable() and move the VLV/CHV active pipe clear there
from intel_dp_link_down(), hiding the PPS pipe details inside PPS code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c    |  8 ++------
 drivers/gpu/drm/i915/display/intel_pps.c | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_pps.h |  2 ++
 3 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index edbd654757e2..e3db1cba11c9 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -477,12 +477,8 @@ intel_dp_link_down(struct intel_encoder *encoder,
 
 	msleep(intel_dp->pps.panel_power_down_delay);
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		intel_wakeref_t wakeref;
-
-		with_intel_pps_lock(intel_dp, wakeref)
-			intel_dp->pps.vlv_active_pipe = INVALID_PIPE;
-	}
+	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+		vlv_pps_port_disable(encoder, old_crtc_state);
 }
 
 static void g4x_dp_audio_enable(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index e4b17bd5efb5..465a555c9e24 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1272,6 +1272,18 @@ void vlv_pps_init(struct intel_encoder *encoder,
 	pps_init_registers(intel_dp, true);
 }
 
+/* Call on all DP, not just eDP */
+void vlv_pps_port_disable(struct intel_encoder *encoder,
+			  const struct intel_crtc_state *crtc_state)
+{
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	intel_wakeref_t wakeref;
+
+	with_intel_pps_lock(intel_dp, wakeref)
+		intel_dp->pps.vlv_active_pipe = INVALID_PIPE;
+}
+
 static void pps_vdd_init(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 6509768cd55f..795e25c91952 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -49,6 +49,8 @@ void vlv_pps_pipe_init(struct intel_dp *intel_dp);
 void vlv_pps_pipe_reset(struct intel_dp *intel_dp);
 void vlv_pps_init(struct intel_encoder *encoder,
 		  const struct intel_crtc_state *crtc_state);
+void vlv_pps_port_disable(struct intel_encoder *encoder,
+			  const struct intel_crtc_state *crtc_state);
 
 void intel_pps_unlock_regs_wa(struct intel_display *display);
 void intel_pps_setup(struct intel_display *display);
-- 
2.39.2

