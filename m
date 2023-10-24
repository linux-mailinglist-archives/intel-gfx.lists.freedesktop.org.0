Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 344EA7D449B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 03:09:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A91E10E2C4;
	Tue, 24 Oct 2023 01:09:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8474B10E2BD
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 01:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698109758; x=1729645758;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TxTyW9e9CnaFmlIIekAwYCxH/w7soH3jsOmf32iZj3g=;
 b=Iiyjbs7zy4nTN4v6VH571dt+mTQCD05g//8LlMlGh5H2yzkv4a/j+k1B
 A4sIrEN0Osj+dUB0Y+BCMsISbvhGqG5Ymlf9VYK5OkDquwEXb1/WIacSz
 qgcJrj00TEi/jbcsww5CEXjYKMHxGSgd8N21oNDOABSY/H/H80UnHA7pc
 fWLHFwCRFtodgpXE5ssxQA9h1osB4Lldnetd8XO0Ou1BRgnziOu9LcvB9
 vGN6UkazO7kDvbYmAh2UlQDzCadhcl4bLyekKZWnV9fUGl+/11oapLbdY
 CbN5pi0WPr+AzmQeOyWAA9z92JVjtVUIT2tSy4I7F9VKAtW9y/lx/q7+s A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366304368"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="366304368"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931870067"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931870067"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:17 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 04:09:10 +0300
Message-Id: <20231024010925.3949910-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/29] drm/i915/dp_mst: Program the DSC PPS SDP
 for each stream
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

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 12 +++++++-----
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 ++
 2 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 9151d5add9605..721a5f28be808 100644
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
index 3d11eb1134f46..02da25631b6ef 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -43,6 +43,7 @@
 #include "intel_dpio_phy.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
+#include "intel_vdsc.h"
 #include "skl_scaler.h"
 
 static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
@@ -834,6 +835,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) < 12 || !first_mst_stream)
 		intel_ddi_enable_transcoder_clock(encoder, pipe_config);
 
+	intel_dsc_dp_pps_write(&dig_port->base, pipe_config);
 	intel_ddi_set_dp_msa(pipe_config, conn_state);
 }
 
-- 
2.39.2

