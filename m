Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFB8A78CC8
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 13:01:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C41510E750;
	Wed,  2 Apr 2025 11:01:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JJ75JiLc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5209D10E0F5;
 Wed,  2 Apr 2025 11:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743591676; x=1775127676;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=9M8KpW0IqNnTNEgJQnk+xjTliggQCmN9u95nO6fs06U=;
 b=JJ75JiLc67Vu5VsU7/0XXA8SRrKMqzTowk6H+4ZWudbhAjZdNVmTL+hN
 hRPng+ALltg1wP/wsvGGqpiTgZn49sm97JKbM03HgGR42F6hqoHFuunoN
 xL2IDIeeHn/zVRIqMZ2f1RFDONMnQdK01Ocefra/ZpnVu8amoDiKbSQbE
 9VdnIvj4JyA69ld6Z347KdiBsiX+OkhTlwPZQpKogS8JFhyz6nnoK1xfq
 2pcpS/Pw4fLvOydPr64eGDjMTw/hZCR1mT/hZRuuN4pgC9OC1ibAKn3h1
 71ch/J6MGhCfGIyqyjxfgwQa3C/qjyfSCVRDycmdxfFbK5K1lxQVNJ2zw Q==;
X-CSE-ConnectionGUID: XoqAvHknTFSpcbGLJE8+Sw==
X-CSE-MsgGUID: nhB8D5W+TjWiJCwCz6QoGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="62349457"
X-IronPort-AV: E=Sophos;i="6.14,182,1736841600"; d="scan'208";a="62349457"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 04:01:15 -0700
X-CSE-ConnectionGUID: n+SnHggUR+C1987em3m2kg==
X-CSE-MsgGUID: v9EeOvPzR7CLRkykpEE1aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,182,1736841600"; d="scan'208";a="127174378"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa007.jf.intel.com with ESMTP; 02 Apr 2025 04:01:14 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v4 0/2] Remove UHBR13.5 for ICL, DG2
Date: Wed, 02 Apr 2025 16:16:37 +0530
Message-Id: <20250402-dprates-v4-0-752535b2068a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAI0V7WcC/2WOywqDMBBFf0WybsJo4qur/kdxkSZjE6gPJlEq4
 r9XhUKhywP3Hs7KApLHwK7JyghnH/zQ76AuCTNO90/k3u7MMshyUJBxO5KOGDgoow0+sjJXKdv
 XI2Hr36fp3uzc0tDx6Aj1968ghxokFKoQEmQpU+Ap1zT1gkQ3UXTLzfcRX8IM3aF0PsSBlrNtl
 of4P2OWHHiNua2Mrqva2h9Fs23bB4hTU3zhAAAA
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
Changes in v4:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v3: https://lore.kernel.org/r/20250402-dprates-v3-0-9e5d8ca989dd@intel.com

---
Arun R Murthy (2):
      drm/i915/display/dp: Remove support for UHBR13.5 on display14
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

