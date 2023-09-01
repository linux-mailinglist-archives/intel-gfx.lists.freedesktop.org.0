Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 038F478FE0B
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 15:05:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ED9210E7CC;
	Fri,  1 Sep 2023 13:05:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7455810E7CC
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 13:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693573528; x=1725109528;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5gSMIqQALEeHTRvwV3wytamsb/CtjFToL7EnDkm4xZ0=;
 b=gFsdjcXtx2KQEeKIpuV1Vd09Y+xIEjDrvqEI2tTlZfTcLze0v5r5ec6R
 k1ugpOb6MUlAisYocTX3LrTiPOMDL3xUtsHtm9YhlitSPtSfIIINx0Ztk
 Uz7kcCVRdQ4TUBpP3Jsxd2Fze8VAf57ZDTltMl6DAI5s48kecDijoU1vm
 i8xPBp6PoM4FqTdCUhTiGRg4lpWs0y5BjYkB6YdQTAvXPuTmI2SNvpxeA
 DVPRZDuooRTs2QBXVm3bP0DFy03AuYX9mbYPGdCu2BZIw8F+JL0TSFrwA
 R/oV3OA9PcY73YsJzWE8cwwXFW7VhGtmU2Aavg6qNse6ZLjfYoKO8KAV9 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="440191171"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="440191171"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 06:05:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="689762027"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="689762027"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga003.jf.intel.com with SMTP; 01 Sep 2023 06:05:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Sep 2023 16:05:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 16:04:39 +0300
Message-ID: <20230901130440.2085-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/12] drm/i915: Assert that VRR is off during
 vblank evasion if necessary
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Whenever we change the actual transcoder timings (clock via
seamless M/N, full modeset, (or soon) vtotal via LRR) we
want the timing generator to be in non-VRR during the commit.
Warn if we forgot to turn VRR off prior to vblank evasion.

Cc: Manasi Navare <navaremanasi@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index a04076064f02..a39e31c1ca85 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -493,6 +493,10 @@ static void intel_crtc_vblank_evade_scanlines(struct intel_atomic_state *state,
 	adjusted_mode = &crtc_state->hw.adjusted_mode;
 
 	if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
+		/* timing changes should happen with VRR disabled */
+		drm_WARN_ON(state->base.dev, intel_crtc_needs_modeset(new_crtc_state) ||
+			    new_crtc_state->update_m_n);
+
 		if (intel_vrr_is_push_sent(crtc_state))
 			*vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
 		else
-- 
2.41.0

