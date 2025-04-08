Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E81A8121A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 18:22:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6A9610E6FC;
	Tue,  8 Apr 2025 16:22:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ymw77jQx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8155410E6FB;
 Tue,  8 Apr 2025 16:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744129331; x=1775665331;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=R+Z0eOnpCrL4xbO9Uk7FjKxeGauiYhKxL3JOzc/Suj4=;
 b=Ymw77jQxjUtvcNUybsZf+TbTeBxMxIvdqBtl6aCm3VyUafpmg38+GKAV
 j6Fzs4sTI43gpdaZ3b7nkqKW7BvNrrfOq4ijc6iGWhXF+oPxe5GmZPh5O
 +9ECAegoolAfnieVstwhhhCPj2w1SdKJv/6Vn2kfvG37+etw/7/sG10eQ
 iWPOHVcrgpKb4DggD89DLu6jNkO+zdM5kpkKmaNR4ZUPJ7zEX+HiMki7k
 Ya5NFlBS22PATDpez4zCrr92QGUUKGVFQUrICR6KNsYDyUyErTHgo9LDB
 o1+Gh7Mmbu03nV9eBMyLwC+mrq4cum1Z0Ju/JQGOulfzb5in+N+KvaIQu A==;
X-CSE-ConnectionGUID: lcw/Z+AXR0KHooLJghiubg==
X-CSE-MsgGUID: /8YAb+0zQo6ir1errfmx5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="62973617"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="62973617"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 09:22:10 -0700
X-CSE-ConnectionGUID: PMR3+1fjQkyNeXscXzj7mg==
X-CSE-MsgGUID: cKYGU/V9TFekkp13iPGxAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="159310760"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.137])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 09:22:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/5] drm/i915/plane: file and function renames
Date: Tue,  8 Apr 2025 19:21:59 +0300
Message-Id: <cover.1744129283.git.jani.nikula@intel.com>
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

The "atomic" is superfluous in a bunch of places.

Jani Nikula (5):
  drm/i915/plane: rename intel_atomic_plane.[ch] to intel_plane.[ch]
  drm/i915/plane: drop atomic from intel_atomic_plane_check_clipping()
  drm/i915/plane: make intel_plane_atomic_check() static and rename
  drm/i915/plane: rename intel_atomic_check_planes() to
    intel_plane_atomic_check()
  drm/i915/plane: rename intel_atomic_add_affected_planes() to
    intel_plane_add_affected()

 drivers/gpu/drm/i915/Makefile                 |  4 ++--
 drivers/gpu/drm/i915/display/i9xx_plane.c     | 10 ++++-----
 drivers/gpu/drm/i915/display/intel_atomic.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   | 10 ++++-----
 drivers/gpu/drm/i915/display/intel_display.c  | 10 ++++-----
 .../gpu/drm/i915/display/intel_display_irq.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_fb.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |  2 +-
 .../{intel_atomic_plane.c => intel_plane.c}   | 22 +++++++++----------
 .../{intel_atomic_plane.h => intel_plane.h}   | 22 +++++++++----------
 .../drm/i915/display/intel_plane_initial.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   | 14 ++++++------
 .../drm/i915/display/skl_universal_plane.c    |  8 +++----
 drivers/gpu/drm/i915/display/skl_watermark.c  |  2 +-
 drivers/gpu/drm/xe/Makefile                   |  2 +-
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  2 +-
 18 files changed, 59 insertions(+), 61 deletions(-)
 rename drivers/gpu/drm/i915/display/{intel_atomic_plane.c => intel_plane.c} (98%)
 rename drivers/gpu/drm/i915/display/{intel_atomic_plane.h => intel_plane.h} (85%)

-- 
2.39.5

