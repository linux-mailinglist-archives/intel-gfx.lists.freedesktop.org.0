Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F255D57C7FF
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 11:48:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3D2A8BCC0;
	Thu, 21 Jul 2022 09:48:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF8148BD14
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 09:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658396887; x=1689932887;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8hr517hloCEaSARKwKgAxzjO63qcctHRni0PtLZ4H68=;
 b=Nh+2/3X3FVrgP/Mm1ozraLxycGzvwlksgOcuhmxG8/DF/9TosfvubMAn
 TxWz9ETX5DBvBsWKnmpImDSJw4Xvb2mlQLfB4MrWQ6ZQMhFlHrLGi4wOH
 sBeZdpYnWQHAjvgOeXZ6uBcKzAk/VSI6ZOQ802VZrLqhjOEMujL8BO2Pv
 Fj7/TVJcc6lv1nFurO7hyP1z5nREm8jDd1KR7gBamaKaf2v4rEChLdvCg
 7zjH1aFzy/Os5grMuh76Wv24UbtV8w4SMjiA5DjJkGGwQ5hO4zQeKh7k8
 cSBDNm+GzDZGsTbBBuAgpMU8ph5UcoTRqt+XCtdaoc5EYd3/P+tcmPA78 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="270032863"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="270032863"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 02:48:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="573675637"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga006.jf.intel.com with ESMTP; 21 Jul 2022 02:47:59 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26L9ltwR026833; Thu, 21 Jul 2022 10:47:55 +0100
From: tilak.tangudu@intel.com
To: jon.ewins@intel.com, vinay.belgaumkar@intel.com, matthew.d.roper@intel.com,
 chris.p.wilson@intel.com, jani.nikula@intel.com,
 saurabhg.gupta@intel.com, rodrigo.vivi@intel.com,
 Anshuman.Gupta@intel.com, badal.nilawar@intel.com,
 tilak.tangudu@intel.com, imre.deak@intel.com,
 aravind.iddamsetty@intel.com, intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jul 2022 15:29:47 +0530
Message-Id: <20220721095955.3986943-1-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/8] drm/i915: Add D3Cold-Off support for
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

From: Tilak Tangudu <tilak.tangudu@intel.com>

1. Added D3Cold-Off support for runtime pm for discrete gpu.
2. LMEM is switched off and gpu is in off state in D3Cold-Off
   so, lmem & GT deep suspend/resume is added.
3. Re-used i915_gem_backup_suspend, i915_gem_suspend_late
   and i915_gem_resume to handle above 2.
4. These functions use runtime helpers, which in-turn call
   runtime suspend/resume callbacks and leads to deadlock.
   So, these helpers need to be avoided.
5. Added is_intel_rpm_allowed and disallowed rpm callbacks
   during suspending and resuming.
6. Integrated D3Cold policy patch, but is a FIXME, as LMEM
   usage is not queried, lmem->avail stopped tracking lmem 
   usage after ttm port.
7. Added/used i915_save/load_pci_state helpers
8. In intel_guc_global_policies_update, guarded intel_guc_is_ready
   with rpm helpers as it needs guc interaction.
9. Fixed error *ERROR DC state mismatch (0x8 -> 0x0)".
10. Guarded rc6 rpm helpers with is_intel_rpm_allowed as these
    are called in suspend/resume cllbacks. 

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>

Anshuman Gupta (1):
  Drm/i915/rpm: Add intel_runtime_idle

Aravind Iddamsetty (1):
  drm/i915: Add i915_save/load_pci_state helpers

Tilak Tangudu (6):
  drm/i915: Added is_intel_rpm_allowed helper
  drm/i915: Guard rc6 helpers with is_intel_rpm_allowed
  drm/i915: Extend rpm in intel_guc_global_policies_update
  drm/i915: sanitize dc state in rpm resume
  drm/i915/rpm: d3cold Policy
  drm/i915 : Add D3COLD OFF support

 .../drm/i915/display/intel_display_power.c    |   1 +
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  13 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |   9 +-
 drivers/gpu/drm/i915/i915_driver.c            | 126 ++++++++++++++++--
 drivers/gpu/drm/i915/i915_driver.h            |   2 +
 drivers/gpu/drm/i915/i915_drv.h               |   1 +
 drivers/gpu/drm/i915/i915_params.c            |   5 +
 drivers/gpu/drm/i915/i915_params.h            |   1 +
 drivers/gpu/drm/i915/intel_pm.c               |  35 +++++
 drivers/gpu/drm/i915/intel_pm.h               |   1 +
 drivers/gpu/drm/i915/intel_runtime_pm.c       |  26 +++-
 drivers/gpu/drm/i915/intel_runtime_pm.h       |   8 ++
 12 files changed, 206 insertions(+), 22 deletions(-)

-- 
2.25.1

