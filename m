Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FA59C0DC8
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 19:29:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60A7C10E8BA;
	Thu,  7 Nov 2024 18:29:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oDE/vbkR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E08510E8B8;
 Thu,  7 Nov 2024 18:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731004195; x=1762540195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qcQDa0NEVD8aVRYK+Fwazusr87XF5RhJ08ntcK4Ltbw=;
 b=oDE/vbkRNVBOLtDk0poFpKl467GVHI6lODyw3If6NXV21zo7egbrgnP5
 Lo4MggHNSirLoCnUGv1OARUwp5SrV3VgUJoVq8SsioJh5Uq9M0J2BFoji
 cHFAJmJ4wzV5P5WgJFU1AKn7FNpYjt0cR7jlLhHEmoP50PwpJ7kVMGDZF
 aHAA6BuJSqlU3gT5QrdtVuZdwYBHhmf5nwrqaNj2IKHUlvZZLvvqtYow9
 Ite2ltsBNKCmGIUbqGj06Uh4NGrqrlsUHjdEvCW7XGsdj+7Yqnqdf8omj
 9dvf3k0o2tsdcOeu4pQGhf52YIzwSMgDxtw5fkSJuSssmIS1YPT8xYDHN g==;
X-CSE-ConnectionGUID: BZ5QEFh7RViTwBAHZ136Vg==
X-CSE-MsgGUID: gJU1+ZBXSy61Ni6VQ78XWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="18494858"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="18494858"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:29:55 -0800
X-CSE-ConnectionGUID: GXEbBXn/Sz6pVdZ4c1iiVw==
X-CSE-MsgGUID: LmRpKEypSB6ICrrIFOaPgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85329633"
Received: from rchatre-mobl4.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.154])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:29:54 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 08/18] drm/i915/dmc_wl: Rename lnl_wl_range to
 powered_off_ranges
Date: Thu,  7 Nov 2024 15:27:13 -0300
Message-ID: <20241107182921.102193-9-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241107182921.102193-1-gustavo.sousa@intel.com>
References: <20241107182921.102193-1-gustavo.sousa@intel.com>
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

