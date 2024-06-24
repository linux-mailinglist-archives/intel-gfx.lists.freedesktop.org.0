Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BA59156F3
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 21:10:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 639ED10E18C;
	Mon, 24 Jun 2024 19:10:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FLVLggZB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE2110E18C
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 19:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719256237; x=1750792237;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f+G5CKteQn0h1HbbEHis0qvk8m9evtAkFzwBRVWv6+I=;
 b=FLVLggZBN6fHf1T/W31JVg556sWKJmW22NlQE7LPL7yq7pulmNz2Cml+
 8mO6UnM983cUa1bn8kF379oMfRCl9+D9gASCNRHH9w40zZtxC5zcC5m+t
 qtqaPVDDLWk1fOhhGBGrT7W5363RO48H7ihswHj2U7FSeQNedoG907ZGt
 7nlvgkIANZjS8UjJJFojLA9KJQ6MJX5QyzfJD4bSZzk0D5dFbWwFkoC1A
 +a/+YLEhNeo9d+Rkkew5ndU3EHZlpBKd8uMwMdA3goHY5yLK/cnGVMAcP
 /8wVpVz3i7/LgYkBCgyy7ZnDHWnXD6Xac+YWye1dsUFf9ghzg07E8GNFt Q==;
X-CSE-ConnectionGUID: ciPOFl3JTie2rqOmCP/7Qw==
X-CSE-MsgGUID: UMdO2WO4RI+zRfmcYc1Vvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16374101"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16374101"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 12:10:35 -0700
X-CSE-ConnectionGUID: pNL/ArWHTKSxYpujjouibA==
X-CSE-MsgGUID: NYhc6KAZQxC/GW+As6LyRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43371905"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 12:10:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 22:10:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/14] drm/i915/dsb: Use chained DSBs for LUT programming
Date: Mon, 24 Jun 2024 22:10:18 +0300
Message-ID: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
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

Handle the DSB's DEwake shenanigans more elegantly
by chaining two DSBs together.

Ville Syrjälä (14):
  drm/i915: Calculate vblank delay more accurately
  drm/i915: Make vrr_{enabling,disabling}() usable outside
    intel_display.c
  drm/i915/dsb: Hook up DSB error interrupts
  drm/i915/dsb: Convert dewake_scanline to a hw scanline number earlier
  drm/i915/dsb: Shuffle code around
  drm/i915/dsb: Fix dewake scanline
  drm/i915/dsb: Account for VRR properly in DSB scanline stuff
  drm/i915/dsb: Precompute DSB_CHICKEN
  drm/i915/dsb: Introduce intel_dsb_wait_scanline_{in,out}()
  drm/i915/dsb: Introduce intel_dsb_chain()
  drm/i915/dsb: Allow intel_dsb_chain() to use DSB_WAIT_FOR_VBLANK
  drm/i915/dsb: Clear DSB_ENABLE_DEWAKE once the DSB is done
  drm/i915/dsb: s/dsb/dsb_color_vblank/
  drm/i915/dsb: Use chained DSBs for LUT programming

 drivers/gpu/drm/i915/display/intel_atomic.c   |   6 +-
 drivers/gpu/drm/i915/display/intel_color.c    |  56 ++-
 drivers/gpu/drm/i915/display/intel_display.c  |  29 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   3 +
 .../gpu/drm/i915/display/intel_display_irq.c  |  17 +
 .../drm/i915/display/intel_display_types.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      | 327 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dsb.h      |  16 +
 drivers/gpu/drm/i915/display/intel_vblank.c   |  14 +-
 drivers/gpu/drm/i915/display/intel_vblank.h   |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               |   4 +
 11 files changed, 401 insertions(+), 77 deletions(-)

-- 
2.44.2

