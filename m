Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1346BA1B43A
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 11:57:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D3F710E8C1;
	Fri, 24 Jan 2025 10:56:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yt39eip9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8079010E83B;
 Fri, 24 Jan 2025 10:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737716216; x=1769252216;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dxujV9x3ZdRHwLCI1wVYvLlXWIP8RhFRZhuCa7+iLbE=;
 b=Yt39eip9OQr9fcElOggEIp+3SrVmoVaLXCi/5RYl/IkBKJMM/3cCkKOH
 ymswX7rwIa8FIrTlHxpqJnFLFennsbz+gTXtpMilEPqywKe2iitHZauHw
 8dgoz+kyhwHHGWy5JWrCbZejYM25k5Cc9K5sOUsPfqW9wxl3Wa6J6ixtX
 XIdOy1+23nUxBCTmDNR9iEdZDKZwuYL8C2KAIYcgMEG/XMxYJbj5qnK2C
 EJcwSDXN0lGmfPvlQNBjDgVH2fDS3VIzBIomM8eGvbeEwHC27TzBMkClR
 KvkyD/FDt/Nm1CY/Bk2jRI4zKXoQJK6bmsepb2UUG/m2qs+JLrxm1I1h0 w==;
X-CSE-ConnectionGUID: 6qATrVYCRvaueuZSiEodaw==
X-CSE-MsgGUID: V7YHZ1QtTW+e1yT6IMEWHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="55660080"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="55660080"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 02:56:56 -0800
X-CSE-ConnectionGUID: tKc/+q6SSzGnW8ebEwG7Jw==
X-CSE-MsgGUID: nf5D7kuYRQStvpp5Gq9Z9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107864255"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.138])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 02:56:54 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ville.syrjala@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 05/13] drm/i915/psr: Use SFF_CTL on invalidate/flush for
 LunarLake onwards
Date: Fri, 24 Jan 2025 12:56:16 +0200
Message-ID: <20250124105625.822459-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250124105625.822459-1-jouni.hogander@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

In LunarLake we have SFF_CTL register which contains SFF bit ored with
respective SFF bit in PSR2_MAN_TRK_CTL register. Use this register instead
of the bit in PSR2_MAN_TRK_CTL on frontbuffer tracking callbacks. This
helps us avoiding taking psr mutex when performing atomic commit.

We don't need to set the CFF bit as selective update configuration in
PSR2_MAN_TRL_CTL is not overwritten anymore. I.e. we have valid
configuration in PSR2_MAN_TRK_CTL and in plane SEL_FETCH_* registers when
SFF bit gets cleared by the HW in case something triggers "frame change"
event after SFF bit is cleared.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e6f96a8b4fb0d..85ecedd3162d8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2345,7 +2345,7 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 		lockdep_assert_held(&intel_dp->psr.lock);
-		if (intel_dp->psr.psr2_sel_fetch_cff_enabled)
+		if (DISPLAY_VER(display) < 20 && intel_dp->psr.psr2_sel_fetch_cff_enabled)
 			return;
 		break;
 	}
@@ -3118,12 +3118,16 @@ static void intel_psr_configure_full_frame_update(struct intel_dp *intel_dp)
 	if (!intel_dp->psr.psr2_sel_fetch_enabled)
 		return;
 
-	intel_de_write(display,
-		       PSR2_MAN_TRK_CTL(display, cpu_transcoder),
-		       man_trk_ctl_enable_bit_get(display) |
-		       man_trk_ctl_partial_frame_bit_get(display) |
-		       man_trk_ctl_single_full_frame_bit_get(display) |
-		       man_trk_ctl_continuos_full_frame(display));
+	if (DISPLAY_VER(display) >= 20)
+		intel_de_write(display, LNL_SFF_CTL(cpu_transcoder),
+			       LNL_SFF_CTL_SF_SINGLE_FULL_FRAME);
+	else
+		intel_de_write(display,
+			       PSR2_MAN_TRK_CTL(display, cpu_transcoder),
+			       man_trk_ctl_enable_bit_get(display) |
+			       man_trk_ctl_partial_frame_bit_get(display) |
+			       man_trk_ctl_single_full_frame_bit_get(display) |
+			       man_trk_ctl_continuos_full_frame(display));
 }
 
 static void _psr_invalidate_handle(struct intel_dp *intel_dp)
@@ -3227,6 +3231,10 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 		 * Still keep cff bit enabled as we don't have proper SU
 		 * configuration in case update is sent for any reason after
 		 * sff bit gets cleared by the HW on next vblank.
+		 *
+		 * NOTE: Setting cff bit is not needed for LunarLake onwards as
+		 * we have own register for SFF bit and we are not overwriting
+		 * existing SU configuration
 		 */
 		intel_psr_configure_full_frame_update(intel_dp);
 	}
-- 
2.43.0

