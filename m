Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDDB644175
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 11:45:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8675A10E316;
	Tue,  6 Dec 2022 10:45:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 558BD10E120
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 10:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670323533; x=1701859533;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jiTzygfupp80ic8DqHtqAy0uPNbBwBFXR5zQo0xVRBY=;
 b=BQJip4X6vsyhqlCNdfXfU7iPrrwvsiWDB5SDTP9EoPK7QiLCfSPs6b+O
 nnSfHpQslrOhcbL1t7bnE7Lk3+hjzYgiVnGR6T5rw9EkDty6zWlG2p21I
 8C7HU8+nahckaHKs1KByu8s9AoJ03IYHsOVz4yS6/n+nsOWAoOttvniZs
 sy3/XOuQCyZOZY3yuNNBJqgwosF0PKgkfQEpwUPJIOe03uAIqXSI6csrN
 KTQBJdOap/E4IOCwMnrd1BiY59pTnH7MDLnANdxk4CHbDhXYUemn9mIr7
 HWGcIWp2yg5bqcjKYOb6zgQNV7spL/vcGrJH7gJwDTOxRpVPBEI0tee2N g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317735326"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="317735326"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:45:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="714757908"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="714757908"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:45:30 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 16:16:18 +0530
Message-Id: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/12] Add DSC fractional bpp support
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

Rev2:
-Added patch to fix DSC Receiver Cap size macro. (kernel test robot)
-Addressed review comments from Stan.

Ankit Nautiyal (9):
  drm/i915/dp: Check if force dsc bpc <= max requested bpc
  drm/display/dp: Fix the DP DSC Receiver cap size
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
 drivers/gpu/drm/i915/display/intel_audio.c    |  14 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   6 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 .../drm/i915/display/intel_display_debugfs.c  |  84 +++++
 .../drm/i915/display/intel_display_types.h    |  17 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 321 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   2 +-
 .../gpu/drm/i915/display/intel_qp_tables.c    |   3 -
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  16 +-
 include/drm/display/drm_dp.h                  |   2 +-
 include/drm/display/drm_dp_helper.h           |   1 +
 15 files changed, 426 insertions(+), 84 deletions(-)

-- 
2.25.1

