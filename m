Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C457FBDB084
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 21:18:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 202A510E686;
	Tue, 14 Oct 2025 19:18:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KzzXIy2B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C56E810E05F;
 Tue, 14 Oct 2025 19:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760469493; x=1792005493;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=31x8k8WMCi30LM2SkQL2wSqTM4MFSK+f7WnS/aCHDpQ=;
 b=KzzXIy2BL/q+klBeYb1KdFT/ShSwLMRXaAz6FSvj7J7d65qvHdcz/S/j
 GO/97/VsNm4dtA7QNhtaNvBX7BSfJVmHkANWLMTmn4hBfOWoNCvELf3C3
 vepuHRAtxQpUNeuGRQkTMeCJ/5voDw8MZ6edFvu+PSdvf0hZg1rPrxe6H
 cQKtSxlQqCuY0E9Djzkb4xDcFtIsiHETJ+nj8ZpkZYoptaBDTbOLnb7X9
 q3DhgvJujVxQmKRrvjXQgBrX7d/xQG9RwWDuquDbDPOEqRT/GWMa33xW3
 C093rPYGw7yVlHLSHmRXM6GQnhymcOy9xlyoVxP6L6O59R5Fierv1iuZ1 Q==;
X-CSE-ConnectionGUID: 8KuUFf6hRU6/dK3ABBulKA==
X-CSE-MsgGUID: 9GIwo487R1aJinsLR75oSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62549457"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62549457"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 12:18:13 -0700
X-CSE-ConnectionGUID: H75vLj1TT6GWfVpU0ajIsA==
X-CSE-MsgGUID: 95gG+ki1T/azMkX6fN8Ycw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,229,1754982000"; d="scan'208";a="181105439"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.227])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 12:18:11 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 0/9] drm/i915/prefill: Introduce helpers for prefill
 latency calculations
Date: Tue, 14 Oct 2025 22:17:59 +0300
Message-ID: <20251014191808.12326-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Introduce skl_prefill and various accompanying helpers to do
pipe prefill latency related stuff (vblank/guardband length
checks, and in the future reduced guardband length).

Still a bit rough in plaeces but hopefull good enough to
roll out.

v2: Always use worst case cdclk estimate for now
    Drop excessive debugs
    Fix missing <<16 for framestart_delay
    Use Ankit's intel_crtc_vblank_length()
    Some spit and polish here and there

Ankit Nautiyal (1):
  drm/i915/vblank: Add helper to get correct vblank length

Ville Syrjälä (8):
  drm/i915: Reject modes with linetime > 64 usec
  drm/i915/cdclk: Add prefill helpers for CDCLK
  drm/i915/cdclk: Add intel_cdclk_min_cdclk_for_prefill()
  drm/i915/dsc: Add prefill helper for DSC
  drm/i915/scaler: Add scaler prefill helpers
  drm/i915/wm: Add WM0 prefill helpers
  drm/i915/prefill: Introduce skl_prefill.c
  drm/i915/wm: Use skl_prefill

 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c   |  80 +++++++-
 drivers/gpu/drm/i915/display/intel_cdclk.h   |   6 +
 drivers/gpu/drm/i915/display/intel_display.c |   8 +
 drivers/gpu/drm/i915/display/intel_vblank.c  |  10 +
 drivers/gpu/drm/i915/display/intel_vblank.h  |   2 +
 drivers/gpu/drm/i915/display/intel_vdsc.c    |   8 +
 drivers/gpu/drm/i915/display/intel_vdsc.h    |   1 +
 drivers/gpu/drm/i915/display/skl_prefill.c   | 157 +++++++++++++++
 drivers/gpu/drm/i915/display/skl_prefill.h   |  46 +++++
 drivers/gpu/drm/i915/display/skl_scaler.c    | 198 +++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.h    |  15 ++
 drivers/gpu/drm/i915/display/skl_watermark.c | 176 +++++++----------
 drivers/gpu/drm/i915/display/skl_watermark.h |   3 +
 drivers/gpu/drm/xe/Makefile                  |   1 +
 15 files changed, 608 insertions(+), 104 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/skl_prefill.c
 create mode 100644 drivers/gpu/drm/i915/display/skl_prefill.h

-- 
2.49.1

