Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 573E363B6C2
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 01:46:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26DE810E35E;
	Tue, 29 Nov 2022 00:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB44F10E358
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 00:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669682763; x=1701218763;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TiGLzhzIbtEmTNLefMKJWMJY5IYeaV3Z3IJeK2kJYUM=;
 b=hP54CZWT9rFTvnnQMI8l4CuL3baxlKHnvSzuPhzTpzZfyEGR/uXtzaqg
 dZquNhABXVgbRI4QNTi8HmgYxWJIe6ntdd0tmCLYOY5pf2xCsbmIPzCqa
 4hgptmBQA1tXCmUYCsK4uo+vSZMMDNDAlUe4ELQWBBzjKAacdTzukI06f
 6K7XBrfj7eJsqRprHMO6UGE/Ak/TC5kOUi/rab6KCSb39ujEhfPejPPyC
 YO9ulKV5GiFubktqtA+sjIBBzlBIT03QHIFGFrtrw9fdQ2eQCTyhPQPIj
 vg8HbL+kjaWm9/mJdR8UyZ/ScSft9x94ZBh1UVoo+YYqYupTp8O9pWXNf Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="401271777"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="401271777"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 16:46:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="676243286"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="676243286"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga001.jf.intel.com with ESMTP; 28 Nov 2022 16:46:02 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 16:48:29 -0800
Message-Id: <20221129004832.3735764-1-alan.previn.teres.alexis@intel.com>
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
 drivers/gpu/drm/i915/pxp/intel_pxp_session.h  |  5 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 35 +++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  2 +
 15 files changed, 165 insertions(+), 19 deletions(-)


base-commit: d21d6474a37e5d43075a24668807ea40a7ee9fc1
-- 
2.34.1

