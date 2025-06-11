Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C02AD5B1A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 17:52:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E7F310E6C5;
	Wed, 11 Jun 2025 15:52:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RGtGj54n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD8C310E6AA;
 Wed, 11 Jun 2025 15:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749657165; x=1781193165;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UZCbcin5lzT5UzjOIa6IdC/3+XpaTidBtIhBE7ruxHk=;
 b=RGtGj54n5rKAYvyScFR9q/KrlFlyXS3/lmy2jctB0t0/o79O+jHVqExY
 NTHv3hwBdt1PevBa1Q/6mH/+707WQOLNE9ugNT2FBeVJBR+d8yWflMHb8
 wVV6ZObJqBNoMPQ8bEIk7gk5LCz+yaxj7hs61kjz7rTyzfzQPr8iGg4xj
 K3dJFgTmMLR7Yo6s7truydZ+aMOlpKolrQEOM8RY98w8L5QpqX46IOTuS
 RgZK23ltHnuufy50Fita8k02qj8krP4t7Bnq3+UcxMqj2AODmxNSIydDF
 zA+I2TKqjaIsCcJ6ALMe6/n4VY70c/tsMidZAUML8A0P6IhTui7AXUGU0 A==;
X-CSE-ConnectionGUID: pZKQfWWVTsixY2r0nKdtWg==
X-CSE-MsgGUID: joMJnKBLTRCyPN7HPYZy+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="62419101"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="62419101"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 08:52:44 -0700
X-CSE-ConnectionGUID: duWU2WTISYm/TmsqgWtzcQ==
X-CSE-MsgGUID: Wc1sF+/USI++8gQDFM3CxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152507309"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.24])
 by orviesa005.jf.intel.com with SMTP; 11 Jun 2025 08:52:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Jun 2025 18:52:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/9] drm/i915/dmc: Deal with loss of pipe DMC state
Date: Wed, 11 Jun 2025 18:52:32 +0300
Message-ID: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
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

Attempt to deal with the fact that pipe DMCs can sometimes
lose their state.

Ville Syrjälä (9):
  drm/i915/dmc: Limit pipe DMC clock gating w/a to just ADL/DG2/MTL
  drm/i915/dmc: Parametrize MTL_PIPEDMC_GATING_DIS
  drm/i915/dmc: Shuffle code around
  drm/i915/dmc: Extract dmc_load_program()
  drm/i915/dmc: Reload pipe DMC state on TGL when enabling pipe A
  drm/i915/dmc: Reload pipe DMC MMIO registers for pipe C/D on PTL+
  drm/i915/dmc: Assert DMC is loaded harder
  drm/i915/dmc: Pass crtc_state to intel_dmc_{enable,disable}_pipe()
  drm/i915/dmc: Do not enable the pipe DMC on TGL when PSR is possible

 drivers/gpu/drm/i915/display/intel_display.c  |  16 +-
 .../i915/display/intel_display_power_well.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      | 336 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_dmc.h      |   7 +-
 .../drm/i915/display/intel_modeset_setup.c    |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               |   3 +-
 6 files changed, 234 insertions(+), 134 deletions(-)

-- 
2.49.0

