Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CB1BC647A
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 20:26:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34C7C10E885;
	Wed,  8 Oct 2025 18:26:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K0q4KS3u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAC7610E885;
 Wed,  8 Oct 2025 18:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759947963; x=1791483963;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HWN2FHBB0fMA9Nv35A0seKH5IeDivEvXY+NSyLEWr1g=;
 b=K0q4KS3uIjvhAQg3ngr0v9H2Nqn2otDZzer+cNsp1nJTiLkUCtiSdZJM
 oe9M0Q1h5jg+KhGfOpgsWvbj653NUz7mQVQ0iU0cZXEOjWsnDXNHFfEZV
 kS81hFep5CZoJzCZv7ctSgxQmFUFTKb+LXKzm009u5JsVDDqa9oWL6IrE
 2avSQ4N8748+dCSMheHlHVVMS3/gKBFTYmdqAC10N/JJuu6DwbW/9Vu4Y
 zjUjz/EKOg4l44IytEkEJgs6NvuFb2YoGyVJo0QzOHES8QEGYX4qAW0Xl
 v0nqys7n0BhVDvCFeVd+wYdumjNm+cLNlf7agjswWxO0sPYzviNyRSqPy Q==;
X-CSE-ConnectionGUID: jCTiyWe3QLacTCz5sw5KHw==
X-CSE-MsgGUID: VTjGLzjoRVaVUgDY76bwFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="62245557"
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="62245557"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:26:02 -0700
X-CSE-ConnectionGUID: d2AABAIwQiy7aGJTr81YMg==
X-CSE-MsgGUID: w9qNh5owTx+WNaIE3PpKiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="185799744"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:26:01 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [RFC][PATCH 00/11] drm/i915/prefill: Introduce helpers for prefill
 latency calculations
Date: Wed,  8 Oct 2025 21:25:47 +0300
Message-ID: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
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

Introduce intel_prefill and various accompanying helpers to do 
pipe prefill latency related stuff (vblank/guardband length
checks, and in the future reduced guardband length).

Still a bit rough in plaeces so tossing it out as more of
and RFC at this stage.

Ville Syrjälä (11):
  drm/i915: Reject modes with linetime > 64 usec
  drm/i915/cdclk: Add prefill helpers for CDCLK
  drm/i915/cdclk: Add intel_cdclk_min_cdclk_for_prefill()
  drm/i915/dsc: Add prefill helper for DSC
  drm/i915/scaler: Add scaler prefill helpers
  drm/i195/wm: Add WM0 prefill helpers
  drm/i915: Introduce intel_compute_global_watermarks_late()
  drm/i915/prefill: Introduce intel_prefill.c
  drm/i915/wm: Use intel_prefill
  drm/i915/prefill: Print the prefill details
  drm/i915/prefill: Also print out the worst case estimates

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  99 +++++++-
 drivers/gpu/drm/i915/display/intel_cdclk.h    |   7 +
 drivers/gpu/drm/i915/display/intel_display.c  |  12 +
 .../gpu/drm/i915/display/intel_display_core.h |   1 +
 drivers/gpu/drm/i915/display/intel_prefill.c  | 200 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_prefill.h  |  48 ++++
 drivers/gpu/drm/i915/display/intel_vdsc.c     |   8 +
 drivers/gpu/drm/i915/display/intel_vdsc.h     |   1 +
 drivers/gpu/drm/i915/display/intel_wm.c       |  10 +
 drivers/gpu/drm/i915/display/intel_wm.h       |   1 +
 drivers/gpu/drm/i915/display/skl_scaler.c     | 204 +++++++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.h     |  15 ++
 drivers/gpu/drm/i915/display/skl_watermark.c  | 239 ++++++++++--------
 drivers/gpu/drm/i915/display/skl_watermark.h  |   3 +
 drivers/gpu/drm/xe/Makefile                   |   1 +
 16 files changed, 737 insertions(+), 113 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_prefill.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_prefill.h

-- 
2.49.1

