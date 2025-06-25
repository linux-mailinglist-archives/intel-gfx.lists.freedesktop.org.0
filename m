Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF71AE7F5B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 12:32:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E10110E215;
	Wed, 25 Jun 2025 10:32:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AJBqWoMw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE7D710E215;
 Wed, 25 Jun 2025 10:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750847561; x=1782383561;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wkbxhr2VSQXengJBpPCguLpYVuKhOqXaRZ2UPh8hBsg=;
 b=AJBqWoMwrWqxVxr+ROszOjcxNUn+XnjRuCJLp/czU1aSxiSad1+jenEO
 oMi4HvitB7JByI2fLqsERCbdeAaka/rtXuL+t9nTrUqeLuECufJLRXBYr
 PiDNyc44bJOTrzpI2oVXn4NwohFNN/M4ChGsJ1JR9LlvYUBGLWiTmBu7f
 6zByx0OghrJNcrkJuMKThOavwZzru04qpXfFVCAprm5IcX2BLlJK1jYPH
 bQ3hZjty84U88zRChS3IO6CUARUJ+AY4lmHDy3YHh7A2SnA5mGsfCQvVJ
 CJOfyhb5VuitiZhCkbUHyHfQ5zaHCip4WQNW5l8//6g9Dksozf9Ac/Rwn A==;
X-CSE-ConnectionGUID: /SsEWSGQSCatOUjGloRiRA==
X-CSE-MsgGUID: Mc7Rx43oSmSvcbiXECkD+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="53080403"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="53080403"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:32:41 -0700
X-CSE-ConnectionGUID: HlZD6Xn2QziK7KHmvyZqJA==
X-CSE-MsgGUID: b0ru89mfS1C0WBAztTKAzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="152476396"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:32:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [CI v2 00/16] drm/i915/display: make all global state opaque
Date: Wed, 25 Jun 2025 13:32:18 +0300
Message-Id: <cover.1750847509.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

v2 of [1], primarily for CI.

[1] https://lore.kernel.org/r/cover.1749730224.git.jani.nikula@intel.com

Jani Nikula (16):
  drm/i915/wm: abstract intel_dbuf_pmdemand_needs_update()
  drm/i915/wm: add more accessors to dbuf state
  drm/i915/wm: make struct intel_dbuf_state opaque type
  drm/i915/bw: abstract intel_bw_pmdemand_needs_update()
  drm/i915/bw: relocate intel_can_enable_sagv() and rename to
    intel_bw_can_enable_sagv()
  drm/i915: move icl_sagv_{pre,post}_plane_update() to intel_bw.c
  drm/i915/bw: abstract intel_bw_qgv_point_peakbw()
  drm/i915/bw: make struct intel_bw_state opaque
  drm/i915/cdclk: abstract intel_cdclk_logical()
  drm/i915/cdclk: abstract intel_cdclk_min_cdclk()
  drm/i915/cdclk: abstract intel_cdclk_bw_min_cdclk()
  drm/i915/cdclk: abstract intel_cdclk_pmdemand_needs_update()
  drm/i915/cdclk: abstract intel_cdclk_force_min_cdclk()
  drm/i915/cdclk: abstract intel_cdclk_read_hw()
  drm/i915/cdclk: abstract intel_cdclk_actual() and
    intel_cdclk_actual_voltage_level()
  drm/i915/cdclk: make struct intel_cdclk_state opaque

 drivers/gpu/drm/i915/display/hsw_ips.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_bw.c       | 153 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_bw.h       |  53 ++----
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  93 +++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  50 ++----
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_driver.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_plane.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  41 ++---
 drivers/gpu/drm/i915/display/skl_watermark.c  | 134 +++++++--------
 drivers/gpu/drm/i915/display/skl_watermark.h  |  33 +---
 13 files changed, 336 insertions(+), 241 deletions(-)

-- 
2.39.5

