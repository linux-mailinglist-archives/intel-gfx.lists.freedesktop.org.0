Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9087A3601C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 15:19:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B67D10ECA6;
	Fri, 14 Feb 2025 14:19:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C09s9sae";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4EAA10ECA6;
 Fri, 14 Feb 2025 14:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739542743; x=1771078743;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oSy9VGFpWZzip9RFoC6TUuUR89vIUShMS+W9+7nQxhU=;
 b=C09s9sae2N9f3BCC6fYMv9ZdTMERuW65qQTVDZm3lMloWcR1bMAlhcFX
 WtZoBY1lMODhEGc7KlvzJiKqrTETbwfFxprPdKDpeXSpq+Nzr2bikt7vT
 3i7ggC7x7SC/5dQsHLulJPCH1iow4x6lzvZMZOSANUlO7qepPbXxSFpb6
 aS9QZV5Om0BvY+179pigRFf1BaDZIHf3OomiOVQxyIq7LJRDaHZukmEYc
 wGPTA6RiWIGfdZ10rNK2DfsB8cMS0n1ZPne9vU+i0vcMRLImTn4fUi+PM
 3hJcfGLSfQ2X+pL+UKNoojZ+3nVvt2q1vzD7MwpoE0PLTJNSngB8x5asM A==;
X-CSE-ConnectionGUID: 3GQuxn2MTHqil/WKrQg/Bg==
X-CSE-MsgGUID: Izj5BgfkQTqLr6fPJ7oiAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="27892488"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="27892488"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:03 -0800
X-CSE-ConnectionGUID: cubub92TRFmaPqW/tyP9Lg==
X-CSE-MsgGUID: iFyml0MISmqAz1ghdHT2AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136694211"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:01 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 00/11] drm/i915/ddi: Fix/simplify port enabling/disabling
Date: Fri, 14 Feb 2025 16:19:50 +0200
Message-ID: <20250214142001.552916-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
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

This v2 of [1], addressing the review comments from Jani and adding Rbs.
This version contains only the first half of the patchset, leaving the
rest for a follow-up, since programming DDI_BUF_CTL via RMW contained in
the latter part needs more thought.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

[1] https://patchwork.freedesktop.org/series/144122

Imre Deak (11):
  drm/i915/dsi: Use TRANS_DDI_FUNC_CTL's own port width macro
  drm/i915/ddi: Fix HDMI port width programming in DDI_BUF_CTL
  drm/i915/ddi: Make all the PORT_WIDTH macros work the same way
  drm/i915/ddi: Set missing TC DP PHY lane stagger delay in DDI_BUF_CTL
  drm/i915/ddi: Simplify the port enabling via DDI_BUF_CTL
  drm/i915/ddi: Simplify the port disabling via DDI_BUF_CTL
  drm/i915/ddi: Simplify waiting for a port to get active/idle via
    DDI_BUF_CTL
  drm/i915/ddi: Move platform checks within
    mtl_ddi_enable/disable_d2d_link()
  drm/i915/ddi: Unify the platform specific functions disabling a port
  drm/i915/ddi: Add a helper to enable a port
  drm/i915/ddi: Sanitize DDI_BUF_CTL register definitions

 drivers/gpu/drm/i915/display/icl_dsi.c        |   4 +-
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 256 +++++++-----------
 drivers/gpu/drm/i915/i915_reg.h               |  25 +-
 4 files changed, 123 insertions(+), 165 deletions(-)

-- 
2.44.2

