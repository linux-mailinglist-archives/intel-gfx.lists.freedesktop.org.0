Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D81A2652F
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 21:59:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E30C210E56E;
	Mon,  3 Feb 2025 20:59:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JnSTIsMK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D00CC10E12F;
 Mon,  3 Feb 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738616394; x=1770152394;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=19IsIHESa73x/LXX4BQwUFzg+DSlYktt7paacdHNuds=;
 b=JnSTIsMKkYMkf3wAR+HwqtM/OVTQk/a7YPhHzJsVZOUFahJyvWon5raC
 O/HGTDNAaPs1j0Z9LzOQaEv5LBN8mcwHSRmWsI4hSfDRT2fjsfgrKUpVM
 ird77QDoEOc0qOvaVy7h0pKvAoNqGHYYenzdavu2kdnhkCmIpb3yLi8B4
 2cDrqJdWmLjfGizXvhYVan+I3+qdqW7xqaj8aYLL6EO93Y0FCfWvSFvjm
 CEXJDlEWadllQjIpmgBe6DSE1ifg1oR2l/DmRKsrvRFT2egMLNKTtG1E8
 LwiuVCQDbGK3GPocYmiqTrhbO/IfxqaCQHVsLliwg7QBRKM8NhTnm7VLU Q==;
X-CSE-ConnectionGUID: sdHxXRBJTweu4qzGMCpABA==
X-CSE-MsgGUID: ZnvBPGdMSWuyRpsuIl6+EA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="39020130"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="39020130"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 12:59:54 -0800
X-CSE-ConnectionGUID: SOmoSt7nTaGgUaR0V8HNvw==
X-CSE-MsgGUID: PnhkZFB7SF+vfNQK3S6t4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110197597"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.109.197])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 12:59:52 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH] drm/i915/dmc_wl: Track INITIATE_PM_DMD_REQ for DC5
Date: Mon,  3 Feb 2025 17:58:58 -0300
Message-ID: <20250203205941.251754-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.1
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

The Bspec has been updated to include INITIATE_PM_DMD_REQ in the set of
register offsets that require the DMC wakelock for access during DC5.
Update our table accordingly.

Bspec: 71583
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 43884740f8ea..86ba159b683c 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -102,6 +102,7 @@ static const struct intel_dmc_wl_range xe3lpd_dc5_dc6_dmc_ranges[] = {
 	{ .start = 0x42088 }, /* CHICKEN_MISC_3 */
 	{ .start = 0x46160 }, /* CMTG_CLK_SEL */
 	{ .start = 0x8f000, .end = 0x8ffff }, /* Main DMC registers */
+	{ .start = 0x45230 }, /* INITIATE_PM_DMD_REQ */
 
 	{},
 };
-- 
2.48.1

