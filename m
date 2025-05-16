Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2ED7AB95FC
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 08:30:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D273B10E9A9;
	Fri, 16 May 2025 06:30:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oFxoKiR3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D48F910E9A9;
 Fri, 16 May 2025 06:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747377048; x=1778913048;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3LjMAMcWmbAzZ6vVbTarJlZZbPg4Oit0NZ8ikjbLiYk=;
 b=oFxoKiR3p8gPjACHeWIJYhgOrAt7JaK1j/wpGjMkQJ6Jxjd8Akn60B5w
 5b7979JO6lBsiWDIOnndxi39MACNT8knRNjuMlL5ppJVU9klfq+1SVbjP
 XOWX2rD8Y1ZHjUUZLWmA/fCx1gtUmRL9arRu9Q9Ixy3t4BvGmNjZixDZj
 RAmDTCN+4h4f5gp6tErhVTSLOdK2Z8n3pGMPi9KcYiyT5tl9WX/qF+GfL
 G0/xaG4qrlNDAr/j7EpcjxNa+JAuGwk44jVrzkwMwDXEv0vEX9eBAGrXL
 7YT9kIhUCGUkQxwa8n/ovNWoZ2BUFO4P1qSSopcj/zcaNybl+9hrUIwtR Q==;
X-CSE-ConnectionGUID: h6wnlrb+QzmTFJLe1QVa+g==
X-CSE-MsgGUID: xS6R39mVRxWrU7QuBG1THw==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="60728506"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="60728506"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 23:30:48 -0700
X-CSE-ConnectionGUID: Ecaij9mtS+6MfOFll3xFRA==
X-CSE-MsgGUID: mBwQodOfStmS3BzxUrmkOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143491429"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.82])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 23:30:46 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2] drm/i915/psr: Do not read PSR2_SU_STATUS on AlderLake and
 onwards
Date: Fri, 16 May 2025 09:30:19 +0300
Message-ID: <20250516063019.2126702-1-jouni.hogander@intel.com>
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

v2: fix inversed logic

Bspec: 69889
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 34 ++++++++++++++----------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 430ad4ef7146..cd833b63ea6b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4021,24 +4021,30 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
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
+		if (DISPLAY_VER(display) < 13) {
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

