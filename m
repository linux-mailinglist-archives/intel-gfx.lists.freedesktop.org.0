Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70142349905
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 19:07:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B42A6EE17;
	Thu, 25 Mar 2021 18:07:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB0E86EDDF
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 18:07:28 +0000 (UTC)
IronPort-SDR: 8bch60whsvmtZr10bdht+kV1+Iwr7XhAcnhR3WH+Ca6HVtDPOV4a5Hslox5Q8czfvJZWBREkqm
 bUgzmv+UhB4g==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="276113761"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="276113761"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:28 -0700
IronPort-SDR: c7znUIxQdJnoxY/Ore+mUsNJhcck7JowOPIboOCPGf/UK49AItFqOGSwlu4QZLhzUDueaGQmOG
 CHo1jqk+Y19A==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="453176548"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 11:06:38 -0700
Message-Id: <20210325180720.401410-9-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 08/50] drm/i915/xelpd: Handle LPSP for XE_LPD
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
Cc: me@freedesktop.org
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
index 564509a4e666..d5956c329745 100644
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
