Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7585C1C0AD8
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 01:08:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EF276E0E3;
	Thu, 30 Apr 2020 23:08:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FF626EA23
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 23:08:31 +0000 (UTC)
IronPort-SDR: Va40ELe5ZXBuZelIWQ3yCZVgQLZ6GAfwmIwZH33liG/vShiE7WKfm+c9P0A6MPq2L1fqcRcOJk
 +C6YWF9G+87w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 16:08:30 -0700
IronPort-SDR: gFBB84IZraXSr0u53Ls9GQVYuyrCnQ8J9JInG9W4WmUKfsVE4po4mQGtCNYcjFbat5A1MbQMC/
 wIe+t0rOjT0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="405581149"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga004.jf.intel.com with ESMTP; 30 Apr 2020 16:08:30 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 16:09:40 -0700
Message-Id: <20200430230951.2508-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 00/11] Rebased Big Joiner patch series for 8K
 2p1p
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This rebases the big joiner patch series from February:
https://patchwork.freedesktop.org/series/73014/
or from Maarten's internal tree:
https://patchwork.freedesktop.org/series/73014/

This especially needs a thorough review on Patch 10/11 due to
all the refactoring around commit_modeset_enables

Maarten Lankhorst (11):
  HAX to make DSC work on the icelake test system
  drm/i915: Remove hw.mode
  drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
  drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
  drm/i915: Try to make bigjoiner work in atomic check
  drm/i915: Enable big joiner support in enable and disable sequences.
  drm/i915: Make hardware readout work on i915.
  drm/i915: Link planes in a bigjoiner configuration, v3.
  drm/i915: Add bigjoiner aware plane clipping checks
  drm/i915: Add intel_update_bigjoiner handling.
  drm/i915: Add debugfs dumping for bigjoiner, v3.

 drivers/gpu/drm/drm_dp_helper.c               |    4 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |    2 -
 drivers/gpu/drm/i915/display/intel_atomic.c   |    9 +-
 drivers/gpu/drm/i915/display/intel_atomic.h   |    3 +-
 .../gpu/drm/i915/display/intel_atomic_plane.c |  112 +-
 .../gpu/drm/i915/display/intel_atomic_plane.h |    7 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   81 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 1070 +++++++++++++----
 drivers/gpu/drm/i915/display/intel_display.h  |   20 +-
 .../drm/i915/display/intel_display_debugfs.c  |   29 +-
 .../drm/i915/display/intel_display_types.h    |   32 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  141 ++-
 drivers/gpu/drm/i915/display/intel_dvo.c      |    2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   16 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |   46 +-
 drivers/gpu/drm/i915/display/intel_sprite.h   |    3 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  199 +--
 drivers/gpu/drm/i915/display/intel_vdsc.h     |    7 +-
 drivers/gpu/drm/i915/intel_pm.c               |   92 +-
 include/drm/drm_dp_helper.h                   |    1 +
 20 files changed, 1390 insertions(+), 486 deletions(-)

-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
