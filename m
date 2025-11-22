Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D56F5C7C80C
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Nov 2025 06:49:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33C3810E175;
	Sat, 22 Nov 2025 05:49:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q3jvE1b1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 535F710E009;
 Sat, 22 Nov 2025 05:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763790573; x=1795326573;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NE8ZSL47LbEH7amHbt+vA1FCkP5KTGI6bjwMUzgSmh0=;
 b=Q3jvE1b18rbui1W2OwALibZRm9ahicS93q2NloN5yoHQ/esKBIQPG4y4
 6KzEjPVMAuBg9aUhHrO31Brvc2nHBHQ0fVNyRRAJoY+HyxXG2t1n4YZyB
 44Xf3p15PlIEgLcQjkzWFfrbxTkzZJDkZ64/WGzT7+Q06+J8MfUFqGG4Y
 gTXBRbiqTJWBjZBN8abMjy2oeHtNTwg2FDZRGgVoVpKwt8QNFTt3Kx9T2
 5c47rgr5dRan/bYJOla3wfle3nJH6+MNrPnXah5yBzEZssGBEDoOb1ZRY
 VjTTqu3TfjpDzc+LQUNzQao2L+GdiK7HWHnrRR8ZTjAhDM+DqBMq9dy+Q w==;
X-CSE-ConnectionGUID: NeM/fNiURSKls+b6/xfgUg==
X-CSE-MsgGUID: v7kbloNJTpqban1HrH0+jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11620"; a="88532835"
X-IronPort-AV: E=Sophos;i="6.20,217,1758610800"; d="scan'208";a="88532835"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 21:49:33 -0800
X-CSE-ConnectionGUID: JFPC4dwsR/aNE4XLkJTmAg==
X-CSE-MsgGUID: 4RPNu6saTqqYrlcXZHvLng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,217,1758610800"; d="scan'208";a="191166039"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 21:49:32 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH] drm/i915/dp: Restrict max source rate for WCL to HBR3
Date: Sat, 22 Nov 2025 11:06:51 +0530
Message-ID: <20251122053651.759389-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251114072712.161982-1-ankit.k.nautiyal@intel.com>
References: <20251114072712.161982-1-ankit.k.nautiyal@intel.com>
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

v2: Move the check inside mtl_max_source_rate(). (Suraj)

Bspec:74286
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0ec82fcbcf48..fe6f3afa0715 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -520,7 +520,8 @@ static int mtl_max_source_rate(struct intel_dp *intel_dp)
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
-	if (intel_encoder_is_c10phy(encoder))
+	if (intel_encoder_is_c10phy(encoder) ||
+	    display->platform.pantherlake_wildcatlake)
 		return 810000;
 
 	if (DISPLAY_VERx100(display) == 1401)
-- 
2.45.2

