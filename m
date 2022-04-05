Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A154F3C71
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 17:52:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB3E410EA06;
	Tue,  5 Apr 2022 15:52:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE30810EA05
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 15:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649173955; x=1680709955;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TrgnDrR5kzm/M8uspQ0nkyavedNswgbmjcZ5GsQpDOE=;
 b=gO5QR1NTcHQs5T/9SbJRuCOB9WtKlk2MNopJE2Qg1mwWgjREcnF5QegY
 8LFEVzXjtenOImiG+dDtmGRXHe/LRABg/Ck4IRaWcwJQI7stFfccbbDJq
 C2UcJnU99naaf3AdAzqWBfJx1FlQAmXl4DTijF8DaipvfrFkl1N/8OWCG
 5AaT6aEtg2ddv6prrtkujhXr00vIKCpfLhV67cn4KE84Mf1k5scG+WjeA
 TGDaFjqOJkDsU4Z6xjrmxVWQM3UBjDRyUD6Gmotg4WOhWiKaVieOZt26j
 kapJA3bsbdaDoQS3jJlDyLhfLc1niV2USzn/YO/c6w5kMimVysSkbwDuf g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="321480375"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="321480375"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 08:52:35 -0700
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="524047590"
Received: from unknown (HELO josouza-mobl2.intel.com) ([10.230.19.149])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 08:52:33 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 08:53:44 -0700
Message-Id: <20220405155344.47219-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405155344.47219-1-jose.souza@intel.com>
References: <20220405155344.47219-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI 3/3] drm/i915/display/psr: Use continuos full
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

v2:
- handling possible race conditions between frontbuffer rendering and
page flips

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
Cc: Shawn C Lee <shawn.c.lee@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 88 ++++++++++++++++---
 2 files changed, 77 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 96024f7d839d4..cfd042117b109 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1525,6 +1525,7 @@ struct intel_psr {
 	bool colorimetry_support;
 	bool psr2_enabled;
 	bool psr2_sel_fetch_enabled;
+	bool psr2_sel_fetch_cff_enabled;
 	bool req_psr2_sdp_prior_scanline;
 	u8 sink_sync_latency;
 	ktime_t last_entry_attempt;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9517074cd097e..5a55010a9b2f7 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1221,6 +1221,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	intel_dp->psr.dc3co_exit_delay = val;
 	intel_dp->psr.dc3co_exitline = crtc_state->dc3co_exitline;
 	intel_dp->psr.psr2_sel_fetch_enabled = crtc_state->enable_psr2_sel_fetch;
+	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
 	intel_dp->psr.req_psr2_sdp_prior_scanline =
 		crtc_state->req_psr2_sdp_prior_scanline;
 
@@ -1455,6 +1456,13 @@ static u32 man_trk_ctl_partial_frame_bit_get(struct drm_i915_private *dev_priv)
 	       PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
 }
 
+static u32 man_trk_ctl_continuos_full_frame(struct drm_i915_private *dev_priv)
+{
+	return IS_ALDERLAKE_P(dev_priv) ?
+	       ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME :
+	       PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
+}
+
 static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -1558,6 +1566,8 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 		lockdep_assert_held(&intel_dp->psr.lock);
+		if (intel_dp->psr.psr2_sel_fetch_cff_enabled)
+			return;
 		break;
 	}
 
@@ -2135,6 +2145,27 @@ static void intel_psr_work(struct work_struct *work)
 	mutex_unlock(&intel_dp->psr.lock);
 }
 
+static void _psr_invalidate_handle(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	if (intel_dp->psr.psr2_sel_fetch_enabled) {
+		u32 val;
+
+		if (intel_dp->psr.psr2_sel_fetch_cff_enabled)
+			return;
+
+		val = man_trk_ctl_enable_bit_get(dev_priv) |
+		      man_trk_ctl_partial_frame_bit_get(dev_priv) |
+		      man_trk_ctl_continuos_full_frame(dev_priv);
+		intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder), val);
+		intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
+		intel_dp->psr.psr2_sel_fetch_cff_enabled = true;
+	} else {
+		intel_psr_exit(intel_dp);
+	}
+}
+
 /**
  * intel_psr_invalidate - Invalidade PSR
  * @dev_priv: i915 device
@@ -2171,7 +2202,7 @@ void intel_psr_invalidate(struct drm_i915_private *dev_priv,
 		intel_dp->psr.busy_frontbuffer_bits |= pipe_frontbuffer_bits;
 
 		if (pipe_frontbuffer_bits)
-			intel_psr_exit(intel_dp);
+			_psr_invalidate_handle(intel_dp);
 
 		mutex_unlock(&intel_dp->psr.lock);
 	}
@@ -2203,6 +2234,42 @@ tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
 			 intel_dp->psr.dc3co_exit_delay);
 }
 
+static void _psr_flush_handle(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	if (intel_dp->psr.psr2_sel_fetch_enabled) {
+		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
+			/* can we turn CFF off? */
+			if (intel_dp->psr.busy_frontbuffer_bits == 0) {
+				u32 val = man_trk_ctl_enable_bit_get(dev_priv) |
+					  man_trk_ctl_partial_frame_bit_get(dev_priv) |
+					  man_trk_ctl_single_full_frame_bit_get(dev_priv);
+
+				/*
+				 * turn continuous full frame off and do a single
+				 * full frame
+				 */
+				intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
+					       val);
+				intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
+				intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
+			}
+		} else {
+			/*
+			 * continuous full frame is disabled, only a single full
+			 * frame is required
+			 */
+			psr_force_hw_tracking_exit(intel_dp);
+		}
+	} else {
+		psr_force_hw_tracking_exit(intel_dp);
+
+		if (!intel_dp->psr.active && !intel_dp->psr.busy_frontbuffer_bits)
+			schedule_work(&intel_dp->psr.work);
+	}
+}
+
 /**
  * intel_psr_flush - Flush PSR
  * @dev_priv: i915 device
@@ -2240,25 +2307,22 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
 		 * we have to ensure that the PSR is not activated until
 		 * intel_psr_resume() is called.
 		 */
-		if (intel_dp->psr.paused) {
-			mutex_unlock(&intel_dp->psr.lock);
-			continue;
-		}
+		if (intel_dp->psr.paused)
+			goto unlock;
 
 		if (origin == ORIGIN_FLIP ||
 		    (origin == ORIGIN_CURSOR_UPDATE &&
 		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
 			tgl_dc3co_flush_locked(intel_dp, frontbuffer_bits, origin);
-			mutex_unlock(&intel_dp->psr.lock);
-			continue;
+			goto unlock;
 		}
 
-		/* By definition flush = invalidate + flush */
-		if (pipe_frontbuffer_bits)
-			psr_force_hw_tracking_exit(intel_dp);
+		if (pipe_frontbuffer_bits == 0)
+			goto unlock;
 
-		if (!intel_dp->psr.active && !intel_dp->psr.busy_frontbuffer_bits)
-			schedule_work(&intel_dp->psr.work);
+		/* By definition flush = invalidate + flush */
+		_psr_flush_handle(intel_dp);
+unlock:
 		mutex_unlock(&intel_dp->psr.lock);
 	}
 }
-- 
2.35.1

