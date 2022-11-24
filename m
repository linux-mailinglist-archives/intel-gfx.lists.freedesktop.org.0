Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A25C636FCB
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 02:29:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5673710E197;
	Thu, 24 Nov 2022 01:29:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F84C10E24D;
 Thu, 24 Nov 2022 01:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669253368; x=1700789368;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=miZgyjrUXPt1quEIWZirCzAYIq3Nzgje5oY3wc23QI8=;
 b=kV5/W4K0s+bH8uchoSHKnpx9o/eUixXYUlhWNH/RpSrZGDb2bbWr/fJ2
 5t/L8yGDGOTXfypATBmuorEEcSCdXiTDGew6+WmC+Q7mCrWBuJUqead9n
 Exe7uorPRVcOotlyplqxWnDcfs8d2BSHTQq1tBNYGVsYMLGWS+Jl/pJub
 XO8HQc6c8O7aXrXLU4tbcuTerAJUijJZaOcTr6YpacQ7rkmqkG+yq5Br5
 T8xHNAJhRJe6jv3FNRyKEb0NleKjhbjbNrmsKLPx5S612/6u2izv9a/yr
 6IOmEOov7AALnuUreG3s6G2CLhh9/y6/B2bTkzlQJo1rCkNGWHo+51pzu Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="376336876"
X-IronPort-AV: E=Sophos;i="5.96,189,1665471600"; d="scan'208";a="376336876"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 17:29:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="971062376"
X-IronPort-AV: E=Sophos;i="5.96,189,1665471600"; d="scan'208";a="971062376"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga005.fm.intel.com with ESMTP; 23 Nov 2022 17:29:22 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx-trybot@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 17:31:46 -0800
Message-Id: <20221124013149.2994458-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/3] drm/i915/pxp: Add missing cleanup steps
 for PXP global-teardown
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

A customer issue was recently discovered and in the process a
gap in i915's PXP interaction with HW+FW architecure was also
realized. This series adds those missing pieces.
The patches explain the details.

Changes from prior revs:
   v1: - Dont need to teardown non arbitration sessions (Juston).
       - Fix builds when PXP is enabled in config (Alan/CI-build)
       - Fix the broken pm-suspend-resume symmetry when we do this
         pxp-session-teardown during i915s pm_suspend_prepare by
         ensuring the init is done during i915s pm_resume_complete.

Alan Previn (3):
  drm/i915/pxp: Invalidate all PXP fw sessions during teardown
  drm/i915/pxp: Trigger the global teardown for before suspending
  drm/i915/pxp: Pxp hw init should be in resume_complete

 drivers/gpu/drm/i915/gem/i915_gem_pm.c        | 11 ++++
 drivers/gpu/drm/i915/gem/i915_gem_pm.h        |  2 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  7 ++-
 drivers/gpu/drm/i915/gt/intel_gt_pm.h         |  2 +
 drivers/gpu/drm/i915/i915_driver.c            | 16 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp.c          | 60 ++++++++++++++++---
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  2 +
 .../drm/i915/pxp/intel_pxp_cmd_interface_42.h | 15 +++++
 .../i915/pxp/intel_pxp_cmd_interface_cmn.h    |  3 +
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  4 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h       |  6 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  | 14 ++++-
 drivers/gpu/drm/i915/pxp/intel_pxp_session.h  |  4 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 35 +++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  2 +
 15 files changed, 164 insertions(+), 19 deletions(-)


base-commit: 66e5d8e0cdb991feba4fde2c851e700f993d240a
-- 
2.34.1

