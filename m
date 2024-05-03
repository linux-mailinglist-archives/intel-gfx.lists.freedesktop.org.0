Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB8E8BA6E3
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 08:06:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 412C610F158;
	Fri,  3 May 2024 06:06:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nbEimZ5V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92E0710F7AC
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 06:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714716397; x=1746252397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1UPZE0KtDqj5e7Yg2hNQ4FWNpTO9fwYOGXBh4jW8QWY=;
 b=nbEimZ5VmMbTsOC9UKHxIBRWmx3QM2etrBZAuFGusfgq9MLNw3zcioKy
 hM2NjVRJt893ZAn3leVvSqMHXw1g6a0Kp1Fch1iASAH6/u0kgbvO6shD1
 Qm+sjuTLikI3WlSMq+4cdLhixCOLPEehYp+/Y3KYgdarhad1ZeVnMvf3r
 3Fl+zK2ZOLmNNTUee7jcECmoAvdJI9n35Dst7NZTor2AJFYhTbXy5Bm98
 tEiF5vpIaLKuuHsVpqrtSuxDSidV83bx9/fHLc0/ym+n0ECDlhu1xwwzU
 5tsDAE96yKuP/LIiTA9Gv90Ovksw42w7yWhB2Fbl3WKsB69wBlX1wHOPb w==;
X-CSE-ConnectionGUID: hG11HTnSRRCucijE77sdHQ==
X-CSE-MsgGUID: v0cSmcgXQzadhX0UJPFdzA==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10644606"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="10644606"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:06:37 -0700
X-CSE-ConnectionGUID: jvj7ktjCQmu5bghvbK29+g==
X-CSE-MsgGUID: EgAX7xTTRyKiqXqlAHpN1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27875575"
Received: from azaki-mobl.amr.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.32.146])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:06:36 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/3] drm/i915/psr: LunarLake IO and Fast Wake time line count
 maximums are 63
Date: Fri,  3 May 2024 09:06:19 +0300
Message-Id: <20240503060621.987820-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240503060621.987820-1-jouni.hogander@intel.com>
References: <20240503060621.987820-1-jouni.hogander@intel.com>
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

On LunarLake maximum for IO and Fast Wake times are 63. Take this into
account in calculation and when writing the IO Wake lines.

Bspec: 69885, 70294

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f5b33335a9ae..678987bbe168 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1364,8 +1364,9 @@ static bool _compute_alpm_params(struct intel_dp *intel_dp,
 	fast_wake_time = precharge + preamble + phy_wake +
 		tfw_exit_latency;
 
-	if (DISPLAY_VER(i915) >= 12)
-		/* TODO: Check how we can use ALPM_CTL fast wake extended field */
+	if (DISPLAY_VER(i915) >= 20)
+		max_wake_lines = 63;
+	else if (DISPLAY_VER(i915) >= 12)
 		max_wake_lines = 12;
 	else
 		max_wake_lines = 8;
-- 
2.34.1

