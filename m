Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D56D63A5F1
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 11:19:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF53710E2C8;
	Mon, 28 Nov 2022 10:18:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DCA010E2C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 10:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669630719; x=1701166719;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7yCQT7Qoft5qTt/taqM0HE3eh4ShJdyVCbHLzRjCL8E=;
 b=Zk+yTBL/yeJRfHA1Q9EFvHoapOruq9FIc/FYhOmpr/MzsPdp/zSD8hVN
 dV3gldryahyQiwgs9HnrwFL0C0o8SRSkKSOodFsEm++BMAfgfx13zy4Y7
 RkxM+SCrtWiUC+76IGXctR5muMmF2vop4SoaXzdRTYvSrzj7w1DB8LXEo
 /Eq88/lHAgY2dR22ZvNEVw8fhr0cMWJN5lRNH3x8mnnlaUzvsiXQth7cz
 dyLzhyUaaHP+ZovjpfFyXBHadHIYf+b2ZA1WTt1kMpOMaNSyEYdU6gJlf
 06pBognYNO3yd9ZITNjRJRA3RB/9YqA2T2bEC2+2RKTOiwQxn0U74TQ+F g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="294500106"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="294500106"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 02:18:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="749319715"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="749319715"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 02:18:25 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 15:49:11 +0530
Message-Id: <20221128101922.217217-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/11] Add DSC fractional bpp support
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

This patch series adds support for having fractional compressed bpp
for MTL+. The initial patches that lay groundwork to iterate over valid
compressed bpps to select the 'best' compressed bpp with optimal link
configuration are taken from upstream pending series:
https://patchwork.freedesktop.org/series/105200/

The later patches, add changes to accommodate compressed bpp with
fractional part, including changes to QP calculations.
To get the 'best' compressed bpp, we iterate over the valid compressed
bpp values, but with fractional step size 1/16, 1/8, 1/4 or 1/2 as per
sink support.

The last 2 patches add support to depict DSC sink's fractional support,
and debugfs to enforce use of fractional bpp, while choosing an
appropriate compressed bpp.

Ankit Nautiyal (8):
  drm/i915/dp: Check if force dsc bpc <= max requested bpc
  drm/display/dp: Add helper function to get DSC bpp prescision
  drm/i915/dp: Rename helpers to get DSC max pipe bpp and max output bpp
  drm/i915/dp: Get optimal link config to have best compressed bpp
  drm/i915/display: Store compressed bpp in U6.4 format
  drm/i915/display: Consider fractional vdsc bpp while computing m_n
    values
  drm/i915/audio : Consider fractional vdsc bpp while computing tu_data
  drm/i915/dp: Iterate over output bpp with fractional step size

Swati Sharma (2):
  drm/i915/dsc: Add debugfs entry to validate DSC fractional bpp
  drm/i915/dsc: Allow DSC only with fractional bpp when forced from
    debugfs

Vandita Kulkarni (1):
  drm/i915/dsc/mtl: Add support for fractional bpp

 drivers/gpu/drm/display/drm_dp_helper.c       |  27 ++
 drivers/gpu/drm/i915/display/icl_dsi.c        |  10 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |  12 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   6 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 .../drm/i915/display/intel_display_debugfs.c  |  84 +++++
 .../drm/i915/display/intel_display_types.h    |  17 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 318 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   2 +-
 .../gpu/drm/i915/display/intel_qp_tables.c    |   3 -
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  16 +-
 include/drm/display/drm_dp_helper.h           |   1 +
 14 files changed, 421 insertions(+), 82 deletions(-)

-- 
2.25.1

