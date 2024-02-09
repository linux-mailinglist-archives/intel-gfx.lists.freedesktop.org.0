Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 718DD84FBFF
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 19:38:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB1E910F9E8;
	Fri,  9 Feb 2024 18:38:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rs3sCWaL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9D7910F9E8
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 18:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707503894; x=1739039894;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tuRCrstUQ2+StdbuJlNw+iU22KqCqQ3JR2DIrxoxT0Q=;
 b=Rs3sCWaLEMkWQqBsgvCPW8aizinIShEoSg5ZeAX1P1gKeZZXGB3RHLCc
 SYNjEE4FgbTwmX87WwSPNR3aP2OctsaduLzYudi1Jk3bLHbrHKZ5iCWzz
 pHM7UVpGq4SdtWnLgMuAN5QlOecEkaXoYA2e5nBb+OJvmbQj2NtHLghdv
 11fChiUagi+Nv1yGSytzLhIVM/wQzfYvQcLgn614DO0CdM0W39EogmbNX
 9uIqSphata1wDQzx/ysmMhlo/pqH7RPJDbopef9YihuR8Xm2MrAmzVBc2
 FjibrV7EMd6ZApfAz5RJ7XH45btE8bnX1sh9nodFdfCzHVlWI6ZONzXYX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="23956453"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; d="scan'208";a="23956453"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 10:38:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="825204111"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; d="scan'208";a="825204111"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 09 Feb 2024 10:38:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Feb 2024 20:38:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/5] drm/i915: PLL state check stuff
Date: Fri,  9 Feb 2024 20:38:04 +0200
Message-ID: <20240209183809.16887-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
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

Start chunking up the dpll_hw_state momnster into per-platform
pieces.

Also restore PLL state check on gmch platforms, and 
flip on fastboot across the board.

Ville Syrjälä (5):
  drm/i915: Fix PLL state check for gmch platforms
  drm/i915: Include the CRTC name in the ELD buffer mismatch
  drm/i915: Reuse ibx_dump_hw_state() for gmch platforms
  drm/i915: Add PLL .compare_hw_state() vfunc
  drm/i915: Enable fastboot across the board

 drivers/gpu/drm/i915/display/intel_display.c  | 106 ++++++++----------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 103 +++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   3 +
 3 files changed, 148 insertions(+), 64 deletions(-)

-- 
2.43.0

