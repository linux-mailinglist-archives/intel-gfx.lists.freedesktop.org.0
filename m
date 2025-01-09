Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E878A06F11
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 08:32:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E42310ED04;
	Thu,  9 Jan 2025 07:32:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f/Yt2L0K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D6B910ECFE;
 Thu,  9 Jan 2025 07:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736407921; x=1767943921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Whj9TBUSdM04nLgyI+DdQEGSgN4EBrrXuio6Dn07mi0=;
 b=f/Yt2L0KJU8nZ9vSm6EYpMp3Cvb4Dl9hGgjsl2OD3seG0QFy7fhYHPZn
 2UADVQGdKLwUvPZhERAg5c70C0ONeIBgJXLduBtw43nMIi0NZT+HNfWNC
 ZwryPR63QvT3cc4YFqKJJ20j5PENIg1xYRYArafYHSgmDuTtdYMfjyRkK
 /JlIwYrweuIDwhxjUCF+jCvr0yU8CYctESph4ktsf1V4RPs4ccBkEDfUo
 88BmPL+CbqVHrYtnirE8TsMlcqWdNnTuBuRTzfpw28321UPl+JZsgkVHQ
 QKhBJyHp/TylI0AzE+1m+pubHd8X9hQ8Fru2OX/XBQ2mJe6E8fQvNZE3v g==;
X-CSE-ConnectionGUID: k5d9ZBg/TbquwxVruvYF9g==
X-CSE-MsgGUID: CulqEKo5SpGyIywE/Ra6PA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="54200565"
X-IronPort-AV: E=Sophos;i="6.12,300,1728975600"; d="scan'208";a="54200565"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 23:32:01 -0800
X-CSE-ConnectionGUID: 3cegQ1TfQ8mdGLGZMpXXlw==
X-CSE-MsgGUID: 0tC+jZVARuyzCAW8QOpsTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,300,1728975600"; d="scan'208";a="103297852"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.185])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 23:32:00 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 02/10] drm/i915/psr: Rename psr_force_hw_tracking_exit as
 intel_psr_force_update
Date: Thu,  9 Jan 2025 09:31:29 +0200
Message-ID: <20250109073137.1977494-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250109073137.1977494-1-jouni.hogander@intel.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
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

