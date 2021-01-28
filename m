Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F705307EAB
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 20:24:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E83896E9F1;
	Thu, 28 Jan 2021 19:24:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5279F6E9CF
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 19:24:39 +0000 (UTC)
IronPort-SDR: 8fx0+2FctmR8dMPsj8pp+//X4RTdCYYBoeuPPjh+PMttIYk8sn6bPzUBxPfdY0zktk+jbcsph3
 Ww8qgrDgvxlw==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="244384038"
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="244384038"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 11:24:38 -0800
IronPort-SDR: potjFTdlor0uLx7wnHoqCoZqyUPDddM4EvC/yQnhbvXd4f/84y0lhgsvHrjV/lVs8ySNFH0L1X
 s3QFdKj5kVow==
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="411110165"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 11:24:37 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 11:24:03 -0800
Message-Id: <20210128192413.1715802-9-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210128192413.1715802-1-matthew.d.roper@intel.com>
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/18] drm/i915/display13: Handle LPSP for
 Display 13
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Uma Shankar <uma.shankar@intel.com>

Enable LPSP for Display13 and get the proper power well
enable check in place. For Display13 it is PW2 which
need to check for LPSP.

Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index d62b18d5ecd8..2af7d74d5960 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1316,6 +1316,13 @@ static int i915_lpsp_status(struct seq_file *m, void *unused)
 
 	switch (INTEL_GEN(i915)) {
 	case 12:
+		if (HAS_DISPLAY13(i915)) {
+			LPSP_STATUS(!intel_lpsp_power_well_enabled(i915,
+								   SKL_DISP_PW_2));
+			break;
+		}
+
+		fallthrough;
 	case 11:
 		LPSP_STATUS(!intel_lpsp_power_well_enabled(i915, ICL_DISP_PW_3));
 		break;
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
