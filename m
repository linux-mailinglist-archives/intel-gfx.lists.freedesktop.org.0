Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F045EF64F
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 15:22:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0239010EA60;
	Thu, 29 Sep 2022 13:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78D7410EA4A
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 13:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664457728; x=1695993728;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gAJcATxfkKypZQ8nmbZsKP1bFaiC/CTNPjw+37WebZU=;
 b=S09c0zIc9XKvkhXE7xyolKAp8qNPF0FAD8niEq/f1sPgX208Yi3tN1nm
 GjzUsHOzZxkygscWrm80RBylck1KglZCnA7p13739pXYwNGUqhcE2LPBw
 f0MJrtTGgDzkAvaR/SPFjMSzhY3dNgVJ8t8RVd5VTg1hU8pnZgKgaMrmy
 tIqcfrqU1WcASw0FDjPzmNs+Gk6HPvPgP2B1i3mmd65SwEKCd9xlNSjlg
 aPwn6MVsf8Fbv1V46aSQM7YgdN995+X8peGzCVrSvs8sVtRPO+vm4Kp2m
 SXeEs7ROSthI8ektAgXE6QwVjQShYj4yq6BzP/ngvZjmBnDOMKSvF5mj6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="365934646"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="365934646"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 06:22:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="655550428"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="655550428"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga001.jf.intel.com with ESMTP; 29 Sep 2022 06:22:06 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 16:17:42 +0300
Message-Id: <20220929131747.2592092-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915/mtl: Add C10 phy support
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
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 1300 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  155 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      |   26 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    |   36 +-
 .../drm/i915/display/intel_ddi_buf_trans.h    |    6 +
 drivers/gpu/drm/i915/display/intel_display.c  |    1 +
 .../drm/i915/display/intel_display_power.c    |    3 +-
 .../i915/display/intel_display_power_map.c    |    1 +
 .../i915/display/intel_display_power_well.c   |    2 +-
 .../drm/i915/display/intel_display_types.h    |    6 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   15 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   22 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |    2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |    5 +-
 .../drm/i915/display/intel_modeset_verify.c   |    2 +
 drivers/gpu/drm/i915/i915_reg.h               |  142 ++
 17 files changed, 1716 insertions(+), 9 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.h

-- 
2.34.1

