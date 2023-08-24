Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A764778696A
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:05:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B97410E4F2;
	Thu, 24 Aug 2023 08:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F62410E490
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692864323; x=1724400323;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SesC6UaV69PrrgpruCBCueCV8SV5xvpQZM8mkJ4cwSw=;
 b=XLwK9/6cMgHDTfnYFKCKVjW8NTBk6HdY5Bi2BWphRlmRb/9s87dxNC3P
 4LBnVDtoJbonotubQ0jSAj4LH6tlnEDlOqIm+e4tVihmvvQAU42YXA/5y
 3xFHEWAqkI+NEtjZ6IMLe8N0EkBoOXU3y4NGFQDt/j6KDylL2nW4Z3cux
 FyltrdslJOp/uEqrKx6OG4sD47pQHMBNSrEOWxhVx/fCb/ONTkwX6MCtJ
 bQ0z6J1KwagD4ZkgBhx/JaYKFYpApuNC1blw6hAPfckCjoDjchc4dxPvF
 awOazrqAXSsDW8Ke68dEKY+pg2DsHn8ujUmixJljAkoQObLBXWfLpbTRs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374345888"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374345888"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880710344"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:27 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:05:11 +0300
Message-Id: <20230824080517.693621-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230824080517.693621-1-imre.deak@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 16/22] drm/i915/dp_mst: Program the DSC PPS
 SDP for each stream
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

Atm the DSC PPS SDP is programmed only if the first stream is compressed
and then it's programmed only for the first stream. This left all other
compressed streams blank. Program the SDP for all streams.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 12 +++++++-----
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 ++
 2 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index b7f4281b86584..4d0f1b23ee162 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2505,7 +2505,8 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/* 6.o Configure and enable FEC if needed */
 	intel_ddi_enable_fec(encoder, crtc_state);
 
-	intel_dsc_dp_pps_write(encoder, crtc_state);
+	if (!is_mst)
+		intel_dsc_dp_pps_write(encoder, crtc_state);
 }
 
 static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
@@ -2643,7 +2644,8 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/* 7.l Configure and enable FEC if needed */
 	intel_ddi_enable_fec(encoder, crtc_state);
 
-	intel_dsc_dp_pps_write(encoder, crtc_state);
+	if (!is_mst)
+		intel_dsc_dp_pps_write(encoder, crtc_state);
 }
 
 static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
@@ -2705,10 +2707,10 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_enable_fec(encoder, crtc_state);
 
-	if (!is_mst)
+	if (!is_mst) {
 		intel_ddi_enable_transcoder_clock(encoder, crtc_state);
-
-	intel_dsc_dp_pps_write(encoder, crtc_state);
+		intel_dsc_dp_pps_write(encoder, crtc_state);
+	}
 }
 
 static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index fba91d0fd33dc..b6a717566e7c8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -43,6 +43,7 @@
 #include "intel_dpio_phy.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
+#include "intel_vdsc.h"
 #include "skl_scaler.h"
 
 static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
@@ -785,6 +786,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) < 12 || !first_mst_stream)
 		intel_ddi_enable_transcoder_clock(encoder, pipe_config);
 
+	intel_dsc_dp_pps_write(&dig_port->base, pipe_config);
 	intel_ddi_set_dp_msa(pipe_config, conn_state);
 }
 
-- 
2.37.2

