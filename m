Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB79539F4C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jun 2022 10:22:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C69B4113519;
	Wed,  1 Jun 2022 08:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F06711351A
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jun 2022 08:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654071769; x=1685607769;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WNohmDNv95ODKYgZUtPK2XnzAVp5SgAPvcMzwOrhK8E=;
 b=Y9f6fmcV1sfVBjMu/hBvFJ1QFeYh6HiOInf1o7BVpO5QPGxeLIuMYsGl
 odGl4eZIX7Z080oBjUkLUelU7apBWPCBnUL2lWUFye7c3lZK2s4J5OGJp
 QGRTAQa/laDK51rVfypw6kw8OLm2nrA9J/GTMTZ/TILMtI9K6e9YeblIF
 vC5A0YuoQzknMauBeejjh48rCReUyvXPHIyWG/EI1f7/0oERCKmvGRt32
 LBQurB47SUlVfnSi12qbbFca2P7jWwq3zkaNn31KHEgZ0bZhO/kZvJ+TM
 x2KXwPcKgjIPFTd54phzi4IIbz78cOeYd4RnkzfSdLWRg/+VmpUAfc9jc w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="273079830"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="273079830"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2022 01:22:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="581477324"
Received: from kandpal.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 01 Jun 2022 01:22:46 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jun 2022 13:51:58 +0530
Message-Id: <20220601082200.368911-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 0/2] i915 writeback enablement
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

With this we try to enable writeback feature keeping with the drm_core
drm_writeback framework but to do this we have to create a drm_encoder and
drm_connector which is not present in intel_connector and intel_encoder
which causes all our iterators to bug out as they assume any drm_encoder
and drm_connector will naturally be embedded in the intel_ counterpart
structures but this cannot be acheived from drm_writeback_connector as
the drm_encoder and drm_connector fields in the structure are pointers
which does not allow us to embed them in our intel_ structures.I have 
tried to change some iterators and show what further changes may look
like but this will happen any and every place for_each_intel_encoder or
for_each_intel_connector_ is going to be used.I would like suggestions
on if moving forward with this approach would be useful or if the
private i915 framework mentioned below sounds more practical.
We previously tried to change the drm_connector and drm_encoder fields
into pointer in the drm_writeback_connector structure but faced a huge 
backlash from community.
Other than this approach we have another solution which won't be as much
of a work and will require minimal changes is where we take the whole
drm_writeback framework that is being used pull it into i915 making it
private and change the encoder and connector fields to pointers. The
approach has been floated in below series
[1] https://patchwork.freedesktop.org/series/103417/
Suraj Kandpal (2):
  drm/i915: Define WD trancoder for i915
  drm/i915: Enabling WD Transcoder

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_acpi.c     |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  | 369 +++++++--
 drivers/gpu/drm/i915/display/intel_display.h  |  23 +
 .../drm/i915/display/intel_display_types.h    |  30 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |   6 +
 drivers/gpu/drm/i915/display/intel_opregion.c |   3 +
 .../gpu/drm/i915/display/intel_wb_connector.h |  20 +
 drivers/gpu/drm/i915/display/intel_wd.c       | 748 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_wd.h       |  84 ++
 drivers/gpu/drm/i915/i915_drv.h               |   4 +
 drivers/gpu/drm/i915/i915_irq.c               |   8 +-
 drivers/gpu/drm/i915/i915_pci.c               |   7 +-
 drivers/gpu/drm/i915/i915_reg.h               | 139 ++++
 14 files changed, 1395 insertions(+), 48 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_wb_connector.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.h

-- 
2.35.1

