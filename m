Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7BF97A553
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 17:30:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6478610E0B4;
	Mon, 16 Sep 2024 15:30:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HWoeoEYK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E40C10E0B4
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 15:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726500602; x=1758036602;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VKZ4psJP0lmXhmPzfdCL8SGtaPgurYz9VKvB5GbpOGk=;
 b=HWoeoEYK1Sh6jfnyjLb8tkYVSR92qYKt51vOXlm2m0yHSw6WNMjSRQ4S
 e9fplY3YlB4fUa63hwnyx8joklCPGs94W7LdzhEONG6UTx3R26E1og0DI
 rK2JmGGbX0aPMKPIvggKQhVCU08HA+PmA2nLql7d3R5xp+WPSkzIQAvZI
 yE5qtT2iKLSFVmft6rX6I15p0Rw9zh22wSgDGRi8X5LCa+3kV/VZgVfxI
 haOZEgy1aSIVtygZ2qG05nWmIz+GYMPcXW9TVPs+dkccRlwbyGPEBMHuu
 vafCutUxM8dvrNi27MCxXo1k+NB+6BvxJQoPdKX0PP61iI1fuxgY11498 w==;
X-CSE-ConnectionGUID: giJRCgThRcmEPh2aKQ7jAg==
X-CSE-MsgGUID: ZzHD8yUbRK+8gNb3AiyUTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="47840542"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="47840542"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 08:30:02 -0700
X-CSE-ConnectionGUID: yZ6D8YRTRgKIKL7D3sXJeA==
X-CSE-MsgGUID: Rtd+N7XYQTikP1pIxQPc3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="69009193"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Sep 2024 08:29:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Sep 2024 18:29:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/2] drm/i915: Some modeset refactoring
Date: Mon, 16 Sep 2024 18:29:56 +0300
Message-ID: <20240916152958.17332-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
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

Clean up the modeset code a bit by extracting some functions.

Ville Syrjälä (2):
  drm/i915/color: Extract intel_color_modeset()
  drm/i915: Extract intel_post_plane_update_after_readout()

 drivers/gpu/drm/i915/display/intel_color.c   | 17 ++++++
 drivers/gpu/drm/i915/display/intel_color.h   |  1 +
 drivers/gpu/drm/i915/display/intel_display.c | 58 +++++++-------------
 3 files changed, 39 insertions(+), 37 deletions(-)

-- 
2.44.2

