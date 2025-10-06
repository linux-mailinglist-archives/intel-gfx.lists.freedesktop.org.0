Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FB9BBEB98
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 18:46:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B626210E0A4;
	Mon,  6 Oct 2025 16:46:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DZymKgMe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A314010E315;
 Mon,  6 Oct 2025 16:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759769213; x=1791305213;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T2P0uYwVEu4YPiXRajfRVR5bUbUmfapj2CDDRe80kJY=;
 b=DZymKgMeFLf+VQoucYyw7EHFIH3q96Bep/yFedVtMoRBEQAYv8106jbH
 TmqTRff5H8oGiBGxtusc1c3F9psx9F8ChVq3i4dd0+ezIw87wBIlK9Erx
 4rjPUcY2pAWKw84EPocwsy8NCVyJDll7SIUbPyeN3ju8Bei0R+Wggno0y
 N/rmEBE7oQSQB9hjB5Hk98GOrFCe0YXTIV2ojy1zoWikfeAUpGmZ6/sLP
 E9njpLud3FAEyaoJHGGwwcw9QSnqjB9/1Uzf2j6xu+UngJF2szN2d26hu
 YgTucaI03OpLr3V7zWWJYdpksYiAxhzd0Wvf1/IWOFYk3+uVUCfGUlKQu g==;
X-CSE-ConnectionGUID: IQiMJ3IeRhG4+me1wCXepg==
X-CSE-MsgGUID: syoEguNPTUuBOFZyEKELIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="65795634"
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="65795634"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 09:46:52 -0700
X-CSE-ConnectionGUID: 12ePn9+UTdOSV8j7d65xKQ==
X-CSE-MsgGUID: KmlTCh8ASdeHNxj1E/iXmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="179861461"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.80])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 09:46:51 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/10] drm/i915/frontbuffer: Fix the intel_frontbuffer
 lifetime mess
Date: Mon,  6 Oct 2025 19:46:38 +0300
Message-ID: <20251006164648.6761-1-ville.syrjala@linux.intel.com>
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

The attempted piecemeal intel_frontbuffer split between
i915 and xe is not good. Redo it with a bigger shovel.

Ville Syrjälä (10):
  drm/i915/overlay: Drop the DIRTYFB flush
  drm/i915/overlay: Switchj to intel_frontbuffer_flip()
  drm/i915/frontbuffer: Nuke intel_frontbuffer_flip_{prepare,complete}()
  drm/i915/frontbuffer: Turn intel_bo_flush_if_display() into a
    frontbuffer operation
  drm/i915/frontbuffer: Handle the dirtyfb cache flush inside
    intel_frontbuffer_flush()
  drm/i915/frontbuffef: Split fb_tracking.lock into two
  drm/i915/frontbuffer: Extract intel_frontbuffer_ref()
  drm/i915/frontbuffer: Add intel_frontbuffer::display
  drm/i915/frontbuffer: Fix intel_frontbuffer lifetime handling
  drm/i915/gem:
    s/i915_gem_object_get_frontbuffer/i915_gem_object_frontbuffer_lookup/

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_bo.c       |  40 +++--
 drivers/gpu/drm/i915/display/intel_bo.h       |   8 +-
 .../gpu/drm/i915/display/intel_display_core.h |   5 +-
 .../drm/i915/display/intel_display_debugfs.c  |   3 -
 drivers/gpu/drm/i915/display/intel_fb.c       |   1 -
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 149 +++---------------
 .../gpu/drm/i915/display/intel_frontbuffer.h  |  18 +--
 drivers/gpu/drm/i915/display/intel_overlay.c  |   6 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  16 +-
 .../i915/gem/i915_gem_object_frontbuffer.c    | 103 ++++++++++++
 .../i915/gem/i915_gem_object_frontbuffer.h    |  56 +++----
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_gem.c               |   2 +
 drivers/gpu/drm/i915/i915_vma.c               |   8 +-
 .../gpu/drm/xe/compat-i915-headers/i915_vma.h |   2 -
 drivers/gpu/drm/xe/display/intel_bo.c         |  60 +++++--
 18 files changed, 258 insertions(+), 224 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c

-- 
2.49.1

