Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE18A224DE
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 21:01:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3E3610E1B3;
	Wed, 29 Jan 2025 20:01:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aaq+8nxn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D48AD10E1B3;
 Wed, 29 Jan 2025 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738180886; x=1769716886;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bnENEcYCpj5LEkTn8kzUaSJoJ8Y6yp2fNrqavyXEjsE=;
 b=aaq+8nxn1YpyLc8+CM33NlUGV4rHVHuKG4LspYSWk1p8HQLDd+fu4a2f
 7p+sVnuGCwDLMlxPeELrYbiLIwQjOn0gyzTW9tlrwL1lH3/zTenTIfM/6
 92h3upkTqOrVQfBicojlD4IIR/ZmFclqhnZ0d8Ny78z7fVDW7NRQg3nqX
 iJ3+lOC0viRLI22anRBMosXWi1V6c/pKnuV9yQLCBQMcKpe+4s64brfdM
 v7bnN+8aBFohbo7O3LXZmZMyfo7x5A296G5GlPWF6Qc6YHW7NA/e6YgWs
 ojNkJgLkXp9A9pzlhpJFrB7J+DFxHvKlL/HDZ9Ju4BsfjAhs2gR2ERv1r g==;
X-CSE-ConnectionGUID: sKA0mhOzS/yntx+DIZzOMA==
X-CSE-MsgGUID: BbhcCVB5S0KWGJBQOA7NYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="38977666"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="38977666"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:26 -0800
X-CSE-ConnectionGUID: GgrV31TZQLmF/giKrE+xKA==
X-CSE-MsgGUID: pg4+CwP0THqZ5CBrkaD8gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113750886"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:24 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 00/17] drm/i915/ddi: Fix/simplify port enabling/disabling
Date: Wed, 29 Jan 2025 22:02:04 +0200
Message-ID: <20250129200221.2508101-1-imre.deak@intel.com>
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

This patchset fixes two issues (in patch 2 and 4) and simplifies a few
other things in the DDI port enabling/disabling sequences. I noticed
these while thinking about a way to enable/disable ports as part of
the HW readout/sanitization, for which this patchset is also a
preparation.

Imre Deak (17):
  drm/i915/dsi: Use TRANS_DDI_FUNC_CTL's own port width macro
  drm/i915/ddi: Fix HDMI port width programming in DDI_BUF_CTL
  drm/i915/ddi: Make all the PORT_WIDTH macros work the same way
  drm/i915/ddi: Set missing TC DP PHY lane stagger delay in DDI_BUF_CTL
  drm/i915/ddi: Simplify the port enabling via DDI_BUF_CTL
  drm/i915/ddi: Simplify the port disabling via DDI_BUF_CTL
  drm/i915/ddi: Simplify waiting for a port to idle via DDI_BUF_CTL
  drm/i915/ddi: Move platform checks within
    mtl_ddi_enable/disable_d2d_link()
  drm/i915/ddi: Unify the platform specific functions disabling a port
  drm/i915/ddi: Add a helper to enable a port
  drm/i915/ddi: Sanitize DDI_BUF_CTL register definitions
  drm/i915/ddi: Configure/enable a port in DDI_BUF_CTL via
    read-modify-write
  drm/i915/ddi: Factor out a helper to get DDI_BUF_CTL's config value
  drm/i915/ddi: Reuse helper to compute the HDMI DDI_BUF_CTL config
  drm/i915/ddi: Reuse helper to compute the HDMI PORT_BUF_CTL1 config
  drm/i915/ddi: Move platform/encoder checks within
    adlp_tbt_to_dp_alt_switch_wa()
  drm/i915/ddi: Unify the platform specific functions enabling a port

 drivers/gpu/drm/i915/display/icl_dsi.c        |   4 +-
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 378 +++++++-----------
 drivers/gpu/drm/i915/i915_reg.h               |  25 +-
 4 files changed, 169 insertions(+), 241 deletions(-)

-- 
2.44.2

