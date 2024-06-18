Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF6B90C31C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 07:31:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D03F10E576;
	Tue, 18 Jun 2024 05:31:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bt+xxpKH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EBF710E0D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 05:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718688656; x=1750224656;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=33YLiH2F4aMq9H0Q/yYlkzJKKTelB/JI3Msgxqc/Gxk=;
 b=bt+xxpKHGM0KGYam41+/O4eVbTFwKQ24QQAyhZ20uSTWHTNELnmS53/e
 zRKdkyXcGabB7RCUehfRAOSx8Eqoez3z23tyZJlK3btJFkTlKfQwWFItI
 H0cJubcR4KzS1VT1mfXAa9Ew8Sf44+Y/Ryv6VzZaHkbisp5WK0ePbIjp8
 Ez59qHjMvYiClrYgYH1rd2KFH7hweCIOvQm6QGdfVhs7wDxmZus8lJ81y
 W4tdCMiyM9nxrl+J7IACDDro7yh9CHcobVGrXA/HGIwb8l7ehbexxDTyw
 WGscIvbKDpXgdeg5YjnjQm4Rf6VSxxZ56UdTJBgrmzneYJ8vyUboxPnC+ A==;
X-CSE-ConnectionGUID: WMWwLIDaTCGBf7Y/vN4uQQ==
X-CSE-MsgGUID: WT7FpHFLTAyveYko+9aofg==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="33077707"
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="33077707"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:55 -0700
X-CSE-ConnectionGUID: F86G9amVQD+Y2EGTN9FemQ==
X-CSE-MsgGUID: m16ubK0zQPOfTNCqMhf7Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="41365145"
Received: from opintica-mobl1 (HELO jhogande-mobl1..) ([10.245.245.27])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:42 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 3/9] drm/i915/alpm: Fix port clock usage in AUX Less wake time
 calculation
Date: Tue, 18 Jun 2024 08:30:20 +0300
Message-Id: <20240618053026.3268759-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240618053026.3268759-1-jouni.hogander@intel.com>
References: <20240618053026.3268759-1-jouni.hogander@intel.com>
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

Port clock is link rate in 10 kbit/s units. Take this into account when
calculating AUX Less wake time.

Fixes: da6a9836ac09 ("drm/i915/psr: Calculate aux less wake time")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 90072f6e3a33..67848fc1e24d 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -125,7 +125,8 @@ static int _lnl_compute_aux_less_wake_time(int port_clock)
 	int tsilence_max = 180;
 	int t1 = 50 * 1000;
 	int tps4 = 252;
-	int tml_phy_lock = 1000 * 1000 * tps4 * 10 / port_clock;
+	/* port_clock is link rate in 10kbit/s units */
+	int tml_phy_lock = 1000 * 1000 * tps4 / port_clock;
 	int num_ml_phy_lock = 7 + DIV_ROUND_UP(6500, tml_phy_lock) + 1;
 	int t2 = num_ml_phy_lock * tml_phy_lock;
 	int tcds = 1 * t2;
-- 
2.34.1

