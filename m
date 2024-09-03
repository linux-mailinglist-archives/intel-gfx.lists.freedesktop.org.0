Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6ED969FB8
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 16:03:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6953110E5B2;
	Tue,  3 Sep 2024 14:03:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uo4vdzY0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8FF310E5B2;
 Tue,  3 Sep 2024 14:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725372199; x=1756908199;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L7BHRdsqvdTTit46cv4dy4uC6MJ28i1wbFW/h+5coPQ=;
 b=Uo4vdzY09odpqzigepi9Qia6gI1gjJWvWaHvxkGrZD2HQb5YJOr14Ddr
 nALEQMNKO/6Z9xpIm+5n2noAZTkBtxn7Qm687N5Q81so9G2QxXfrld9Cf
 pO5u5I0xspXbmN71kl/r4gOdqeKbuIJNFjjH/jFKT3xIDBGde8wXCsndh
 wl28X1hkLzwkvb+5mKkohvNpV1p9giceoRHQ1D3V5N5RRsn4RD/A/MKwZ
 f8P1Y0ull7ZPX/SzKKALwJ2PsljczCh5dEWAKjc2elSYv2Ut1bFWniU0P
 f4Lzqig21+Wkouj2jsjkT+FltZ7q+036d+oyoqRUCrST+9ASt6lnxatkG g==;
X-CSE-ConnectionGUID: BHoPr4U9Rxmnbvayf0aXpg==
X-CSE-MsgGUID: sggzR+GnRIqgsMTK5efaSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="35363986"
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="35363986"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 07:03:18 -0700
X-CSE-ConnectionGUID: k0QEfZYES6+6pOyzYuilaA==
X-CSE-MsgGUID: I39EnarHTnC5QArJ0y8fQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="88164195"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 07:03:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/4] drm/i915/display: add snapshot capture/print infra
Date: Tue,  3 Sep 2024 17:02:56 +0300
Message-Id: <cover.1725372032.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add display capture/print infra to abstract it from i915 gpu error state
capture, and prepare for perhaps bolting it into xe devcoredump in the
future.

BR,
Jani.


Jani Nikula (4):
  drm/i915: dump display parameters captured in error state, not current
  drm/i915/display: add intel_display_snapshot abstraction
  drm/i915/display: move device info and params handling to snapshot
  drm/i915/display: move dmc snapshotting to new display snapshot

 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../drm/i915/display/intel_display_params.c   |  8 ++-
 .../drm/i915/display/intel_display_params.h   |  5 +-
 .../drm/i915/display/intel_display_snapshot.c | 72 +++++++++++++++++++
 .../drm/i915/display/intel_display_snapshot.h | 16 +++++
 drivers/gpu/drm/i915/display/intel_dmc.c      | 39 +++++++---
 drivers/gpu/drm/i915/display/intel_dmc.h      |  7 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  | 16 +++--
 drivers/gpu/drm/i915/display/intel_overlay.h  | 19 ++---
 drivers/gpu/drm/i915/i915_debugfs.c           |  2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         | 25 ++-----
 drivers/gpu/drm/i915/i915_gpu_error.h         | 11 +--
 12 files changed, 162 insertions(+), 59 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_snapshot.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_snapshot.h

-- 
2.39.2

