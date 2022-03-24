Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAA64E686D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 19:12:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5DDA10E585;
	Thu, 24 Mar 2022 18:12:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7FE610E5EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 18:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648145564; x=1679681564;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R9hp3rYgPhGWQVBWTdr9grE9mEElGKjvQMWIEoloiy8=;
 b=SQGBIFlKz1S7rv7EGJt/prnTgGkzJPiWq+f6bA3GLtoF/d66CPCEJ80S
 VdiP96k/iJ7wihxEQ2DD2prYCFoADAUhAiUjMV3MHSuQrNYzzvrabXDbB
 S3lSQ9+itVHw8oGXWJan+OZ+1fNHGNEW9sPMJ8lcuAyDK+xbnJIHaonfp
 M0HN2Of7daelj5Yy98vkc7xQ6ahsIS59Ik9z+o1JxNH1g0avoB26D+uBw
 U1BZWjhPFlOrs7L4B7RBB3pH6QbNjQSzEv9+63JPP2C8ygatiPCoJjTPo
 EJc6PoMPUc0OPbM5JXd3lCTMfD61HnrjgSnBJAh8cMRQkrV3ur1GXO0NO w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="256019063"
X-IronPort-AV: E=Sophos;i="5.90,208,1643702400"; d="scan'208";a="256019063"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 11:12:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,208,1643702400"; d="scan'208";a="601779630"
Received: from josouza-mobl2.fso.intel.com (HELO josouza-mobl2.intel.com)
 ([10.230.19.149])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 11:12:42 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Mar 2022 11:13:47 -0700
Message-Id: <20220324181347.129378-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220324181347.129378-1-jose.souza@intel.com>
References: <20220324181347.129378-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display/psr: Use continuos full
 frame to handle frontbuffer invalidations
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

Instead of exit PSR when a frontbuffer invalidation happens, we can
enable the PSR2 selective fetch continuous full frame, that will keep
the panel updated like PSR was disabled but without keeping PSR active.

So as soon as the frontbuffer flush happens we can disable the
continuous full frame and start to do selective fetches much quicker
than the path that would enable PSR, that will wait a few frames
to actually activate PSR.

Also this approach has proven to fix some glitches found in Alderlake-P
when there are a lot of invalidations happening together with page
flips.

Some may ask why it is writing to CURSURFLIVE(), it is because
that is the way that hardware team provided us to poke display to
handle PSR updates, and it is being used since display 9.

Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
Cc: Shawn C Lee <shawn.c.lee@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 109 ++++++++++++++++++++---
 1 file changed, 95 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d87b357806c91..f7b7b374374b1 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1450,6 +1450,22 @@ static inline u32 man_trk_ctl_partial_frame_bit_get(struct drm_i915_private *dev
 	       PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
 }
 
+static inline u32 man_trk_ctl_continuos_full_frame(struct drm_i915_private *dev_priv)
+{
+	return IS_ALDERLAKE_P(dev_priv) ?
+	       ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME :
+	       PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
+}
+
+static inline u32 man_trk_ctl_su_region_start_end_mask(struct drm_i915_private *dev_priv)
+{
+	if (IS_ALDERLAKE_P(dev_priv))
+		return ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK |
+		       ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK;
+	return PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK |
+	       PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK;
+}
+
 static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -1546,8 +1562,9 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(crtc_state->cpu_transcoder),
-		       crtc_state->psr2_man_track_ctl);
+	intel_de_rmw(dev_priv, PSR2_MAN_TRK_CTL(crtc_state->cpu_transcoder),
+		     man_trk_ctl_su_region_start_end_mask(dev_priv),
+		     crtc_state->psr2_man_track_ctl);
 }
 
 static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
@@ -2127,6 +2144,26 @@ static void intel_psr_work(struct work_struct *work)
 	mutex_unlock(&intel_dp->psr.lock);
 }
 
