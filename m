Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A31903B9A
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 14:13:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1649910E600;
	Tue, 11 Jun 2024 12:13:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OmC4bbNB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEE4910E600
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 12:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718107983; x=1749643983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sgTmYey90v3qeY3JAurSFyKWNDZQD+6YnOAFSfZqvIs=;
 b=OmC4bbNBLecuBj916iWETtrK94ycZpwvnHLvEIht+jd35YjDRyD9fYsc
 MnKjMiU+J2eJljqcMnoeV3HcHjF11ZCckJCrsjx6MMjWan3Y0poHX+5IB
 5AgvQJgnLfhUnqtRg/ge0tsvNBlwFb/Uuza5N6aG2dJcr7FiAyyB+KRCd
 HpwCCJea8+1pFyqmgs8+MoWOfir+ZrAhE36735Wuj9IY+Gpaud75It0o7
 Qk18SOOgwB2NXve/yKH99/CNY8zpMS5fXODnW3X1s4iC1Yc12n+S415lx
 uYSpTfyxk+u82chtY+R981HL6IOWIGZpZdSln4cpSV/uF0hO6ooQjYWn5 Q==;
X-CSE-ConnectionGUID: 2SBRMU2/REm1F0PLW0YLhA==
X-CSE-MsgGUID: GiyboPsgTkGSblGK+jNDwg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="32296819"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="32296819"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:03 -0700
X-CSE-ConnectionGUID: rL4/IvDwTl6QmjnZLbbAYA==
X-CSE-MsgGUID: adagT89mRE2zLA2Qhn3LjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="40118588"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.164])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:01 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 01/18] drm/i915/psr: Set SU area width as pipe src width
Date: Tue, 11 Jun 2024 15:12:26 +0300
Message-Id: <20240611121243.3366990-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240611121243.3366990-1-jouni.hogander@intel.com>
References: <20240611121243.3366990-1-jouni.hogander@intel.com>
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

Currently SU area width is set as MAX_INT. This is causing
problems. Instead set it as pipe src width.

Fixes: 86b26b6aeac7 ("drm/i915/psr: Carry su area in crtc_state")

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1cce9713a960..66ab8abd0a04 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2316,7 +2316,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 
 	crtc_state->psr2_su_area.x1 = 0;
 	crtc_state->psr2_su_area.y1 = -1;
-	crtc_state->psr2_su_area.x2 = INT_MAX;
+	crtc_state->psr2_su_area.x2 = drm_rect_width(&crtc_state->pipe_src);
 	crtc_state->psr2_su_area.y2 = -1;
 
 	/*
-- 
2.34.1

