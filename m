Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1272A6B9FF
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 12:38:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72BC510E7AA;
	Fri, 21 Mar 2025 11:38:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dYZ1qZ9Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F68010E7AA;
 Fri, 21 Mar 2025 11:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742557123; x=1774093123;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nvOq4bbLIjpeXgQGC1cD5+uhhQgSRa325FofwP4zqOs=;
 b=dYZ1qZ9ZzE3+pEzNYVrlnqIVs0ocV4K8g04CqlAxrqtcFZe/sEVEZ4eT
 qqMFKwlkLSJm8QS06Uz76LyZxybKitFZLECIGVBUvbbV6Qkk9U0A/yjHI
 p7p+YPRjhBy4X3CzNbRwKXqfMIbXiZxAN8ZuBV7ah4x3IUGSTPWhSqvmj
 RB8VdlZVOp6wXG2E3ToymPItXQ5CpOq43b/8x8xujG+z5/YTwwIp0/yPg
 EC6X7GKDU68anbW522ZfDxvhtI1IraETEez271CRmquKEeE/K5gilNIxv
 G4kFeL1iK6n4q7WXZZPdG8ts/m4z67V0qxVdvuFdOtOfjtzIDfM5/EEDN A==;
X-CSE-ConnectionGUID: Rt0ifWMmQ+mFSJWuwvbjUw==
X-CSE-MsgGUID: EAdaKyA1SDeqZGIEbGj9Jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="61216877"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="61216877"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 04:38:42 -0700
X-CSE-ConnectionGUID: 6qjPaeOxSrahejBaXrjTvg==
X-CSE-MsgGUID: qlLDwezPSbCMo/3GUOFNrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="128206549"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 04:38:40 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	uma.shankar@intel.com
Subject: [PATCH 0/4] Implement Wa_14021768792 to bypass m_n ratio limit
Date: Fri, 21 Mar 2025 16:56:46 +0530
Message-ID: <20250321112650.3594298-1-ankit.k.nautiyal@intel.com>
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
-Rebase

Ankit Nautiyal (4):
  Add bits for link_n_exended for DISPLAY >= 14
  drm/i915/display: Limit m/n ratio to 10 for display > 12
  drm/i915/display: Add bits for Wa_14021768792 for linkm/n ratio > 10
  drm/i915/display: Implement Wa_14021768792 for BMG DP for link_m/n
    ratio > 10

 drivers/gpu/drm/i915/display/intel_display.c  | 160 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_display.h  |  12 +-
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  66 ++++++--
 drivers/gpu/drm/i915/display/intel_dp.h       |   4 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  35 ++--
 drivers/gpu/drm/i915/display/intel_fdi.c      |  14 +-
 drivers/gpu/drm/i915/i915_reg.h               |   7 +
 8 files changed, 255 insertions(+), 45 deletions(-)

-- 
2.45.2

