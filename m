Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE95C5BD12
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 08:40:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D61C10E9BE;
	Fri, 14 Nov 2025 07:39:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aQNbZBsy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1521210E9BD;
 Fri, 14 Nov 2025 07:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763105997; x=1794641997;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fg7UEMYOE6PdUoRlrm3PKe3EHiyUvAyfXqFPYWPbcPM=;
 b=aQNbZBsyNKyGKAfUcfrgPrAdnvx1pwbrvXZ3zAZv1tb8t683nXg17/o4
 pBjsy9BoFldeoJ4LV+j6JDLenct9wH181tyHy3r8xEO2DUe1iA3NbETNy
 1C49b/rahBgg3FNQFaulRjtp44WgoAaP42icdO9EeXE0LLVpFFF/752kf
 fvFkF+Xm8jzFJe9DcmeN4sc1RWGSi/yFei0EeFTtEcqK84JexROg5O0MB
 ZXbOsZ9KyZ+HD6RpeH+i1EXIZfzUotc5+jb/3EbSkdD/MaPHuLoxwAk8g
 KU/Ke0KtHuxE2KddcU3sa71TqwnP9HF4eXDcXMvFH8Sizo7TmXlgqtezU Q==;
X-CSE-ConnectionGUID: zWH6l8SsQLW4nPXSrTWXNQ==
X-CSE-MsgGUID: /VrA6VsvQe2bMfydXB7TSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="76657790"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="76657790"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 23:39:57 -0800
X-CSE-ConnectionGUID: n4Jb9JHSTCOSeLz6a248ug==
X-CSE-MsgGUID: B6hM8a0iTHiwaGKcOgtxfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="220369803"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 23:39:55 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH] drm/i915/dp: Restrict max source rate for WCL to HBR3
Date: Fri, 14 Nov 2025 12:57:12 +0530
Message-ID: <20251114072712.161982-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

WCL supports a maximum of HBR3 8.1 Gbps for both eDP/DP.
Limit the max source rate to HBR3 for WCL.

Bspec:74286
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0ec82fcbcf48..0d56504e1715 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -593,7 +593,10 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 			source_rates = mtl_rates;
 			size = ARRAY_SIZE(mtl_rates);
 		}
-		max_rate = mtl_max_source_rate(intel_dp);
+		if (display->platform.pantherlake_wildcatlake)
+			max_rate = 810000;
+		else
+			max_rate = mtl_max_source_rate(intel_dp);
 	} else if (DISPLAY_VER(display) >= 11) {
 		source_rates = icl_rates;
 		size = ARRAY_SIZE(icl_rates);
-- 
2.45.2

