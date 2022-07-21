Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B85D357C6C9
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 10:47:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 866E28A4E6;
	Thu, 21 Jul 2022 08:47:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2F488A2A9
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 08:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658393268; x=1689929268;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6X8r2dxbW81nrRZQTzkjOTYygckAAUFg4A2NaIayT5M=;
 b=AMnMlGRSEKUttAaW9iDb/WW5U2fydxTZ3F8ZEHpUEpR7y+jfNdwElx8C
 c6laYUNhxxDM4t4fHRaoHuE/k6Wl6RHpzdKXI0lJRDHGalUFhA8GoqKLc
 aqKHtvPmI3HeWEYz86dXUXlPSTGHawerdNHBPEp+7iaYVBJIYx+SWqH81
 ocjY07QcXWbDLOHJ32OcXXWe2GE+3QZGU2GRIz7pXbjwEAlqeYD19ldHU
 Sgsd8+pHcyHKOURUu/w1VSCso8//bS6ILD+09Qs9xWswMlGjUaKpfOR3l
 FT63zfwb1pR1DtoOMWTnVMhbOWlfTrM+nvkoVy8In7oZjRd0Y3bDFJuR7 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="267388386"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="267388386"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 01:47:48 -0700
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="631094039"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 01:47:47 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jul 2022 14:16:45 +0530
Message-Id: <20220721084645.3411219-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/hdmi: Prune modes that require
 HDMI2.1 FRL
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

HDMI2.1 requires some higher resolution video modes to be enumerated
only if HDMI2.1 Fixed Rate Link (FRL) is supported.
Current platforms do not support FRL transmission so prune modes that
require HDMI2.1 FRL.

v2: Fixed the condition to check for dotclock > 600.
Return MODE_CLOCK_HIGH as mode status.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com> (v1)
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index ebd91aa69dd2..a88f589351fa 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2001,6 +2001,15 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 		clock *= 2;
 	}
 
+	/*
+	 * HDMI2.1 requires higher resolution modes like 8k60, 4K120 to be
+	 * enumerated only if FRL is supported. Current platforms do not support
+	 * FRL so prune the higher resolution modes that require doctclock more
+	 * than 600MHz.
+	 */
+	if (clock > 600000)
+		return MODE_CLOCK_HIGH;
+
 	ycbcr_420_only = drm_mode_is_420_only(&connector->display_info, mode);
 
 	status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, ycbcr_420_only);
-- 
2.25.1

