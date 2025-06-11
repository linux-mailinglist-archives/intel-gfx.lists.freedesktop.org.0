Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A061AD5943
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 16:51:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F9F610E693;
	Wed, 11 Jun 2025 14:51:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O8eC9TZ5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65E6910E682;
 Wed, 11 Jun 2025 14:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749653482; x=1781189482;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rhTfJ9jaRY7BkstwMhy6J7qjbUJZBLYhZrhS+HLLQbQ=;
 b=O8eC9TZ5jBPksiZDch6k+BSHrVXBOtHEgPWYbtixTf5i3TFalhSLdyTZ
 gUP0h4qslBQVSsTmUo+MzxF81nh//IH3chZsHVQwwPgBe5Sqzkvn0Qkav
 P67YBFyOO7ajzhMsTljrKbSmkDHTG4CEyshT3Lcsimj/73O46T9Q1j71M
 heV2V/S+NLHpLegsc0nSpLF2Rw3V5dJ3BsNApgyzUGLX1BJYYMz+BTDtd
 sLr+IzZsuuC6VQyycvknuTaJMzcvo3e+IqBUGFKZ1isP4SBlKdjEr5HKV
 6ncDN+piZiSeKs0VlZ/xIFmDkNBZNcizkZjTpdUxJh3OUSm/NHXsVzgla Q==;
X-CSE-ConnectionGUID: btKdv2QLTzirxqdTazaxMw==
X-CSE-MsgGUID: 1Fip+PUlQl60QcPOwGtQOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51714017"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="51714017"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 07:51:22 -0700
X-CSE-ConnectionGUID: tK0zXXKrQOmiYgN4sRO03Q==
X-CSE-MsgGUID: RS0HTBm1Tyq4Y9O9bVn4fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="147122148"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.209])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 07:51:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/3] drm/i915: use drm->debugfs_root when creating debugfs
 files
Date: Wed, 11 Jun 2025 17:51:13 +0300
Message-Id: <cover.1749653354.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

In the long run, I think this will allow us to remove (or not add) some
drm_file.h includes. Currently the point is moot, because it will still
get implicitly included in most places. Regardless, this is the
direction anyway.

BR,
Jani.


Jani Nikula (3):
  drm/i915/display: use drm->debugfs_root for creating debugfs files
  drm/i915/gvt: use drm->debugfs_root for creating debugfs files
  drm/i915: use drm->debugfs_root for creating debugfs files

 drivers/gpu/drm/i915/display/intel_bios.c     |  4 +---
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  4 +---
 .../drm/i915/display/intel_display_debugfs.c  |  6 +++---
 .../display/intel_display_debugfs_params.c    |  6 +++---
 drivers/gpu/drm/i915/display/intel_dmc.c      |  4 +---
 drivers/gpu/drm/i915/display/intel_dp_test.c  |  3 +--
 drivers/gpu/drm/i915/display/intel_fbc.c      |  3 +--
 drivers/gpu/drm/i915/display/intel_hotplug.c  |  8 ++++----
 drivers/gpu/drm/i915/display/intel_opregion.c |  4 +---
 drivers/gpu/drm/i915/display/intel_psr.c      |  6 +++---
 drivers/gpu/drm/i915/display/intel_wm.c       |  8 ++++----
 drivers/gpu/drm/i915/display/skl_watermark.c  |  6 +++---
 drivers/gpu/drm/i915/gt/intel_gt_debugfs.c    |  5 +++--
 drivers/gpu/drm/i915/gvt/debugfs.c            | 12 +++++------
 drivers/gpu/drm/i915/i915_debugfs.c           | 20 +++++++++----------
 drivers/gpu/drm/i915/i915_debugfs_params.c    |  4 ++--
 drivers/gpu/drm/i915/i915_gpu_error.c         |  6 +++---
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c  |  8 ++++----
 18 files changed, 53 insertions(+), 64 deletions(-)

-- 
2.39.5

