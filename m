Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E9066BCBA
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jan 2023 12:19:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61A5110E3D1;
	Mon, 16 Jan 2023 11:19:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4195710E3D0
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Jan 2023 11:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673867987; x=1705403987;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+rBPT8mOpgdo2Gg59VPIJxhDAnliMycqKtEboW8HMpc=;
 b=AwxvWTowQ+Gyuy4kcHFN51KUv6DgyBY0okhhcJdwlxs+eCB5m2GFbvhS
 H0E9cspvAFnhDUSXHPCniXSOdHyuKCvMQH4yMcywWqCK1UTUx5KvNNyRL
 FDWztz06WhsW3+fyDPl7HX9tLVSz2D5mNQKas9cmVkRxt/2rOo4l7VAhG
 hhr0RPepIfyv/iyTNk3TGUTKyYwbB9pwi33uIV98Mzs25f96auky9nl+8
 3uMAWvCB5X2859byhjbOVwVJY8WOzLYmaRs7lyL/5D5j28NREGSDb8l/x
 0g4oXcKWA2JohQEXtND3bxLuIrq/KDQKTDHAUuiiKsKolvulcr4Z8tw8C Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="386785797"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="386785797"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 03:19:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="689459340"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="689459340"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga008.jf.intel.com with ESMTP; 16 Jan 2023 03:19:42 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Jan 2023 13:19:37 +0200
Message-Id: <20230116111937.875-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230116111937.875-1-stanislav.lisovskiy@intel.com>
References: <20230116111937.875-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Implement UHBR bandwidth check
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

According to spec, we should check if output_bpp * pixel_rate is less
than DDI clock * 72, if UHBR is used.

HSDES: 1406899791
BSPEC: 49259

v2: - Removed wrong comment(Rodrigo Vivi)
    - Added HSDES to the commit msg(Rodrigo Vivi)
    - Moved UHBR check to the MST specific code

v3: - Changed commit subject(Rodrigo Vivi)
    - Fixed the error message if check fails(Rodrigo Vivi)

v4: - Move UHBR check to new helper function
    - Now both for non-DSC/DSC we use that new check as
      one of the constraints, when figuring out output bpp
      to be used(Ville Syrjälä)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e3e7c305fece..b95051fed23d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -47,8 +47,19 @@
 
 static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
 					  const struct drm_display_mode *adjusted_mode,
-					  struct intel_crtc_state *crtc_state)
+					  struct intel_crtc_state *pipe_config)
 {
+	if (intel_dp_is_uhbr(pipe_config)) {
+		int output_bpp = bpp;
+
+		if (output_bpp * adjusted_mode->crtc_clock >=
+		    pipe_config->port_clock * 72) {
+			drm_dbg_kms(&i915->drm, "UHBR check failed(required bw %d available %d)\n",
+				    output_bpp * adjusted_mode->crtc_clock, pipe_config->port_clock * 72);
+			return -EINVAL;
+		}
+	}
+
 	return 0;
 }
 
-- 
2.37.3

