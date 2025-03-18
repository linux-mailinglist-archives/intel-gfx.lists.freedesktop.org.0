Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21478A66C7E
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Mar 2025 08:47:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91BBB10E36B;
	Tue, 18 Mar 2025 07:47:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cPQcA36o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95D3110E36B;
 Tue, 18 Mar 2025 07:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742284077; x=1773820077;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ad9bcbZ+3mWVL8zdfjTmLnQBCsW9DipEPBl4MUFOsYI=;
 b=cPQcA36oPKKZsJgiUyKn9YdVsNNEYxVJt5VnkmTTyZQZ+6YXzTa7NDmc
 89t3QmpunztGdduxopWD9H+Ed/uhgH86FyVg0nfWncpaGr1XZV4wUDcxM
 pGUcvMB2b42rQJsxfF6i0dWS7T+OF9CDxSxyojrAJeHXzQrKxuJaSacaT
 j8BvQocZ9U0lh+SUznNVpZwpgg4ORa7LglBIowl6xUZgYySNcH0vwOeuO
 0zfbvMi2lILSytqG15+FhZComLYD9MYFK8xcQFxdmVGvv0jATg7cfWAFG
 OS6lZ4dSTHXKoGF/R7IHCL6DZI3dpuJNQ6IPE1cJ8i2X3G3G8SLXNKeIA g==;
X-CSE-ConnectionGUID: 9+I4w0PeRm2RE8UWWLJA4Q==
X-CSE-MsgGUID: SYaA8Az/TdO90Q0Uixn5tg==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="46173817"
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="46173817"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:47:57 -0700
X-CSE-ConnectionGUID: vDtxlH3BRJKX5Ra3VefCxw==
X-CSE-MsgGUID: IReMtFOXTd2LcqJHqxk1zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="122681708"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:47:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 11/16] drm/i915/vrr: Use fixed timings for platforms that
 support VRR
Date: Tue, 18 Mar 2025 13:05:35 +0530
Message-ID: <20250318073540.2773890-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
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

For fixed refresh rate use fixed timings for all platforms that support
VRR. For this add checks to avoid computing and reading VRR for
platforms that do not support VRR.

v2: Avoid touching check for VRR_CTL_FLIP_LINE_EN. (Ville)
v3: Avoid redundant statements in vrr_{compute/get}_config. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index d4912199c3ac..019196c4a9c4 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -351,6 +351,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	int vmin, vmax;
 
+	if (!HAS_VRR(display))
+		return;
+
 	/*
 	 * FIXME all joined pipes share the same transcoder.
 	 * Need to account for that during VRR toggle/push/etc.
@@ -374,15 +377,12 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		vmax = vmin;
 	}
 
-	if (vmin >= vmax)
-		return;
-
 	crtc_state->vrr.vmin = vmin;
 	crtc_state->vrr.vmax = vmax;
 
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
 
-	if (crtc_state->uapi.vrr_enabled)
+	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
 		intel_vrr_compute_vrr_timings(crtc_state);
 	else if (is_cmrr_frac_required(crtc_state) && is_edp)
 		intel_vrr_compute_cmrr_timings(crtc_state);
-- 
2.45.2

