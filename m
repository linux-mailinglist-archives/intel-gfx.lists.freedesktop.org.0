Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFA2A66C84
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Mar 2025 08:48:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C274E10E44A;
	Tue, 18 Mar 2025 07:48:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JL7BCpym";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 432E310E449;
 Tue, 18 Mar 2025 07:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742284087; x=1773820087;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HtusqAaIIi5/HClHFkdKdbDGz8y5KWuT0TPK0y194Iw=;
 b=JL7BCpymjOlfRLgcwMLT2izqUrS6wm6eZw2sXCsAE59iRJND63YHGC6r
 sEsZ23qnZgUkEA5WPsMESsWYgxVbSTD7ucMlPzrb5Cd1jkL9CJtflQCKG
 MEWklcp+toHd1xjXWl77yvCROgN35HA7EjBkQSqewvDqEABAGeAXSg9Xt
 kc0NPXY2n/stQASJs6rcPqfF2L2PITtwMftWIU6I48lzUmJ1RQgEDpCvd
 iN6PyaRVkDeQuMsA++EKKfKzpsd+YIY80ckUnjzTOCWcSgDj388hzVDE1
 j3Z6sslsoRfNWUX6dgMnP0KW4u5mWbP1JRaeQJEXxmiO3+Xk2Rm4O7F2x A==;
X-CSE-ConnectionGUID: blTTvF4DQauPxmlH2aUWPQ==
X-CSE-MsgGUID: X5X6wjFzT0eGvvKNQGZHxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="46173858"
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="46173858"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:48:07 -0700
X-CSE-ConnectionGUID: HfCTST53QrKmHtvXVJJ0tg==
X-CSE-MsgGUID: bd9rz2A9T3SgXj0krFPQrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="122681755"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:48:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 16/16] drm/i915/vrr: Set trans_vrr_ctl in
 intel_vrr_set_transcoder_timings()
Date: Tue, 18 Mar 2025 13:05:40 +0530
Message-ID: <20250318073540.2773890-17-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 6c6bb868381c..693bbe18950e 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -476,6 +476,10 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 
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

