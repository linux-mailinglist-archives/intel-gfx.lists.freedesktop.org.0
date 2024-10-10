Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 621ED997BA0
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 06:08:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61D0E10E84A;
	Thu, 10 Oct 2024 04:08:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LiG1Vr04";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E16DD10E085;
 Thu, 10 Oct 2024 04:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728533321; x=1760069321;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+2F7PmwCV+uEiVK0/1EsyytKfg4TMjNsM1wqRyBhB8A=;
 b=LiG1Vr04b9+z1yxFvd0xJVG/mgHhR3HTgREpkc7ISBOvlpZqhqc6852M
 bCy/Radc62rGEQvB/njDHtXsm1qyXV28Da+LjlANfQox/3Pe5neDeVzEI
 eHk1Ojcwzm84GWmrNToE3EQa8wprGKHR3apH5CMf9RSs3MWIfWLCQdaln
 XbxbiKZdW+bC8HBNq24H0P5wZIVL3daKqe16oDaxYcdSSYrORTO/P6zf5
 Aw3wQsvvIfCHzip/He/VOmtp0/vhml8tIVieziKU7qKvOZMCJsOHtKtfI
 mT0hx8F9D5s172Mz9x/Ny3dfocD8IZA5IypG6J/OHXbMwNQyW84CsTkyv Q==;
X-CSE-ConnectionGUID: vy46x840RsmLLnjppmvS+A==
X-CSE-MsgGUID: pLqb4rF7SKC2oEIQCAcYOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27986949"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="27986949"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:08:40 -0700
X-CSE-ConnectionGUID: Pl6fb3loSy2+cKgcVfjZJg==
X-CSE-MsgGUID: 3FP0geLwSbywmjPeYm4f0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="99782631"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:08:38 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	uma.shankar@intel.com
Subject: [PATCH 0/4] Implement Wa_14021768792 to bypass m_n ratio limit
Date: Thu, 10 Oct 2024 09:40:41 +0530
Message-ID: <20241010041045.2014069-1-ankit.k.nautiyal@intel.com>
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

Rev3:
-Refactor to just add the extended link_n just before writing and scrub
it just after read.

Ankit Nautiyal (4):
  Add bits for link_n_exended for DISPLAY >= 14
  drm/i915/display: Limit m/n ratio to 10 for display > 12
  drm/i915/display: Add bits for Wa_14021768792 for linkm/n ratio > 10
  drm/i915/display: Implement Wa_14021768792 for BMG DP for link_m/n
    ratio > 10

 drivers/gpu/drm/i915/display/intel_display.c  | 161 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_display.h  |  12 +-
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  66 +++++--
 drivers/gpu/drm/i915/display/intel_dp.h       |   5 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  37 ++--
 drivers/gpu/drm/i915/display/intel_fdi.c      |  15 +-
 drivers/gpu/drm/i915/i915_reg.h               |   7 +
 8 files changed, 260 insertions(+), 45 deletions(-)

-- 
2.45.2

