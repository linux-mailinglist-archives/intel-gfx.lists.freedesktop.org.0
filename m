Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 389C14B7454
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 19:32:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A29610E511;
	Tue, 15 Feb 2022 18:32:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C41210E4E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 18:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644949931; x=1676485931;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fya1CVpiCUA00uJyUf7nOp9k3CCJS5YagtWXe8IfZ1o=;
 b=KEVlslgHqC9uwOs2DDRB3+b2gsFSCZea/Ieqq9APesa1p4JbGJFd8XK2
 71sloeaD5N4eTkLJCuEpFgLNS6ObxVL6ShoAU2Lh7rxIWc3n3FY+4cmW1
 tul2awQkh/8r93QNYPeqvDS5zv2UekCxxRgE4H+PSyLj6XXOJ+wqwPiGI
 JAUlRvZ78On+5kWg/lJ0icBQEleZMZocmbpxLR3FuCuDWhMol93Yy1XUN
 EnRiXg4AjIbBjvJyd2w+BRoQEyFBkkfjvSzsVPstRAS7uKD1H2LKLZfRY
 oDlXcmkZrW9MRRsEGwQDKeGzdEepo3sUGc0p7zt4h/ISsQ4G+xBaU0YU7 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="313701046"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="313701046"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 10:32:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="587849408"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 15 Feb 2022 10:32:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Feb 2022 20:32:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 20:31:56 +0200
Message-Id: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/12] drm/i915: Move bigjoiner refactoring
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

This is an attempt at more or less finish the bigjoiner
state computation/readout refactoring.

Stuff that should now be in decent shape:
- cursor should appear in the right spot on all pipes
- plane clipping/etc. independent of number of joined pipes
  thanks to the PIPESRC drm_rect
- the PIPESRC drm_rect should prove helpful for the seam
  elimination stuff too in the future, as well as for some
  other planned scaler fixes/cleanups
- bigjoiner vs. MSO timings should be properly handled now

What is likely still busted:
- panel fitter. The state computation needs to be redesigned fully
  for bigjoiner. Semi-related to the aforementioned scaler work.
- the modeset sequence is still a huge mess. That will have
  to be the next major refactoring target I think.

Pushed the lot here:
git://github.com/vsyrjala/linux.git pipesrc_rect_3

Ville Syrjälä (12):
  drm/i915: Fix cursor coordinates on bigjoiner slave
  drm/i915: Remove nop bigjoiner state copy
  drm/i915: Rename variables in intel_crtc_compute_config()
  drm/i915: Extract intel_splitter_adjust_timings()
  drm/i915: Extract intel_bigjoiner_adjust_timings()
  drm/i915: Extract intel_crtc_compute_pipe_src()
  drm/i915: Extract intel_crtc_compute_pipe_mode()
  drm/i915: Fix MSO vs. bigjoiner timings confusion
  drm/i915: Start tracking PIPESRC as a drm_rect
  drm/i915: Eliminate bigjoiner boolean
  drm/i915: Use bigjoiner_pipes more
  drm/i915: Make the PIPESC rect relative to the entire bigjoiner area

 .../gpu/drm/i915/display/intel_atomic_plane.c |  20 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |   7 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 350 +++++++++++-------
 .../drm/i915/display/intel_display_debugfs.c  |   6 +-
 .../drm/i915/display/intel_display_types.h    |   5 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  13 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |  22 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |  70 ++--
 drivers/gpu/drm/i915/display/intel_vdsc.c     |   8 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     |  12 +-
 .../drm/i915/display/skl_universal_plane.c    |   4 +-
 11 files changed, 294 insertions(+), 223 deletions(-)

-- 
2.34.1

