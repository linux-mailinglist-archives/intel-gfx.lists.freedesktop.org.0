Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D81CF6E94E5
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 14:45:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA4110E2B0;
	Thu, 20 Apr 2023 12:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 129C710E2B0
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 12:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681994755; x=1713530755;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uXQa9tMSxrxQ8ORC0qLbvUiAqskHWo4FZiRSWbbzr8k=;
 b=l0PLL36ArwPK98CZvTYsYL+XA2BXZMiIxWKZrffy+z/sIr6AuNBP9lui
 b2Kr+KQDHRLy28WH22PR8XqDo52vUlsiVUCIQdYwsU5xcPYhpr8TX5JQl
 A2kpzXvHrS8gQQyDfaQnzDrKgRtuayA8BUrXGlkSSFgVYy9Xr8MRznMam
 35yrQWyt4GX7YKn6odAX4nllRlwM1gkRWx0djVb1PHTMHIOdQrY5Hx3Km
 tOQ6mHZTJPkAVxMrLop7ZVm622nXU0opk8oBsSaZbXDV0zZFAZEv6cDSr
 JCIe7F2IZh3bc7D9PQO/YawkcI8ogvLVtN5Vl2oH2KbvulmYEuQTu8uCl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="326051868"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="326051868"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 05:45:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="761145988"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="761145988"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga004.fm.intel.com with ESMTP; 20 Apr 2023 05:45:52 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Apr 2023 15:40:37 +0300
Message-Id: <20230420124050.3617608-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/13] drm/i915/mtl: Add support for C20 phy
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

Add support for C20 phy for Type-C connections. C20 phy differs from
C10 and hence we need to separately handle this case.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Anusha Srivatsa (1):
  drm/i915/mtl: Pin assignment for TypeC

Gustavo Sousa (1):
  drm/i915/mtl: Define mask for DDI AUX interrupts

Imre Deak (1):
  drm/i915/mtl: TypeC HPD live status query

Mika Kahola (10):
  drm/i915/mtl: C20 PLL programming
  drm/i915/mtl: C20 HW readout
  drm/i915/mtl: Dump C20 pll hw state
  drm/i915/mtl: C20 port clock calculation
  drm/i915/mtl: Add voltage swing sequence for C20
  drm/i915/mtl: For DP2.0 10G and 20G rates use MPLLA
  drm/i915/mtl: Enabling/disabling sequence Thunderbolt pll
  drm/i915/mtl: Readout Thunderbolt HW state
  drm/i915/mtl: Power up TCSS
  drm/i915/mtl: Enable TC ports

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 1128 ++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   23 +-
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   40 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   25 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    |   53 +-
 drivers/gpu/drm/i915/display/intel_display.c  |    7 +-
 .../drm/i915/display/intel_display_types.h    |   16 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   12 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |    2 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |    6 +-
 drivers/gpu/drm/i915/display/intel_hdmi.h     |    1 +
 drivers/gpu/drm/i915/display/intel_tc.c       |  255 +++-
 drivers/gpu/drm/i915/i915_irq.c               |    5 +-
 13 files changed, 1500 insertions(+), 73 deletions(-)

-- 
2.34.1

