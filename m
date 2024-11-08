Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 840649C1D8A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:03:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1CCB10E9A9;
	Fri,  8 Nov 2024 13:03:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yl7GZtse";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70C4610E995;
 Fri,  8 Nov 2024 13:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731070984; x=1762606984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qcQDa0NEVD8aVRYK+Fwazusr87XF5RhJ08ntcK4Ltbw=;
 b=Yl7GZtseZLOZ7Q8+PdlztP1QZJphXkygfIychlj7v1GGujRAFG7DkpYQ
 pM8fHQIiejHaU+Zu/dtSoPTCtbDJ3l2VP3LruM3ZL19xsJuP8zh+fUyhS
 G+cOe+Gc9ZDNaoXpT4KSiXMwGoYv+tAauZAkr2gWQeN6yH48wZtP3xe84
 EeVDEjIllxOnuKMKhbz5gK3W9idl2/FJmWM2S+ZDoYyr0yDZySecth2jF
 8j8GnMBj5g+v7Z0WldpDPMaejlcV/dSStUQrqhOCSEOyk8wndfV2+YgyM
 oGKgyhQdyrhEH4BvurPfhO9M4bbOQpy23yHIeLGJZdpw9DwAnIgNh8QYB g==;
X-CSE-ConnectionGUID: tlP7t4k3T9Ow8FVArzUj0w==
X-CSE-MsgGUID: XMzBcCXgT3OgfAZdTNGFWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41513135"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41513135"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:03:04 -0800
X-CSE-ConnectionGUID: KTGGk4HfTvq7vWg4f/BO3w==
X-CSE-MsgGUID: FZO11Z72R3SyP6TlcKQzVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85692485"
Received: from ldmartin-desk2.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.232])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:02:54 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4 08/15] drm/i915/dmc_wl: Rename lnl_wl_range to
 powered_off_ranges
Date: Fri,  8 Nov 2024 09:57:13 -0300
Message-ID: <20241108130218.24125-9-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241108130218.24125-1-gustavo.sousa@intel.com>
References: <20241108130218.24125-1-gustavo.sousa@intel.com>
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

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
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

