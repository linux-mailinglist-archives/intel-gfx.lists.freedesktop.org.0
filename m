Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3881AC19262
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 09:46:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9511910E745;
	Wed, 29 Oct 2025 08:46:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZeMOL54a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 922C110E742;
 Wed, 29 Oct 2025 08:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761727612; x=1793263612;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D6Fe/RwVkdUZ0QkkkOvKLvbowEFty/2gcPrg0NrzRiQ=;
 b=ZeMOL54aMaC7V54hMiWTAeFXqEVFMK4zGFstFm8ss0nb82oyOEj/V8ap
 /DLd7pv2hdVLmT6TS22yGuj8b7n68i8B7mWr9piB2p8K0+2XHqd4MYMk7
 t1YggHUExFf/O149Tq09E1cJ7JakARlJfTM2/h93+qh0CKM1BpYkQxbzC
 25ff/A1Wb+QHWd/Inere8Wpubn+4GAWt2vLCzcEuUyT9WpTiL4FmHfyul
 J83ujnlCTYCBsHO/aOQdpW9bYEGQDPwjG+ch3B0+rpEPEWRt8Uh2KMCFQ
 P+y4HBRUrcpQmt6LNxY4V63qXfUpmCkUBB/HElDOIhT+OBmrPm9SYvkE9 A==;
X-CSE-ConnectionGUID: m56NHvvLR56dph1z0f0rBA==
X-CSE-MsgGUID: pESKv8n2TiSmRbLTHR69yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74132133"
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="74132133"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:46:51 -0700
X-CSE-ConnectionGUID: WE6Ud+ulQZaXgFm9kvWTlA==
X-CSE-MsgGUID: rxNiD3VETU6hhpE3dmFF0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="222811500"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.242])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:46:50 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 0/9] drm/i915: Fix CDCLK and scaler prefill calculations
Date: Wed, 29 Oct 2025 10:46:38 +0200
Message-ID: <20251029084647.4165-1-ville.syrjala@linux.intel.com>
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

Reorder stuff enough to allow the prefill vs. vblank checks
to use the real per-crtc min CDCLK and the real scale factors.

v2: Add an early crtc_state->min_cdclk vs. max_cdcdlk_freq check

Ville Syrjälä (9):
  drm/i915/scaler: Don't clobber plane scaler scale factors with pfit
    scale factors
  drm/i915/scaler: Adjust pipe scaler scale factors for 4:2:0 ouput
  drm/i915:
    s/intel_atomic_check_crtcs()/intel_atomic_check_crtcs_late()/
  drm/i915: Introduce a new intel_atomic_check_crtcs()
  drm/i915/scaler: Call skl_update_scaler_crtc() earlier
  drm/i915/scaler: Assign scalers earlier
  drm/i915/wm: Do skl_wm_check_vblank() after DDB stuff
  drm/i915/cdclk: Use a more optimal min_cdclk for vblank length check
  drm/i915/scaler: Use the actual scale factors for vblank length check

 drivers/gpu/drm/i915/display/intel_cdclk.c   | 17 +++-
 drivers/gpu/drm/i915/display/intel_display.c | 61 +++++++++-----
 drivers/gpu/drm/i915/display/skl_scaler.c    | 88 +++++++++++++++++---
 drivers/gpu/drm/i915/display/skl_watermark.c |  6 +-
 4 files changed, 139 insertions(+), 33 deletions(-)

-- 
2.49.1

