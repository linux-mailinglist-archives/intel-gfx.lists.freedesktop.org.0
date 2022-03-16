Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 554904DADA0
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 10:38:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBCFB10E51B;
	Wed, 16 Mar 2022 09:38:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0FB610E3A6
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 09:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647423494; x=1678959494;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=m1kMnFuEsrIkJsXZZBiVvzankXeUJj4LFxG9lGc3iHg=;
 b=Q3rfy7WOMgOHwBo9pd7m/o6781JLeZg7+ycxb75/ugWSOWYs9BTWFPVC
 nS7FshRs9URnyjPepWjk3btzBBRkGNErJZfWttC8BWe6MYk2mipuSZlDA
 2XlabIbqcI9+QVjWjnzQ3r7brd+SVFmX8WcfmgNGfpysVldr9XkhtBc9+
 LbTJORxgE/ocTfEO/ZxyOQEGb2OE3DC4TYtB6h/ZYtTON3CNNUPlQX/Zp
 enFPVKbUroBZROevV+UHxTmvJl5zDbLqBCijyjUWgnwk8iaWOg7vBBE7r
 CTDWPrkeaqMp1ELF2LqsIXtMCV/6g1R8rHCRRQmJWiDpXvGZ9EtxzhqTm g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="317257684"
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="317257684"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 02:38:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="783401789"
Received: from kandpal.iind.intel.com ([10.190.239.32])
 by fmsmga006.fm.intel.com with ESMTP; 16 Mar 2022 02:38:12 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Mar 2022 15:07:37 +0530
Message-Id: <20220316093740.652925-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 0/3] i915 writeback private framework
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A patch series was floated in the drm mailing list which aimed to change
the drm_connector and drm_encoder fields to pointer in the
drm_connector_writeback structure, this received a huge pushback from
the community but since i915 expects each connector present in the
drm_device list to be a intel_connector but drm_writeback framework
forces us to use a drm_connector which is not embedded in
intel_connector the current drm_writeback framework becomes very
unfeasible to us as it would mean a lot of checks at a lot of places
to take into account the above issue. One of the solutions is to
make our own writeback pipeline bypassing one provided by drm
which is what these patches do.

Suraj Kandpal (3):
  drm/i915: Creating writeback pipeline to bypass drm_writeback
    framework
  drm/i915: Define WD trancoder for i915
  drm/i915: Enabling WD Transcoder

 drivers/gpu/drm/i915/Makefile                 |   2 +
 drivers/gpu/drm/i915/display/intel_acpi.c     |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  85 +-
 drivers/gpu/drm/i915/display/intel_display.h  |  15 +
 .../drm/i915/display/intel_display_types.h    |  21 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |   3 +
 drivers/gpu/drm/i915/display/intel_opregion.c |   3 +
 .../gpu/drm/i915/display/intel_wb_connector.c | 296 ++++++
 .../gpu/drm/i915/display/intel_wb_connector.h |  99 ++
 drivers/gpu/drm/i915/display/intel_wd.c       | 996 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_wd.h       |  82 ++
 drivers/gpu/drm/i915/i915_drv.h               |   5 +
 drivers/gpu/drm/i915/i915_irq.c               |   8 +-
 drivers/gpu/drm/i915/i915_pci.c               |   7 +-
 drivers/gpu/drm/i915/i915_reg.h               | 139 +++
 15 files changed, 1759 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_wb_connector.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_wb_connector.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.h

-- 
2.35.1

