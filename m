Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4ED2C3BD36
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 15:43:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39B6110E903;
	Thu,  6 Nov 2025 14:43:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VUwQ5HGu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 513D710E903;
 Thu,  6 Nov 2025 14:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762440201; x=1793976201;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Dlk4laUYOEU9vGtAM+oKls4N66j4K3RBM9WGXtWI4xA=;
 b=VUwQ5HGuoPA5frPASGQj2E0bUetaYp6tif2+0AlxoN/Ql9rtjQcjqWvW
 lWLWNcYNz0SPirBUa2zE4AvAZ8X36b7zBEij0UupS66ZpUvAlBwr0TfLp
 NkcBe0Ls2dUYfprdqYG3z9Kb8Lq8Na8gFomThtfTe8q24DmnqNeKILtFb
 DF7KZXD7EshqdI5U9pNNnqNKRdfFoTHsSbdHzS23t9EQfPrVtpPT7gO6D
 yC3W2oB7Cixsflp1vveb7jpaLDaUMuFdPf4FO7zI0ef3xnlyEcnRP+0R0
 w/vyIJKDtWHtzgR4048MmN0kXL5ZuVspx8XaZ1/fSOrEFUNOsFnkVAQGn Q==;
X-CSE-ConnectionGUID: I0kVEZ/8RByHy65V/Co4HQ==
X-CSE-MsgGUID: jpEV1TjGSLun3ooONtFqEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="74867827"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="74867827"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 06:43:21 -0800
X-CSE-ConnectionGUID: 5/n1kNavQhe1cWjPM8ZuZQ==
X-CSE-MsgGUID: WkB7Ppo8TGO0cF7EqnsKiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="192049287"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 06:43:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	tursulin@ursulin.net
Subject: [PATCH 0/5] drm/i915/rps: call rps functions through the parent
 interface
Date: Thu,  6 Nov 2025 16:43:08 +0200
Message-ID: <cover.1762440096.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
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

Drop another direct display dependency on i915.

This series superceeds [1].

[1] https://lore.kernel.org/r/20251023074536.850332-1-jani.nikula@intel.com

Jani Nikula (5):
  drm/i915/rps: store struct dma_fence in struct wait_rps_boost
  drm/i915/rps: call RPS functions via the parent interface
  drm/i915/rps: postpone i915 fence check to boost
  drm/i915/rps: make fence priority setting part of the rps interface
  drm/xe/rps: build RPS as part of xe

 .../gpu/drm/i915/display/intel_display_rps.c  | 37 +++++++-------
 .../gpu/drm/i915/display/intel_display_rps.h  | 21 --------
 drivers/gpu/drm/i915/display/intel_plane.c    |  6 +--
 drivers/gpu/drm/i915/gt/intel_rps.c           | 48 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rps.h           |  2 +
 drivers/gpu/drm/i915/i915_driver.c            |  2 +
 drivers/gpu/drm/xe/Makefile                   |  1 +
 .../compat-i915-headers/gem/i915_gem_object.h | 13 -----
 include/drm/intel/display_parent_interface.h  | 11 +++++
 9 files changed, 83 insertions(+), 58 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h

-- 
2.47.3

