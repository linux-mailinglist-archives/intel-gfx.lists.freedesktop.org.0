Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A585D3377DF
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 16:34:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29C596EDEB;
	Thu, 11 Mar 2021 15:34:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A94396EDF3
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 15:34:31 +0000 (UTC)
IronPort-SDR: 8/8xMqUaHehpb1FM2RTr2rXa9u12peQ5Nxj1KYwBChZkGCIg1rkXOS0sDhLZObAXW4R9CNMWQl
 1XxkDhdnPmWw==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="175797248"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="175797248"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 07:34:31 -0800
IronPort-SDR: f1yxzC9OAzaHFSqQshPHd4nfvdT4lWV42kFhfK1JfdqO8PRPmTwWsYdTUWgEbRpfZhEM+e5YM0
 F9I+S3hxNqRw==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="589251678"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 07:34:30 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 07:34:06 -0800
Message-Id: <20210311153415.3024607-15-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311153415.3024607-1-matthew.d.roper@intel.com>
References: <20210311153415.3024607-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 14/23] drm/i915/xelpd: Handle LPSP for XE_LPD
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
