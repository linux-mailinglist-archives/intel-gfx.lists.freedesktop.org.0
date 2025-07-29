Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7C5B14BC2
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 11:57:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F6FB10E0A5;
	Tue, 29 Jul 2025 09:57:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LLqaGw0m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9370810E0A5;
 Tue, 29 Jul 2025 09:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753783065; x=1785319065;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=84FMXvIBpzS+HsxrBNqBLvD+6L9nn0UkbEF/TzZpke4=;
 b=LLqaGw0mNbSYFtNO5MZaFk4a+WDz4WSdlZdEbfOiOTItPpzyu1LQUV/Z
 6nHGD3IsImreSFrjw7GcOJK2lOd855saiT6e52vbsYUWr2zpjuRTq4lWr
 IA2kuYfx5kI5dsmKHLSt+1VkugH3Tk4bjtuOE7dm3Qeq7z06mLtuYYr8Z
 z0Y1Z4AahdB5N/yad9gyERXj73hM2f+tgG1QcasTUkOFAcTBw7TO9kWa6
 7wSpU5/G4KjIJUYLGPjrzofoevL20uSQBXUmBSfkS17IFFLcpMdMOEcVr
 3WRNdepiIvJ5y3nDEuFh13koLV3OwMqoDN0VtSIczI/xbGpq8JDue6JKN w==;
X-CSE-ConnectionGUID: 1dwRxYxMQFG/VF6nk8uB4g==
X-CSE-MsgGUID: kz2dd85dTtmbSP5xTimngA==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="81484970"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="81484970"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 02:57:45 -0700
X-CSE-ConnectionGUID: ROGjyfPmSEu7fj38TCc0Ow==
X-CSE-MsgGUID: x069y1xUS3+lWzmFaro3MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="167962023"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.22])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 02:57:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 0/3] drm/i915: use drm->debugfs_root when creating debugfs
 files
Date: Tue, 29 Jul 2025 12:57:36 +0300
Message-Id: <cover.1753782998.git.jani.nikula@intel.com>
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

Resend of [1].

[1] https://lore.kernel.org/r/cover.1749653354.git.jani.nikula@intel.com

Jani Nikula (3):
  drm/i915/display: use drm->debugfs_root for creating debugfs files
  drm/i915/gvt: use drm->debugfs_root for creating debugfs files
  drm/i915: use drm->debugfs_root for creating debugfs files

 drivers/gpu/drm/i915/display/intel_bios.c     |  4 +---
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  4 +---
 .../drm/i915/display/intel_display_debugfs.c  |  6 +++---
 .../display/intel_display_debugfs_params.c    |  7 +++----
 drivers/gpu/drm/i915/display/intel_dmc.c      |  4 +---
 drivers/gpu/drm/i915/display/intel_dp_test.c  |  4 +---
 drivers/gpu/drm/i915/display/intel_fbc.c      |  3 +--
 drivers/gpu/drm/i915/display/intel_hotplug.c  |  8 ++++----
 drivers/gpu/drm/i915/display/intel_opregion.c |  4 +---
 drivers/gpu/drm/i915/display/intel_psr.c      |  6 +++---
 drivers/gpu/drm/i915/display/intel_wm.c       |  9 ++++-----
 drivers/gpu/drm/i915/display/skl_watermark.c  |  7 +++----
 drivers/gpu/drm/i915/gt/intel_gt_debugfs.c    |  5 +++--
 drivers/gpu/drm/i915/gvt/debugfs.c            | 12 +++++------
 drivers/gpu/drm/i915/i915_debugfs.c           | 20 +++++++++----------
 drivers/gpu/drm/i915/i915_debugfs_params.c    |  4 ++--
 drivers/gpu/drm/i915/i915_gpu_error.c         |  6 +++---
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c  |  8 ++++----
 18 files changed, 53 insertions(+), 68 deletions(-)

-- 
2.39.5

