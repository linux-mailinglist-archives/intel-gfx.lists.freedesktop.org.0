Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 001FEB0C03A
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 11:25:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89C6D10E3C4;
	Mon, 21 Jul 2025 09:25:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MkCYNhwA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EE8210E3C4;
 Mon, 21 Jul 2025 09:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753089951; x=1784625951;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P8828HxZD1Jnso02ODdAPtmoVuIQCCVavUxPZO1hmvI=;
 b=MkCYNhwAoHY26Cwe9p5rmjbz7VfNvnCEzVVBGhXqFJ+MUYozgAOFHddJ
 Uje+SyoX3yMg/pFvdnfsjU5PHLAbGEHHQ3FupCJ1E/x/K+bgdu6+yuRH7
 2QJdGLIfXd57ucNBFoImGDREeMXPeTtypTVlSrE0XAfIeLLDsGCtPmwCc
 8NHN5SquozDaud9cKyj+kEO7TQ1QOa7PvNODJmwv1FJUv9eqPkSS8XY/G
 mZqeD+ApG4Nk4i2YNe5cIeia9gevSYD657t0K87MI3lVNM/EfCzEjvbXJ
 0kwidzSNtznNbGEWRDe+pbmfV5c3wDzVTGEgjYoPck7eLsHG00T4UIykD A==;
X-CSE-ConnectionGUID: WupE/hd+Q52Noks39bGabA==
X-CSE-MsgGUID: nFBiVRLRS1SYMtYOQPlUww==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="55455366"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="55455366"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:25:50 -0700
X-CSE-ConnectionGUID: vSrVyLRQTbeIo8DdESh71w==
X-CSE-MsgGUID: pErJ6RvSQZG5FbHmerBFIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="163335132"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:25:48 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/4] Implement Wa_14021768792 to bypass m_n ratio limit
Date: Mon, 21 Jul 2025 14:45:20 +0530
Message-ID: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
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

Rev4:
-Prune modes for which the Link M/N ratio is more than the platform
limit.
-During Link configuration, for a given mode and link rate, check for
the Link M/N ratio, and choose higher link rate for which the ratio is
within the limits. (Ville)
-Use display WA framework.

Ankit Nautiyal (9):
  drm/i915: Add helper to compute link M/N ratio for reuse
  drm/i915/dp: Limit m/n ratio to 10 for DP SST
  drm/i915/dp_mst: Limit m/n ratio to 10 for MST
  drm/i915/dp: Add M/N ratio check with warning for DP link config
  drm/i915/display: Add bits for link_n_exended for DISPLAY >= 14
  drm/i915/display_wa: Add support for Wa_14021768792
  drm/i915/display: Add bits for Wa_14021768792 for linkm/n ratio > 10
  drm/i915/display: Implement Wa_14021768792 for BMG DP for link_m/n
    ratio > 10
  drm/i915/dp: Extend intel_dp_can_support_m_n() for BMG M/N bypass

 drivers/gpu/drm/i915/display/intel_display.c  | 143 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_display.h  |   5 +
 .../gpu/drm/i915/display/intel_display_regs.h |   7 +
 .../drm/i915/display/intel_display_types.h    |   2 +
 .../gpu/drm/i915/display/intel_display_wa.c   |  18 +++
 .../gpu/drm/i915/display/intel_display_wa.h   |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  82 +++++++++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   6 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  24 ++-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   2 +
 10 files changed, 276 insertions(+), 14 deletions(-)

-- 
2.45.2

