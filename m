Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9123459BB33
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 10:18:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A051A11A82D;
	Mon, 22 Aug 2022 08:18:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12B7B112604
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 08:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661156279; x=1692692279;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dUeCcgm8k0qpA3b0+5/YklnuyL3sF8yum3WBYaHSwIY=;
 b=IBl+kCWSh27MzF83nTqcSW+k5awPpd2uzwsmHG1xRgMmz+2BWVTSZqMe
 PuyZLXPws46v1+LSiO+rGozSAxWFkQtqM37MhN+4Cw2wNPQ65k6RMVsGW
 GtoLCvHtyPXpcuJZGPtZcbS7G+djYqnJKF+fs0BNQKRpqJ0Ek6/s56A4R
 UdbA9Lm3sjYbjCBrHR3QRohCX1uEDqFxiycuXhF+wOV02B2xSwk0sd3+Y
 Kr+JxbngLFYWXVnJwZ6jK2F1VB74Wn1v6GTXZWOZ9OEyxzJJ4Fg9pzHmH
 narMT5pPBfCUs7psefTr5Lh55KQm3ykoZaVRHiLVv8qMjdQDbz4yIpEBO Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="273109808"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="273109808"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 01:17:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="784774318"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 22 Aug 2022 01:17:55 -0700
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Aug 2022 13:46:39 +0530
Message-Id: <20220822081642.159908-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/3] Enable Pipewriteback
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

v2-------
solving BAT issues

Suraj Kandpal (3):
  drm/i915: Define WD trancoder for i915
  drm/i915 : Changing intel_connector iterators
  drm/i915: Enabling WD Transcoder

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_acpi.c     |   1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   6 +
 .../drm/i915/display/intel_crtc_state_dump.c  |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +
 drivers/gpu/drm/i915/display/intel_display.c  |  65 +-
 drivers/gpu/drm/i915/display/intel_display.h  |  18 +-
 .../drm/i915/display/intel_display_debugfs.c  |  13 +-
 .../drm/i915/display/intel_display_types.h    |  33 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   6 +
 .../drm/i915/display/intel_modeset_setup.c    | 119 ++-
 .../drm/i915/display/intel_modeset_verify.c   |  17 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |   3 +
 .../gpu/drm/i915/display/intel_wb_connector.h |  20 +
 drivers/gpu/drm/i915/display/intel_wd.c       | 699 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_wd.h       |  48 ++
 drivers/gpu/drm/i915/i915_drv.h               |   1 +
 drivers/gpu/drm/i915/i915_irq.c               |   8 +-
 drivers/gpu/drm/i915/i915_pci.c               |   7 +-
 drivers/gpu/drm/i915/i915_reg.h               | 139 ++++
 20 files changed, 1156 insertions(+), 55 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_wb_connector.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.h

-- 
2.25.1

