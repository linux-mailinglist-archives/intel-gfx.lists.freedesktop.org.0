Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F04F9E0484
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 15:14:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B89010E74C;
	Mon,  2 Dec 2024 14:14:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mz9zcfvU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F96910E74C
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2024 14:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733148868; x=1764684868;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FrSy4LarLaGhGzxLZOaX1Wb/HHVojq79eD+DGM4Mejo=;
 b=mz9zcfvUBcWmKuD37WcIvCfjsAnIlU91mzRui00PRMKR37ExbHsUDwxU
 QP+VqJ4QD+7Bbvg3qSiwbbKhBhOh2BxDCTkdo9Uy0049SsX15RGUaC+e7
 8gapjr1W8vDiB3SI7hK7EtYE5LZj+BrGykZ3IEzL0dOSPRklCpo994Pro
 jbG22Ck7+VyT3dEQjMlXE1y6cfiwyjYeEqCoR7dn75ac0zoFqy6XiiSFo
 YX7uZp6xkLFrFWfI0T61p2Bm6vn7YPiije/n76NrT4cz2FU02MLohxHHa
 l2/G14qO5qemcXE1N1LtQiZtPSXfCQeKuoMIEnVirRpzCL3xotE9mHgsp Q==;
X-CSE-ConnectionGUID: jBEWVqliR3S0hXo6UzSLdw==
X-CSE-MsgGUID: +EyniFwtR5O8TROk/Xmksw==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="55807224"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="55807224"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 06:14:27 -0800
X-CSE-ConnectionGUID: Lkq2PditTZutWqjSvuK9Gw==
X-CSE-MsgGUID: m52uxK4YTiSxHUNt0k5JkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="93287715"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Dec 2024 06:14:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Dec 2024 16:14:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 0/9] drm/i915: Async flip + compression,
 and some plane cleanups
Date: Mon,  2 Dec 2024 16:14:15 +0200
Message-ID: <20241202141424.21446-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Enable async flips with compressed buffers on icl+, disable
the VT-d scanout workarounds for TGL+, and follow up with
some cleanups to make the code less messy.

v2: Rebase + some bspec references addded

Ville Syrjälä (9):
  drm/i915: Allow async flips with render compression on TGL+
  drm/i915: Allow async flips with compression on ICL
  drm/i915: Introduce plane->can_async_flip()
  drm/i915: Use plane->can_async_flip() for alignment exceptions
  drm/i915: Reuse vlv_primary_min_alignment() for sprites as well
  drm/i915: Disable scanout VT-d workaround for TGL+
  drm/i915: Nuke ADL pre-production Wa_22011186057
  drm/i915: Relocate xe AUX hack
  drm/i915: Carve up skl_get_plane_caps()

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  64 +++---
 drivers/gpu/drm/i915/display/i9xx_plane.h     |   4 +
 .../gpu/drm/i915/display/intel_atomic_plane.c |   5 +
 .../gpu/drm/i915/display/intel_atomic_plane.h |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  44 +---
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_sprite.c   |  17 +-
 .../drm/i915/display/skl_universal_plane.c    | 212 +++++++++++++-----
 .../drm/i915/display/skl_universal_plane.h    |   3 +
 9 files changed, 225 insertions(+), 126 deletions(-)

-- 
2.45.2

