Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 707A251F84D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 11:31:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC47710E8A6;
	Mon,  9 May 2022 09:31:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 175CC10E6CE;
 Mon,  9 May 2022 09:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652088659; x=1683624659;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XLEYnhufhiZQ1J/UDY2UmrUb3aP6hXrcdEGDho0+Yk0=;
 b=Nx0utvmVvjGjOajL303LZ1qb3hgVEqowNcgoJUWeWY0oGNDs1F+Oy8mb
 X9nBjrUUypIL6pUzrb49cAf+SShx+RcE++iUnwGtkBZ6YfaLFq0Hn7MHw
 vNmDp1g/fTJ0V0aIyn0Hl60HSSnRHbe68Dx60rgFZ6354PfJrfT7rJlXZ
 bbLWbo/rFMbbN+jm++r5PQmuz+ZMO6XiHWsZdHeRN3VNjv5rYXCo+VCPb
 Q/RAWWVHQ/3Beke0eGStZZc8rEnOV8hh0YxGySkbQ5i4SYT06cg2QaGyG
 z+51G9ijmuKUKYlmd43ftZjBmzokQIVGrUUmjddogyclW33YnXdxFGI8v Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="294218316"
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="294218316"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 02:30:52 -0700
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="591551333"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 02:30:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 May 2022 15:01:30 +0530
Message-Id: <20220509093130.3511032-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220509093130.3511032-1-ankit.k.nautiyal@intel.com>
References: <20220509093130.3511032-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/hdmi: Prune unsupported modes as
 per HDMI2.1 spec
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As per Sec 7.8.1 of HDMI2.1 spec, sources that support modes:
4K100, 4K120, 8K50, 8K60 must support these modes in at least one of
the below formats:
i) uncompressed FRL, 420 format and min of 10 bpc, or
ii) compressed FRL, 444 format and min of 10 bpc.

Since FRL and DSC are not supported natively with HDMI, the above
modes must be pruned as per the spec, and is a requirement for the
HDMI2.1 compliance test.

This patch adds a condition to check for the modes with clock
requirement more than 2376 MHz (1188 MHz with 420 format),
and prune them if none of the above two formats are supported.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 48 +++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 1ae09431f53a..2ee1262f6427 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1940,6 +1940,44 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
 	}
 }
 
+/*
+ * HDMI2.1 Sec7.8.1
+ * Support requirement for 4K100, 4K120, 8K50, and 8K60.
+ *
+ * The modes with timings same as above modes are supported only with min of 10 bpc
+ * along with:
+ *
+ * i) 444 format only with FRL mode support with DSC
+ * ii) 420 format only with FRL mode without DSC.
+ */
+static bool
+intel_hdmi21_bpc_possible(struct drm_connector *connector,
+			  int clock, int bpc, bool ycbcr420_output,
+			  bool frl, bool dsc)
+{
+	const struct drm_display_info *info = &connector->display_info;
+	const struct drm_hdmi_info *hdmi = &info->hdmi;
+
+	int pixel_clock = ycbcr420_output ? clock * 2 : clock;
+
+	if (pixel_clock < 2376000)
+		return true;
+
+	if (!frl)
+		return false;
+
+	if (dsc && bpc > hdmi->dsc_cap.bpc_supported)
+		return false;
+
+	if (!ycbcr420_output && !dsc)
+		return false;
+
+	if (bpc < 10)
+		return false;
+
+	return true;
+}
+
 static enum drm_mode_status
 intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
 			    bool has_hdmi_sink, bool ycbcr420_output)
@@ -1948,6 +1986,13 @@ intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
 	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
 	enum drm_mode_status status = MODE_OK;
 	int bpc;
+	bool frl, dsc;
+
+	/*
+	 * FRL and DSC not supported for HDMI from source as of now.
+	 */
+	frl = false;
+	dsc = false;
 
 	/*
 	 * Try all color depths since valid port clock range
@@ -1963,6 +2008,9 @@ intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
 		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink, ycbcr420_output))
 			continue;
 
+		if (!intel_hdmi21_bpc_possible(connector, clock, bpc, ycbcr420_output, frl, dsc))
+			continue;
+
 		status = hdmi_port_clock_valid(hdmi, tmds_clock, true, has_hdmi_sink);
 		if (status == MODE_OK)
 			return MODE_OK;
-- 
2.25.1

