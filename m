Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD68CAD896E
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jun 2025 12:23:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C3D110E98C;
	Fri, 13 Jun 2025 10:23:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MMU41/hS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25D2710E991;
 Fri, 13 Jun 2025 10:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749810211; x=1781346211;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iuIy/ZsOalZ5Zo9vyqou2eGYoVQzUvwD+gbAjIFTFhw=;
 b=MMU41/hSM4x0EQesVwOsYKlobc/nvSfcLqvfwThQV6AVdI1801/PNzIe
 tDeiMECGW2O0YDAOUJdT6sHt8Zln9bxWfSLOw67ef57EQS+eKupYBktHy
 p46wpcTGFJm525E5WezCfG3476/TA+5wtqimcAbAyspjfpUqbY4uuQRgr
 cknyc5tEwa/doVJjBNXpEgB3wM0hQa0kEnlpWyTSvtZ3OTL5uxO3yoebw
 ELqx2SYShi6itBit0C66RK/Y6araR+LFUGBQ5OqN9ZdAhqYj68MBS9ws5
 hpseL4GhPQNOiH4dcHJj/EXJ9JTt9eVIeWyFtyTcKeLf7D8wyQAyFGm34 w==;
X-CSE-ConnectionGUID: 425TEe6BTreawY5uc9onbg==
X-CSE-MsgGUID: 2ckvx3ehQruYGTbf7E3XMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="62673646"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="62673646"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 03:23:31 -0700
X-CSE-ConnectionGUID: 038TlWy4QOuy8jPA1STTVQ==
X-CSE-MsgGUID: 44f6GbmzTz2/7aVnN17vJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="152758965"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by orviesa004.jf.intel.com with ESMTP; 13 Jun 2025 03:23:30 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v6 8/9] drm/i915/wcl: C10 phy connected to port A and B
Date: Fri, 13 Jun 2025 15:52:55 +0530
Message-Id: <20250613102256.3508267-9-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250613102256.3508267-1-dnyaneshwar.bhadane@intel.com>
References: <20250613102256.3508267-1-dnyaneshwar.bhadane@intel.com>
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

WCL added a c10 phy connected to port B. PTL code is currently
restricting c10 to phy_a only.

PTL doesn't have a PHY connected to PORT B; as such,there will
never be a case where PTL uses PHY B.
WCL uses PORT A and B with the C10 PHY.Reusing the condition
for WCL and extending it for PORT B should not cause any issues
for PTL.

-v2: Reuse and extend PTL condition for WCL (Matt)

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 83c8df9dbc0c..ed8e640b96b0 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -39,7 +39,13 @@ bool intel_encoder_is_c10phy(struct intel_encoder *encoder)
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	if (display->platform.pantherlake && phy == PHY_A)
+	/* PTL doesn't have a PHY connected to PORT B; as such,
+	 * there will never be a case where PTL uses PHY B.
+	 * WCL uses PORT A and B with the C10 PHY.
+	 * Reusing the condition for WCL and extending it for PORT B
+	 * should not cause any issues for PTL.
+	 */
+	if (display->platform.pantherlake && phy < PHY_C)
 		return true;
 
 	if ((display->platform.lunarlake || display->platform.meteorlake) && phy < PHY_C)
-- 
2.34.1

