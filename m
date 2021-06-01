Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C5E39753A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 16:17:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F32E6EA70;
	Tue,  1 Jun 2021 14:17:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE4806EA70;
 Tue,  1 Jun 2021 14:17:10 +0000 (UTC)
IronPort-SDR: AMTqqMtVl52gA8YRVFxf/t1BaOLUgp5RvU16gMKmtkNGPbHaKHTObiD/U7aHCvhS95PHOK2cz0
 iMRSVkfzUrow==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="264737018"
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="264737018"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 07:17:07 -0700
IronPort-SDR: xl/Uvh7DNQJDO3CYabOrwqUC3VoAQAhYerwDmyhN+V4qO6f3yNkqEvtJqBN8Wnf+RnfbTy/ma3
 OpYDqlBLVuBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="446979136"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.28])
 by fmsmga008.fm.intel.com with ESMTP; 01 Jun 2021 07:17:06 -0700
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Tue,  1 Jun 2021 19:38:05 +0530
Message-Id: <1622556485-9375-1-git-send-email-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1622547939-8157-1-git-send-email-vidya.srinivas@intel.com>
References: <1622547939-8157-1-git-send-email-vidya.srinivas@intel.com>
Subject: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_plane_alpha_blend: Don't
 set primary fb color in coverage-vs-premult-vs-constant
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Patch removes setting primary fb color in coverage-vs-premult-vs-constant
as this is causing CRC mismatch on few Gen11 systems.
Similar change has already been done in tests constant_alpha_min and basic_alpha
where the test runs on all planes but dont set the primary fb color.

Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
---
 tests/kms_plane_alpha_blend.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/tests/kms_plane_alpha_blend.c b/tests/kms_plane_alpha_blend.c
index a37cb27c7d62..224d79bd1749 100644
--- a/tests/kms_plane_alpha_blend.c
+++ b/tests/kms_plane_alpha_blend.c
@@ -447,10 +447,6 @@ static void coverage_premult_constant(data_t *data, enum pipe pipe, igt_plane_t
 	igt_display_t *display = &data->display;
 	igt_crc_t ref_crc = {}, crc = {};
 
-	/* Set a background color on the primary fb for testing */
-	if (plane->type != DRM_PLANE_TYPE_PRIMARY)
-		igt_plane_set_fb(igt_pipe_get_plane_type(&display->pipes[pipe], DRM_PLANE_TYPE_PRIMARY), &data->gray_fb);
-
 	igt_plane_set_prop_enum(plane, IGT_PLANE_PIXEL_BLEND_MODE, "Coverage");
 	igt_plane_set_fb(plane, &data->argb_fb_cov_7e);
 	igt_display_commit2(display, COMMIT_ATOMIC);
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
