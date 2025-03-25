Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE69A6F43E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 12:35:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12E1910E568;
	Tue, 25 Mar 2025 11:35:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SxZbaQex";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 980DB10E55C;
 Tue, 25 Mar 2025 11:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742902505; x=1774438505;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L/0LBo3c24Uq6hZ6DuG7+qONYxSWG2mR5yiLhqiEM5A=;
 b=SxZbaQexZoyNnzg/iP0e2hXcK/DOMhw/yGhLn5u6LVhV3awvlCEJh8v7
 rPx0RRoj9p5PuwpD7phYhpilIx1BaJ2nz/5MMUbE3Yu1CHUYe8hgGThdU
 BYAY8Yv7xfeKNbrJpTB/zlathWWD6vR0LKmDasrwyD+m7+WTUHoJCJWUS
 V24Z82M88yAEVoEpf/3IaJEmglT2rrv5P2X9/0d2xC24W+T6tVxcfBavj
 eqwrxn0NH3YcZ/V3dtIuad4mHJly1N1dnucNFDoeAXC0a1TyRwyKylGrs
 JuSec0xBlJhnwjwm2xncLC06XSNYkT5fQNkGG8hYSJNq7FDeD/ysyAsbq w==;
X-CSE-ConnectionGUID: ss40h/W0T5KTtKH0EGHfvg==
X-CSE-MsgGUID: SS/w9ascQFSpnh8wUH4ITA==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="44266942"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="44266942"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 04:35:05 -0700
X-CSE-ConnectionGUID: tZjymCb9ThqU57hMF2yMuQ==
X-CSE-MsgGUID: QAjUKTCoQ3u+fYRKvC2qQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="124070640"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 04:35:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 14/16] drm/i915/vrr: Set trans_vrr_ctl in
 intel_vrr_set_transcoder_timings()
Date: Tue, 25 Mar 2025 16:52:47 +0530
Message-ID: <20250325112249.228444-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250325112249.228444-1-ankit.k.nautiyal@intel.com>
References: <20250325112249.228444-1-ankit.k.nautiyal@intel.com>
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

We now always set vrr.flipline, vmin, and vmax for all platforms that
support VRR. Therefore, we should set all TRANS_VRR_CTL bits except
VRR_ENABLE. Without this, the readback for these bits will fail because we
only read vrr.flipline, vmin, and vmax if TRANS_VRR_CTL has the
FLIPLINE_EN bit set.

For platforms that always have the VRR Timing Generator enabled,
the FLIPLINE_EN bit is always set in TRANS_VRR_CTL during
intel_transcoder_vrr_enable(). However, for the remaining platforms
(that do not always have the VRR Timing Generator enabled) if a full
modeset doesn't occur and VRR is not enabled, the bit is not set.

This results in a mismatch between the software state and hardware state
because the software state expects VRR timings like flipline, vmin, and
vmax to be set, but the readout for these doesn't happen since the
FLIPLINE_EN bit is not set in TRANS_VRR_CTL.

To avoid this mismatch, write trans_vrr_ctl in
intel_vrr_set_transcoder_timings() even when VRR is not enabled
for platforms that do not have the VRR Timing Generator always enabled.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5e60da2bb0c3..414f93851059 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -484,6 +484,10 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 
 	intel_vrr_set_fixed_rr_timings(crtc_state);
 
+	if (!intel_vrr_always_use_vrr_tg(display) && !crtc_state->vrr.enable)
+		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+			       trans_vrr_ctl(crtc_state));
+
 	if (HAS_AS_SDP(display))
 		intel_de_write(display,
 			       TRANS_VRR_VSYNC(display, cpu_transcoder),
-- 
2.45.2

