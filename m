Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5049DF902
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 03:43:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FA3E10E086;
	Mon,  2 Dec 2024 02:43:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dUB60xYd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C16C410E086;
 Mon,  2 Dec 2024 02:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733107409; x=1764643409;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sIZ9mACuwNpvD5It4CNMjXaaC+PpW6i7cNH8F6gn6Ko=;
 b=dUB60xYdIST1A+cbQ547uRs/955BY+wUToTLHM/aHnn7plYjX0RK/rxv
 HxHw+xP6xX9qpU59Y5pbnxf32JfaQRK+NNvxPaDSFSXOT11fsZdpyZmoB
 kkH6mCTfKhbNQZVSQw1UVwfKaOcFWqy3Ve8ShC+D+DRwtbulr4c9fz2MP
 ww7k1fGfkXXXnBHQTqcJkj9q9Dh2r4GPUzfRB4Dexv7h6ZqbpcYkjK4V9
 GmN5vT/bqCxqS/hzgDFaIpOudzgtE0A2QhVDVbES0MCgjztQnyyAXU5X6
 IcQi+PAae8BP9RoEI6U7/0hcgKsQoRNojOZqFT7HpxcHTB6+4LaPIUCi4 A==;
X-CSE-ConnectionGUID: QPDEV/klQ4uVKaRB+dBg/Q==
X-CSE-MsgGUID: S2ltHFgETBerBJ+rwDyjwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="44634837"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="44634837"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2024 18:43:29 -0800
X-CSE-ConnectionGUID: aMWUL3vpRhOfBderjopbsQ==
X-CSE-MsgGUID: nvzDYq8TQh2mZKyoJ2O44Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="92878163"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 01 Dec 2024 18:43:27 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Subject: [PATCH v5 0/6] Add AS_SDP to fastset
Date: Mon,  2 Dec 2024 08:15:34 +0530
Message-ID: <20241202024540.2578856-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
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

vrr enable disable should happen with fastset, where
adptive sync SDP should not block it to full modeset.

Ankit Nautiyal (1):
  drm/i915/dp: fix the Adaptive sync Operation mode for SDP

Mitul Golani (5):
  drm/i915/vrr: Add crtc_state dump for vrr.vsync params
  drm/i915/vrr: Compute vrr.vsync_{start, end} during full modeset
  drm/i915/dp: Compute as_sdp.vtotal based on vrr timings
  drm/i915/dp: Compute as_sdp based on if vrr possible
  drm/i915/display: Move as sdp params change to fastset

 .../drm/i915/display/intel_crtc_state_dump.c  |  4 ++-
 drivers/gpu/drm/i915/display/intel_display.c  |  5 ++--
 drivers/gpu/drm/i915/display/intel_dp.c       |  8 +++---
 drivers/gpu/drm/i915/display/intel_vrr.c      | 25 ++++++++-----------
 4 files changed, 19 insertions(+), 23 deletions(-)

-- 
2.46.0

