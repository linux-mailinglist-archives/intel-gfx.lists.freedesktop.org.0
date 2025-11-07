Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4FFC4139E
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 19:11:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ADF110EB69;
	Fri,  7 Nov 2025 18:11:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DH5guWTx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E43A10EB68;
 Fri,  7 Nov 2025 18:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762539092; x=1794075092;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yi8XtzjDiSG8Piu6iwaFno6G3eMf55dn7IApEXFhz2w=;
 b=DH5guWTxZXEX21cRPLgJrDLtjnlEat7G3goXqvA4Pj9ZhDHD7pldEi0k
 0/CV4EzEfUubXYkBGrrjCsiC9tFxgV6sjOUZugNPAlXU+BAI5hL5z8RSw
 j9S69zQStcktzOwEWc9lPOjmPrH7u5J33juvcCxco31Cf5pXAix1yGcWu
 P5NbGoVvzSIq2491AqMXJoMx2emrNV67V8OS7pW/PQ4QorxF6wY+O76fI
 KfXdBGBX13K9Kc3FYkY14dvMrB1g3rvgwBL2AbIdxQnbIxJN8QvBMYUkr
 w0sis7l+OROY0UDDJiOBzl7kSPa3D9Esg4bhVE4NCHimu3sMW4YtnzvKm g==;
X-CSE-ConnectionGUID: iT8qHmn+QC+c64r9Evp1zA==
X-CSE-MsgGUID: X8sENP1SQtWqENSb2a1tdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="64574526"
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="64574526"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:11:31 -0800
X-CSE-ConnectionGUID: xowdHl0ZRmSTFTfE29E9Lg==
X-CSE-MsgGUID: gOvYHWMYRc6Riq28s+eD3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="218754598"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.106])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:11:30 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/9] drm/i915: Further drm_get_format_info() stuff
Date: Fri,  7 Nov 2025 20:11:17 +0200
Message-ID: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Finish eliminating the expensive extra format info lookups.

And since I ended up strafing the cursor code in the end I included
a few additional claenups there.

Ville Syrjälä (9):
  drm/i915: Introduce intel_dumb_fb_max_stride()
  drm/i915: Pass drm_format_info into plane->max_stride()
  drm/i915: Populate fb->format accurately in BIOS FB readout
  drm/i915: Nuke intel_plane_config.tiling
  drm/i915/fb: Init 'ret' in each error branch in
    intel_framebuffer_init()
  drm/i915/wm: Use drm_get_format_info() in SKL+ cursor DDB allocation
  drm/i915: Use mode_config->cursor_width for cursor DDB allocation
  drm/i915/cursor: Extract intel_cursor_mode_config_init()
  drm/i915/cursor: Initialize 845 vs 865 cursor size separately

 drivers/gpu/drm/i915/display/i9xx_plane.c     | 32 ++++++++-----------
 drivers/gpu/drm/i915/display/i9xx_plane.h     |  5 +--
 drivers/gpu/drm/i915/display/intel_cursor.c   | 28 +++++++++++++---
 drivers/gpu/drm/i915/display/intel_cursor.h   |  2 ++
 drivers/gpu/drm/i915/display/intel_display.c  | 24 ++++++++++----
 drivers/gpu/drm/i915/display/intel_display.h  |  8 +++--
 .../drm/i915/display/intel_display_driver.c   | 13 ++------
 .../drm/i915/display/intel_display_types.h    |  5 ++-
 drivers/gpu/drm/i915/display/intel_fb.c       | 23 +++++++------
 .../drm/i915/display/intel_plane_initial.c    | 11 ++++---
 drivers/gpu/drm/i915/display/intel_sprite.c   | 10 +++---
 .../drm/i915/display/skl_universal_plane.c    | 22 ++++++-------
 drivers/gpu/drm/i915/display/skl_watermark.c  | 15 ++++++---
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |  4 +--
 14 files changed, 118 insertions(+), 84 deletions(-)

-- 
2.49.1

