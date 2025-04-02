Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBBDA793BB
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 19:22:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A77BB10E86D;
	Wed,  2 Apr 2025 17:22:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R7P+hBG+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62CDB10E869;
 Wed,  2 Apr 2025 17:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743614564; x=1775150564;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A/6O7aUIsKiZ819lHwLVvFj2YtCseTfgcD+EGngCdoo=;
 b=R7P+hBG+c2CH/2MDjpHgATCcSL+eFDduaQJZSo4Xw7IUH6L5iefgZzeC
 eaibYBEeON7qqVDiuf+PER4bBzbYpgT7SYnYFqid0TqhSf3oqqKyUhoQ3
 HPwmEnbvMSixmOo/9DTaSzGExVfAG3NhDbc8kZP/X343x2ifrcfSurd/G
 NzyM8P/5nh8CMt2nFwii52R7DHZ2YG1sNrK+JYJL1OYXlOOlfzH7ZDlt8
 lT4Zd+ie2dmei1s38Ms0B1//VL3/YbNgii2KDhRVTB9Z6FmfmWU2QosBC
 6mVpoRsSE5b+jH3cjrPPzaZuXMT8DpQah2vcOimFIkCImc0hfplK8fp20 Q==;
X-CSE-ConnectionGUID: G2D530CmTyqe/4QOHR43aA==
X-CSE-MsgGUID: 34IWJjfbRfW7c8N3IscZNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="44891138"
X-IronPort-AV: E=Sophos;i="6.15,182,1739865600"; d="scan'208";a="44891138"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 10:22:43 -0700
X-CSE-ConnectionGUID: VguoylK3TgWb1eG8Rqeueg==
X-CSE-MsgGUID: tgPn6Xj5SrWMz6YQoaQ3EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,182,1739865600"; d="scan'208";a="131964898"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 02 Apr 2025 10:22:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Apr 2025 20:22:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 0/6] drm/i915: Precompute plane SURF address/etc.
Date: Wed,  2 Apr 2025 20:22:34 +0300
Message-ID: <20250402172240.9275-1-ville.syrjala@linux.intel.com>
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

v2: Drop the plane_state->ctl stuff for now, and also
    drop the tracepoint changes as well sinec they depend
    on it

Ville Syrjälä (6):
  drm/i915: Precompute plane SURF address
  drm/i915: Nuke intel_plane_ggtt_offset()
  drm/i915: Move the intel_dpt_offset() check into intel_plane_pin_fb()
  drm/i915: Use i915_vma_offset() in intel_dpt_offset()
  drm/i915: Remove unused dpt_total_entries()
  drm/i915: Don't pass crtc_state to foo_plane_ctl() & co.

 drivers/gpu/drm/i915/display/i9xx_plane.c     | 58 +++++++++----------
 drivers/gpu/drm/i915/display/i9xx_plane.h     |  1 +
 .../gpu/drm/i915/display/intel_atomic_plane.c |  5 --
 .../gpu/drm/i915/display/intel_atomic_plane.h |  2 -
 drivers/gpu/drm/i915/display/intel_cursor.c   | 28 ++++-----
 .../drm/i915/display/intel_display_types.h    |  5 +-
 drivers/gpu/drm/i915/display/intel_dpt.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   | 34 +++++++----
 .../drm/i915/display/intel_plane_initial.c    |  2 +
 drivers/gpu/drm/i915/display/intel_sprite.c   | 51 +++++++---------
 .../drm/i915/display/skl_universal_plane.c    | 58 ++++++++-----------
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |  5 ++
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  4 ++
 13 files changed, 123 insertions(+), 134 deletions(-)

-- 
2.45.3

