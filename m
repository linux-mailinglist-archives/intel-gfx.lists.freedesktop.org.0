Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9E2A78597
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 02:22:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C97DF10E693;
	Wed,  2 Apr 2025 00:22:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h3BqnFiD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD73C10E0D6;
 Wed,  2 Apr 2025 00:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743553340; x=1775089340;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Fk70NZapnGwaqRHmCuoO2rdd7XSUVHT6/gP0Zv6bfMA=;
 b=h3BqnFiDBTGB5+lDJlxVD0fOTxLTKiV6+KXS9Kuy3nbdF5lEfsMEElfG
 5obkJaPM+QYrty2wTRDn9SNU7Vm1KaY91qk3OmC2rbkoQaqSHl6KgZR6o
 3iQghZzSEIYDjwJfzV/96WTxg0Coci+UawsdoC8mjAh1lPybn2JPnAgp7
 fM320kpPxAMQpeCkbVebficM9TyoSeK04uI4erp++hy1nvSnriSE7TbbB
 2hqCsF0ngRAbi+8q0yr+r4j+6cut7R2Hi7efDCTPmHOIuVNPltsseSc06
 Bpmy5/ZPxCIoVwNoKxHJbg0NLMKkh2Vkmfr9dYRTD0vIAyMTuX18rYkIi A==;
X-CSE-ConnectionGUID: RPEat9g+Q1O8fg3oS3/rBA==
X-CSE-MsgGUID: CaCpn2EWTj+hHvAHuVIQdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="45021883"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="45021883"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 17:22:13 -0700
X-CSE-ConnectionGUID: eL3R8I/gSpWMq7Jik4o47A==
X-CSE-MsgGUID: v2apNeRDRfu9y/2VB8q8Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="131729569"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 01 Apr 2025 17:22:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Apr 2025 03:22:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/9] drm/i915: Precompute plane SURF address/etc.
Date: Wed,  2 Apr 2025 03:22:00 +0300
Message-ID: <20250402002209.24987-1-ville.syrjala@linux.intel.com>
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

Include a precomputed plane SURF address in the plane state,
so that all the vma stuff is contained in the *_fb_pin.c code.
Additionally we can also now easily include the SURF address in
some of the plane tracepoints to aid in eg. analyzing faults.

Ville Syrjälä (9):
  drm/i915: Precompute plane SURF address
  drm/i915: Nuke intel_plane_ggtt_offset()
  drm/i915: Move the intel_dpt_offset() check into intel_plane_pin_fb()
  drm/i915: Use i915_vma_offset() in intel_dpt_offset()
  drm/i915: Remove unused dpt_total_entries()
  drm/i915: Don't pass crtc_state to foo_plane_ctl() & co.
  drm/i915: Include crtc contributed bits in plane_state->ctl
  drm/i915: Add tracepoint for plane faults
  drm/i915: Include plane ctl/surf registers in the plane update_arm()
    tracepoint

 drivers/gpu/drm/i915/display/i9xx_plane.c     | 89 +++++++++----------
 drivers/gpu/drm/i915/display/i9xx_plane.h     |  1 +
 .../gpu/drm/i915/display/intel_atomic_plane.c |  7 +-
 .../gpu/drm/i915/display/intel_atomic_plane.h |  2 -
 drivers/gpu/drm/i915/display/intel_cursor.c   | 38 +++-----
 .../gpu/drm/i915/display/intel_display_irq.c  |  2 +
 .../drm/i915/display/intel_display_trace.h    | 61 +++++++++++--
 .../drm/i915/display/intel_display_types.h    |  5 +-
 drivers/gpu/drm/i915/display/intel_dpt.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   | 34 ++++---
 .../drm/i915/display/intel_plane_initial.c    |  2 +
 drivers/gpu/drm/i915/display/intel_sprite.c   | 51 +++++------
 .../drm/i915/display/skl_universal_plane.c    | 85 ++++++------------
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |  5 ++
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  4 +
 15 files changed, 204 insertions(+), 186 deletions(-)

-- 
2.45.3

