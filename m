Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D08618D238E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 20:56:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48E4B10E0BF;
	Tue, 28 May 2024 18:56:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O8wp6ni7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF76710E0BF
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 18:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716922610; x=1748458610;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NUqBfbSqLtXkrA5i5ZTUNhqd7PNG8R6E3CFljLZnMBs=;
 b=O8wp6ni7Z5rQXr72WvCVuafG0MZJIgXxWUPe2baZvvsEhK6FAS/WPKRz
 CvhYAuDC6WBaklC9hvJoS1afnTL6p7kA1gltCJfYY3SQt8gncAv4sMEyD
 gBC9u6uv1yBTDfUbdT7wrWrDnO23m/b6jwGTF9MWoPti1HivuEwv5NEN4
 ijdIuR+xPLN3eM+zWtoupurzGakWP6IkoO8hYiJ9TML4bMtuBGbKji3JD
 MlhOkH4tCg7lzq2o4OJe8I9o3PUDpqkUhnaFwdHio95M+mRzSyOjjiH0Q
 D2mZDYb2Ze3SmI2Im93lvyTJ8NDJIbprKq1GQLygUmX47zlhP8js4+md7 w==;
X-CSE-ConnectionGUID: 2kRPd6miSGO2jaMf+9sShw==
X-CSE-MsgGUID: rWeENxdeQ++FHgNGYyNojQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35815201"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35815201"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 11:56:50 -0700
X-CSE-ConnectionGUID: ozSoAiPuRgm1wp2DXcf3Hw==
X-CSE-MsgGUID: kxNAfx9YQnOw5UIyoW/MUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35144423"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 May 2024 11:56:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 May 2024 21:56:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/7] drm/i915: Cleanups around scanline arithmetic
Date: Tue, 28 May 2024 21:56:40 +0300
Message-ID: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
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

A few cleanups around parts what deal with scanline numbers.

Ville Syrjälä (7):
  drm/i915: Reuse intel_mode_vblank_start()
  drm/i915: Extract intel_mode_vblank_end()
  drm/i915: Extract intel_mode_vtotal()
  drm/i915: Simplify scanline_offset handling for gen2
  drm/i915: Move intel_crtc_scanline_offset()
  drm/i915: Switch intel_usecs_to_scanlines() to 64bit maths
  drm/i915/dsb: Convert dewake_scanline to a hw scanline number earlier

 drivers/gpu/drm/i915/display/intel_crtc.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_dsb.c    |  24 ++--
 drivers/gpu/drm/i915/display/intel_vblank.c | 142 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_vblank.h |   8 +-
 4 files changed, 89 insertions(+), 89 deletions(-)

-- 
2.44.1

