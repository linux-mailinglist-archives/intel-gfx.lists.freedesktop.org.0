Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AB5A8B584
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 11:35:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EFF010E8AD;
	Wed, 16 Apr 2025 09:35:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D70ZLCbZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7636B10E8AD;
 Wed, 16 Apr 2025 09:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744796154; x=1776332154;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MdQnsCBYOEzx4C7jQJLkNMQysUvd29Xyx5kDZ+fIIy0=;
 b=D70ZLCbZdVfvVSDsXoPZYZSB+WN2Rf9mFf5CQ29+5mYy7V8v5BdBiJqm
 DWoT1Mrh9OC8fz6YWIz8qoLo9/A2fleksuCz8pXKfSDkpuU3WUz288+Yp
 qodt93BOakSrNspfA0rkRun467mmh3hnJ8SlrDCydEm/Cyy04riM3kvng
 Bz77RP+SkZHi54ICexLo1q6SChtbV5q2V6pM70MojpVICs9PIX6dUY0wm
 Bdho7qW99UbsoCvfsQsPxKYHAVr9OGuvRsyuoIjrOT4KvI6QLNnt6KNiU
 dkYTeSJaKc0dMbI++/KP4S142EYILylY6E3wFBywRh2AOj5yabfw9IlJI A==;
X-CSE-ConnectionGUID: 6TGEF1V1Qq+vxMnetConFg==
X-CSE-MsgGUID: vnZeo/4wQ1qMSbMAHzNiDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="46216700"
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="46216700"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 02:35:54 -0700
X-CSE-ConnectionGUID: xMYdqB+uTsSqgHVuwqZgVw==
X-CSE-MsgGUID: LtYttjKATe+EEs4RLQYPCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="135464056"
Received: from ettammin-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.215])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 02:35:53 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: Do not read PSR2_SU_STATUS on AlderLake and
 onwards
Date: Wed, 16 Apr 2025 12:35:35 +0300
Message-ID: <20250416093535.3231914-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Bspec comment on PSR2_SU_STATUS:

"This register has been tied-off since DG2/ADL-P (it returns zeros only)
and it has been removed on Xe2_LPD."

Bspec: 69889
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 34 ++++++++++++++----------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6d6ef6681e3fc..0ec73c2f4336f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3874,24 +3874,30 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 		int frame;
 
 		/*
-		 * Reading all 3 registers before hand to minimize crossing a
-		 * frame boundary between register reads
+		 * PSR2_SU_STATUS register has been tied-off since DG2/ADL-P
+		 * (it returns zeros only) and it has been removed on Xe2_LPD.
 		 */
-		for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame += 3) {
-			val = intel_de_read(display,
-					    PSR2_SU_STATUS(display, cpu_transcoder, frame));
-			su_frames_val[frame / 3] = val;
-		}
+		if (DISPLAY_VER(display) >= 13) {
+			/*
+			 * Reading all 3 registers before hand to minimize crossing a
+			 * frame boundary between register reads
+			 */
+			for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame += 3) {
+				val = intel_de_read(display,
+						    PSR2_SU_STATUS(display, cpu_transcoder, frame));
+				su_frames_val[frame / 3] = val;
+			}
 
-		seq_puts(m, "Frame:\tPSR2 SU blocks:\n");
+			seq_puts(m, "Frame:\tPSR2 SU blocks:\n");
 
-		for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame++) {
-			u32 su_blocks;
+			for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame++) {
+				u32 su_blocks;
 
-			su_blocks = su_frames_val[frame / 3] &
-				    PSR2_SU_STATUS_MASK(frame);
-			su_blocks = su_blocks >> PSR2_SU_STATUS_SHIFT(frame);
-			seq_printf(m, "%d\t%d\n", frame, su_blocks);
+				su_blocks = su_frames_val[frame / 3] &
+					PSR2_SU_STATUS_MASK(frame);
+				su_blocks = su_blocks >> PSR2_SU_STATUS_SHIFT(frame);
+				seq_printf(m, "%d\t%d\n", frame, su_blocks);
+			}
 		}
 
 		seq_printf(m, "PSR2 selective fetch: %s\n",
-- 
2.43.0

