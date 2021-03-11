Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 881EC33807E
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 23:37:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B48796EEA0;
	Thu, 11 Mar 2021 22:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3041D6EE84
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 22:36:47 +0000 (UTC)
IronPort-SDR: BpHOzkfGpLr+O6loc9jea474TQsQUGRjuHAEGF0YCfYvZwtPTgUFEH28VbUb2ggeY6+T0OpLHt
 yfBGsmUsSh+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="273790870"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="273790870"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:45 -0800
IronPort-SDR: bhirZhrWgbVQttWwNNSGAglq1Uom1U6uHm5DSXMo15Hj28QpW/wD/T6dLxX4XN6fFb2gA+zAHm
 JqFYf5DrBYAg==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438852686"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:44 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:35:50 -0800
Message-Id: <20210311223632.3191939-15-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311223632.3191939-1-matthew.d.roper@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/56] drm/i915/xelpd: Handle LPSP for XE_LPD
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Uma Shankar <uma.shankar@intel.com>

Enable LPSP for XE_LPD and get the proper power well
enable check in place. For XE_LPD it is PW2 which
need to check for LPSP.

v2:
 - Move the XE_LPD check outside of the switch.  (Lucas)

Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 1666aa23092b..a5338dbb4503 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1339,6 +1339,12 @@ static int i915_lpsp_status(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
 
+	if (DISPLAY_VER(i915) >= 13) {
+		LPSP_STATUS(!intel_lpsp_power_well_enabled(i915,
+							   SKL_DISP_PW_2));
+		return 0;
+	}
+
 	switch (DISPLAY_VER(i915)) {
 	case 12:
 	case 11:
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
