Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0FBAB9B1D
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 13:34:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7431610EA57;
	Fri, 16 May 2025 11:34:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ErvJ/HlJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD84110EA54;
 Fri, 16 May 2025 11:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747395252; x=1778931252;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4+AWur2McAVh3q7BoCsFpT35CIOst3HzLWhNaAWBaFw=;
 b=ErvJ/HlJzOUJiV7wJpGqRnsuiWxCpMTK+8uLVOREboa2OGHZu+LrOQGG
 6ZE6sU6kZr0qOyCxykt0B5ku137HQ99SXYQxWNmrRTq1dNmz+K0f/abeK
 By7lfAbvSf/PyUluwq2sv/N83wKzeTriu6jSd3vI/I8jdxnBaQ/CwREfU
 /GGrpW23kMBDZ28qedJiSwfaLCamg8aFG83t+LExfJq9zBtqvf6rkKbbp
 Sfc7skBgqNeB4Lf0w/YWlebY403Sa3NW92YsDBhLYQ5MhqdO0OXqqZ13z
 GlcoKlkbLIoH1pAU4ZY+8gVbDPcdPxX2NB7NDSRQc7LwjsLrtXhFhfmD1 g==;
X-CSE-ConnectionGUID: kqke17z0Q/2ShIf7LPuNZw==
X-CSE-MsgGUID: yZzq9eN6TTKQkqtRbmouag==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="49349797"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49349797"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 04:34:12 -0700
X-CSE-ConnectionGUID: GbDk0C9gSguxy2P1gV4v9g==
X-CSE-MsgGUID: L1zcIPK5ShKRKuXvJgwCpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143779493"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.161])
 by orviesa005.jf.intel.com with SMTP; 16 May 2025 04:34:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 May 2025 14:34:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/12] drm/i915/flipq: Rough flip queue implementation
Date: Fri, 16 May 2025 14:33:56 +0300
Message-ID: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
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

Initial stab at implementing the PIPEDMC based flip queue.
Briefly smoke tested on LNL, not much more.

Still has quite a few warts..

Ville Syrjälä (12):
  drm/i915/dsb: Extract intel_dsb_ins_align()
  drm/i915/dsb: Use intel_dsb_ins_align() in intel_dsb_align_tail()
  drm/i915/dsb: Extract assert_dsb_tail_is_aligned()
  drm/i915/dsb: Extract intel_dsb_{head,tail}()
  drm/i915/dsb: Provide intel_dsb_head() and intel_dsb_size()
  drm/i915/dmc: Define flip queue related PIPEDMC registers
  drm/i915/flipq: Provide the nuts and bolts code for flip queue
  drm/i915/flipq: Implement flipq queue based commit path
  drm/i915/flipq: Implement Wa_18034343758
  drm/i915/flipq: Implement Wa_16018781658 for LNL-A0
  drm/i915/flipq: Add intel_flipq_dump()
  drm/i915/flipq: Enable flipq by default for testing

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  69 +++-
 .../drm/i915/display/intel_display_driver.c   |   3 +
 .../drm/i915/display/intel_display_params.c   |   3 +
 .../drm/i915/display/intel_display_params.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |  20 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |  90 ++++-
 drivers/gpu/drm/i915/display/intel_dmc.h      |  11 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 172 +++++++-
 drivers/gpu/drm/i915/display/intel_dsb.c      |  63 ++-
 drivers/gpu/drm/i915/display/intel_dsb.h      |   2 +
 drivers/gpu/drm/i915/display/intel_flipq.c    | 374 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_flipq.h    |  35 ++
 drivers/gpu/drm/xe/Makefile                   |   1 +
 14 files changed, 811 insertions(+), 34 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_flipq.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_flipq.h

-- 
2.49.0

