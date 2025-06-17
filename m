Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 992C8ADC447
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 10:13:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38D1B10E4F6;
	Tue, 17 Jun 2025 08:13:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AWAYdZgc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BBA110E4F6;
 Tue, 17 Jun 2025 08:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750148026; x=1781684026;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=p/jDWlVxsiuz51MyCRDQWRfUPzsjsTNduFZ6sVZIsnY=;
 b=AWAYdZgcXhYzYZpyYqxkrzgZl7nRuZnG/LotXICNVrsXIehjUhwaiUBO
 LHvzofQXTiQo1XNt0X/NpsNBtT9lZpIc4cKHmJ3RQulhdUYTv0k3f3a3k
 lqZWrJLqCVFymqMSJGkZK49Sk6taLgMXX1tRg9fMEgNchaIGsthZUCFYQ
 sIvTKvgR1crbpR3rI2yyyfPSHSti57J5eMRo1DxOH/+PK/TNNx1qoOEcr
 nxqd4FGoJmlgKqMouLYNtUjmz1+2vX/285RhDciDzfa4DdeL4XTuFTYtl
 VDuxUqPAySg38815Mr/S0C+WMNgezjDgo5+ehX/oJZi2zpTdF/wqN5t6k Q==;
X-CSE-ConnectionGUID: /iAj2z/ESvyr8mkULxAxKQ==
X-CSE-MsgGUID: UAdOLCf3RsySSUb5NEqcsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52016116"
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="52016116"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 01:13:46 -0700
X-CSE-ConnectionGUID: rf7UuYCOTBKKak3nj61Vzw==
X-CSE-MsgGUID: XPELoX8dTaCpE0kGHa21NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="153597380"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.111])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 01:13:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 0/5] drm/i915/plane: file and function renames
Date: Tue, 17 Jun 2025 11:13:35 +0300
Message-Id: <cover.1750147992.git.jani.nikula@intel.com>
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


Jani Nikula (5):
  drm/i915/plane: rename intel_atomic_plane.[ch] to intel_plane.[ch]
  drm/i915/plane: drop atomic from intel_atomic_plane_check_clipping()
  drm/i915/plane: make intel_plane_atomic_check() static and rename
  drm/i915/plane: rename intel_atomic_check_planes() to
    intel_plane_atomic_check()
  drm/i915/plane: rename intel_atomic_add_affected_planes() to
    intel_plane_add_affected()

 Documentation/gpu/i915.rst                    |  4 ++--
 drivers/gpu/drm/i915/Makefile                 |  4 ++--
 drivers/gpu/drm/i915/display/i9xx_plane.c     | 10 ++++-----
 drivers/gpu/drm/i915/display/intel_atomic.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   | 10 ++++-----
 drivers/gpu/drm/i915/display/intel_display.c  |  8 +++----
 .../gpu/drm/i915/display/intel_display_irq.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_fb.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |  2 +-
 .../{intel_atomic_plane.c => intel_plane.c}   | 22 +++++++++----------
 .../{intel_atomic_plane.h => intel_plane.h}   | 22 +++++++++----------
 .../drm/i915/display/intel_plane_initial.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   | 14 ++++++------
 .../drm/i915/display/skl_universal_plane.c    |  7 +++---
 drivers/gpu/drm/i915/display/skl_watermark.c  |  2 +-
 drivers/gpu/drm/xe/Makefile                   |  2 +-
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  2 +-
 19 files changed, 59 insertions(+), 62 deletions(-)
 rename drivers/gpu/drm/i915/display/{intel_atomic_plane.c => intel_plane.c} (98%)
 rename drivers/gpu/drm/i915/display/{intel_atomic_plane.h => intel_plane.h} (86%)

-- 
2.39.5

