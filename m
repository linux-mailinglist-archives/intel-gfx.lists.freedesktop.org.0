Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 685298D60FB
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:53:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FEBC10E120;
	Fri, 31 May 2024 11:53:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h9HC67n5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCA8F10E120
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 11:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717156426; x=1748692426;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1fCb1v0KjkPmnsNwdn+HnCQEmY78XD+xpq8xdTFcXaA=;
 b=h9HC67n55Yh40mdQvAdj321G+39PKGWREMs1bGnfYfFPYCpSu92B+zdf
 LXnigGSTyCBsQmXJ8P+eZVjd5drBAfUnMDx6UX1TlP/cyNcKKRSJbrpKK
 goQwvhIKOgn3k2HnpoO5MzAQnl+61YAc5fRidrf5vwWyEQx85F4VNyXEz
 P2QbsUdfDohNhrRQiY+LeteNtmEz8r4R53IRuhFIahFktXjKyL+5F+szY
 dW3bWNKNbL/CdqASwBuK3xvtj7y86Ob6+IH7HcH2aMihhsPGoWI0WIOCm
 ZUlUiPzQ0LjEg47e79fWaJQvn3qiYBY07dbv1NxE9tvCiOLOInOnSVHwJ Q==;
X-CSE-ConnectionGUID: OQUIaCm4SQ6p9rcWJFi1qA==
X-CSE-MsgGUID: 75DptTAiTWWcz75jrRoSiw==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13864653"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13864653"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:53:45 -0700
X-CSE-ConnectionGUID: YGYFYhPrSTCFHtHlAM3/sA==
X-CSE-MsgGUID: 3e04b+rAQ2qDU5a75L2F/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36134996"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 May 2024 04:53:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2024 14:53:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/7] drm/i915: Clean up the CRC registers
Date: Fri, 31 May 2024 14:53:35 +0300
Message-ID: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
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

Polish the CRC register defintions. I really meant to
just add one new register definition, but the whole thing
ballooned a bit...

Ville Syrjälä (7):
  drm/i915: Extract intel_pipe_crc_regs.h
  drm/i915: Switch PIPE_CRC_RES_*_IVB to _MMIO_PIPE()
  drm/i915: Regroup pipe CRC regs
  drm/i915: Add a separate defintiion for PIPE_CRC_RES_HSW
  drm/i915: Document which platforms have which CRC registers
  drm/i915: Define the PIPE_CRC_EXP registers
  drm/i915: Protect CRC reg macro arguments for consistency

 .../gpu/drm/i915/display/intel_display_irq.c  |  13 +-
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |   1 +
 .../drm/i915/display/intel_pipe_crc_regs.h    | 152 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               |  81 ----------
 4 files changed, 160 insertions(+), 87 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_crc_regs.h

-- 
2.44.1

