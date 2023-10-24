Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6097D4D9B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 12:22:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F39110E31F;
	Tue, 24 Oct 2023 10:21:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78C2E10E31F
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 10:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698142915; x=1729678915;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lRd0ye/Wy9LsHis8y4eomIy4JjsRTvvwBclkafTEEm0=;
 b=Y5cH8aI7OnjAXBtzDlL/CEZYhlqFAYRpoPD9BNHifnAiiZt0h3nAXBzY
 hS4e44/tV+4NweF9FVYBSpeLEQLJ+mSJsRm+xvw9Ret4gEmutyMCDuFDN
 +3a4NqbvhlGED7mcHjlhZZr8SUURzK0CtVqdwDxjglM8sQU/aohrvzSZ5
 3c7GLLRZzywoU8uqfvdUv7wpRR/UCYrs6M79WhUrNQ8hxSQl0eb96/Ev+
 +n2mm/sli1BjUPKT8cpjx12UkYWE0kM98VOJ9Rskp5QnIPBJkMh7IcR12
 XzMNUHTNmvRVw4nMh2QNFjYOlSGdvfprCaR/WUzTcGnlC9eyjJyQ3cUgN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="473251957"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="473251957"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:21:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="902118302"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="902118302"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:19:34 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 13:22:19 +0300
Message-Id: <20231024102219.4035939-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024010925.3949910-24-imre.deak@intel.com>
References: <20231024010925.3949910-24-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 23/29] drm/i915/dp_mst: Enable DSC passthrough
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

Enable passing through DSC streams to the sink in last branch devices.

v2:
- Fix the DPCD register address while setting/clearing the passthrough
  flag.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 26 ++++++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0101e17515b33..51d6ab170a894 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2968,6 +2968,24 @@ intel_dp_sink_set_dsc_decompression(struct intel_connector *connector,
 			    str_enable_disable(enable));
 }
 
+static void
+intel_dp_sink_set_dsc_passthrough(const struct intel_connector *connector,
+				  bool enable)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct drm_dp_aux *aux = connector->port ?
+				 connector->port->passthrough_aux : NULL;
+
+	if (!aux)
+		return;
+
+	if (write_dsc_decompression_flag(aux,
+					 DP_DSC_PASSTHROUGH_EN, enable) < 0)
+		drm_dbg_kms(&i915->drm,
+			    "Failed to %s sink compression passthrough state\n",
+			    str_enable_disable(enable));
+}
+
 void intel_dp_sink_set_decompression_state(struct intel_connector *connector,
 					   const struct intel_crtc_state *crtc_state,
 					   bool enable)
@@ -2980,7 +2998,13 @@ void intel_dp_sink_set_decompression_state(struct intel_connector *connector,
 	if (drm_WARN_ON(&i915->drm, !connector->dp.dsc_decompression_aux))
 		return;
 
-	intel_dp_sink_set_dsc_decompression(connector, enable);
+	if (enable) {
+		intel_dp_sink_set_dsc_passthrough(connector, true);
+		intel_dp_sink_set_dsc_decompression(connector, true);
+	} else {
+		intel_dp_sink_set_dsc_decompression(connector, false);
+		intel_dp_sink_set_dsc_passthrough(connector, false);
+	}
 }
 
 static void
-- 
2.39.2

