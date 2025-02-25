Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C97A446C5
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 17:49:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0988810E75A;
	Tue, 25 Feb 2025 16:49:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WHzWMMBc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC15B10E74A;
 Tue, 25 Feb 2025 16:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740502163; x=1772038163;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hfd5y+F0j18hVzroA4hpYHm/6T4aiRY9W7ksg2gA9Jo=;
 b=WHzWMMBcZ+yheg53cZDqYerzYQXCxKev5FhM1ggKqLLwkrYL7li3wO7u
 flbZUquJmbv+M60wChxLsLgfgNf3cF6Lvqewczl0y1TVl0Xf6yuXh4SGK
 zmKDc1q2l2UM1XTYzvC1zzS8/xSqjJISTWN0LFYKmDVTuKiFFlSJeoowH
 jVmZfY+cw2czgRbY7I7uiCQ+WL7HitXgePXnCGYtDwBV8I+pbU/XKEmhU
 3s4BPo9ScAarzKui+eQpEa9DM6AsXZQAXVQz+ZJRA2/LvOScXuTdojeCv
 Z3Hy/Y2LI2sAV8OdHPiObM8+qBP7vbofE3btt0Mu2K93K5F4XlTcZTfl4 A==;
X-CSE-ConnectionGUID: S0Rl6KtFQtK/CbcmWP6zGg==
X-CSE-MsgGUID: T3sTboUsRLGn3jh6cm61lQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41454367"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="41454367"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:49:19 -0800
X-CSE-ConnectionGUID: ir7sFncTQCSXKFQoDvo3Qw==
X-CSE-MsgGUID: hWThATkaTHax+MoQ0UP4hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116930127"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:49:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 00/12] drm/i915: struct intel_display conversions, part 2434235
Date: Tue, 25 Feb 2025 18:49:01 +0200
Message-Id: <cover.1740502116.git.jani.nikula@intel.com>
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

More of the same.

Jani Nikula (12):
  drm/i915/display: remove leftover struct drm_i915_private forward
    declarations
  drm/i915/debugfs: continue display debugfs struct intel_display
    conversion
  drm/i915/tdf: convert intel_tdf.[ch] to struct intel_display
  drm/i915/snps: convert intel_snps_phy.[ch] to struct intel_display
  drm/i915/dkl: convert intel_dkl_phy.[ch] to struct intel_display
  drm/i915/drrs: convert intel_drrs.[ch] to struct intel_display
  drm/i915/display: convert the M/N functions to struct intel_display
  drm/i915/dpt: convert intel_dpt.[ch] interfaces to struct
    intel_display
  drm/i915/fbc: convert intel_fbc.[ch] to struct intel_display
  drm/i915/rps: convert intel_display_rps.[ch] to struct intel_display
  drm/i915/ddi: convert intel_wait_ddi_buf_idle() to struct
    intel_display
  drm/i915/fdi: convert intel_fdi.[ch] to struct intel_display

 drivers/gpu/drm/i915/display/intel_atomic.h   |   1 -
 .../gpu/drm/i915/display/intel_atomic_plane.c |   8 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  11 +-
 drivers/gpu/drm/i915/display/intel_ddi.h      |   4 +-
 .../drm/i915/display/intel_ddi_buf_trans.h    |   1 -
 drivers/gpu/drm/i915/display/intel_display.c  | 102 ++--
 drivers/gpu/drm/i915/display/intel_display.h  |   8 +-
 .../drm/i915/display/intel_display_debugfs.c  |  26 +-
 .../drm/i915/display/intel_display_debugfs.h  |   6 +-
 .../drm/i915/display/intel_display_driver.c   |   8 +-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 .../gpu/drm/i915/display/intel_display_rps.c  |   4 +-
 .../gpu/drm/i915/display/intel_display_rps.h  |   4 +-
 drivers/gpu/drm/i915/display/intel_dkl_phy.c  |   8 +-
 drivers/gpu/drm/i915/display/intel_dkl_phy.h  |   3 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   7 +-
 drivers/gpu/drm/i915/display/intel_dpt.c      |  24 +-
 drivers/gpu/drm/i915/display/intel_dpt.h      |   7 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |  45 +-
 drivers/gpu/drm/i915/display/intel_drrs.h     |  10 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      | 113 ++---
 drivers/gpu/drm/i915/display/intel_fbc.h      |   6 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      | 464 +++++++++---------
 drivers/gpu/drm/i915/display/intel_fdi.h      |  16 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  |  11 +-
 drivers/gpu/drm/i915/display/intel_hdmi.h     |   1 -
 .../drm/i915/display/intel_modeset_verify.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_overlay.h  |   1 -
 .../gpu/drm/i915/display/intel_pch_display.c  |  35 +-
 drivers/gpu/drm/i915/display/intel_pipe_crc.h |   1 -
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  75 ++-
 drivers/gpu/drm/i915/display/intel_snps_phy.h |   6 +-
 drivers/gpu/drm/i915/display/intel_tdf.h      |   6 +-
 drivers/gpu/drm/i915/i915_driver.c            |   4 +-
 drivers/gpu/drm/xe/display/xe_display_rps.c   |   2 +-
 drivers/gpu/drm/xe/display/xe_tdf.c           |   6 +-
 36 files changed, 493 insertions(+), 546 deletions(-)

-- 
2.39.5

