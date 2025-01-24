Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B79AA1B4E1
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 12:39:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1FEB10E94B;
	Fri, 24 Jan 2025 11:39:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NynClMPF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ADED10E88D;
 Fri, 24 Jan 2025 11:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737718781; x=1769254781;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6NQMJKzMQMcuTuNh6dUSnD0pen9wYcTLvnfCnpZAETU=;
 b=NynClMPFhNZjZL14fya1eHcdoINZdntBVKdwskAxeaKE8lTMpNDCBXX1
 8G92WG2Mi8qnn1uz/IARHFQQzvfZy/GLQ44WN8uhTiL//XlyOBk47eRRv
 Leu1ldfFq6STaROyrJcOwcdD9TTrqY/A20PxdUIeukCveW5rRvOKr91my
 7JMpjkuoYJ4V5+1rA4wz94Fo+MvTv4eL/7rsSvDgAwpDSrfu7jVn/T2o9
 Eeb9ZAP+BLwaYcoHi0HPDF7zb5iG1TD/xhZ7zoMElnP69GeGotnYnRWyO
 GHdtUMicTqzx0qELlFySPDCtkj93+qjTTcPKwo38Sq2dJAxtjnrECc++u w==;
X-CSE-ConnectionGUID: j3O42YllR0SwqS/fBGKCFg==
X-CSE-MsgGUID: 3MA28X6kSLOSE036o2NkTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="49237807"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="49237807"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:39:41 -0800
X-CSE-ConnectionGUID: LFW7iyeZSPOUUlsxd7+foA==
X-CSE-MsgGUID: IXpDCGMoQHKc/jn7S5b05w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="112757850"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.138])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:39:39 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 11/13] drm/i915/display: Evade scanline 0 as well if PSR1
 or PSR2 is enabled
Date: Fri, 24 Jan 2025 13:39:04 +0200
Message-ID: <20250124113906.850488-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250124113906.850488-1-jouni.hogander@intel.com>
References: <20250124113906.850488-1-jouni.hogander@intel.com>
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
index 1fb3bb8c5d5b0..75829e1ed8008 100644
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

