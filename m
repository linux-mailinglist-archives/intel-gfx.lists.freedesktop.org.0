Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E87BDE078
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 12:35:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1647810E036;
	Wed, 15 Oct 2025 10:35:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mqiHiyyp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7834B10E036;
 Wed, 15 Oct 2025 10:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760524549; x=1792060549;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pyRWpTx+28daC29UG018S9EhdB7zpr3ZhIcda/aayBQ=;
 b=mqiHiyypsLiuLraBWh+ft9ysBB5l1aZlIjyO/nyU/ltKOSFEjyi/U4jh
 Lkq0BQgSvXknzrTO+BKI/q2CJJMPukjYr5wozqBYSEcRmxl8L2CMMStIy
 JIlhfBziDHPoSLRrzNJmexW0eB8eMpU1yG6nJPyS6KIF1ZT7EkTvXp0XL
 XxhUAuIuj1yBmqaly+9WTPAApaDesZlu7hy6DermkbTmBdrDxq4bhMxR1
 /q+/8t1D07bhWctvRHiLWe09ppJ6rOryY6gnJXovuC7MC+CYXiolRhNmE
 +ImjyfrJ9JlinZJ35mEX1wNo1z3tsFti4sce9l50H6qir4qj0aeFX0Fvf Q==;
X-CSE-ConnectionGUID: WvMv0R3yR6+iU/mOV2JReQ==
X-CSE-MsgGUID: pgvs7qrCTry1+b/NyMKckQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="50262599"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="50262599"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 03:35:48 -0700
X-CSE-ConnectionGUID: a0L2ifNuQjycgPddEnY3SQ==
X-CSE-MsgGUID: S+bklzjcR3eLwUV5s0e1Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="205842517"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 03:35:46 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/6] Optimize vrr.guardband
Date: Wed, 15 Oct 2025 15:52:35 +0530
Message-ID: <20251015102241.1797828-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

Instead of setting vrr.guardband to vblank, use optimal guardband that
works for most of the cases. This will help in avoiding need of change
in guardband and fix the LRR feature that needs seamless switching to
a lower refresh rate.

-Patch [1-2] are squashed from series [1] and [2] and are not meant for
 review.
-Patch [3-6] are patches to check the guardband for prefill+PSR+SDP
 latencies and to use a static optimized guardband.

[1] "Preparatory patches for guardband optimization"
https://patchwork.freedesktop.org/series/155661/#rev7

[2] "Introduce helpers for prefill latency calculations"
https://patchwork.freedesktop.org/series/155629/#rev2

Ankit Nautiyal (5):
  [NOT FOR REVIEW] drm/i915/vrr: prep patches for guardband optimization
    squashed
  drm/i915/dp: Add SDP latency computation helper
  drm/i915/psr: Add function to compute max link-wake latency
  drm/i915/display: Add guardband check for feature latencies
  drm/i915/vrr: Use the min static optimized guardband

Ville Syrjälä (1):
  [NOT FOR REVIEW] drm/i915/prefill: Prefill latency calculations series
    squashed

 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c   |  80 +++++-
 drivers/gpu/drm/i915/display/intel_cdclk.h   |   6 +
 drivers/gpu/drm/i915/display/intel_ddi.c     |   3 +
 drivers/gpu/drm/i915/display/intel_display.c |  82 +++++-
 drivers/gpu/drm/i915/display/intel_dp.c      |  42 +++
 drivers/gpu/drm/i915/display/intel_dp.h      |   4 +
 drivers/gpu/drm/i915/display/intel_psr.c     | 257 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_psr.h     |   3 +
 drivers/gpu/drm/i915/display/intel_vblank.c  |  10 +
 drivers/gpu/drm/i915/display/intel_vblank.h  |   2 +
 drivers/gpu/drm/i915/display/intel_vdsc.c    |   8 +
 drivers/gpu/drm/i915/display/intel_vdsc.h    |   1 +
 drivers/gpu/drm/i915/display/intel_vrr.c     |  90 ++++++-
 drivers/gpu/drm/i915/display/intel_vrr.h     |   2 +-
 drivers/gpu/drm/i915/display/skl_prefill.c   | 157 +++++++++++
 drivers/gpu/drm/i915/display/skl_prefill.h   |  46 ++++
 drivers/gpu/drm/i915/display/skl_scaler.c    | 198 ++++++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.h    |  15 ++
 drivers/gpu/drm/i915/display/skl_watermark.c | 156 +++++------
 drivers/gpu/drm/i915/display/skl_watermark.h |   3 +
 drivers/gpu/drm/xe/Makefile                  |   1 +
 22 files changed, 983 insertions(+), 184 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/skl_prefill.c
 create mode 100644 drivers/gpu/drm/i915/display/skl_prefill.h

-- 
2.45.2

