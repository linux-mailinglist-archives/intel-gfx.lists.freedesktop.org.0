Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF716552377
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 20:04:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 376BF10F1AC;
	Mon, 20 Jun 2022 18:03:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1874B10F12E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 18:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655748237; x=1687284237;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SQgQgA8ZD0JSxwz4cuzDroIDJTTh4vgrEsnMMCqYm5U=;
 b=BwEBOyniCnuFmwPKhd3M+8i7kXrjpUgfO/3XE3Dl1/81CKWIUbWiJauE
 gVyhAfEQpbtVR1APb/I2wDwyJ2loBgmrFogaaeT9TqO0T3Wv+2iFlvBq0
 gbhRpfz9RDJ4tJ1lAsnMj+xXNkgS+/nSm0E/z2BXRlrLyRRxWyZmojnOh
 /j4goL+lTLWLJL5k7mnJPC9Taem/KXtTCZVe8DrmFkahvHte349uzhQCL
 s+zVA4xsnb1Xg5wVLrKNRDiuf7cCmG/FHpBwfGYHLadjDWdRKM193i8rK
 89vWi8lI1oePRefQZDWcW//7K6xqP1f1KiiZS95D9KMTwR4sPsETuLyWa w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="260383833"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="260383833"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 11:03:56 -0700
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="643219506"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 11:03:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 21:03:49 +0300
Message-Id: <cover.1655748056.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/2] drm/i915: move display feature check macros
 out of i915_drv.h
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Started pondering about this based on [1]. Spread out single-use and
single-file-use HAS_*() macros, and move display macros to
display/intel_display_features.h.

Food for thought at least. Doesn't look too bad tbh.

BR,
Jani.


[1] https://lore.kernel.org/r/YrCoxUgSEuzl+Amp@intel.com

Jani Nikula (2):
  drm/i915/display: spread out HAS_*() feature macros
  drm/i915/display: add intel_display_features.h for feature check
    macros

 drivers/gpu/drm/i915/display/intel_bios.c     |  2 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +
 drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +
 .../drm/i915/display/intel_display_features.h | 37 ++++++++++++
 .../i915/display/intel_display_power_map.c    |  5 +-
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |  2 +
 drivers/gpu/drm/i915/display/intel_dsb.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  4 ++
 .../gpu/drm/i915/display/intel_lpe_audio.c    |  1 +
 drivers/gpu/drm/i915/display/intel_overlay.c  |  5 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  3 +
 drivers/gpu/drm/i915/i915_drv.h               | 60 -------------------
 drivers/gpu/drm/i915/i915_suspend.c           |  1 +
 drivers/gpu/drm/i915/intel_device_info.c      |  1 +
 drivers/gpu/drm/i915/intel_dram.c             |  1 +
 drivers/gpu/drm/i915/intel_pch.c              |  1 +
 drivers/gpu/drm/i915/intel_pm.c               |  4 ++
 18 files changed, 68 insertions(+), 66 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_features.h

-- 
2.30.2

