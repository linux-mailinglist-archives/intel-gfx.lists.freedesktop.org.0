Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EF797B3B5
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 19:40:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90BD910E4D4;
	Tue, 17 Sep 2024 17:40:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nZtmFt8C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B2BA10E4CF;
 Tue, 17 Sep 2024 17:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726594813; x=1758130813;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PjSnxBUHpRIExDOmYpL1roHQZgUyzygYPXEhBuyKKwc=;
 b=nZtmFt8CYRbds7E5y9v6bwMWsX0f/cwf9QNfKkPl+D5vZyeUefCZH/Qg
 BO8cDg6uZ2fis+zIom3aOSgWYu3BYkDJt02R0/LsrprYoinhVckkGX8tK
 XctLVaNI2k5vaT/8pFg/OFSuODIP5nJ9B5mZRchAjKkTXjy8WjHjUO4FB
 K/ghoaLH29mcBqhPi+37lX54EfVZu/bLFDAVTqXeYSBhbbgpQjOH5U2ci
 pr+5S2Yt2aGUZXj4OZKE8b9ScF1eL0uljELNvqvdNa8Vas6w2z4A1hEMG
 vlhcOkBeoAGkRiufrzwuEoFPEEq9Tc8KexuUyJzfaIxnE/NyiXxKl8UFL g==;
X-CSE-ConnectionGUID: skg3RAkrRm2nLKXO+m5uFA==
X-CSE-MsgGUID: VotTwpK+RMmOe2sZYgTIoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="13560977"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="13560977"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 10:40:12 -0700
X-CSE-ConnectionGUID: pbh3plsMSz6vv0EbpLRKcQ==
X-CSE-MsgGUID: 1liiCLedQbqnop3LvGJv9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69486131"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 10:40:11 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com
Subject: [PATCH 0/4] Implement Wa_14021768792 to bypass m_n ratio limit
Date: Tue, 17 Sep 2024 23:11:56 +0530
Message-ID: <20240917174200.2563528-1-ankit.k.nautiyal@intel.com>
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

For Platforms that support higher link rates, there is a limitation on
Link M /Link N ratio.
If the CEILING( Link M / Link N ) ratio is greater than 10.0, then
hardware cannot support the given resolution / refresh rate at the given
configuration.
For BMG Wa_14021768792 helps to bypass this limitation and allows it to
support the ratio till 15.0.

This series adds the missing restrictions for earlier platforms and adds
the Wa_14021768792 for BMG as per Bspec:49266

Rev2:
-Drop new member link_n_extended.
-Avoid WA framework for XE

Ankit Nautiyal (4):
  Add bits for link_n_exended for DISPLAY >= 14
  drm/i915/display: Limit m/n ratio to 10 for display > 12
  drm/i915/display: Add bits for Wa_14021768792 for linkm/n ratio > 10
  drm/i915/display: Implement Wa_14021768792 for BMG DP for link_m/n
    ratio > 10

 drivers/gpu/drm/i915/display/intel_display.c  | 147 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_display.h  |  15 +-
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  62 ++++++--
 drivers/gpu/drm/i915/display/intel_dp.h       |   5 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  37 +++--
 drivers/gpu/drm/i915/display/intel_fdi.c      |  15 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   4 +-
 drivers/gpu/drm/i915/i915_reg.h               |   7 +
 9 files changed, 243 insertions(+), 51 deletions(-)

-- 
2.45.2

