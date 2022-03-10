Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD944D3E60
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 01:48:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7EC810E518;
	Thu, 10 Mar 2022 00:48:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AD2810E518
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 00:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646873286; x=1678409286;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=b/vZjlvXR3xP3ZSdq5+mL6RGzyyxvHGvMl+9YIJUyyI=;
 b=Fn6mh0mCyH10cmiJWmw7qNSrwlc0l5YtvSFTimhLfjWge8i4tWpZxhvp
 vWorLPyOqHwgRecgwgxPCcRpzSWycsCZXNPOxTd231xHkM85+OjmDO/cQ
 xme0LQxIiinG9K1iqbjob5XgE1PagkaP8t9xcc9PdF3opQx/kDOHZREjx
 kaKQQFoo4LGh0oC4j/DcjuAu31fglFRpxAt7oi5qvwzbKURm+jeZ7m8gk
 T792PTiUA/c5RjHaGJKrAt40Q0toAoQOJC11nquXDj3C5sOeKrtHphCsk
 kcNkoJrkaauW+3QYacAhVsfXR41HJQpqimiMKdkyctTQuOVGciVxKPrwJ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="242570595"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="242570595"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 16:48:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="513761182"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 09 Mar 2022 16:48:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 02:48:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 02:47:49 +0200
Message-Id: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/13] drm/i915: DRRS fixes/cleanups and start
 of static DRRS
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

Fix/clean up the DRRS code sufficiently that I feel
comfortable enabling it on all ilk+ CPU eDP ports.
PCH ports still need a bit of work.

The other thing I slapped on top is the beginnings of
static DRRS support (ie. actually changing the refresh
rate based on what the user asked). This initial version
is still limited to just two refresh rates though. We'll
have to expand on that further to also allow switching
the other supported refresh rates.

For the moment the user initiated refresh rate change
will cause a full modeset. But I think we should be able
to skip that if the hardware supports seamless DRRS, at least
on BDW+ with its double buffered M/N registers. Some extra
work will likely be needed for the modeset sequence to make
sure the DRRS frontbuffer stuff won't interfere with the
fastset reprogramming, and to make sure the reprogrmming
happens atomically with all the plane updates. The biggest
sticking point will probably be the fastset state check/copy
stuff. As is that is pretty much a big hack when it comes to
anything dotclock related and so probably needs some real
surgery.

Ville Syrjälä (13):
  drm/i915: Fix up some DRRS type checks
  drm/i915: Constify intel_drrs_init() args
  drm/i915: Pimp DRRS debugs
  drm/i915: Read DRRS MSA timing delay from VBT
  drm/i915: Program MSA timing delay on ilk/snb/ivb
  drm/i915: Polish drrs type enum
  drm/i915: Clean up DRRS refresh rate enum
  drm/i915: Rename PIPECONF refresh select bits
  drm/i915: Stash DRRS state under intel_crtc
  drm/i915: Move DRRS enable/disable higher up
  drm/i915: Enable eDP DRRS on ilk/snb port A
  drm/i915: Introduce intel_panel_{fixed,downclock}_mode()
  drm/i915: Implement static DRRS

 drivers/gpu/drm/i915/display/intel_bios.c     |  13 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |   2 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   7 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  14 +-
 .../drm/i915/display/intel_display_debugfs.c  | 125 ++----
 .../drm/i915/display/intel_display_types.h    |  15 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  22 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     | 358 ++++++++----------
 drivers/gpu/drm/i915/display/intel_drrs.h     |  22 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |  36 +-
 drivers/gpu/drm/i915/display/intel_panel.h    |   8 +-
 drivers/gpu/drm/i915/i915_drv.h               |  36 +-
 drivers/gpu/drm/i915/i915_reg.h               |   6 +-
 13 files changed, 301 insertions(+), 363 deletions(-)

-- 
2.34.1

