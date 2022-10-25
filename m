Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBA360CA00
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 12:26:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B6C910E339;
	Tue, 25 Oct 2022 10:26:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6B0410E18D
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 10:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666693611; x=1698229611;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KaWe5dyR3HUvlImNvFEnBN1oeFmzG7RQ4K8tWq2uxsM=;
 b=N0O3SOd2gREOhE9g3QyjoemQYRO7xgZTMJC/JJeNq+YYNF9wgtM4Bugo
 eo4oj6mNlo3kA7cxIMXTGT9vzLIvu+yQKosF3cZNyUNrPDnGeRoEJmS8J
 8z+12be+KBhp5wOgH+aTraqxfBUqvTqlgz2l05SIPo7vYPVkowQiNM9+w
 2hzF9Rsz33V42Hf+pWpnZKXXBC0oXT0Iq5rTv2TznEgmT6yKQlLuFu5wQ
 CmtvwA81CjbTA2JTCcOVCaBoFw/N6RuG201vMJi/GW0kW2XmSrX3O9ihv
 nF7UStK7stAQn707e/Aj+fg04dSQ7aGivw5AvxT5XoBjrd8Yt1OHfJKyU A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="305253707"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="305253707"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 03:26:51 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="720806780"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="720806780"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 03:26:48 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 13:26:40 +0300
Message-Id: <20221025102644.2123988-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/4] drm/i915/tgl+: Fix race conditions
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

This is v3 of [1] fixing checkpatch issues and adding the Acked-bys.

[1] https://lore.kernel.org/intel-gfx/20221020160022.1823365-1-imre.deak@intel.com/T/#md92b51e5698295844f5436b479fdd473bf430882

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
 .../gpu/drm/i915/display/intel_display_core.h |   8 +
 .../i915/display/intel_display_power_well.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_dkl_phy.c  | 106 +++++++++
 drivers/gpu/drm/i915/display/intel_dkl_phy.h  |  24 +++
 .../gpu/drm/i915/display/intel_dkl_phy_regs.h | 204 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  62 +++---
 ...ntel_tc_phy_regs.h => intel_mg_phy_regs.h} |   6 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |   3 +-
 drivers/gpu/drm/i915/i915_driver.c            |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 176 ---------------
 12 files changed, 412 insertions(+), 258 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dkl_phy.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dkl_phy.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
 rename drivers/gpu/drm/i915/display/{intel_tc_phy_regs.h => intel_mg_phy_regs.h} (99%)

-- 
2.37.1

