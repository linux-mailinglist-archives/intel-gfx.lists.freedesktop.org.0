Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 770A997A5E4
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 18:24:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 118BB10E1BB;
	Mon, 16 Sep 2024 16:24:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mX9FNKb9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CF5510E1BB
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 16:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726503857; x=1758039857;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=d3Q5Or9mYXkW84xLpCWH4ZMoj838/LjGSPsQDmWhsTM=;
 b=mX9FNKb9bV9gyLd8HeRCIHDI5MHv6Cnc5v6nneYpB7OnhCyD2DgR7K4Q
 atDDHXhTqIEfdSqG2R1xp6tNtml6M6YA8eytJPiKfoSfP8B7cdFUyn+CL
 FJadb1p7x9HP+OeFwVQjmrZ4rPaTuM9WLGbYzkjheEZbZZU742Jkd+h3O
 JwWMs+lwmsZjQHqI9i0xcu3v1WZETNCze+0IjeWpVO/3D06WQmqHejSoh
 iX82PAk67XbCk0GCXFoIEvOXpKeFBCZcVy9m9044iJeigMgEkXgeVhkMk
 PEjDlqz5lOCtR0WcfXT8o3jdTURSJTeZaB15TOn9WF6Xy7KhwSqHctUJ/ g==;
X-CSE-ConnectionGUID: lpyXzVoSS8qP8yyWAj+RcQ==
X-CSE-MsgGUID: cgqVQB9+RNenwe0s82Ha9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="42811713"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="42811713"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 09:24:16 -0700
X-CSE-ConnectionGUID: lT/+XUlUSleEfhsAznloeQ==
X-CSE-MsgGUID: 6bk2R2ezQLyMu2f5Ppc6zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="69029936"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Sep 2024 09:24:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Sep 2024 19:24:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/7] drm/i915: Some wm/cxsr cleanups
Date: Mon, 16 Sep 2024 19:24:06 +0300
Message-ID: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
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

Start sorting out the pre-skl wm/cxsr code a bit. My plan is:
- move platform specific stuff out from intel_atomic_plane.c
- make cxsr actually robust (currently it has a bunch of poorly
  handled corner cases)
- probably some other fixes and cleanups

This series doesn't achieve those goals yet, because
I decided to limit it to non-functional changes, but
it's a start.

Also included the sprite uapi header cleanup here
to save ci a bit of grief.

Ville Syrjälä (7):
  drm/i915: Remove leftover intel_sprite_set_colorkey_ioctl() prototype
  drm/i915: Combine .compute_{pipe,intermediate}_wm() into one
  drm/i915: Extract ilk_must_disable_lp_wm()
  drm/i915: Clean up intel_wm_need_update()
  drm/i915: Move the dodgy pre-g4x wm stuff into i9xx_wm
  drm/i915: s/disable_lp_wm/disable_cxsr/
  drm/i915: Rename variables in ilk_intermedidate_wm()

 drivers/gpu/drm/i915/display/i9xx_wm.c        | 168 +++++++++++++++---
 drivers/gpu/drm/i915/display/i9xx_wm.h        |   4 +-
 drivers/gpu/drm/i915/display/intel_atomic.c   |   1 -
 .../gpu/drm/i915/display/intel_atomic_plane.c | 133 ++++++--------
 drivers/gpu/drm/i915/display/intel_display.c  |  21 +--
 .../gpu/drm/i915/display/intel_display_core.h |   6 +-
 .../drm/i915/display/intel_display_types.h    |   3 -
 drivers/gpu/drm/i915/display/intel_sprite.h   |   3 -
 drivers/gpu/drm/i915/display/intel_wm.c       |  24 +--
 drivers/gpu/drm/i915/display/intel_wm.h       |   6 +-
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 11 files changed, 221 insertions(+), 150 deletions(-)

-- 
2.44.2

