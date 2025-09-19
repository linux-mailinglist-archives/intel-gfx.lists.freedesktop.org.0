Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC1EB8A8C9
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 18:22:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D85510E246;
	Fri, 19 Sep 2025 16:22:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KBa5YWUf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50F4710E246;
 Fri, 19 Sep 2025 16:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758298960; x=1789834960;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MpYlWwL0n3h6gmh5Uv8AyWX6xOY576a8vnkMRPMNpV8=;
 b=KBa5YWUfazgMis58VpbfqClJQ1Y46G23ftF5Ip6a0LIbu6/VsYEH7d2e
 1/el+1CGlr7s+e/u4yCCPhiqvCEByGwdAfb9J3e897Xqc05e3lWKUseyN
 cuI8nLmvTQIKcectRAyBvKeBhT8BIoCHQwDUSs+H+/krn0XakIbdTPrPM
 29dHkyKotN4ad5y02jQLvfN6xOzlZZln+XHLJvDlL7o6InjbXXmtDCnmi
 a80J4YbiXIWP0/5h/fD/5L8nxNmcT2D+0QWN++Xpg3Jh+B8KJoampHMR2
 Pus8442vM6rkp2eU4jBWknPfaflikdORkCDfJbJ9P7DB4TKUcAjtt3n5q Q==;
X-CSE-ConnectionGUID: KYhLAcoZRr6aELsp9nDv4g==
X-CSE-MsgGUID: tQbgGK0QT1eALDCbsdEoAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="60536175"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="60536175"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 09:22:40 -0700
X-CSE-ConnectionGUID: rx1iWFsBRe2ja6nzVgg2lA==
X-CSE-MsgGUID: S7LpVqz0RumNod7YYh0E2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175495055"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa007.fm.intel.com with ESMTP; 19 Sep 2025 09:22:38 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v2 0/3] drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy()
 to only PHY A
Date: Fri, 19 Sep 2025 21:52:30 +0530
Message-ID: <20250919162233.1624905-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.51.0
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

- Add WCL as subplatform and update the definition struct. 
- Update condition required to distinguish WCL C10 PHY selection
on port B.

Dnyaneshwar Bhadane (3):
  drm/pcids: Split PTL pciids group to make wcl subplatform
  drm/i915/display: Add definition for wcl as subplatform
  drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy() to only PHY A

 drivers/gpu/drm/i915/display/intel_cx0_phy.c        | 11 ++++-------
 drivers/gpu/drm/i915/display/intel_display_device.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_display_device.h |  4 +++-
 drivers/gpu/drm/xe/xe_pci.c                         |  1 +
 include/drm/intel/pciids.h                          |  5 ++++-
 5 files changed, 25 insertions(+), 9 deletions(-)

-- 
2.51.0

