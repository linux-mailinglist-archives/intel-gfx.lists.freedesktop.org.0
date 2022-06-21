Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6A95531E0
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 14:22:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09FCB10EC6F;
	Tue, 21 Jun 2022 12:22:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B4C810E6A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 12:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655814148; x=1687350148;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+cZKpTqWcOM4dVoxSIDN/mIA7Yg0XxOaiGaQc99f6Ig=;
 b=Dl+raU3rZ2Z0WnLI+EmNlgs6qbPd7FjH4+/P5FnWs4Jz3zX9vi0o91ov
 lirq57ckbyIm/CmZuQ4dHyF266SuNE4JXzyaK2LY+gJM7iANQL9KHW+4b
 aV6Ab/yh9vSPWev46CjpFXQ05YxKJ0su8KKXGu19kSobQ/9NKHXmtzn7F
 JnpOyosy/3jdlO5y0u+ZZXQJZ5WOxOZJ003HxMTZdz63JYnTtC5xipsXx
 zBH4wnT6fmoLnVr9oIbUcl+rsyuFt0ujpk1U+e+ym3r2W1oWrwjbWbKy+
 5gQZREiFxedbunCoeUUtouy6UFexQQDTOVOgbKGp6LydJgF2tZlP/XM+r Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="277652871"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="277652871"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 05:22:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="562363726"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga006.jf.intel.com with ESMTP; 21 Jun 2022 05:22:24 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25LCMKjl013778; Tue, 21 Jun 2022 13:22:21 +0100
From: Tilak Tangudu <tilak.tangudu@intel.com>
To: intel-gfx@lists.freedesktop.org, jon.ewins@intel.com,
 rodrigo.vivi@intel.com, vinay.belgaumkar@intel.com,
 chris.p.wilson@intel.com, ashutosh.dixit@intel.com,
 badal.nilawar@intel.com, anshuman.gupta@intel.com,
 tilak.tangudu@intel.com, matthew.d.roper@intel.com,
 saurabhg.gupta@intel.com, Aravind.Iddamsetty@intel.com,
 Sujaritha.Sundaresan@intel.com
Date: Tue, 21 Jun 2022 18:05:05 +0530
Message-Id: <20220621123516.370479-1-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/11] drm/i915: Add D3Cold-Off support for
 runtime-pm
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

1. Added D3Cold-Off support for runtime pm for discrete gpu.
2. LMEM is switched off and gpu is in off state in D3Cold-Off
   so, lmem & GT deep suspend/resume is added.
3. Re-used i915_gem_backup_suspend, i915_gem_suspend_late
   and i915_gem_resume to handle above 2. 
4. These functions use runtime helpers, which in-turn call
   runtime suspend/resume callbacks and leads to deadlock.
   So, these helpers need to be avoided.
5. Removed rpm helpers in low level functions and added
   helpers at higher level functions in some cases.
6. There are cases, where there is heavy re-usage of 
   low level functions and huge code refactoring is
   needed, for these cases used helper,is_intel_rpm_allowed
   to avoid rpm helpers.
7. Validated in headless setup and is working fine for
   basic igt tests.
8. Headed setup throwed some display warnings and is FIXME.
9. D3Cold policy yet to be included and is FIXME

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>

Tilak Tangudu (11):
  drm/i915: Avoid rpm helpers in intel_guc_global_policies_update
  drm/i915: Avoid rpm helpers in intel_guc_slpc_set_media_ratio_mode
  drm/i915: Avoid rpm helpers in intel_gt_suspend_late
  drm/i915: Added is_intel_rpm_allowed helper
  drm/i915: Guard rpm helpers in gt helpers functions
  drm/i915: Avoid rpm helpers in try_context_registration
  drm/i915: Guard rc6 helpers with is_intel_rpm_allowed
  drm/i915: Guard rpm helpers in rpm_get/put
  drm/i915: Add i915_save/load_pci_state helpers
  drm/i915: Guard rpm helpers at gt_park/unpark
  drm/i915 : Add D3COLD OFF support

 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   9 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |   4 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  33 +++--
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   |   2 +
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  13 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |  14 +-
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c      |   4 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |   5 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |   8 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  28 ++--
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   9 +-
 drivers/gpu/drm/i915/i915_debugfs_params.c    |   7 +-
 drivers/gpu/drm/i915/i915_driver.c            | 134 ++++++++++++++----
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_gem.c               |   5 +-
 drivers/gpu/drm/i915/i915_pci.c               |   1 +
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 drivers/gpu/drm/i915/intel_runtime_pm.c       |  15 ++
 drivers/gpu/drm/i915/intel_runtime_pm.h       |   1 +
 drivers/gpu/drm/i915/intel_wakeref.c          |   8 +-
 .../i915/selftests/intel_scheduler_helpers.c  |  13 +-
 21 files changed, 228 insertions(+), 88 deletions(-)

-- 
2.25.1

