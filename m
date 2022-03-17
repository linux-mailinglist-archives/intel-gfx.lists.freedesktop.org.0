Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F384DC17F
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 09:40:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0086610EC8C;
	Thu, 17 Mar 2022 08:40:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0FD410EC8C
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 08:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647506409; x=1679042409;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=voT8iwmwovk1+hTxUfyVQI8pKIRyLmga8TOnRI+4XLg=;
 b=PfuHk1zpf++A5uS8dW2sWoJHqUpkDqskEVL8JU7pc6fpCKspS/XmGVbK
 G1DjRvaCH8BFtSHnxzGKRvt359qlTLLBXknfu0+tySXpOzGhT3QnBoRQt
 llsCIzqA5H/cfXAzLQwkfJhzysr0UKOg69SDiQoliqTJRkkcPAA+CF2yO
 Kmzp8psuiW+cC6NLUb2MW/K4c95WrjL+PmGEMxoeJqH5MPedJNFrvbWf4
 ypPeCg6LNpgYp/YdDigOkL5JrYFHw7ri1/3HImTNW78l1oGxy4Fiw6Ao2
 hYvoNDnBkXDuvfzDAP6uC8x+g+9+a8YuAQNNcXEkS5X4pfZyu+KARWQvU g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="236761997"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="236761997"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 01:40:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="613934416"
Received: from kandpal.iind.intel.com ([10.190.239.32])
 by fmsmga004.fm.intel.com with ESMTP; 17 Mar 2022 01:40:03 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 14:09:26 +0530
Message-Id: <20220317083929.1352468-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220316093740.652925-1-suraj.kandpal@intel.com>
References: <20220316093740.652925-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH v2 0/3] i915 writeback private framework
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

-----
Version 2:
adding fixes to avoid regression in previous gen and some basic
checkpatch changes.

Suraj Kandpal (3):
  drm/i915: Creating writeback pipeline to bypass drm_writeback
    framework
  drm/i915: Define WD trancoder for i915
  drm/i915: Enabling WD Transcoder

 drivers/gpu/drm/i915/Makefile                 |   2 +
 drivers/gpu/drm/i915/display/intel_acpi.c     |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  89 +-
 drivers/gpu/drm/i915/display/intel_display.h  |  15 +
 .../drm/i915/display/intel_display_types.h    |  18 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |   3 +
 drivers/gpu/drm/i915/display/intel_opregion.c |   3 +
 .../gpu/drm/i915/display/intel_wb_connector.c | 296 ++++++
 .../gpu/drm/i915/display/intel_wb_connector.h |  99 ++
 drivers/gpu/drm/i915/display/intel_wd.c       | 978 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_wd.h       |  82 ++
 drivers/gpu/drm/i915/i915_drv.h               |   5 +
 drivers/gpu/drm/i915/i915_irq.c               |   8 +-
 drivers/gpu/drm/i915/i915_pci.c               |   7 +-
 drivers/gpu/drm/i915/i915_reg.h               | 139 +++
 15 files changed, 1742 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_wb_connector.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_wb_connector.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.h

-- 
2.35.1

