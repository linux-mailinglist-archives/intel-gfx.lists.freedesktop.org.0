Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7101598185
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Aug 2022 12:37:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8555DAF68E;
	Thu, 18 Aug 2022 10:37:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 635801130E8
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Aug 2022 10:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660819045; x=1692355045;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eq1deQI9ZsBZbBC4VG+nPnQepPFHE3FPGKj6vcVvuGc=;
 b=IRSFb9oQWQVOQYl3uOeZx8IwRQqytxBGtptAMKfPypZH6x5BbMoqABQk
 z9731s3t0Hyzwugb2OFvU164MZpcud9d+wwIYJ4aOgIjZjgsqRwftDaMq
 OqCeKeO6YxhjXgvKZm+C1Wye9M7QASw5w1r47onV5iIHewRjA5/P18NRS
 DP9xKNbk8fBkBl7atxqLDc9C/AANDNv3tq2UvSjo+1j3Lp0MO7mT5SFcL
 2d01rp+vJlyuQQ4HsdK37I+sn0dk1CTtsVZPnlsqnn2135PyjMFGGLlGZ
 JbxJS4lGZQV5sQp/OLjCM2+AepkjBOTk5g/prZvbPsf/TUyf+BJu0PPXG A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="379019401"
X-IronPort-AV: E=Sophos;i="5.93,246,1654585200"; d="scan'208";a="379019401"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 03:37:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,246,1654585200"; d="scan'208";a="584161112"
Received: from kandpal.iind.intel.com ([10.190.239.32])
 by orsmga006.jf.intel.com with ESMTP; 18 Aug 2022 03:37:21 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Aug 2022 16:06:39 +0530
Message-Id: <20220818103642.501756-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.37.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Enable Pipewriteback
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
Cc: ville.syrjala@intel.com, jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A patch series was floated in the drm mailing list which aimed to change
the drm_connector and drm_encoder fields to pointer in the
drm_connector_writeback structure, this received a huge pushback from
the community but since i915 expects each connector present in the
drm_device list to be a intel_connector but drm_writeback framework
makes us have a connector which cannot be embedded in an intel_connector
structure.
[1] https://patchwork.kernel.org/project/dri-devel/patch/20220202081702.22119-1-suraj.kandpal@intel.com/
[2] https://patchwork.kernel.org/project/dri-devel/patch/20220202085429.22261-6-suraj.kandpal@intel.com/
Since no one had an issue with encoder field being changed into a
pointer it was decided to break the connector and encoder pointer
changes into two different series.The encoder field changes is
currently being worked upon by Abhinav Kumar and the changes have been
merged.
[3]https://patchwork.kernel.org/project/dri-devel/list/?series=633565
Going forward we use a drm_connector which is not embedded in
intel_connector. 
We also create a intel_encoder to avoid changes to many
iterators but no intel_connector. We also changed all iterators that
go through connectors and add a check to only cast connectors which are
not writeback connectors.
I had also floated a previous series to Enable writeback but floating a
new one as i created an extra patch in this series as suggested by
Jani, Nikula for intel_connector iterator changes.
Please go check the below link if interested.
[4]https://patchwork.freedesktop.org/series/106902/

Suraj Kandpal (3):
  drm/i915: Define WD trancoder for i915
  drm/i915 : Changing intel_connector iterators
  drm/i915: Enabling WD Transcoder

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_acpi.c     |   1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   6 +
 .../drm/i915/display/intel_crtc_state_dump.c  |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +
 drivers/gpu/drm/i915/display/intel_display.c  |  63 +-
 drivers/gpu/drm/i915/display/intel_display.h  |  18 +-
 .../drm/i915/display/intel_display_debugfs.c  |  13 +-
 .../drm/i915/display/intel_display_types.h    |  33 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   6 +
 .../drm/i915/display/intel_modeset_setup.c    | 114 ++-
 .../drm/i915/display/intel_modeset_verify.c   |  17 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |   3 +
 .../gpu/drm/i915/display/intel_wb_connector.h |  20 +
 drivers/gpu/drm/i915/display/intel_wd.c       | 704 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_wd.h       |  48 ++
 drivers/gpu/drm/i915/i915_drv.h               |   1 +
 drivers/gpu/drm/i915/i915_irq.c               |   8 +-
 drivers/gpu/drm/i915/i915_pci.c               |   7 +-
 drivers/gpu/drm/i915/i915_reg.h               | 139 ++++
 20 files changed, 1154 insertions(+), 55 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_wb_connector.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.h

-- 
2.37.0

