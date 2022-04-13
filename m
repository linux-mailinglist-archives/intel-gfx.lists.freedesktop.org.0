Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBDB4FFF2C
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 21:27:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F16210E424;
	Wed, 13 Apr 2022 19:27:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C50F810E424
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 19:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649878056; x=1681414056;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=H+3pyaHO/TYd12i82qDOQjY9CyvHZRH/3MZgc6v0M1I=;
 b=dhLjaTP7YQUst5DA77cjvAn5tuYv8KsvQxClPHtEnjwZBhNCjRAL9F7u
 IJ9nSYZcwUthUUIeu9NPkCvwtjqLZY89ma2sKFXSSN1TmmyevEMM4x6HN
 fDjpJokLfDY8CBoFepY3C1672g+aFpbhqFGrv4xlreJJ0KYzuInm/ghyl
 9deAfvg+Xg8NJA8wD4kCh7LQC+QfmFHlLc0YIhRmu87P1esL2HsdgAduY
 BABl+fbg6/CLv/Gt6600ty2y8fdWWkjbfoI4uGtUShejjGW3x4XPM6eIT
 g66ZTxWg/aV4+ppb1vgF6momGJdhzDUCMNMTuq8TmJIU2+93s768iPYp0 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="250045078"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="250045078"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:27:36 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="645290469"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:27:35 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 daniele.ceraolospurio@intel.com, john.c.harrison@intel.com,
 vinay.belgaumkar@intel.com
Date: Wed, 13 Apr 2022 12:27:20 -0700
Message-Id: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/10] Enable compute and related WAs for DG2
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

Enable compute, work arounds and relevant GuC FW for DG2.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>

Daniele Ceraolo Spurio (1):
  drm/i915: Xe_HP SDV and DG2 have 4 CCS engines

John Harrison (5):
  drm/i915/guc: Update context registration to new GuC API
  drm/i915/guc: Update scheduling policies to new GuC API
  drm/i915/guc: Update to GuC version 70.1.1
  drm/i915/guc: Enable GuC based workarounds for DG2
  drm/i915/dg2: Enable Wa_22012727170/Wa_22012727685

Matt Roper (1):
  drm/i915/xehp: Add compute engine ABI

Matthew Brost (1):
  drm/i915/dg2: Enable Wa_14014475959 - RCS / CCS context exit

Tilak Tangudu (1):
  drm/i915: Add Wa_22011802037 force cs halt

Vinay Belgaumkar (1):
  drm/i915/guc: Apply Wa_16011777198

 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  41 ++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   9 +
 drivers/gpu/drm/i915/gt/intel_engine_regs.h   |   1 +
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |   8 +
 drivers/gpu/drm/i915/gt/intel_engine_user.c   |   2 +-
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   7 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   9 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  18 +
 drivers/gpu/drm/i915/gt/intel_reset.c         |   5 +-
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   4 +-
 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h |  15 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  35 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   5 -
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  75 ++-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 464 ++++++++++++------
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  32 +-
 drivers/gpu/drm/i915/i915_drm_client.c        |   1 +
 drivers/gpu/drm/i915/i915_drm_client.h        |   2 +-
 drivers/gpu/drm/i915/i915_pci.c               |   6 +-
 include/uapi/drm/i915_drm.h                   |  62 ++-
 21 files changed, 580 insertions(+), 222 deletions(-)

-- 
2.35.1

