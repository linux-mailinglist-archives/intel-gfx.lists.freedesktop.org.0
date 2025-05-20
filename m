Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26500ABD199
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E650B10E583;
	Tue, 20 May 2025 08:14:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J8yRq9Vh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7879710E583;
 Tue, 20 May 2025 08:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747728861; x=1779264861;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ARJQA1O6ERCo7bZvqbaD/zxeFlXJZ7fYfz+pjBdnUA8=;
 b=J8yRq9Vh44atbF59JoAWItLe4QyYgw0+gsqACi30bOTD4LAHU9ib8YwX
 HpNvPu0oz9dDbP6H9gH+hGVM43wJbb6XdrWmj4i/qseDMN0HVgn1SVPC5
 iMMnak7wdcux1BiVGR+BOSleIY8E0Qjzod1AvfCCTQRVmebJyjrx/iRpt
 9PrXrZ1O2swzJ+5NQ+8rqxeIjFwwxDaojXXbeb0gGss5Uo0fyuTnhjVHl
 5Qm4TKeO2VIQoBn7nfFs9Cen774gv2XrLMXYopndp8wtf38whj6yTzV3b
 0PsRTAOlm1bj4omUQ7EC6nu6BXOrkacDxnREBxP/st/44jVd1rN5pN6WX A==;
X-CSE-ConnectionGUID: bOUygWkuS3KvdAgoIm/SZg==
X-CSE-MsgGUID: lez3mkoLT3G5+UjtlYTlxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="48764863"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="48764863"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:14:21 -0700
X-CSE-ConnectionGUID: cBi4MhnRTTuvsIO8cYi8vA==
X-CSE-MsgGUID: VUm8tgRoSq+VxTFkBX2j+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="144476049"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa005.fm.intel.com with ESMTP; 20 May 2025 01:14:19 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 animesh.manna@intel.com, chaitanya.kumar.borah@intel.com
Subject: [v7 10/11] drm/i915/color: Do not pre-load LUTs with DB registers
Date: Tue, 20 May 2025 13:25:36 +0530
Message-Id: <20250520075537.4074010-11-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
References: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
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

Since Double Buffered LUT registers can be written in active region
no need to preload them.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index ac00b86798fb..671db6926e4c 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2041,9 +2041,13 @@ void intel_color_wait_commit(const struct intel_crtc_state *crtc_state)
 static bool intel_can_preload_luts(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 
+	if (HAS_DOUBLE_BUFFERED_LUT(display))
+		return false;
+
 	return !old_crtc_state->post_csc_lut &&
 		!old_crtc_state->pre_csc_lut;
 }
-- 
2.25.1

