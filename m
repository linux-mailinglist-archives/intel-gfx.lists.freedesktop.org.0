Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF4DCB91FE
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:28:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0C6E10E581;
	Fri, 12 Dec 2025 15:28:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nyHGPa7R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F29B410E350;
 Fri, 12 Dec 2025 15:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765553332; x=1797089332;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PE/Qsnhnxrd70ID36048cNhAqSYYEbsqSjN6I4dvUmU=;
 b=nyHGPa7RmHvyb+2vBlfvMO65FO3emt6KZaFYhu1/Nw0iPHT3huobzwkm
 TYR8Y/OF4ZWkecEyhBF0g8bWrlcPdVa0WRqp9SKYDgChXPXDyK+UYe6Ld
 tWUgYdVaFeEB5Zmdh33oS5sDxOf9QWzzGtB2pMnHTn9uA39tBbpiLTohk
 gCtumr7esHxh6G+avCo1HuN7qSG/4H91Z4LvtlTIbmhr32ADgfK+JXh+9
 a79Pg5i+erpsjIYkYUmplApshWuDTrZNLEq5JJmRU+1GOlaT3zF7IM2r2
 w0lKKZRKvLPj4PevEYF5LvOZ5lSbb8Nvo1p2udg2Px9mE/WSDFovN7ESH A==;
X-CSE-ConnectionGUID: VNOj/mtBRpejoqZH/vUyRg==
X-CSE-MsgGUID: s5R/pFQdTtCuEweBxYQ+IA==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="67716367"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="67716367"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:28:52 -0800
X-CSE-ConnectionGUID: Wn9n8Mp0QjGchPSAK98BrA==
X-CSE-MsgGUID: 5hxR8iM8RM2BzGroJtsGnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="197935023"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.152])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:28:50 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/13] drm/i915: Some DSB/flipq stuff
Date: Fri, 12 Dec 2025 17:28:34 +0200
Message-ID: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
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

Some fixed and cleanups to the DSB/flipq stuff. The main
thing is consolidating the use_dsb/flipq booleans into
a more sensibler commit type enum.

Ville Syrjälä (13):
  drm/i915/flipq: Don't initialize flip queue on pre-LNL
  drm/i915: Give up on DSB/flip queue if we fail to allocate the color
    DSB buffer
  drm/i915: Clear crtc_state->use_flipq initially
  drm/i915: Warn about use_flip==true in MMIO commit codepaths
  drm/i915: Refine vblank evasion DSB check
  drm/i915: Make intel_crtc_needs_vblank_work() easier on the eye
  drm/i915: Extract intel_dsb_supported()
  drm/i915: Use intel_dsb_supported() to determine 'use_dsb'
  drm/i915: Extract commit_dsb_max_cmds()
  drm/i915: Introduce enum intel_commit_type
  drm/i915: Carve intel_atomic_commit_type() up a bit
  drm/i915/dsb: Add tracepoints for DSB commit
  drm/i915/dsb: Add tracepoints for flip queue

 drivers/gpu/drm/i915/display/intel_atomic.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_color.c    |   7 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  13 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 135 +++++++++++-------
 .../drm/i915/display/intel_display_trace.h    | 111 ++++++++++++++
 .../drm/i915/display/intel_display_types.h    |   8 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |   3 +
 drivers/gpu/drm/i915/display/intel_dsb.c      |  18 ++-
 drivers/gpu/drm/i915/display/intel_dsb.h      |   1 +
 drivers/gpu/drm/i915/display/intel_flipq.c    |  10 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |   6 +-
 11 files changed, 245 insertions(+), 69 deletions(-)

-- 
2.51.2

