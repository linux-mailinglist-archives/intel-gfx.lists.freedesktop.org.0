Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A38058D3DA0
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 19:48:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 648A610E249;
	Wed, 29 May 2024 17:48:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jy/I+PZo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D457610E1EA;
 Wed, 29 May 2024 17:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717004884; x=1748540884;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CAvCWewnJj6MhAaY140y1Szqi/a5kWrwcmsq3LrDyEI=;
 b=Jy/I+PZo4tn6h3m+OFO1fN99kwlsafj/WqTB2LOSOyT/v0jHbfSZZe8p
 KhvYqUafdIzvT0YI1w72dUV42DHKpzkU0MFfVUlysuU5IOz0bMDQWafAX
 V+jYw/t3vBSpqm1RJPDeOetWZbSc+ogTOYutECwPjHh27R0TvI8ygvNaW
 xdEKftlLZcPqpMWN8Rb0WnGmJMpynPik3vDLkXzcSpDhR0WFcyuNTW6Qn
 F9wPPD4EOFz7T8cF2ZM/OooihlGQyHMxndV0+VrzK2yF56cSCvagyifup
 gl1kIjTQmnQtBgXjHmrjvLcSTwK5ks6hyDAQuLqsP0XLHSpHtvAPkiNlZ g==;
X-CSE-ConnectionGUID: ceZGUi+RRYiMAl8Oucn97g==
X-CSE-MsgGUID: 4oNUF8A5Qj2e8XjiWTecFA==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="24082637"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="24082637"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:02 -0700
X-CSE-ConnectionGUID: yslpFtHRRWmo1tWVctlUJw==
X-CSE-MsgGUID: aGbwZDsxQ8+xtcXMzRwSZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="35452769"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 00/10] drm/i915 and drm/xe display and compat cleanups
Date: Wed, 29 May 2024 20:48:04 +0300
Message-Id: <cover.1717004739.git.jani.nikula@intel.com>
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

While the i915 i915_drv.h includes absolutely everything, the xe compat
i915_drv.h is handy for reducing includes and including what's really
needed where needed. Do just that. This is also useful for figuring out
what the display code actually needs outside of display. Do some
additional header cleanups on top.

I suggest merging the lot via drm-intel-next.

BR,
Jani.


Jani Nikula (10):
  drm/i915/display: include gem/i915_gem_stolen.h where needed
  drm/i915/display: include gt/intel_gt_types.h where needed
  drm/i915/display: include i915_gpu_error.h where needed
  drm/i915/display: include intel_uncore.h where needed
  drm/i915/display: include intel_step.h where needed
  drm/i915/display: include xe_bo.h, gem_object_types etc. where needed
  drm/xe/display: move compat uncore stubs to the correct file
  drm/xe/display: move compat runtime pm stubs to the correct file
  drm/xe/display: reduce includes in compat i915_drv.h
  drm/xe/display: drop i915_drv.h include from xe code

 .../gpu/drm/i915/display/intel_atomic_plane.c |  1 +
 drivers/gpu/drm/i915/display/intel_bios.c     |  1 +
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |  2 +
 drivers/gpu/drm/i915/display/intel_fb.c       |  1 +
 drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  1 +
 .../gem/i915_gem_object_types.h               | 11 +++
 .../{ => gem}/i915_gem_stolen.h               |  0
 .../{ => gt}/intel_gt_types.h                 |  0
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h | 67 +------------------
 .../xe/compat-i915-headers/intel_runtime_pm.h | 51 ++++++++++++++
 .../drm/xe/compat-i915-headers/intel_uncore.h |  5 ++
 drivers/gpu/drm/xe/display/ext/i915_irq.c     |  1 -
 drivers/gpu/drm/xe/display/intel_fb_bo.c      |  7 +-
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 24 +++----
 drivers/gpu/drm/xe/display/xe_dsb_buffer.c    |  9 ++-
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |  6 +-
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 19 +++---
 19 files changed, 108 insertions(+), 101 deletions(-)
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_types.h
 rename drivers/gpu/drm/xe/compat-i915-headers/{ => gem}/i915_gem_stolen.h (100%)
 rename drivers/gpu/drm/xe/compat-i915-headers/{ => gt}/intel_gt_types.h (100%)

-- 
2.39.2

