Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1518AADB8D
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 11:38:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48A9010E775;
	Wed,  7 May 2025 09:38:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DhSiL362";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BD6D10E775;
 Wed,  7 May 2025 09:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746610725; x=1778146725;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rtYeGwPY7dWpIijkMcXuAHhMfpu04he2fANTOyH/Yc8=;
 b=DhSiL3621y489D1VXbbwWqKEev6uWesfKC8uYDw4Tk9vDj2fkxxxK61o
 41JG40XB5o8VW88LmqEPvLakvFuU8dCz213ljuupi1YWs99qTYxWrwKdI
 dAdRlMbsDoqAz4y1YLnqPi/bQ0g02T3q0dz2+XiLsMdafGuvvK6YjNE2X
 lXRocWZTviVSYKXZcQh0r2Q6iUJdPJQArC3okqYsQDZwCNNEVKDmDkE+K
 gEmE0Yg0wlX2vdC2NqMvl5LP5twhSHEnyalDCL0i9Fi91OONT8JP2Cx72
 8j/2MguqCdaw/C/6TFhrmb8BNks+Us3UQejUkNChvLIqVCrVn9j7BO3SD Q==;
X-CSE-ConnectionGUID: 88nCTzbaQF2oMb9ZvPQfVw==
X-CSE-MsgGUID: PV/XKyzXSIG6/Z/g3Gwvrg==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="59727212"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="59727212"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 02:38:42 -0700
X-CSE-ConnectionGUID: riihNcq/SVaKmDPreMZzaw==
X-CSE-MsgGUID: OYZpf7k+ScyhqhqZ5HfrcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="159194286"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 02:38:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/4] drm/{i915,
 xe}: convert i915->display and xe->display into pointers
Date: Wed,  7 May 2025 12:38:32 +0300
Message-Id: <cover.1746610601.git.jani.nikula@intel.com>
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

Another small step towards separating i915 and xe drivers from
display. Convert the i915->display and xe->display members into
pointers. In the future, we can allocate them dynamically, but one step
at a time.

BR,
Jani.


Jani Nikula (4):
  drm/xe/rpm: use to_xe_device() instead of container_of
  drm/xe/display: do not reference xe->display inline
  drm/i915: do not reference i915->display inline
  drm/{i915,xe}: convert i915 and xe display members into pointers

 .../i915/display/intel_display_conversion.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dpt.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  2 +-
 .../i915/gem/i915_gem_object_frontbuffer.h    |  2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  4 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |  4 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |  4 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |  6 +-
 drivers/gpu/drm/i915/gvt/display.c            | 10 ++--
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |  6 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |  8 +--
 drivers/gpu/drm/i915/i915_driver.c            | 57 ++++++++++--------
 drivers/gpu/drm/i915/i915_drv.h               |  3 +-
 drivers/gpu/drm/i915/i915_getparam.c          |  2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  2 +-
 drivers/gpu/drm/i915/i915_irq.c               | 50 ++++++++--------
 drivers/gpu/drm/i915/intel_clock_gating.c     |  3 +-
 drivers/gpu/drm/xe/display/xe_display.c       | 60 +++++++++++--------
 drivers/gpu/drm/xe/display/xe_display_rpm.c   |  3 +-
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |  5 +-
 drivers/gpu/drm/xe/xe_device_types.h          |  3 +-
 22 files changed, 130 insertions(+), 110 deletions(-)

-- 
2.39.5

