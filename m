Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 828964A8BBD
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 19:38:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2802D10E975;
	Thu,  3 Feb 2022 18:38:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 296E510E975
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 18:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643913508; x=1675449508;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Q0nubjF2BXBgzkGbrM5s4ZcRTghe7tZogEzGo/xcXxQ=;
 b=Nb94PfiVqjF3a7qo9x6tDzXQ5jBE+Do451Twz0/1YmHEZBqND1iRM2Qs
 YeixYwO5upV3rGoj2qgZ6cKZftFDcmtIpSngdT/GCbf3clTJK4kiiutT/
 Nwg60zk81j+Vp6USL9jXIoFcyGMmreUN0/GrQkMTKdEYim2d+aMIIn/iL
 8eNc892zxxWVFO5+V8JHGc55ahIFnOTmEoyRw6I8icHRVGZSkVUOk4DSj
 LeYvptDYmSjB+uxNz5IPZazr0lpJPvOV7HonjecbUMt4R5DLoWvbELaGv
 fznZkgj/CrOxrR7TR/Hrq6IwQL1kO0kbRUoEawCvwrAyEKyYqkh47Qh8H Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="311527512"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="311527512"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 10:38:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="538863812"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 03 Feb 2022 10:38:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Feb 2022 20:38:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Feb 2022 20:38:13 +0200
Message-Id: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/10] drm/i915: Use a bitmask for bigjoiner
 state tracking
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

An attempt at making the bigjoiner state tracking both smaller and
more flexible for future needs. All we really need is a bitmask of
pipes.

I also managed to fix a bunch of issues with the state copy ...
I think. It's a bit hard to know for sure since I don't have
a DSC capably  displauy so I'm just forcing the driver to spew
out DSC but obviously I can't actually see anything on the screen.

The next thing that needs fixing is the actual modset sequence
since it's still kinda terrible. Also not flexible enough for
those future needs. I'm thinking we need suck all the logic into
the encoder hooks, and let those iterate over the pipes at
approprite times. But that's for another time.

Pushed the lot here if someone wants to consume it easier:
git://github.com/vsyrjala/linux.git bigjoiner_pipe_bitmask

Ville Syrjälä (10):
  drm/i915: Flag crtc scaling_filter changes as modeset
  drm/i915: Fix bigjoiner state copy fails
  drm/i915: Remove weird code from intel_atomic_check_bigjoiner()
  drm/i915: Clean up the bigjoiner state copy logic
  drm/i915: Nuke some dead code
  drm/i915: Introduce intel_crtc_is_bigjoiner_{slave,master}()
  drm/i915: Convert for_each_intel_crtc_mask() to take a pipe mask
    instead
  drm/i915: Use for_each_intel_crtc_in_pipe_mask() more
  drm/i915: Return both master and slave pipes from
    enabled_bigjoiner_pipes()
  drm/i915: Change bigjoiner state tracking to use the pipe bitmask

 drivers/gpu/drm/i915/display/intel_atomic.c   |  11 -
 drivers/gpu/drm/i915/display/intel_atomic.h   |   2 -
 .../gpu/drm/i915/display/intel_atomic_plane.c |   9 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  14 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 522 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_display.h  |   8 +-
 .../drm/i915/display/intel_display_debugfs.c  |   7 +-
 .../drm/i915/display/intel_display_types.h    |   7 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  34 +-
 .../drm/i915/display/intel_plane_initial.c    |   7 -
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  47 +-
 drivers/gpu/drm/i915/display/intel_vdsc.h     |   1 -
 12 files changed, 385 insertions(+), 284 deletions(-)

-- 
2.34.1

