Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2299D60652B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 18:00:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1014810E2F6;
	Thu, 20 Oct 2022 16:00:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DB5F10E2F6
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 16:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666281631; x=1697817631;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+/N8SyYyhcgoyWxXxLTyXUxY0m9OWDYRkhGlkfLXBjE=;
 b=FxK7uLWRiWAYwNQhWo4ebeuoGSa9RuWRZF41UxEOcVmdo9X494Gx7ru4
 fTQZ0ybwo00BTBDa1nsK6tMmy1y0QFs7khfAHXxZtKqvx2pEm9af7cJpk
 uMkDV/S1C/F4xlIIsKLzmUDaN1MX1Scn4Bcg8ttnJi6PVkSf0KZhoRrs3
 Rv/SbqDln1b6LHQt6nvKcBRTQmGatLgzYT2/3W/cCK1wWrsCG6Nwcy9Ee
 JZSNp9rauuKAAlfgy3jeImRbU5NidL8HakKrB2gaIpXnZsYIJqtSUPIn9
 AdQVilpPuTOgaEIxAI1yvWgZYsHpK6G88aSiAXsBrbJAk74otrftyLMFi g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="308433688"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="308433688"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 09:00:26 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="755219809"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="755219809"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 09:00:24 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 19:00:18 +0300
Message-Id: <20221020160022.1823365-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] drm/i915/tgl+: Fix race conditions
 during DKL PHY accesses
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is v2 of [1] addressing the review comments from Jani.

[1] https://lore.kernel.org/intel-gfx/Y1BaRfTAH%2Fl+XLqc@ideak-desk.fi.intel.com/T/#t

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Imre Deak (4):
  drm/i915/tgl+: Add locking around DKL PHY register accesses
  drm/i915: Rename intel_tc_phy_regs.h to intel_mg_phy_regs.h
  drm/i915/tgl+: Move DKL PHY register definitions to
    intel_dkl_phy_regs.h
  drm/i915/tgl+: Sanitize DKL PHY register definitions

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  71 +++---
 .../gpu/drm/i915/display/intel_display_core.h |   4 +
 .../i915/display/intel_display_power_well.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_dkl_phy.c  | 101 +++++++++
 drivers/gpu/drm/i915/display/intel_dkl_phy.h  |  20 ++
 .../gpu/drm/i915/display/intel_dkl_phy_regs.h | 202 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  62 +++---
 ...ntel_tc_phy_regs.h => intel_mg_phy_regs.h} |   6 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |   3 +-
 drivers/gpu/drm/i915/i915_driver.c            |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 176 ---------------
 12 files changed, 397 insertions(+), 258 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dkl_phy.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dkl_phy.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
 rename drivers/gpu/drm/i915/display/{intel_tc_phy_regs.h => intel_mg_phy_regs.h} (99%)

-- 
2.37.1

