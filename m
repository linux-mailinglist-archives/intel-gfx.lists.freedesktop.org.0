Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6509B8B3C
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 07:27:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A01110E95D;
	Fri,  1 Nov 2024 06:27:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WEF/2iQ4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5A6B10E95B;
 Fri,  1 Nov 2024 06:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730442475; x=1761978475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X2G/xohw3RbuYV0PeMWgjTwL7oeTZRyheqMgWwv1wXA=;
 b=WEF/2iQ4rLoQqVVBUs8vR1RNL47/I4AIyALklUI5Shv/TY/nS+WO+HXg
 xf14axkaRRazXukeeng/iAMvsU5nEd95QjVEEiFCnbYxrKQ3sGDLmtTEF
 u1AtRG+H00feAp63ovSnvsX8CY+3qsntbHIkJ071dgi+PeaDEIIjniAfj
 UCzRGWemV211YTpejvQnTpLFkFRizQPosMHQ15gdtNvteRTYd9GtMnPKK
 21lb6Y+inEd4wdfUk/oTN03XOg8ywzGb7PZw2ue+K2lgSUeD8j0HG5FUD
 DItbmJ5X1zWh+SUK1baAvnIDuv9bdLf+VmYFgBcmPXkb9DOR/xJascSG4 g==;
X-CSE-ConnectionGUID: HmdrgW4sR/6FYPkWL1jjdw==
X-CSE-MsgGUID: wsGNpXqpTBmvPxHJj9z4dQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41306067"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41306067"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 23:27:55 -0700
X-CSE-ConnectionGUID: 7qCuF+JdSc2pPvijIZSMSw==
X-CSE-MsgGUID: tdmLduiSTu6TiCM18VZFyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="87648583"
Received: from ksztyber-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.3])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 23:27:53 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 4/7] drm/i915/psr: Rename psr_force_hw_tracking_exit as
 psr_force_exit
Date: Fri,  1 Nov 2024 08:27:25 +0200
Message-Id: <20241101062728.3865980-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241101062728.3865980-1-jouni.hogander@intel.com>
References: <20241101062728.3865980-1-jouni.hogander@intel.com>
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
psr_force_exit.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a82d75f97c55..c1cf63f55fe6 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2307,7 +2307,7 @@ static u32 man_trk_ctl_continuos_full_frame(struct intel_display *display)
 	       PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
 }
 
-static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
+static void psr_force_exit(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
@@ -2855,7 +2855,7 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 
 		/* Force a PSR exit when enabling CRC to avoid CRC timeouts */
 		if (crtc_state->crc_enabled && psr->enabled)
-			psr_force_hw_tracking_exit(intel_dp);
+			psr_force_exit(intel_dp);
 
 		/*
 		 * Clear possible busy bits in case we have
@@ -3252,10 +3252,10 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 			 * continuous full frame is disabled, only a single full
 			 * frame is required
 			 */
-			psr_force_hw_tracking_exit(intel_dp);
+			psr_force_exit(intel_dp);
 		}
 	} else {
-		psr_force_hw_tracking_exit(intel_dp);
+		psr_force_exit(intel_dp);
 
 		if (!intel_dp->psr.active && !intel_dp->psr.busy_frontbuffer_bits)
 			queue_work(dev_priv->unordered_wq, &intel_dp->psr.work);
-- 
2.34.1

