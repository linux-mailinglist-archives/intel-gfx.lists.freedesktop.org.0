Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4769BB092E9
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 19:14:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8675810E85C;
	Thu, 17 Jul 2025 17:13:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BsA0yRhj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E663B10E173;
 Thu, 17 Jul 2025 17:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752772437; x=1784308437;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZZf3DzNgBe47mWOgH9h7rVKXAkCr8z3qtNGrjjFErak=;
 b=BsA0yRhj9Mnc29S2OCw5/hp0iQIZJmCpWitvQkBz9OgfBKSQZ5NxFepl
 dz59N5nYrSsdSzA2uKZgOpc1qTlvlxDPG9nJcAtWmtBgCkoTln2EPaoFw
 qxQ/vZK6HzD+2MGQM3Yw/QwtXt+qfiERPfUhz6mIga2Js9ZZ9+vQetDL7
 FBzQgtn79RfpMpjG3ISQBucDit62AvmNfYrvmhzXHS/jZpVCOlv+b6QP+
 1esVqBFSg9g0ySmIRyX/ba4pU9Xb79EG95cbnhr8yxWC48DbeU6XorPbE
 pniLz8xLQckVb7azzdG2egypJZBsWh8Y5H/Kdg6DurDxb3vaoqhrVw4Qc Q==;
X-CSE-ConnectionGUID: 5zvQ2PiHR8Wbj7Pf6zj9xw==
X-CSE-MsgGUID: MyEzyV2iTp24TLaJXHV5ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="58729015"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="58729015"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 10:13:56 -0700
X-CSE-ConnectionGUID: nLXq2VJASpyEA5GQEmOwLQ==
X-CSE-MsgGUID: biQcP8BVQMyOziY9Gag75A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="163488685"
Received: from agladkov-desk.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.179])
 by orviesa005.jf.intel.com with SMTP; 17 Jul 2025 10:13:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Jul 2025 20:13:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v3 0/6] drm/i915: Precompute plane SURF address/etc.
Date: Thu, 17 Jul 2025 20:13:46 +0300
Message-ID: <20250717171353.23090-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
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
v3: Rebase

Ville Syrjälä (6):
  drm/i915: Precompute plane SURF address
  drm/i915: Nuke intel_plane_ggtt_offset()
  drm/i915: Move the intel_dpt_offset() check into intel_plane_pin_fb()
  drm/i915: Use i915_vma_offset() in intel_dpt_offset()
  drm/i915: Remove unused dpt_total_entries()
  drm/i915: Don't pass crtc_state to foo_plane_ctl() & co.

 drivers/gpu/drm/i915/display/i9xx_plane.c     | 58 +++++++++---------
 drivers/gpu/drm/i915/display/i9xx_plane.h     |  1 +
 drivers/gpu/drm/i915/display/intel_cursor.c   | 28 ++++-----
 .../drm/i915/display/intel_display_types.h    |  5 +-
 drivers/gpu/drm/i915/display/intel_dpt.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   | 35 +++++++----
 drivers/gpu/drm/i915/display/intel_plane.c    |  6 --
 drivers/gpu/drm/i915/display/intel_plane.h    |  1 -
 .../drm/i915/display/intel_plane_initial.c    |  2 +
 drivers/gpu/drm/i915/display/intel_sprite.c   | 51 +++++++---------
 .../drm/i915/display/skl_universal_plane.c    | 60 ++++++++-----------
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |  4 ++
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  4 ++
 13 files changed, 124 insertions(+), 135 deletions(-)

-- 
2.49.0

