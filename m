Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8878A5BCB3
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 10:50:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FBC510E554;
	Tue, 11 Mar 2025 09:50:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eD3wDH5E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 617DF10E553;
 Tue, 11 Mar 2025 09:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741686599; x=1773222599;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=73c77X2jtrQLzajo0bb/IL2SbaXrtR99nV38+tucoMI=;
 b=eD3wDH5EiRE3koo8MUmEHnY7r9vI1MeKHcv0Y6j6y4YHsji/eBNsUvMs
 L68J3IYcewribYoME7GWCuDz+bx2iJ+1K8rz0uEo3YwmDQbGx6J87DLQE
 gmK4F/JvKfWXxWIVgj4IN/QCk/GilhbEZQ2J0brW/+SJusZbfAD5ACKw0
 yY4xhAa4cy7Wm2nJHEvHyJF6b8kprdH782+pjoemblTXbKFHPfNRIDEbP
 WOv8saquuIKo1HSLz5nQgedMITyqnWmAODsmjmJwB1H3h8MsYSIROBeY5
 SeTIMaC2UwJKxAwm8KlrMsyz2b6YyOzfJj+vmPWvtvJ5qJe2wk8f2SXvA Q==;
X-CSE-ConnectionGUID: pDe3TgkyTTa1u5o4fN/Vpg==
X-CSE-MsgGUID: nOk2h2TTShWh00Is4qWzGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="45499806"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="45499806"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 02:49:58 -0700
X-CSE-ConnectionGUID: weDbEqW5TRCs+EIV9Qh83A==
X-CSE-MsgGUID: PW31BYEOT8+ezISjjBGqTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="125319654"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 02:49:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [RESEND PATCH 4/8] drm/i915/vrr: Disable CMRR
Date: Tue, 11 Mar 2025 15:07:47 +0530
Message-ID: <20250311093751.1329043-5-ankit.k.nautiyal@intel.com>
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

Switching between variable and fixed timings is possible as for that we
just need to flip between VRR timings. However for CMRR along with the
timings, few other bits also need to be changed on the fly, which might
cause issues. So disable CMRR for now, till we have variable and fixed
timings sorted out.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index db0ea206e26e..a57659820f4b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -182,7 +182,8 @@ is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
 	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
-	if (!HAS_CMRR(display))
+	/* Avoid CMRR for now till we have VRR with fixed timings working */
+	if (!HAS_CMRR(display) || true)
 		return false;
 
 	actual_refresh_k =
-- 
2.45.2

