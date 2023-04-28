Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F556F14CC
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 11:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37FCA10E3BD;
	Fri, 28 Apr 2023 09:59:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E399310E3BD
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 09:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682675973; x=1714211973;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UfA7Gdlb5T8uYz9m67JDJMdyea6etQo1QbjWAL/Nev4=;
 b=SjX2/A+xmgJNpPNlS+9dkCAZAatH8dcXPa/BvV8AQ56+gLTzrBvImA8r
 yhXkaaOK/BU1rKvk4SR8Hvch5HSb8NOr10N3/ZJ6MJn+oG3Tfw3MwvCWS
 oo8eBxeLzIwN76vlH9hhmzQFUCsMlbp+JSEYdOqB72hd6gZN/a5JtURI/
 VEe63om7ED0E9EgbO/obQqqVcmySvzpXu88S1Ruve2esgQnZLiynSqBnq
 7AIoaEKyMeH79tJwmtE1TB/KyElax0iD6zXqfToP/nR8FRZ+dBARaB1Lk
 VQXgh4pzWTjMRI+iB8JGkiX0eDSaMKSlpmkyv4RsoGOElbisg4DGoPTap A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="375698103"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="375698103"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:59:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="725295711"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="725295711"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 28 Apr 2023 02:59:32 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Apr 2023 12:54:20 +0300
Message-Id: <20230428095433.4109054-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/13] drm/i915/mtl: Add support for C20 phy
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

v2: Fixes for C20 pll programming and hw readout

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

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 1137 ++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   23 +-
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   41 +
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
 13 files changed, 1510 insertions(+), 73 deletions(-)

-- 
2.34.1

