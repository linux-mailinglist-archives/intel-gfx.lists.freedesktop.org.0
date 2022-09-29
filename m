Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7947A5EF42D
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 13:21:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F29FE10E5DB;
	Thu, 29 Sep 2022 11:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B08ED10E5DA
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664450485; x=1695986485;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fRzUvh8aPSU4hxC/B1UNvop6iWHdwEuf2lpx5TJHTW8=;
 b=Beh7muJw/joOCCgtUHgUI8KFTihOfpIUHj6cLIQzcWlQFM1JD54eMGML
 FBuBaaxgA9Q6btOnCY3UyMmRCeqz2y7+E4ZmmeQis9MmBdDwtv6zFloNR
 CX7wph36If1ZRM9lv6/lN3+wZu2jQOu0zSOjSESgwRUNHqVeNlhiXbd/d
 vYdnK3yCQtYRvGu/bzFuVL4n7nlrGY5OrtGy57wBzoS+fvsrH+1nEx16i
 A41IAwqy/H7ufnkVsG2F2Zi9hYFFl0MGgSncl3wHFUwg2rT6CChuwsCdd
 H4vIlzDzhEbmnou/yXPVKn5e9HQb7BZ54CEalTyG0hs5qF/ni+a9ZY20x A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="299465312"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="299465312"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:21:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="655515776"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="655515776"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga001.jf.intel.com with ESMTP; 29 Sep 2022 04:21:23 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 14:16:58 +0300
Message-Id: <20220929111703.2472410-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915/mtl: Add C10 support
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

PHY programming support for message bus and phy programming.
Updates for HDMI programming and vswing tables.

Radhakrishna Sripada (5):
  drm/i915/mtl: Add Support for C10,C20 PHY Message Bus
  drm/i915/mtl: Add PLL programming support for C10 phy
  drm/i915/mtl: Add support for C10 phy programming
  drm/i915/mtl: Add C10 phy programming for HDMI
  drm/i915/mtl: Add vswing programming for C10 phys

 drivers/gpu/drm/i915/Makefile                 |    1 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 1300 +++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  155 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   26 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    |   36 +-
 .../drm/i915/display/intel_ddi_buf_trans.h    |    6 +
 drivers/gpu/drm/i915/display/intel_display.c  |    1 +
 .../drm/i915/display/intel_display_power.c    |    3 +-
 .../i915/display/intel_display_power_map.c    |    1 +
 .../i915/display/intel_display_power_well.c   |    2 +-
 .../drm/i915/display/intel_display_types.h    |    6 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   15 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   20 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |    2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |    5 +-
 .../drm/i915/display/intel_modeset_verify.c   |    2 +
 drivers/gpu/drm/i915/i915_reg.h               |  142 +
 drivers/gpu/drm/i915/intel_pm.c               | 5066 -----------------
 18 files changed, 1714 insertions(+), 5075 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.h
 delete mode 100644 drivers/gpu/drm/i915/intel_pm.c

-- 
2.34.1

