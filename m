Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B34F139A0D9
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 14:29:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C6586E364;
	Thu,  3 Jun 2021 12:29:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3F746E364
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 12:29:12 +0000 (UTC)
IronPort-SDR: GYUXjgmlMpPTivUmYSs43tm3UeU0TOTgUIOPn0XJitwMGpJ01xMIr4TcUrUnu9l9mODv5P+qL3
 sWfnQv5TBTbw==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="289661602"
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="289661602"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 05:28:58 -0700
IronPort-SDR: PqGE3tg2n1ssiLxBI0RjajggEGrtEULeyzpq+lrAvDz5PYryiXs0NHJdG68nAw9wVaSRIoMx7b
 wT4diuqdadDw==
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="446272039"
Received: from sleader-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.54.200])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 05:28:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Jun 2021 15:28:42 +0300
Message-Id: <20210603122842.22496-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210603122842.22496-1-jani.nikula@intel.com>
References: <20210603122842.22496-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dsc: use crtc index for bigjoiner
 primary/secondary crtc
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pipe numbering isn't guaranteed to be contiguous; there may be fused off
pipes in the middle. The current bigjoiner primary/secondary crtc lookup
with pipe +/- 1 does not take this into account, and may fail
unexpectedly. Fixing this while using pipe numbering gets complicated.

Switch to using crtc index +/- 1 instead. They are contiguous, and the
crtc lookup neatly handles overflows and underflows. The performance
penalty from the crtc list lookup is neglible.

Fixes: 8a029c113b17 ("drm/i915/dp: Modify VDSC helpers to configure DSC for Bigjoiner slave")
Fixes: d961eb20adb6 ("drm/i915/bigjoiner: atomic commit changes for uncompressed joiner")
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 31 +++++++++++------------
 1 file changed, 15 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 1fd81bd3ea09..1d757b040bce 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1106,30 +1106,29 @@ static i915_reg_t dss_ctl2_reg(const struct intel_crtc_state *crtc_state)
 	return is_pipe_dsc(crtc_state) ? ICL_PIPE_DSS_CTL2(pipe) : DSS_CTL2;
 }
 
-struct intel_crtc *
-intel_dsc_get_bigjoiner_secondary(const struct intel_crtc *primary_crtc)
+static struct intel_crtc *
+get_linked_crtc(const struct intel_crtc *crtc, int index)
 {
-	struct drm_i915_private *i915 = to_i915(primary_crtc->base.dev);
-	enum pipe pipe = primary_crtc->pipe + 1;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_crtc *linked_crtc;
 
-	if (drm_WARN_ON(&i915->drm, pipe >= I915_MAX_PIPES ||
-			!(INTEL_INFO(i915)->pipe_mask & BIT(pipe))))
-		return NULL;
+	linked_crtc = to_intel_crtc(drm_crtc_from_index(&i915->drm, index));
 
-	return intel_get_crtc_for_pipe(i915, pipe);
+	drm_WARN_ON(&i915->drm, !linked_crtc);
+
+	return linked_crtc;
 }
 
 struct intel_crtc *
-intel_dsc_get_bigjoiner_primary(const struct intel_crtc *secondary_crtc)
+intel_dsc_get_bigjoiner_secondary(const struct intel_crtc *primary_crtc)
 {
-	struct drm_i915_private *i915 = to_i915(secondary_crtc->base.dev);
-	enum pipe pipe = secondary_crtc->pipe - 1;
-
-	if (drm_WARN_ON(&i915->drm, pipe <= INVALID_PIPE ||
-			!(INTEL_INFO(i915)->pipe_mask & BIT(pipe))))
-		return NULL;
+	return get_linked_crtc(primary_crtc, primary_crtc->base.index + 1);
+}
 
-	return intel_get_crtc_for_pipe(i915, pipe);
+struct intel_crtc *
+intel_dsc_get_bigjoiner_primary(const struct intel_crtc *secondary_crtc)
+{
+	return get_linked_crtc(secondary_crtc, secondary_crtc->base.index - 1);
 }
 
 void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
