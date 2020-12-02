Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C165C2CB3E4
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 05:25:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FF946E9FB;
	Wed,  2 Dec 2020 04:25:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93B3F6E9FB
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 04:25:23 +0000 (UTC)
IronPort-SDR: fSCydP+i6yv6c2Y0TRnMARHroIY84pRZEOAGjJMVZGzCeY3uAdIN7HsYlTm8Kp6BxPkRRNStjN
 0rcE2kMLIYWQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="169448756"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="169448756"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 20:25:15 -0800
IronPort-SDR: HdhUh+7ZbDXTXUMT7GlhXcUfQPQhktf/8g+93x6i7BkLZUchFRiCD6MwciblyAJ7rmu7PM0AMI
 XL51X4XEDdmQ==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="549881902"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 20:25:14 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 20:25:10 -0800
Message-Id: <20201202042510.64769-1-umesh.nerlige.ramappa@intel.com>
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
index b86df70155fd..63032f42bbe6 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -730,11 +730,6 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
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
