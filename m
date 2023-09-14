Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F60D7A0E47
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:27:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F61710E59A;
	Thu, 14 Sep 2023 19:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A065010E588
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694719628; x=1726255628;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SFAzTKurWcrZPQ0adhT2qLcrAi/kZwr76bI9iDldzBU=;
 b=d5jNjyNlZjSc6swwNDV6AaGHsAOoQuLznytp6eS5iiz3GqSYqJiDcp4P
 sjAEao2kPZzbVeG6PdfPsSssCjtQKawGETLzdmoMBH1nI3SdD8GSpVlyr
 OxKWbXX/qIZIuEwtISUOton+wSeEfFg2h1/TJhmdfgpVssbTZhJfHfryv
 fEPFWQ/73qmMcoH9iU+zPVAxDQs2l4T+b37baQylsKdUdkht4DrmnuhoI
 RPkshtkvsyawURWbQCN0wGBz52bcScI08/uqHJjcCRHktxccVQql7hNsT
 Lb3MQLrp3bc4r+Gd/EuGKk1BnOTZFbKgMaEqS+17NzBXeRL75P++3nUnW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465421768"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="465421768"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:27:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779790612"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779790612"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:27:07 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 22:26:53 +0300
Message-Id: <20230914192659.757475-20-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 19/25] drm/i915/dp_mst: Program the DSC PPS
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
index 45db6349af94f..962c9c7c211ce 100644
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
index 832e8b0e87e84..19548242fa0f2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -43,6 +43,7 @@
 #include "intel_dpio_phy.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
+#include "intel_vdsc.h"
 #include "skl_scaler.h"
 
 static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
@@ -775,6 +776,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) < 12 || !first_mst_stream)
 		intel_ddi_enable_transcoder_clock(encoder, pipe_config);
 
+	intel_dsc_dp_pps_write(&dig_port->base, pipe_config);
 	intel_ddi_set_dp_msa(pipe_config, conn_state);
 }
 
-- 
2.37.2

