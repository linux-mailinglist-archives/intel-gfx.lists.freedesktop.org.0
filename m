Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B63D91EE21
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 07:07:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E904110E165;
	Tue,  2 Jul 2024 05:07:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xz7mJ8+w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E92510E10A
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2024 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719896853; x=1751432853;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OEE8fuDYAl+pb0HLORFktI0W2+r7swGrRNIaV5jNGCM=;
 b=Xz7mJ8+wQBC46rASqgxpe89F3vOT8nw4jX7jdluxKEAWP12J+kMIRjrw
 BoahwL867Pvv69Zn9GSctTCsdu2Qg7Lld63ojD2Kc7lcaXSVGpLSQCgYJ
 ioOdNs7M3AN2rkOqEtYjD+OmSJFpWkwRL+fiDAnZ8RiSvwNiu7TBj5ov6
 pxXL8kBsT+clGQpqWgllmv6MPjmGACXMr6tFkh3zHaM1LcbrfRQEXZUgT
 72s0uhMf+AXfuGZk/C1BThoVABrQeGTtK/HDVA/YnDLe2vC48mOWHe35z
 MRE61j85tBr49TfpMDb9S2KhC5YVTtsPscaDFI8UiI/cFR8QKyC8JD+mt g==;
X-CSE-ConnectionGUID: u6jD0riaRfq/BbBLFQWLtA==
X-CSE-MsgGUID: 1ffoGsK4SrGDMwy4GW8q5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="17004687"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="17004687"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 22:07:31 -0700
X-CSE-ConnectionGUID: hTB4BVvBRuqvrhUSplf9lw==
X-CSE-MsgGUID: jO0t0DL+TrqtBHRwgfd7BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="45666026"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 01 Jul 2024 22:07:29 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	imre.deak@intel.com
Subject: [PATCH 0/2] Cache SDP caps during connector detection
Date: Tue,  2 Jul 2024 10:37:53 +0530
Message-ID: <20240702050755.2091221-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
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

Cache connector caps during connector detection instead of reading
capabilities  each time during atomic commit.

Mitul Golani (2):
  drm/i915/display: Avoid reading as sdp caps during each atomic commit
  drm/i915/display: Cache Adaptive Sync SDP caps

 drivers/gpu/drm/i915/display/intel_alpm.c     |  2 +-
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 22 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h       |  1 -
 drivers/gpu/drm/i915/display/intel_vrr.c      |  3 +--
 5 files changed, 15 insertions(+), 14 deletions(-)

-- 
2.45.2

