Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1E3396BED
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 05:36:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 469346E524;
	Tue,  1 Jun 2021 03:36:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B87796E524;
 Tue,  1 Jun 2021 03:36:47 +0000 (UTC)
IronPort-SDR: 7GO2lGp0WU/egSlAqkF5R3aTUnX8zVEuT4V0HxhEP24z4VXIcRS6/HGXuKIDbDidkfQ3hw/zDD
 Xvi3+xeZGiJA==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="190821441"
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="190821441"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2021 20:36:45 -0700
IronPort-SDR: hVc7ldSnhxNc+eCchQUWBSjwvcErU7BjXmfLtVSBlIDFWptVbSi3MtzdVTBeZVPVRNUlHGL/jI
 EZrYqdo4vS6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="474084572"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by FMSMGA003.fm.intel.com with ESMTP; 31 May 2021 20:36:44 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Tue,  1 Jun 2021 11:41:16 +0800
Message-Id: <20210601034116.8396-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH i-g-t] tests/kms_dp_dsc: Transmit correct DRM
 connector structure.
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
Cc: markyacoub@chromium.org, charlton.lin@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

1. Pass one more parameter (current drmModeConnector) when
   call "run_test()". Use it to retrieve proper connector_type.
2. SIGSEGV fault would happen due to "igt_output" did not
   store properly in "data->output". Main funciton already
   pass "igt_output" pointer into "run_test()" function.
   Use this pointer instead of "data->output" to get display mode.

Fixes: a1772be7dede ("tests/kms_dp_dsc: Bug fix for DP on Pipe A")

Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 tests/kms_dp_dsc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/tests/kms_dp_dsc.c b/tests/kms_dp_dsc.c
index ea7c9f4f72ce..e434384da369 100644
--- a/tests/kms_dp_dsc.c
+++ b/tests/kms_dp_dsc.c
@@ -224,11 +224,11 @@ static void update_display(data_t *data, enum dsc_test_type test_type)
 }
 
 static void run_test(data_t *data, igt_output_t *output,
-		     enum dsc_test_type test_type)
+		     drmModeConnector *connector, enum dsc_test_type test_type)
 {
 	enum pipe pipe;
 
-	data->mode = igt_output_get_mode(data->output);
+	data->mode = igt_output_get_mode(output);
 	igt_create_pattern_fb(data->drm_fd, data->mode->hdisplay,
 			      data->mode->vdisplay,
 			      DRM_FORMAT_XRGB8888,
@@ -239,7 +239,7 @@ static void run_test(data_t *data, igt_output_t *output,
 		if (is_i915_device(data->drm_fd)) {
 			uint32_t devid = intel_get_drm_devid(data->drm_fd);
 
-			if (data->connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort &&
+			if (connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort &&
 			    data->pipe == PIPE_A && IS_GEN11(devid)) {
 				igt_debug("DSC not supported on Pipe A on external DP in Gen11 platforms\n");
 				continue;
@@ -304,7 +304,7 @@ igt_main
 					continue;
 				}
 				test_conn_cnt++;
-				run_test(&data, output, test_basic_dsc_enable);
+				run_test(&data, output, connector, test_basic_dsc_enable);
 			}
 			igt_skip_on(test_conn_cnt == 0);
 		}
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
