Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48008CDBBA2
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Dec 2025 10:01:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0C1810E362;
	Wed, 24 Dec 2025 09:01:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DUcYOhCc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ADE210E360;
 Wed, 24 Dec 2025 09:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766566860; x=1798102860;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XmBJdc1SSpPcTwuPNr8vq8i0vVX5qMgNU3EKX46q8Qk=;
 b=DUcYOhCcVyxWWHI8KcapvgneZcPrVdWvLe7zbanSPFJ1207myMGHxM8O
 WcDyB/anTsdwLnBp3cM5VmGOTK7ifyk6gS9B9BWlxxyBEwWlxsfZ8JHOe
 wXk/i1WO4+uUZgjUAc65vf5RA0L+7KBEjlIyqQjrJNWS/eb/3539ghqpQ
 1jmLzKRUb1JqLj2aIp8I3xMAfEVGZ03FCBwQDXbXmEFGbyvrgZaGqLCkn
 XVfiycozF0EjEXc7zZQiGtqLmcAJcLHMI7fTQxx0T0a1zGO1ncV0kjrjc
 HwbbQDpeQEVOoix2UDO92rXOLJj7i6wwVacFLiYwsfZzPEIbwqufYzzS5 w==;
X-CSE-ConnectionGUID: 4/89PV9QTzi5WrIa4fBpTg==
X-CSE-MsgGUID: hK+LKROrTiGjflNIJVQ85w==
X-IronPort-AV: E=McAfee;i="6800,10657,11651"; a="79041558"
X-IronPort-AV: E=Sophos;i="6.21,173,1763452800"; d="scan'208";a="79041558"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2025 01:01:00 -0800
X-CSE-ConnectionGUID: 1Qv0FHgLQZuZL1c/L3uyEw==
X-CSE-MsgGUID: 0dq3fX0GRTSXYQJ5Tjhgdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,173,1763452800"; d="scan'208";a="199733495"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2025 01:00:58 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH 2/5] drm/i915/alpm: Allow LOBF only if window1 > alpm
 check_entry lines
Date: Wed, 24 Dec 2025 14:18:35 +0530
Message-ID: <20251224084838.2609537-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251224084838.2609537-1-ankit.k.nautiyal@intel.com>
References: <20251224084838.2609537-1-ankit.k.nautiyal@intel.com>
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

LOBF must be disabled if the number of lines within Window 1 is not greater
than ALPM_CTL[ALPM Entry Check]

v2: Consider the case where SCL is in the active region. (Ville)

Bspec:71041
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 055184a3c7d5..27b26e5813dc 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -270,6 +270,23 @@ int intel_alpm_lobf_min_guardband(struct intel_crtc_state *crtc_state)
 	return first_sdp_position + waketime_in_lines + crtc_state->set_context_latency;
 }
 
+static bool intel_alpm_lobf_is_window1_sufficient(struct intel_crtc_state *crtc_state)
+{
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int vblank = adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay;
+	int window1;
+
+	/*
+	 * LOBF must be disabled if the number of lines within Window 1 is not
+	 * greater than ALPM_CTL[ALPM Entry Check]
+	 */
+	window1 = vblank - min(vblank,
+			       crtc_state->vrr.guardband +
+			       crtc_state->set_context_latency);
+
+	return window1 > crtc_state->alpm_state.check_entry_lines;
+}
+
 void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
 					 struct intel_crtc_state *crtc_state)
 {
@@ -279,6 +296,11 @@ void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
 	if (!crtc_state->has_lobf)
 		return;
 
+	if (!intel_alpm_lobf_is_window1_sufficient(crtc_state)) {
+		crtc_state->has_lobf = false;
+		return;
+	}
+
 	/*
 	 * LOBF can only be enabled if the time from the start of the SCL+Guardband
 	 * window to the position of the first SDP is greater than the time it takes
-- 
2.45.2

