Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B618A33826
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 07:48:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DA6B10EA0D;
	Thu, 13 Feb 2025 06:48:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i7gFTNr7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1591510EA0B;
 Thu, 13 Feb 2025 06:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739429299; x=1770965299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fb2VzKoGy5Zu6h7c81y/zHG24YywWQ3zgPH5xp4uFB4=;
 b=i7gFTNr7EJJ2o0VLmxodfznf4XXTOgVF6k41lWuf8EAJY3QnxqO19VVv
 VOfYlUPpBTYS9Sbs7+tyL0fDppSpokEJtp1yB0i924uKyNRe+YrLD8HhH
 66x2x7fjbgcNyMPdgu05nqf52YNqtOkx6A/yGe8RiJ7w+Apb0u8X90lNS
 OkRA/4KDJB/XCVeLVJuBGRhG3NW8eKGLa98hr/H53CRsPgb5NW6qMS43i
 6bJQZuOEqdELAbY5TCrT7eZexvdCeLKRj4cAE9LOt50228SqkKxms4WCD
 OeLeyIDzfto2ZqvcRqx0CiYo8Z3/Mj0AjW7BHXNeYrH6XwuW+fV8fuByT g==;
X-CSE-ConnectionGUID: /xBJLbGYT46wYJ/oee9c0g==
X-CSE-MsgGUID: VXhP+lXdROaJsQokLxiT5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="50764044"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="50764044"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 22:48:19 -0800
X-CSE-ConnectionGUID: IpPWrL34TgmFJmhHPp17xQ==
X-CSE-MsgGUID: 2qLk7ZZtQSeUhfqvcQgDXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118237113"
Received: from ksztyber-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.234])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 22:48:17 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v8 02/13] drm/i915/psr: Rename psr_force_hw_tracking_exit as
 intel_psr_force_update
Date: Thu, 13 Feb 2025 08:47:53 +0200
Message-ID: <20250213064804.2077127-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250213064804.2077127-1-jouni.hogander@intel.com>
References: <20250213064804.2077127-1-jouni.hogander@intel.com>
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
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 64e03d19cad5..16d125f51ab0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2324,7 +2324,7 @@ static u32 man_trk_ctl_continuos_full_frame(struct intel_display *display)
 	       PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
 }
 
-static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
+static void intel_psr_force_update(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
@@ -2869,7 +2869,7 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 
 		/* Force a PSR exit when enabling CRC to avoid CRC timeouts */
 		if (crtc_state->crc_enabled && psr->enabled)
-			psr_force_hw_tracking_exit(intel_dp);
+			intel_psr_force_update(intel_dp);
 
 		/*
 		 * Clear possible busy bits in case we have
@@ -3266,10 +3266,10 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
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

