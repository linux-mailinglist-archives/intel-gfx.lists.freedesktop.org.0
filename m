Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7ACA1B441
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 11:57:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 339A410E923;
	Fri, 24 Jan 2025 10:57:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YYDOwEBp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E20610E85E;
 Fri, 24 Jan 2025 10:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737716228; x=1769252228;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y7CaPxu3zF0mMcBwDLz6WxsIeL8vm+WkLesP0jv8lho=;
 b=YYDOwEBpOKhbC/op1H7KhVE5X1sYl+7UdfDFAmQ2/Ox9F6LcewIJy82v
 25A+0BbxXUi3WYktXNvDOmxhq68Yf+Y6v/Fbxe1eAUw+Dy+swoRXojZv8
 cuw9hHfejBn5HH+lUtwb4wQA6KrdajpwDuP3ik/Fvi+wd5mr7ywvVAf8u
 HQWI3+M4EsgTtBaQXwJEB1x+N02XMa2yuCRavc/2ugcKeBwSp5bp1i4uL
 uIsJ+1BXnj9yn5f59YvTRdi3fkEl0YH9j3j1M/zDMZExm6MneoSwAie2J
 3pvTGXugsgbJ6hp2n6XrnHdSgXzV/NiwdnFprnJaFGpXi5/YnWABQXcZR w==;
X-CSE-ConnectionGUID: vW7hWSfeT1COqqVw4qMbmw==
X-CSE-MsgGUID: IOGLV1VkTfOLA0QPS4SHdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="55660103"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="55660103"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 02:57:08 -0800
X-CSE-ConnectionGUID: bnzBCZJtRX+BCDpoDO2l6w==
X-CSE-MsgGUID: Co+fXyqgTGOJ091qyNxl0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107864289"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.138])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 02:57:06 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ville.syrjala@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 11/13] drm/i915/display: Evade scanline 0 as well if PSR1
 or PSR2 is enabled
Date: Fri, 24 Jan 2025 12:56:22 +0200
Message-ID: <20250124105625.822459-12-jouni.hogander@intel.com>
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

PIPEDSL is reading as 0 when in SRDENT(PSR1) or DEEP_SLEEP(PSR2). On
wake-up scanline counting starts from vblank_start - 1. We don't know if
wake-up is already ongoing when evasion starts. In worst case PIPEDSL could
start reading valid value right after checking the scanline. In this
scenario we wouldn't have enough time to write all registers. To tackle
this evade scanline 0 as well. As a drawback we have 1 frame delay in flip
when waking up.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index bb77ded8bf726..914f0be4491c4 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -528,6 +528,18 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 	int latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, 20);
 	int start, end;
 
+	/*
+	 * PIPEDSL is reading as 0 when in SRDENT(PSR1) or DEEP_SLEEP(PSR2). On
+	 * wake-up scanline counting starts from vblank_start - 1. We don't know
+	 * if wake-up is already ongoing when evasion starts. In worst case
+	 * PIPEDSL could start reading valid value right after checking the
+	 * scanline. In this scenario we wouldn't have enough time to write all
+	 * registers. To tackle this evade scanline 0 as well. As a drawback we
+	 * have 1 frame delay in flip when waking up.
+	 */
+	if (crtc_state->has_psr && !crtc_state->has_panel_replay)
+		intel_dsb_wait_scanline_out(state, dsb, 0, 0);
+
 	if (pre_commit_is_vrr_active(state, crtc)) {
 		int vblank_delay = intel_vrr_vblank_delay(crtc_state);
 
-- 
2.43.0

