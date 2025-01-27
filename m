Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBEEA1DB2C
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 18:22:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE05C10E155;
	Mon, 27 Jan 2025 17:22:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n42x172F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD47410E155
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2025 17:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737998519; x=1769534519;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6kA1XwRIcbzVfuVZ7jbWnazp5eGN3Gt1ZCJDko5WZ8g=;
 b=n42x172F6SdyM97r4k2KhEsi70sgALGkhR9vSJ8FV82CzvcxIpwVEPkn
 Az9lXu7ZxCjvAilRNtb8P6AK2YJ50dRwR86E8orOvTaBSsubTBe5ma+Ax
 PPpQE9RYwHw17G1QA6v2piY1aNBw75zHZ91rWMcUHKP8qcAzA9EuM1ojk
 e+OGMVZmyNGsvsj+5KU58g20NKlWBHt66wdTv0JFelklnPYwcVmtcDSzM
 ih/zyIPizy9C2QdNOzSuAVzEdNDOmvchVtL8HrPwJ9EORjpb3jQuzpI+C
 51bq5oP7AhxEDQVKBm8i0yvjGnDvV00UlwhzGTE+URYXTDwL/+KfG19Jg A==;
X-CSE-ConnectionGUID: wR6bcpEZQ66XydySi01rPw==
X-CSE-MsgGUID: ZMjAXeo/TraU+tZK0zt8Cw==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38501375"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="38501375"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 09:21:59 -0800
X-CSE-ConnectionGUID: ZyGQdYDBQhaXcLGJKWyHvg==
X-CSE-MsgGUID: h4JZTDmzTdGW0Z+BVL1OHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="108610169"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Jan 2025 09:21:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Jan 2025 19:21:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/11] drm/i915: joiner and Y plane fixes and reorganization
Date: Mon, 27 Jan 2025 19:21:45 +0200
Message-ID: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
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

I wanted to reorganize the Y plane code, but then I
realized it still has real issued, espectially when it comes
to joiner usage. So fix the bugs first, then do the code
reorganization.

Ville Syrjälä (11):
  drm/i915: Make sure all planes in use by the joiner have their crtc
    included
  Revert "drm/i915: Fix NULL ptr deref by checking new_crtc_state"
  drm/i915: Rework joiner and Y plane dependency handling
  drm/i915: s/planar_slave/is_y_plane/
  drm/i915: Extract unlink_nv12_plane()
  drm/i915: Remove pointless visible check in unlink_nv12_plane()
  drm/i915: Extract link_nv12_planes()
  drm/i915: Rename the variables in icl_check_nv12_planes()
  drm/i915: Move icl+ nv12 plane register mangling into
    skl_universal_plane.c
  drm/i915: Relocate intel_atomic_check_planes()
  drm/i915: Pimp the Y plane selection debugs

 .../gpu/drm/i915/display/intel_atomic_plane.c | 301 +++++++++++++++++-
 .../gpu/drm/i915/display/intel_atomic_plane.h |   3 +
 drivers/gpu/drm/i915/display/intel_display.c  | 294 ++---------------
 drivers/gpu/drm/i915/display/intel_display.h  |   2 -
 .../drm/i915/display/intel_display_debugfs.c  |   6 +-
 .../drm/i915/display/intel_display_types.h    |  13 +-
 .../drm/i915/display/skl_universal_plane.c    |  35 +-
 .../drm/i915/display/skl_universal_plane.h    |   3 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |   4 +-
 9 files changed, 364 insertions(+), 297 deletions(-)

-- 
2.45.3

