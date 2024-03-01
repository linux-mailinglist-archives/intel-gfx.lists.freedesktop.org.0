Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C60F86E35C
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 15:36:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6614110F07C;
	Fri,  1 Mar 2024 14:36:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jvC2JKFK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 747D910F07C
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 14:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709303763; x=1740839763;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GHJbg9BTtVQFIjkGG7Jjtbt9xeCa2IGTp9zf+cS3xYs=;
 b=jvC2JKFKjoZt3fBaenHuH5Wd7RAt/66e82BfMmmrQ2l3geaRo2LAbDJC
 gdcWjr72CPm99nQ31yl6r9vR5Z+32fssdXDmfhgFLeMR76eW4Bym8jkJs
 KPeMCpiUbHm+9+GcqysAUvs2gk3ZthFHnHARohQFriWA4zsWC7Ixg6044
 YI2K4gnUj7ktmhc+DHkt3ub+uwbbnHyoGTPKUn5hic+u2S4ry0vm69Q/Y
 if0OYapJGyn8KZAAChCArzDdKd5bQQ2vt4t+BJWiOTzjx9znzlehAZYFq
 vztGSwmqTW/h8qOm2wkSeXu/M1QzHy7ewWIQs/utRJOjG1ufRU+Xwg2f+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="15275827"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="15275827"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 06:36:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="827771973"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="827771973"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 01 Mar 2024 06:36:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Mar 2024 16:36:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Subject: [PATCH 0/8] drm/i915: Bigjoiner stuff
Date: Fri,  1 Mar 2024 16:35:52 +0200
Message-ID: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
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

Here's some prep work I cooked up while thinking how to handle
the bigjoiner stuff. I coverted the .crtc_disable() side of things
to follow the new approach of iterating the joined pipes at a lower
level. Looks pretty reasonable to me in the end. The enable side
is somewhat more messy so I left that as an excercise for the reader.

TODO: need CI to actually check that things work

Ville Syrjälä (8):
  drm/i915: Rename the crtc/crtc_states in the top level DDI hooks/etc
  drm/i915: Introduce intel_crtc_joined_pipe_mask()
  drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
  drm/i915: Utilize intel_crtc_joined_pipe_mask() more
  drm/i915: Precompute disable_pipes bitmask in
    intel_commit_modeset_disables()
  drm/i915: Disable planes more atomically during modesets
  drm/i915: Simplify intel_old_crtc_state_disables() calling convention
  drm/i915: Handle joined pipes inside hsw_crtc_disable()

 drivers/gpu/drm/i915/display/intel_ddi.c     | 357 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_display.c | 192 +++++-----
 drivers/gpu/drm/i915/display/intel_display.h |   1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  91 +++--
 4 files changed, 336 insertions(+), 305 deletions(-)

-- 
2.43.0

