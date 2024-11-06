Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA159BF8B2
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 22:52:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDD8D10E78C;
	Wed,  6 Nov 2024 21:52:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aJ+SvVBT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8123210E791;
 Wed,  6 Nov 2024 21:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730929976; x=1762465976;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ekvokNRs7MGqJcydXRLyg0Cp8jfyzRItlgt8kKANqgA=;
 b=aJ+SvVBTgQstdCyBjDQ4NX/JKdIfF/6qUA8DYzoJcq1+ON3MGicU0Hpm
 fv8qIcxDOguCO9P5OLKSvgCv2xnDMzBw2z7H8wH+O4UbqB9Q7g6qVqyOv
 i4ZbtA5xxIPNQT6aqI9dK5yXXIZS9yBr/NV3BHaOYT6wBeo4goF/o2oUO
 nI3AhJEKrV0w6vz+NRzH0aAD6sUqlM5IwDycKzCv3GdqRQWOJQAyl44dX
 Ih7HZIzwyFjhs0J4QIVCV2ljBnWZLgwoScdir4ndSCsPkI1CKf6p7G/XT
 bmhw6Viw/5DS6j8sv8Ut2RPpA9++zQp2iIf3EM5QYNGF9mGiRsYgqdCkI Q==;
X-CSE-ConnectionGUID: beiRb2XwRvSg1VQb1TdsRA==
X-CSE-MsgGUID: nx/K31v3SCidsT5kjeUcIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48212173"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48212173"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:52:56 -0800
X-CSE-ConnectionGUID: HaMry3w2RSG8RjCxnOyaYQ==
X-CSE-MsgGUID: kYBDxVfERp2IVDYUOlA8Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84882483"
Received: from puneetse-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.118])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:52:55 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 08/17] drm/i915/dmc_wl: Rename lnl_wl_range to
 powered_off_ranges
Date: Wed,  6 Nov 2024 18:50:34 -0300
Message-ID: <20241106215231.103474-9-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106215231.103474-1-gustavo.sousa@intel.com>
References: <20241106215231.103474-1-gustavo.sousa@intel.com>
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

In an upcoming change, we will add extra range tables for registers that
are touched by the DMC during DC states. The range table that we are
currently using is meant for registers that are powered off during DC
states. As such, let's rename the table to powered_off_ranges and also
add a comment regarding its purpose in the function that uses it.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 4b958a4c4358..1877a89affab 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -51,7 +51,7 @@ struct intel_dmc_wl_range {
 	u32 end;
 };
 
-static struct intel_dmc_wl_range lnl_wl_range[] = {
+static struct intel_dmc_wl_range powered_off_ranges[] = {
 	{ .start = 0x60000, .end = 0x7ffff },
 	{},
 };
@@ -114,7 +114,11 @@ static bool intel_dmc_wl_reg_in_range(i915_reg_t reg,
 
 static bool intel_dmc_wl_check_range(i915_reg_t reg)
 {
-	return intel_dmc_wl_reg_in_range(reg, lnl_wl_range);
+	/*
+	 * Check that the offset is in one of the ranges for which
+	 * registers are powered off during DC states.
+	 */
+	return intel_dmc_wl_reg_in_range(reg, powered_off_ranges);
 }
 
 static bool __intel_dmc_wl_supported(struct intel_display *display)
-- 
2.47.0

