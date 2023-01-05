Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB9565EADE
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 13:44:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 508FB10E6FE;
	Thu,  5 Jan 2023 12:44:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67C8D10E6FE
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 12:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672922686; x=1704458686;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1JAz0omtZrrDb4H6+1BCfFtQ3vXXMU2IKo9uBF8aGy0=;
 b=H1gH7W0zP3Xn7oXEkZNilBO4KrrmjvOn4AGFR7FVz6KEBPqqhXcWThuv
 Sczs+2xTo3DhR33/gdXHRdRUPsoIqNVolu7u4tRU1NSE6o9BWYlCypil1
 7nnUwkkoBkAKqk2tfxJn2ZfRKD4ZpkvO0Z+xhhsbAc1/o0uNQjX76GMh6
 HT0FMdQQ71SPSE4TUZVzxLV9fAhlPHF4SMq+88STyhpf85GZjwglf/jqz
 8sf2THzl1mA6/WzSr0Gr6WpsDw6IX3JMp1HLEzdLKbOs7/54m5ylvUWPb
 PO8ILv+wumUF+NKu7OTueP3BAqLf6ZdRo+ZLLTfFqId5kOZsWQhyFe6No g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="324195093"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="324195093"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 04:44:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="900919033"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="900919033"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 04:44:44 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 18:11:25 +0530
Message-Id: <20230105124125.1129653-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221017143038.1748319-3-ankit.k.nautiyal@intel.com>
References: <20221017143038.1748319-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/display: Prune Interlace modes
 for Display >=12
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

Defeature Display Interlace support.
Support for interlace modes is removed from Gen 12 onwards.
Pruning the interlace modes for HDMI for Display >=12.
Bspec: 50490

v2: Add check for both DP and HDMI. (Ville)
Get rid of redundant check for interlace mode in modevalid. (Ville)

v3: Simplify the condition to avoid interlace modes. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 4 ++--
 drivers/gpu/drm/i915/display/intel_hdmi.c | 8 +++++++-
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a9ebc73d3b87..c03a11173dc8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2092,7 +2092,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
-	if (HAS_GMCH(dev_priv) &&
+	if (!connector->base.interlace_allowed &&
 	    adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		return -EINVAL;
 
@@ -5435,7 +5435,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	drm_connector_init(dev, connector, &intel_dp_connector_funcs, type);
 	drm_connector_helper_add(connector, &intel_dp_connector_helper_funcs);
 
-	if (!HAS_GMCH(dev_priv))
+	if (!HAS_GMCH(dev_priv) && DISPLAY_VER(dev_priv) < 12)
 		connector->interlace_allowed = true;
 
 	intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index b4323303baba..6a2ee342eab5 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2255,6 +2255,10 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	if (!connector->interlace_allowed &&
+	    adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
+		return -EINVAL;
+
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_hdmi_sink =
 		intel_has_hdmi_sink(intel_hdmi, conn_state) &&
@@ -2956,7 +2960,9 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 				    ddc);
 	drm_connector_helper_add(connector, &intel_hdmi_connector_helper_funcs);
 
-	connector->interlace_allowed = true;
+	if (DISPLAY_VER(dev_priv) < 12)
+		connector->interlace_allowed = true;
+
 	connector->stereo_allowed = true;
 
 	if (DISPLAY_VER(dev_priv) >= 10)
-- 
2.25.1

