Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACD1316F6C
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 20:01:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ED526ECC8;
	Wed, 10 Feb 2021 19:01:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB53E6ECC8
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Feb 2021 19:01:14 +0000 (UTC)
IronPort-SDR: MYnb56r9KtvkLA7Hfm54bsQhbW6ooGsAZbOREdPbZwIptaN+D8kgTOT35wlzxOGa+btfMaXR3f
 gCL7Ud6ykgmA==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="246199734"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="246199734"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 11:01:13 -0800
IronPort-SDR: tjlBqnOsXRyO5zY+e2dWrlhedT1l+s1Ygv+RZNfKOLdw5M9A4p/q3jJhopt9IBnbRwXsa4Draz
 ljGw83LxbtGg==
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="421166802"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 11:01:12 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Feb 2021 11:01:06 -0800
Message-Id: <20210210190106.8586-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] i915/perf: Drop the check for report reason in
 OA
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

After fixing the OA_TAIL_PTR corruption, there are no more reports with
reason field of zero. Drop the check for report reason.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 93f3e2c5c89a..c15bead2dac7 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -725,11 +725,6 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 			  (IS_GEN(stream->perf->i915, 12) ?
 			   OAREPORT_REASON_MASK_EXTENDED :
 			   OAREPORT_REASON_MASK));
-		if (reason == 0) {
-			if (__ratelimit(&stream->perf->spurious_report_rs))
-				DRM_NOTE("Skipping spurious, invalid OA report\n");
-			continue;
-		}
 
 		ctx_id = report32[2] & stream->specific_ctx_id_mask;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
