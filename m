Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35003A7B70E
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 07:10:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A688D10E127;
	Fri,  4 Apr 2025 05:10:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HFtz55id";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5DF310E25D;
 Fri,  4 Apr 2025 05:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743743413; x=1775279413;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=9hPeikKTxO4Blixi8Kk6x1GFUClawBydFma0njXjhwE=;
 b=HFtz55idHsVKSqZyHYiMXwQdWPrpHf3/QvtNxNGuTHjb16X8bXvozOUg
 Xt6DPH3SMabY/eRPNkH4i3YIT0CbiHTlGZKoP9vPo/7Tz6exSnA/TmBlW
 IEXBU10pJVakvwIlfqvGxUcv+9DWPcI5VbqCtOZlPORbOH3bG28FZvZn+
 llgcf8NBAx8S8QPEhZPmTbtlsyKEpDB2DQjUQsX8FrQbAx1VtyZQxbmF1
 LW/UVRogCVzpHaJnx0KFGju8PnF5383O788bo7ZqIFifgGX9raagwdiR1
 hyPaP3lJmA+XXzavLhVbOdu0pzJtFQ/pb/JWulBR42FP6PAPURJI6rgeH A==;
X-CSE-ConnectionGUID: rMcIbAP2TVahm9auUdAeBQ==
X-CSE-MsgGUID: VNudAO7JT3GDC1tlKKa/Ow==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="62572738"
X-IronPort-AV: E=Sophos;i="6.15,187,1739865600"; d="scan'208";a="62572738"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 22:10:12 -0700
X-CSE-ConnectionGUID: 9OAfIV90S7KzGiDZbPXOUQ==
X-CSE-MsgGUID: vY/xfD81TNmX+omwuNaT2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,187,1739865600"; d="scan'208";a="158186542"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa002.jf.intel.com with ESMTP; 03 Apr 2025 22:10:11 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v5 0/2] Remove support for UHBR13.5
Date: Fri, 04 Apr 2025 10:25:07 +0530
Message-Id: <20250404-dprates-v5-0-c93f561a095e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACtm72cC/3WOyQrCMBRFf6Vkbcprhg6u/A9xEZNXG7ADL7Eo0
 n83LQgFcXngnsN9s4DkMbBj9maEsw9+HBLoQ8ZsZ4Ybcu8SMwFCgwLB3UQmYuCgrLF4FZVWBUv
 ribD1z610viRuaex57AjN11egoQEJpSpzCbKSBfCCG3oMOeX9g2L3Ovkh4j23Y78mOx/iSK/t2
 yzX8O+NWXLgDWpXW9PUjXO7xHpjVn88lbxKCy31VUBZm723LMsHxb0c8RkBAAA=
X-Change-ID: 20250402-dprates-04caceb27541
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>, imre.deak@intel.com, 
 Arun R Murthy <arun.r.murthy@intel.com>
X-Mailer: b4 0.15-dev
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

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
Changes in v5:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v4: https://lore.kernel.org/r/20250402-dprates-v4-0-752535b2068a@intel.com

Changes in v4:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v3: https://lore.kernel.org/r/20250402-dprates-v3-0-9e5d8ca989dd@intel.com

---
Arun R Murthy (2):
      drm/i915/display/dp: Remove support for UHBR13.5
      drm/i915/display/dp: Remove the uhbr13.5 pll state values

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 26 --------------------
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 +--
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 35 ---------------------------
 3 files changed, 2 insertions(+), 63 deletions(-)
---
base-commit: 8a0f86f7106709c73acb1477af9ad5f267d7a340
change-id: 20250402-dprates-04caceb27541

Best regards,
-- 
Arun R Murthy <arun.r.murthy@intel.com>

