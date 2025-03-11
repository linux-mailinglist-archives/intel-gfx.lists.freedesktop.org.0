Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBBFA5BCB4
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 10:50:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4509110E553;
	Tue, 11 Mar 2025 09:50:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I0muvZqi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D3E010E553;
 Tue, 11 Mar 2025 09:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741686600; x=1773222600;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=25AyOOFW8lx/wcVTPeUldmGb7poUa6eMHthPvWuq5aY=;
 b=I0muvZqieSRghWxynG53/Jlz9PlLLKrkVgQuzjaemAEaDpWdK/+cMQue
 ZcxyKIenzdIYHIW7SWNBUH8LzR7JUI7VV0TaKPk1gkvzEGqLBm+U/fwSp
 e7mjDthy2gHRPOGOLEKK40BlN2diz9MaK8Bq1iJ1DHFDvH+zMwBUYyHFa
 RBMQH2rfIr7kec7rIOu7CFPl/alMTQrd+n03x0Fg8YKNNRdQXqi8bijya
 +CTAoR9CBtvFlb1fmFk96WHng8fH0Qu4ZTCK7H7G02xKxMiwwzEnsyFYj
 vGeKWjjMMC5nn5/r9DNMgUt7Kjq4wmSW4f96TSF3bkauckOLePeHr9azg Q==;
X-CSE-ConnectionGUID: QOUOs9AbQJaI9fs/ph0TQg==
X-CSE-MsgGUID: VHCpyCosQnmNXtu/jebW+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="45499809"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="45499809"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 02:50:00 -0700
X-CSE-ConnectionGUID: Z0ydu74RSfqOrU7o3cnmzA==
X-CSE-MsgGUID: ZCG57MqYQrWbxppAAS673Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="125319658"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 02:49:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [RESEND PATCH 5/8] drm/i915/vrr: Track vrr.enable only for variable
 timing
Date: Tue, 11 Mar 2025 15:07:48 +0530
Message-ID: <20250311093751.1329043-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250311093751.1329043-1-ankit.k.nautiyal@intel.com>
References: <20250311093751.1329043-1-ankit.k.nautiyal@intel.com>
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

Since CMRR is now disabled, use the flag vrr.enable to tracks if vrr timing
generator is used with variable timings.

Avoid setting vrr.enable for CMRR and adjust readout to not set vrr.enable
when vmax == vmin == flipline (fixed refresh rate timing).

v2: Use intel_vrr_vmin_flipline() to account for adjustments required
for icl/tgl. (Ville)

v3: Add a #TODO for handling I915_MODE_FLAG_VRR better for CMRR. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index a57659820f4b..7320eb97991f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -226,7 +226,6 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 static
 void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 {
-	crtc_state->vrr.enable = true;
 	crtc_state->cmrr.enable = true;
 	/*
 	 * TODO: Compute precise target refresh rate to determine
@@ -527,6 +526,14 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
 }
 
+static
+bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->vrr.flipline &&
+	       crtc_state->vrr.flipline == crtc_state->vrr.vmax &&
+	       crtc_state->vrr.flipline == intel_vrr_vmin_flipline(crtc_state);
+}
+
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -536,7 +543,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	trans_vrr_ctl = intel_de_read(display,
 				      TRANS_VRR_CTL(display, cpu_transcoder));
 
-	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
 	if (HAS_CMRR(display))
 		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
 
@@ -576,6 +582,14 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		}
 	}
 
+	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
+				 !intel_vrr_is_fixed_rr(crtc_state);
+
+	/*
+	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
+	 * Since CMRR is currently disabled, set this flag for VRR for now.
+	 * Need to keep this in mind while re-enabling CMRR.
+	 */
 	if (crtc_state->vrr.enable)
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
-- 
2.45.2

