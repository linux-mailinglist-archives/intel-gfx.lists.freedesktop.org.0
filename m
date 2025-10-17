Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E07BEBEA8A3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 18:14:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B3A810E14F;
	Fri, 17 Oct 2025 16:14:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="caxOJFXX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BF1D10E14F;
 Fri, 17 Oct 2025 16:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760717661; x=1792253661;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Epb6k2UqLGxdYRmkYmJRqdUkDgmdu5vu7Oz/D7AVRaw=;
 b=caxOJFXXrz/upqGFAcP4WLWvJrCiZjamT1Rq6I8j/X39EfuvdOtlqYWF
 bALEly+dPuJqeHGVC2Nd6ubPtPAeg7ns31YVG7xWB/YM7bdiD1VWqV0a7
 Xw5Yifaj7kvMAICThAZ7B8nprfiW0p0eTP1HnPB/N06pYz2nCaKDy0PA/
 DQhLyPGKO3Yi1mmzTmn7QzmU0Rtm1jji6MDpMTqcwcsw9a5TQoHGx9qHB
 bIJqdXgiID8CtlapCpNheB9YG83HJvvgjwa2k7afUxiY9CYpV4i1PUTtf
 hfjLiAlgMW2sxaPBt8Zl8tWuRRlaFZQUViilBVR6udSSvBkv7KNF9G3/l A==;
X-CSE-ConnectionGUID: 9AVRrDQJTVGBYOWhJBqaTg==
X-CSE-MsgGUID: RQMn+ABgT7epYEJVSOy7jA==
X-IronPort-AV: E=McAfee;i="6800,10657,11585"; a="62142201"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="62142201"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:21 -0700
X-CSE-ConnectionGUID: uhUU9q4SSSGb+aIGXMrsaw==
X-CSE-MsgGUID: IF1wfTXWSMWqVHb9BdVHcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="188062831"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.129])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:20 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/9] drm/i915: Fix CDCLK and scaler prefill calculations
Date: Fri, 17 Oct 2025 19:14:08 +0300
Message-ID: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
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
 drivers/gpu/drm/i915/display/intel_display.c | 55 +++++++-----
 drivers/gpu/drm/i915/display/skl_scaler.c    | 88 +++++++++++++++++---
 drivers/gpu/drm/i915/display/skl_watermark.c |  6 +-
 4 files changed, 133 insertions(+), 33 deletions(-)

-- 
2.49.1

