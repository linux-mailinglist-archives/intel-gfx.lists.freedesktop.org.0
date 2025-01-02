Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3EE9FF6F9
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2025 09:36:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B48B10E3C7;
	Thu,  2 Jan 2025 08:36:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Shj9tOEP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D480C10E3C4;
 Thu,  2 Jan 2025 08:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735807014; x=1767343014;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Whj9TBUSdM04nLgyI+DdQEGSgN4EBrrXuio6Dn07mi0=;
 b=Shj9tOEPSTA88WMe0Z+iNsLbKyWLY47QvTunaGt6GTuMyhR8FeW42jM3
 vWAkvXD2lgON4w7D52T26Tgw+L0VEjR2h5XRjpJYpqM3AOpIoZOWV4CbH
 UMSfArRn0rXjNXGj+30gOoIOgRQG0ACk9ZwysBcibXOncmabqxCWNlwkt
 fHZNtGF3N9EAVWjWpyonvYbmTKfTwKoyM9oxslBw74OWKpC3GbMjSXCl5
 8qiVRQ3fbb+evJ/xJCC93lGUbz/+r6Utq+xaxrtnj8vIGgAfJrfw8/41d
 qYp7lHITCg91lRr07ygT+9L+znaFDG2m1cPUtRQXuEulWC3CCb0N+4TVf g==;
X-CSE-ConnectionGUID: LKcqGd3BR12w6W5OOKI6Tw==
X-CSE-MsgGUID: v0rwI1RST6+xgrOdg80gVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="23626899"
X-IronPort-AV: E=Sophos;i="6.12,284,1728975600"; d="scan'208";a="23626899"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 00:36:53 -0800
X-CSE-ConnectionGUID: pM4LLTo4SWef+ywKE8kPxw==
X-CSE-MsgGUID: Et4b14qNTKi8ra0LouNgFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,284,1728975600"; d="scan'208";a="106314134"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.76])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 00:36:52 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 2/9] drm/i915/psr: Rename psr_force_hw_tracking_exit as
 intel_psr_force_update
Date: Thu,  2 Jan 2025 10:36:31 +0200
Message-ID: <20250102083638.2552066-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250102083638.2552066-1-jouni.hogander@intel.com>
References: <20250102083638.2552066-1-jouni.hogander@intel.com>
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

psr_force_hw_tracking_exit is misleading name as it is used for PSR1, PSR2
HW tracking and PSR2 selective fetch. Due to this rename it as
intel_psr_force_update.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 476305010e11..5411d0d6f362 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2310,7 +2310,7 @@ static u32 man_trk_ctl_continuos_full_frame(struct intel_display *display)
 	       PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
 }
 
-static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
+static void intel_psr_force_update(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
@@ -2857,7 +2857,7 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 
 		/* Force a PSR exit when enabling CRC to avoid CRC timeouts */
 		if (crtc_state->crc_enabled && psr->enabled)
-			psr_force_hw_tracking_exit(intel_dp);
+			intel_psr_force_update(intel_dp);
 
 		/*
 		 * Clear possible busy bits in case we have
@@ -3254,10 +3254,10 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 			 * continuous full frame is disabled, only a single full
 			 * frame is required
 			 */
-			psr_force_hw_tracking_exit(intel_dp);
+			intel_psr_force_update(intel_dp);
 		}
 	} else {
-		psr_force_hw_tracking_exit(intel_dp);
+		intel_psr_force_update(intel_dp);
 
 		if (!intel_dp->psr.active && !intel_dp->psr.busy_frontbuffer_bits)
 			queue_work(dev_priv->unordered_wq, &intel_dp->psr.work);
-- 
2.43.0

