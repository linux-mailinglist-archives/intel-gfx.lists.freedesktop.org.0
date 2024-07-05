Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F34928AE6
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AFFE10E042;
	Fri,  5 Jul 2024 14:52:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D4QJTGqh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E941910E042;
 Fri,  5 Jul 2024 14:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191178; x=1751727178;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+vT0GQKNbUXT4NW3TpDtgoDim95Oi6z6c/7bBNesMCs=;
 b=D4QJTGqhNwHE75nQ+byd++wJOsQWeITdCvehquEpAWrTwyJs8W2Kps2K
 P33zwVu80EUpp6SmS79L4nx4vdMsLa1W/ybpnbduJBTTdc+7MclCq6OMC
 B+WUuU/IUri88OcaFOGmM8uXQXybOGny1wtCEtwVRkQdHbc1+U2BQSz5A
 slKNe/2PtfFnzHeYvW/3HHELiIjMCp/Xa8gDQgK5YH4JA0MCKteHHi1PK
 +QSbK4MAzd4VOgG0KOkkhV/gVnxbuHV3uDGO5VUvU93PZgAH6tDp2Zv6i
 zeAMejwte8Ul4WspO1sgAfeqTvVN067tUvsmPoq3ZgZxOOmQjljWzSy18 w==;
X-CSE-ConnectionGUID: s40ic4KhRqeG04AgfP8paA==
X-CSE-MsgGUID: 6t70xB1sS5++5GuOUQeiWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204719"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204719"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:52:57 -0700
X-CSE-ConnectionGUID: 2YEO6GGlRyivt0XBhwwQeg==
X-CSE-MsgGUID: BApmU/U2Twy1qL9hb1Yjfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864338"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:52:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:52:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/20] drm/{i915, xe}: FBC cleanups + tweak fbdev stolen usage 
Date: Fri,  5 Jul 2024 17:52:34 +0300
Message-ID: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
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

Here's an idea for a slightly better heuristic to answer
the "should fbdev use stolen or not?" question.

Ended up with a pile of refactoring and cleanups in
the FBC code as a result.

Ville Syrjälä (20):
  drm/i915/fbc: Extract intel_fbc_has_fences()
  drm/i915/fbc: Convert to intel_display, mostly
  drm/i915/fbc: s/_intel_fbc_cfb_stride()/intel_fbc_plane_cfb_stride()/
  drm/i915/fbc: Extract intel_fbc_max_plane_size()
  drm/i915/fbc: Extract intel_fbc_max_surface_size()
  drm/i915/fbc:
    s/intel_fbc_hw_tracking_covers_screen()/intel_fbc_surface_size_ok()/
  drm/i915/fbc: Adjust g4x+ platform checks
  drm/i915/fbc: Extract _intel_fbc_cfb_stride()
  drm/i915/fbc: s/lines/height/
  drm/i915/fbc: Reoder CFB max height platform checks
  drm/i915/fbc: Extract intel_fbc_max_cfb_height()
  drm/i915/fbc: Extract _intel_fbc_cfb_size()
  drm/i915/fbc: Extract intel_fbc_cfb_cpp()
  drm/i915/fbc: Introduce intel_fbc_preferred_cfb_size()
  drm/xe/fbdev: Fix BIOS FB vs.s stolen size checke
  drm/i915/fbdev: Extract intel_fbdev_fb_prefer_stolen()
  drm/xe/fbdev: Extract intel_fbdev_fb_prefer_stolen()
  drm/xe/fbdev: Use the same logic for fbdev stolen takever and fresh
    allocation
  drm/i915/fbdev: Adjust fbdev stolen mem usage heuristic
  drm/xe/fbdev: Adjust fbdev stolen mem usage heuristic

 .../drm/i915/display/intel_display_debugfs.c  |   4 +-
 .../drm/i915/display/intel_display_driver.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      | 564 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_fbc.h      |  14 +-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c |  23 +-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |   5 +-
 .../drm/i915/display/intel_fifo_underrun.c    |   2 +-
 .../drm/i915/display/intel_modeset_setup.c    |   2 +-
 .../drm/i915/display/intel_plane_initial.c    |  10 +-
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   |  22 +-
 drivers/gpu/drm/xe/display/xe_plane_initial.c |   8 +-
 11 files changed, 389 insertions(+), 269 deletions(-)

-- 
2.44.2

