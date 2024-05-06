Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8378BCE93
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 14:57:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C2E10E9D9;
	Mon,  6 May 2024 12:57:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BgSMSIVk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C445010E9D9;
 Mon,  6 May 2024 12:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715000242; x=1746536242;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yqGU7QbmUk+Whr+STIIHyLR+1sejKFx4BaPW/hvCGxo=;
 b=BgSMSIVk/yWf4j0d6hK5vbfo4R6cGDotCZMyjexhCwHZdM+uJ3NFwgq7
 2du/PU9P73wvRyXU40KlbaYBH9mK4Pchctmjnj0O+gHoAZ5ivdf/DX2bJ
 xSYXof4WYNWgW6HPrE2ShAaeh8V8aPgE8HJLGzjBtt9LqghvyXEHJtG49
 OWsZ3cD/pfSyDOUiS/mpnfeZKipdSLa5mZydvDKNDrUK4GAFAJ/XyAkMs
 26HH2NiWQVCBCPib3LEhLA1PreyYJlo2zvdQgJ/cFXjanoGxrVAmnEzhx
 LSXYEnNimekqM5j+36JD82c1iP90iCtlu4GhnAhO5DcqicVNiOPX6Odmb w==;
X-CSE-ConnectionGUID: 17W1lzK2QzmiecDpeiVBkw==
X-CSE-MsgGUID: IOzuA9QHQkatJKE2KaXJew==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10865309"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10865309"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 05:57:21 -0700
X-CSE-ConnectionGUID: P4mJmdlPQYKkemA0mDb3RA==
X-CSE-MsgGUID: ZsDqxqoiRR6DPRzhdlzcxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28164942"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 05:57:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 15:57:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/9] drm/i915: Plane fb refactoring
Date: Mon,  6 May 2024 15:57:09 +0300
Message-ID: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

A bit of cleanup/refactoring around plane fb stuff.
This is mainly prep work for a slightly bigger rework
of alignment handling.

Ville Syrjälä (9):
  drm/i915: Split gen2 vs. gen3 .max_stride()
  drm/i915: Clean up skl+ plane stride limits
  drm/i915: Drop 'uses_fence' parameter from intel_pin_fb_obj_dpt()
  drm/i915: Extract intel_plane_needs_physical()
  drm/i915: Polish types in fb calculations
  drm/i915: Constify 'fb' in during pinning
  drm/i915: Change intel_fbdev_fb_alloc() reuturn type
  drm/i915: Cleanup fbdev fb setup
  drm/i915: Rename the fb pinning functions to indicate the address
    space

 drivers/gpu/drm/i915/display/i9xx_plane.c     | 34 ++++---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  8 ++
 .../gpu/drm/i915/display/intel_atomic_plane.h |  1 +
 drivers/gpu/drm/i915/display/intel_dpt.c      |  6 +-
 drivers/gpu/drm/i915/display/intel_dpt.h      |  6 +-
 drivers/gpu/drm/i915/display/intel_fb.c       | 27 +++---
 drivers/gpu/drm/i915/display/intel_fb_pin.c   | 73 +++++++-------
 drivers/gpu/drm/i915/display/intel_fb_pin.h   | 12 +--
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 39 ++++----
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c |  6 +-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  5 +-
 .../drm/i915/display/skl_universal_plane.c    | 94 ++++++++++---------
 drivers/gpu/drm/xe/display/xe_fb_pin.c        | 18 ++--
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  4 +-
 14 files changed, 175 insertions(+), 158 deletions(-)

-- 
2.43.2

