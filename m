Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 391D9B53D4D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 22:55:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0E6810EB8A;
	Thu, 11 Sep 2025 20:55:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mh9Mqbuh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB9CD10EB8A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Sep 2025 20:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757624148; x=1789160148;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2ciKZ3KpNRgJb3K0uQfbXXTOsyA5DI167Yao3+sJctA=;
 b=Mh9Mqbuh44BczHAHHIu4ryuiqVTASVPnZqSV6m5Ii37TnDpHjgJRYh8q
 5YL0pxVI3+b0xzfheWPkVubYOrgFJ3myueiFmWbII5/JQbsurG3rg+3Bs
 Twrajn1GjyWKoCMJpuy9YbYpTp6Ec4ZxjGoNkoudYMrrbSixp0sY05QiH
 z6S4ZRufN9xjgUJK8SPk3pRfLXtD2iz/XyKWrDrWBJCCrfvb6GiyeLkt5
 aEpsigiHkBDDkuXJ5GUePP0SX9XxFkvGiYnpltT+pJfGCf3od+/ktGDAE
 +b4AE+lfUIE8tRdP5yMBo2a8HS0LsWWhs+YTcZtyTZO4mdA/Ni1AQOPaR w==;
X-CSE-ConnectionGUID: i9K0uCgeRMyvwnWIeBjzOQ==
X-CSE-MsgGUID: DUxjcnTkTqKDsxwGFO/waQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60029818"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60029818"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 13:55:47 -0700
X-CSE-ConnectionGUID: HhSZz7LhR9qX7HG7j93NFg==
X-CSE-MsgGUID: hxy2sCGvRNKwoDYbIa88og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,258,1751266800"; d="scan'208";a="173696436"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa006.fm.intel.com with ESMTP; 11 Sep 2025 13:55:45 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org,
	ankit.k.nautiyal@intel.com
Cc: gustavo.sousa@intel.com, matthew.s.atwood@intel.com,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH 0/3] Add WCL as subplatform from PTL
Date: Fri, 12 Sep 2025 02:25:39 +0530
Message-ID: <20250911205543.388402-1-dnyaneshwar.bhadane@intel.com>
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
 include/drm/intel/pciids.h                          |  4 +++-
 5 files changed, 24 insertions(+), 9 deletions(-)

-- 
2.51.0

