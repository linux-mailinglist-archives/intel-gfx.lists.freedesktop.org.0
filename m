Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1EDAD7C7A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 22:35:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0680B10E268;
	Thu, 12 Jun 2025 20:35:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KrCTrrb7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04AC710E1CE;
 Thu, 12 Jun 2025 20:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749760506; x=1781296506;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5m3Kfbcdbq/qlkFX6Se6hwde/ld59UJQlRmKnu+iBvU=;
 b=KrCTrrb7TGclH+yrHYvLLcfAzo3j+ibDJGCXYYKAsabNqln2DkV7a18y
 +yCeksYCk/0vy2nlRsHmWW4OXi2RFTEmosW03kjP3Q2LCS7rl8z9Qglr4
 1RXqO3D6Kd42pGyj0g7fQ0bxxzs91hNcAyH70BHgyPWivfm0cndqAAFRv
 1ll3YsWztrrievp/qE34FY7tPqPClh009LEDhPV5v8IZvwlej72mpSkdB
 Os5aQDkkOGdQS0GMkeG0Dl4fu0qBgpNBzuVxYj06kzLvimANK3vHGe8ky
 XJmaJteDs7v3L4210WTejMuVA78oOcL1xqywVaQSfGr2lJT7UZUzm7Vt1 Q==;
X-CSE-ConnectionGUID: BT5S9gYITE2cpPj72J1AAA==
X-CSE-MsgGUID: u6dJsaNhTDOUlJIV0wAB+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="52106984"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="52106984"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 13:35:06 -0700
X-CSE-ConnectionGUID: ikl5mEwdQLi94+DJfKcqWQ==
X-CSE-MsgGUID: xcAsK7xBSe6+bISXoQujbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148520106"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa009.fm.intel.com with ESMTP; 12 Jun 2025 13:35:04 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Subject: [PATCH v5 9/9] drm/i915/xe3lpd: Extend WA 16023981245 for display
 30.02
Date: Fri, 13 Jun 2025 02:04:48 +0530
Message-Id: <20250612203448.2948795-10-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250612203448.2948795-1-dnyaneshwar.bhadane@intel.com>
References: <20250612203448.2948795-1-dnyaneshwar.bhadane@intel.com>
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

wa_16023981245 need to be extended for display version 30.02

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 15ede7678636..e0336c79c294 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1085,7 +1085,8 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 
 		/* Wa_16023981245 */
 		if ((DISPLAY_VERx100(display) == 2000 ||
-		     DISPLAY_VERx100(display) == 3000) &&
+		     DISPLAY_VERx100(display) == 3000 ||
+		     DISPLAY_VERx100(display) == 3002) &&
 		     src_x % 2 != 0)
 			hsub = 2;
 	} else {
-- 
2.34.1

