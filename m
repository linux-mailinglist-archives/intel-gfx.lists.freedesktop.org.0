Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE9447855C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 08:05:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A39910EB86;
	Fri, 17 Dec 2021 07:05:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BBA110EB86
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 07:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639724721; x=1671260721;
 h=from:to:cc:subject:date:message-id;
 bh=BswOs2j6syfZBK9h5tLFXg+Pr9psyDH4VYR0kxy+aIc=;
 b=XZPk7ghCYNOuwH1fB/jvneU3GKT5Jp+Hi3P5yZE+YsV74mNRbAsoqup9
 z7DNXv6knYY9iST7gAdy7GA6rD81ZxiyQFRVxOsFc2/oEvKXUliC+VOMm
 FrihgXvGr2vxTkFmhtxBy4NE5Tf5ZRO+IPkjMoP7xn47jcxukxgt0iqxw
 zUYIwEXN/rl7xLKHCp0gKvCqNF08vUtK7gsMEetj8q/QFHdgn6NMXv2Zz
 6hZTOALpNcEcUeRratNrGgJn/gGysyctvbEY0U0STBEoUZuZ/WUVIMlWn
 0pyTLbWQXKEyu0HDIVIgJE2GvCE7FYiQlH8vXx1p8lKMzk6QT9VG+lbqY w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="237236731"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="237236731"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 23:05:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="466404967"
Received: from kandpal.iind.intel.com ([10.190.238.57])
 by orsmga006.jf.intel.com with ESMTP; 16 Dec 2021 23:05:19 -0800
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Dec 2021 12:43:52 +0530
Message-Id: <20211217071356.12517-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 0/4] Adding writeback support for i915
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
Cc: arun.r.murthy@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The following series of patches add writeback support for i915. This has been 
validated on TGL using IGT.

Note:Only a single instance of WD transcoder is being considered for now, using
multiple WD transcoder may not work. The support for the same will be added in next
set of patches.

suraj kandpal (4):
  drm: add writeback pointers to drm_connector
  drm/komeda: change driver to use drm_writeback_connector.base pointer
  drm/i915: Define WD trancoder for i915
  drm/i915: Enabling WD Transcoder

 .../gpu/drm/arm/display/komeda/komeda_crtc.c  |    2 +-
 .../gpu/drm/arm/display/komeda/komeda_kms.h   |    3 +-
 .../arm/display/komeda/komeda_wb_connector.c  |    9 +-
 drivers/gpu/drm/drm_writeback.c               |   19 +-
 drivers/gpu/drm/i915/Makefile                 |    2 +
 drivers/gpu/drm/i915/display/intel_acpi.c     |    1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  166 ++-
 drivers/gpu/drm/i915/display/intel_display.h  |   11 +
 .../drm/i915/display/intel_display_power.h    |    1 +
 .../drm/i915/display/intel_display_types.h    |    9 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |    6 +
 drivers/gpu/drm/i915/display/intel_opregion.c |    3 +
 .../gpu/drm/i915/display/intel_wb_connector.h |   20 +
 drivers/gpu/drm/i915/display/intel_wd.c       | 1139 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_wd.h       |   70 +
 .../drm/i915/display/skl_universal_plane.c    |    1 -
 drivers/gpu/drm/i915/i915_drv.h               |    5 +
 drivers/gpu/drm/i915/i915_irq.c               |    8 +-
 drivers/gpu/drm/i915/i915_pci.c               |    7 +-
 drivers/gpu/drm/i915/i915_reg.h               |  141 +-
 include/drm/drm_connector.h                   |    3 +
 include/drm/drm_writeback.h                   |    6 +-
 22 files changed, 1560 insertions(+), 72 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_wb_connector.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.h

-- 
2.17.1

