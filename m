Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 041F689A513
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 21:37:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F15B113CB8;
	Fri,  5 Apr 2024 19:37:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YvHkwre0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B57B10E813;
 Fri,  5 Apr 2024 19:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712345871; x=1743881871;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h/P1H+MG27GlN69wspdFApT2EApSLLGceOqoe2NkHLM=;
 b=YvHkwre0M56a8d+NiqyweBR10X78vFKoU4T8H02a7TwOp+C7jMMPKn7S
 VkfFE95rWhukscCvLgSrEXDTLIUZ+fnMrRFdxtCv3YeHgZNSafw0LTO2+
 yglHhW2MTYISJ2lsPLHQoZNktxFI+zyDWs95t6UBh7VaIwml8YVjLaH40
 KsNP3aZbSh8d+99tOei35ltX+uwYubHi6sp3Ck8Y6fytWXNCcW0BFgCMT
 YfbhYsZ3+dZpPQQKTkE05MUfh+JFIUeHvYZDd7YAj8Pltwq3vUsFSAtNP
 Ow44cUJtI5or0JkbxRqBEM0BJRBEyNlfGXo/M5ck1Gk+/rhhXrj4SuWNM A==;
X-CSE-ConnectionGUID: eLv8Bgg1TEaF+raeY6APog==
X-CSE-MsgGUID: RrnKPWqmTmmWs4z6LFbOdA==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="19124064"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19124064"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 12:37:49 -0700
X-CSE-ConnectionGUID: CiPiNGABSk+BOrrFg+dJ+A==
X-CSE-MsgGUID: LhZI6lf6TdmF5iHvna//wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="23755930"
Received: from dtorrice-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.202])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 12:37:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 0/6] drm/i915 and drm/xe display integration cleanups
Date: Fri,  5 Apr 2024 22:37:37 +0300
Message-Id: <cover.1712345787.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Some cleanups on i915 side, and subsequent cleanups on xe side. I'd like
to merge all of these via drm-intel-next.

BR,
Jani.

Jani Nikula (6):
  drm/i915: use IS_JASPERLAKE()/IS_ELKHARTLAKE() instead of
    IS_PLATFORM()
  drm/i915/dmc: define firmware URL locally
  drm/i915: move i915_fixed.h to display/intel_fixed.h
  drm/xe/display: clean up a lot of cruft from compat i915_drv.h
  drm/xe/display: remove compat i915_gem.h
  drm/xe/display: clean up compat i915_vgpu.h

 .../drm/i915/display/intel_ddi_buf_trans.c    |  4 +--
 drivers/gpu/drm/i915/display/intel_dmc.c      |  4 ++-
 .../{i915_fixed.h => display/intel_fixed.h}   |  0
 drivers/gpu/drm/i915/display/skl_watermark.c  |  2 +-
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h | 34 -------------------
 .../drm/xe/compat-i915-headers/i915_fixed.h   |  6 ----
 .../gpu/drm/xe/compat-i915-headers/i915_gem.h |  9 -----
 .../drm/xe/compat-i915-headers/i915_vgpu.h    | 26 --------------
 .../drm/xe/compat-i915-headers/intel_uc_fw.h  | 11 ------
 9 files changed, 6 insertions(+), 90 deletions(-)
 rename drivers/gpu/drm/i915/{i915_fixed.h => display/intel_fixed.h} (100%)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_fixed.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_gem.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_uc_fw.h

-- 
2.39.2

