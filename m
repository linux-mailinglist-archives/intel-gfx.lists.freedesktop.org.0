Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BF7A6DBE9
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 14:45:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8C9F10E443;
	Mon, 24 Mar 2025 13:45:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FKRopMFo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A3DF10E443;
 Mon, 24 Mar 2025 13:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742823905; x=1774359905;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v2fY03Yh+n2qvHhlAFCgaOdRZuuVM7TXNDi1wSegm4c=;
 b=FKRopMFo8HKW7gGvdi9VZ78P4fAwEcwPqBXTxZ1HepJ6upmTYeKpYI5V
 bEkXNCDMaQ5ebP4xjs+ujcEtBbm8TdY/ngjmug6FPdz0ZmYIKV2/JBe8e
 6UbIJ1qE6iDpIJzEpNnYHpsZ+/OK7yoFypqUp67/JOi9qJLrDmfMgepGr
 n34EWgU3Q8kSjujTx4yc8qlyrSY0iUb0gyuVtiWk7DFii9sNLpNlbt0jx
 QCtKowXmO0f9xYvZgg+2ixwob732R1k8JbWl1TgHZBYVAe7faVRz/ELkt
 yYb80xyySKGwqP8Qq3iDkLnT1RCdiom1ylt+dcVDhhAaJRXpxokyjMx/d A==;
X-CSE-ConnectionGUID: ymgdDDgHSbuCgoKv0gvo6w==
X-CSE-MsgGUID: J6rdrglARiGR/ZndnfvXPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="43955755"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="43955755"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:45:05 -0700
X-CSE-ConnectionGUID: zF7ZiMVYQnCJ9qnDLHYxSg==
X-CSE-MsgGUID: Fgyd5NrGQvmA3surPwrggw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="124040771"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:45:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 14/16] drm/i915/vrr: Set trans_vrr_ctl in
 intel_vrr_set_transcoder_timings()
Date: Mon, 24 Mar 2025 19:02:46 +0530
Message-ID: <20250324133248.4071909-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
References: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
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

