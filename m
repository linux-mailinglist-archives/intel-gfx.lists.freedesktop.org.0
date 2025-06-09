Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F68BAD209A
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 16:11:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B27110E3B2;
	Mon,  9 Jun 2025 14:11:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mDTYQPET";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0208710E3B2;
 Mon,  9 Jun 2025 14:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749478270; x=1781014270;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OQv5S8lK4184o1CgQdCrT8u8Y3LUIegnHuH8sPBSHJI=;
 b=mDTYQPETQ1zLiTvQU7zfLimoz+NX/U9E046j17xFCGy9w6iOlGdieC6R
 rQvzw3+MWVYff3RLc608S1v6NFXCN6iLNqCkvOyBjtZcMh21gvY+SAoYw
 JQ62zSdj2vprVs+BmopcZOiwu67hSFHSbtNLDcnz7amh1Lt8lJXY1E8so
 iZAbYa/C1OVb6IPwSWXuOd1/KnnuURjryo6ItJ8rex2WvQzVmO9IodnTx
 eSBcDpJ+zaFhsMSCWtaOqDaus7glwyJ9WNQGjmsrNECGuT6aN9/VwR1L6
 O04lRQATQYSTtHWl6tVwN442MVUhnT+SMEEHLwA6oRFB0uex4j6NBIMOt A==;
X-CSE-ConnectionGUID: YgpCqVKNTI6fq+ndAi9r2Q==
X-CSE-MsgGUID: UM3vAZl/TcqansRGIp2LpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="55360740"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="55360740"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 07:11:10 -0700
X-CSE-ConnectionGUID: mMY5GNd+Te2PJd6ckrKGSw==
X-CSE-MsgGUID: uXcCduMhR+6F6eWhVZrW9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151765624"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.99])
 by orviesa005.jf.intel.com with SMTP; 09 Jun 2025 07:11:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Jun 2025 17:11:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v4 06/21] drm/i915/dsb: Disable the GOSUB interrupt
Date: Mon,  9 Jun 2025 17:10:31 +0300
Message-ID: <20250609141046.6244-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Current DSB hardware is apparently a bit borked and likes to signal
spurious GOSUB errors. We already have most for the workarounds for
this in place, but the last part is simply not enabling the corresponding
interrupt.

While at it polish up the w/a comments with the w/a number,
and consistently take the short blurp from the w/a page.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 6fdd324615e2..f60a6698419c 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -555,8 +555,8 @@ static void intel_dsb_gosub_align(struct intel_dsb *dsb)
 	aligned_tail = ALIGN(tail, CACHELINE_BYTES);
 
 	/*
-	 * "The GOSUB instruction cannot be placed in
-	 *  cacheline QW slot 6 or 7 (numbered 0-7)"
+	 * Wa_16024917128
+	 * "Ensure GOSUB is not placed in cacheline QW slot 6 or 7 (numbered 0-7)"
 	 */
 	if (aligned_tail - tail <= 2 * 8)
 		intel_dsb_buffer_memset(&dsb->dsb_buf, dsb->free_pos, 0,
@@ -619,8 +619,8 @@ void intel_dsb_gosub_finish(struct intel_dsb *dsb)
 	intel_dsb_align_tail(dsb);
 
 	/*
-	 * "All subroutines called by the GOSUB instruction
-	 *  must end with a cacheline of NOPs"
+	 * Wa_16024917128
+	 * "Ensure that all subroutines called by GOSUB end with a cacheline of NOPs"
 	 */
 	intel_dsb_noop(dsb, 8);
 
@@ -668,7 +668,11 @@ static u32 dsb_error_int_en(struct intel_display *display)
 	if (DISPLAY_VER(display) >= 14)
 		errors |= DSB_ATS_FAULT_INT_EN;
 
-	if (DISPLAY_VER(display) >= 30)
+	/*
+	 * Wa_16024917128
+	 * "Disable nested GOSUB interrupt (DSB_INTERRUPT bit 21)"
+	 */
+	if (0 && DISPLAY_VER(display) >= 30)
 		errors |= DSB_GOSUB_INT_EN;
 
 	return errors;
-- 
2.49.0