+static void _psr_invalidate_handle(struct intel_dp *intel_dp,
+				   unsigned int prev_busy_frontbuffer_bits)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	if (intel_dp->psr.psr2_sel_fetch_enabled) {
+		u32 val = man_trk_ctl_continuos_full_frame(dev_priv) |
+			  man_trk_ctl_partial_frame_bit_get(dev_priv);
+
+		/* continuos full frame is already enabled */
+		if (prev_busy_frontbuffer_bits)
+			return;
+
+		intel_de_rmw(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder), 0, val);
+		intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
+	} else {
+		intel_psr_exit(intel_dp);
+	}
+}
+
 /**
  * intel_psr_invalidate - Invalidade PSR
  * @dev_priv: i915 device
@@ -2151,6 +2188,7 @@ void intel_psr_invalidate(struct drm_i915_private *dev_priv,
 	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
 		unsigned int pipe_frontbuffer_bits = frontbuffer_bits;
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+		unsigned int prev_busy_frontbuffer_bits;
 
 		mutex_lock(&intel_dp->psr.lock);
 		if (!intel_dp->psr.enabled) {
@@ -2158,12 +2196,13 @@ void intel_psr_invalidate(struct drm_i915_private *dev_priv,
 			continue;
 		}
 
+		prev_busy_frontbuffer_bits = intel_dp->psr.busy_frontbuffer_bits;
 		pipe_frontbuffer_bits &=
 			INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe);
 		intel_dp->psr.busy_frontbuffer_bits |= pipe_frontbuffer_bits;
 
 		if (pipe_frontbuffer_bits)
-			intel_psr_exit(intel_dp);
+			_psr_invalidate_handle(intel_dp, prev_busy_frontbuffer_bits);
 
 		mutex_unlock(&intel_dp->psr.lock);
 	}
@@ -2195,6 +2234,49 @@ tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
 			 intel_dp->psr.dc3co_exit_delay);
 }
 
+static void _psr_flush_handle(struct intel_dp *intel_dp,
+			      unsigned int prev_busy_frontbuffer_bits)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	if (intel_dp->psr.psr2_sel_fetch_enabled) {
+		/* is continuos full frame enabled? */
+		if (prev_busy_frontbuffer_bits) {
+			/* it is, can we turn it off? */
+			if (intel_dp->psr.busy_frontbuffer_bits == 0) {
+				u32 clear = man_trk_ctl_continuos_full_frame(dev_priv);
+				u32 set = man_trk_ctl_single_full_frame_bit_get(dev_priv) |
+					  man_trk_ctl_partial_frame_bit_get(dev_priv);
+
+				/*
+				 * turn continuos full frame off and do a single
+				 * full frame
+				 */
+				intel_de_rmw(dev_priv,
+					     PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
+					     clear, set);
+				intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
+			}
+		} else {
+			/*
+			 * continuos full frame is disabled, only a single full
+			 * frame is required
+			 */
+			psr_force_hw_tracking_exit(intel_dp);
+		}
+	} else {
+		/*
+		 * if prev_busy_frontbuffer_bits is set, it means that PSR is
+		 * inactive
+		 */
+		if (prev_busy_frontbuffer_bits == 0)
+			psr_force_hw_tracking_exit(intel_dp);
+
+		if (!intel_dp->psr.active && !intel_dp->psr.busy_frontbuffer_bits)
+			schedule_work(&intel_dp->psr.work);
+	}
+}
+
 /**
  * intel_psr_flush - Flush PSR
  * @dev_priv: i915 device
@@ -2216,6 +2298,7 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
 	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
 		unsigned int pipe_frontbuffer_bits = frontbuffer_bits;
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+		unsigned int prev_busy_frontbuffer_bits;
 
 		mutex_lock(&intel_dp->psr.lock);
 		if (!intel_dp->psr.enabled) {
@@ -2223,6 +2306,7 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
 			continue;
 		}
 
+		prev_busy_frontbuffer_bits = intel_dp->psr.busy_frontbuffer_bits;
 		pipe_frontbuffer_bits &=
 			INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe);
 		intel_dp->psr.busy_frontbuffer_bits &= ~pipe_frontbuffer_bits;
@@ -2232,25 +2316,22 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
 		 * we have to ensure that the PSR is not activated until
 		 * intel_psr_resume() is called.
 		 */
-		if (intel_dp->psr.paused) {
-			mutex_unlock(&intel_dp->psr.lock);
-			continue;
-		}
+		if (intel_dp->psr.paused)
+			goto exit;
 
 		if (origin == ORIGIN_FLIP ||
 		    (origin == ORIGIN_CURSOR_UPDATE &&
 		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
 			tgl_dc3co_flush_locked(intel_dp, frontbuffer_bits, origin);
-			mutex_unlock(&intel_dp->psr.lock);
-			continue;
+			goto exit;
 		}
 
-		/* By definition flush = invalidate + flush */
-		if (pipe_frontbuffer_bits)
-			psr_force_hw_tracking_exit(intel_dp);
+		if (pipe_frontbuffer_bits == 0)
+			goto exit;
 
-		if (!intel_dp->psr.active && !intel_dp->psr.busy_frontbuffer_bits)
-			schedule_work(&intel_dp->psr.work);
+		/* By definition flush = invalidate + flush */
+		_psr_flush_handle(intel_dp, prev_busy_frontbuffer_bits);
+exit:
 		mutex_unlock(&intel_dp->psr.lock);
 	}
 }
-- 
2.35.1

