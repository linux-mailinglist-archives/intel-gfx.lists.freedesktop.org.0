Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEBB65080A
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Dec 2022 08:29:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6101110E067;
	Mon, 19 Dec 2022 07:29:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32EA710E067
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Dec 2022 07:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671434966; x=1702970966;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tidgrFyTiZhfL0bkX/wVDZ37pN/dGkxaiEJl9nlbb04=;
 b=Pw/TKJpO4ol4OJo1YMKjtq10psX3fE/I5kVzyKEvGitUUcjr+P5KV+Nu
 Xw9ajxUr6tfR5e28gCVhd2tk5lSZTS4b5yIqx113KUvzrADWeNQRO74eI
 Qi4NMf+KSelRtAaY4L/FoTo5CG3ircs32fnrAbxCmej7CoTuTfBaBFJax
 CHquY41HWYA2aPE++DQ7mQVaVjDGQZeNAbBV9AsbTYqVbETKorymGnHN5
 r6ipYlcJrv6dUwx86RkVb6fVGfnnUKL/5rW9Bj0CEzt+TSBxMEAePq7I1
 e+D/J8ZcZOFBekFxbUg1uvMtevmPae5CMK72uynNSzB58ZmfqJxJvNv3d A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="302712094"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="302712094"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2022 23:29:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="895946621"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="895946621"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga006.fm.intel.com with ESMTP; 18 Dec 2022 23:29:20 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Dec 2022 09:29:19 +0200
Message-Id: <20221219072919.27495-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] Copy highest enabled wm level to disabled wm
 levels for gen >= 12
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

There was a specific SW workaround requested, which should prevent
some watermark issues happening, which requires copying highest
enabled wm level to those disabled wm levels(bit 31 is of course
still needs to be cleared).

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index ae4e9e680c2e3..b12e11cd6e579 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1591,6 +1591,13 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 				wm->wm[level].lines = wm->wm[0].lines;
 				wm->wm[level].ignore_lines = wm->wm[0].ignore_lines;
 			}
+
+			/* Wa_14017887344 */
+			if (DISPLAY_VER(i915) >= 12 && level > 0) {
+				wm->wm[level].blocks = wm->wm[level - 1].blocks;
+				wm->wm[level].lines = wm->wm[level - 1].lines;
+				wm->wm[level].ignore_lines = wm->wm[level - 1].ignore_lines;
+			}
 		}
 	}
 
-- 
2.37.3

