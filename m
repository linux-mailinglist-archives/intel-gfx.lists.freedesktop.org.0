Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85588A55133
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:35:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F25D910EA0B;
	Thu,  6 Mar 2025 16:35:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bJfffqd8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E285C10EA0B
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741278920; x=1772814920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F5yNmw4Nmg+muQz5+YonWOUeeQDVvYu/Nkr6QipUTIU=;
 b=bJfffqd8nJNEu5mwoTyCtyxoAk9uKG7ijbH2rGAquoKrKPFJ4a6FMx6k
 l1SawWaMo5Sbso9agefC0I9D2I+4cbgTrDu7WZHCjFS4D3idY5YPJqUwK
 Vx4EsWtFta503b5TRbfutTWBKjyboGjp8RfogkZ1BFd94cbWKv6a2ez5o
 BsBcg6nxBFfHZ6wLJNDNO1VWV3cBTt1Jj2PEA5gwA8ywcVR/ff0Ri1pVM
 JsWUFgMrdKOv4sk9SrqThfBXXtbJSRpnHwIJbemxccq2JwWZVcJXQFKzJ
 Sd8obXn4ZbWBSblJFWPI6PPz5lYzj3aswgTP9I0Sd1X+W7SsKa3RS80ai w==;
X-CSE-ConnectionGUID: asKUNPriQCqGtEi59ueMVg==
X-CSE-MsgGUID: ZdZmwfJTSgujH/k3UOPkxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53704411"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53704411"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:35:20 -0800
X-CSE-ConnectionGUID: EeqISK6cSXqgaIURujuazQ==
X-CSE-MsgGUID: KRs20IDBQHumel7q99M0QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124289297"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:35:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:35:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 18/18] drm/i915: Relocate intel_bw_crtc_update()
Date: Thu,  6 Mar 2025 18:34:20 +0200
Message-ID: <20250306163420.3961-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
References: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_bw_crtc_update() is only used by the readout path, so relocate
the function next its only caller. Easier to read the code when related
things are nearby.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 36 ++++++++++++-------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index e4d79b496e12..048be2872247 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -806,24 +806,6 @@ static int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_state)
 	return DIV_ROUND_UP_ULL(mul_u32_u32(intel_bw_crtc_data_rate(crtc_state), 10), 512);
 }
 
-static void intel_bw_crtc_update(struct intel_bw_state *bw_state,
-				 const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-
-	bw_state->data_rate[crtc->pipe] =
-		intel_bw_crtc_data_rate(crtc_state);
-	bw_state->num_active_planes[crtc->pipe] =
-		intel_bw_crtc_num_active_planes(crtc_state);
-	bw_state->force_check_qgv = true;
-
-	drm_dbg_kms(&i915->drm, "pipe %c data rate %u num active planes %u\n",
-		    pipe_name(crtc->pipe),
-		    bw_state->data_rate[crtc->pipe],
-		    bw_state->num_active_planes[crtc->pipe]);
-}
-
 static unsigned int intel_bw_num_active_planes(struct drm_i915_private *dev_priv,
 					       const struct intel_bw_state *bw_state)
 {
@@ -1422,6 +1404,24 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	return 0;
 }
 
+static void intel_bw_crtc_update(struct intel_bw_state *bw_state,
+				 const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	bw_state->data_rate[crtc->pipe] =
+		intel_bw_crtc_data_rate(crtc_state);
+	bw_state->num_active_planes[crtc->pipe] =
+		intel_bw_crtc_num_active_planes(crtc_state);
+	bw_state->force_check_qgv = true;
+
+	drm_dbg_kms(&i915->drm, "pipe %c data rate %u num active planes %u\n",
+		    pipe_name(crtc->pipe),
+		    bw_state->data_rate[crtc->pipe],
+		    bw_state->num_active_planes[crtc->pipe]);
+}
+
 void intel_bw_update_hw_state(struct intel_display *display)
 {
 	struct intel_bw_state *bw_state =
-- 
2.45.3

