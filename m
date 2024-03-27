Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F68788ECE1
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 18:45:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B908910FEBF;
	Wed, 27 Mar 2024 17:45:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="InNbS0tM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3220510FEBF
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 17:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711561548; x=1743097548;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ddZD2Rc+eaZ1ucGArC/omfaW/8IZ1NA7pWDr8f6Eqwg=;
 b=InNbS0tMlZEnrNcI6Qqe4BuiORzqxh9eRtiYY63o0h/Z4nYQ02BmfRMY
 rm3E2L4bxwgZVz2tWnrOxqF8yBkqFne697Si69nuUqNpjTKsG0lbig1mO
 8skU+MSBA2EApewptdWnIa6uGzQ2nJzKVYo9FRtapRjU3es+N+HHZqUhQ
 9sVY8p/y9ieQnlArnNf6Rosgz0LJFpyI1IGH7043NjkOeAt8ggbyowyxb
 F3FMBz1HwFAjZqlzmIHSsD2xFrchmP5giWuLjV8ibo+1ScERJfHLfokc3
 ejVkpEpwYOTnm7vgh1eWVmV44R92obTDlxAD93zuA5hHlwej2Sj4l5Yg3 w==;
X-CSE-ConnectionGUID: 2jUKKCJ3Q1GQQM/qy7Czcw==
X-CSE-MsgGUID: VcD4OqadQTSGtRPRAkrH0w==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6795390"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6795390"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 10:45:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="827785903"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="827785903"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 27 Mar 2024 10:45:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Mar 2024 19:45:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/13] drm/i915: Implemnt vblank sycnhronized mbus joining
 changes
Date: Wed, 27 Mar 2024 19:45:31 +0200
Message-ID: <20240327174544.983-1-ville.syrjala@linux.intel.com>
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

Get rid of the full modeset requirement for changing mbus
joining. Things got quite a bit more complicated than
originally envisioned due to the dynamic cdclk/mdclk ratio.
Sadly we have to do a fairly careful dance between the
dbuf and cdclk code to make sure everything is programmed
in the correct sequence.

Stan did the grunt work, but the sequence vs. cdclk
updates was still not right so I finished that part.
I also reorganized the code quite a bit to make the 
resulting patches more legible. And I tossed in more
debugs and whatnot so we can actually observe what
it's doing.

Quickly smoke tested on tgl and adl, and things seem
pretty decent. Unfortunately I don't have a LNL on me
right now so I haven't fully tested the mdclk/cdclk ratio
changes on real hw, but I did hack my adl to pretend that
the ratio changes with cdclk and double checked that the
logs look sensible for all the combinations of cdclk
increase/decrease and mbus join enable/disable.
So should work (tm) on real hw too.

Stanislav Lisovskiy (3):
  drm/i915: Loop over all active pipes in intel_mbus_dbox_update
  drm/i915: Use old mbus_join value when increasing CDCLK
  drm/i915: Implement vblank synchronized MBUS join changes

Ville Syrjälä (10):
  drm/i915/cdclk: Fix CDCLK programming order when pipes are active
  drm/i915/cdclk: Fix voltage_level programming edge case
  drm/i915/cdclk: Drop tgl/dg2 cdclk bump hacks
  drm/i915/cdclk: Indicate whether CDCLK change happens during pre or
    post plane update
  drm/i915: Relocate intel_mbus_dbox_update()
  drm/i915: Extract intel_dbuf_mbus_join_update()
  drm/i915: Extract intel_dbuf_mdclk_min_tracker_update()
  drm/i915: Add debugs for mbus joining and dbuf ratio programming
  drm/i915: Use a plain old int for the cdclk/mdclk ratio
  drm/i915: Optimize out redundant dbuf slice updates

 drivers/gpu/drm/i915/display/intel_cdclk.c   |  85 +++--
 drivers/gpu/drm/i915/display/intel_cdclk.h   |   8 +-
 drivers/gpu/drm/i915/display/intel_display.c |   5 +-
 drivers/gpu/drm/i915/display/skl_watermark.c | 344 ++++++++++++-------
 drivers/gpu/drm/i915/display/skl_watermark.h |   9 +-
 5 files changed, 271 insertions(+), 180 deletions(-)

-- 
2.43.2

