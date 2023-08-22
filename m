Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E11DE784077
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 14:13:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AEC410E330;
	Tue, 22 Aug 2023 12:13:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFEC710E33F
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 12:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692706424; x=1724242424;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/4R9fVTM6Y4dGIYV5Uh4FUHdtOmlp4UvYImUjq9mVkQ=;
 b=nWmFwwLLqS86Sl1/SW81Ud6pJn3kvLYAfNpQPHMITRWHJKsIv1FI+EBw
 tensFKbwTKvS+3wD4oUws/48L443TtPJZ19JWsjWkUpQ773Bc+OH6V4xA
 kT9t6kT+ypG506BKBDKMIVzYHUilTTh8WZKVTOk9J3JSzuSbsy9a4aqnC
 MOlp+qPmbXUPMkU6puS66XM0obgcdQuJOtpImV6lxBGDf0uia796mwrlx
 QE6sW6/a8gUJhxswJR6jDZBeIhmb2xOM92UkHE05i34KD2c0tkeEF4t/O
 tse6gczPOmGbjZmbkQENbW8ag4jGKFkgJMI6p1WejFyXmm3G1ZUhxwsCx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="440230263"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="440230263"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:13:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="771335205"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="771335205"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:13:42 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Aug 2023 17:40:24 +0530
Message-Id: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/9] Add DSC fractional bpp support
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
Cc: manasi.d.navare@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series adds support for DSC fractional compressed bpp
for MTL+.

First fix patch is taken from :
https://patchwork.freedesktop.org/series/122613/
Adding here to to avoid issues while reading fractional bpp support.
The new few patches, add changes to accommodate compressed bpp with
fractional part, including changes to QP calculations.
To get the 'best' compressed bpp, we iterate over the valid compressed
bpp values, but with fractional step size 1/16, 1/8, 1/4 or 1/2 as per
sink support.

The last 2 patches add support to depict DSC sink's fractional support,
and debugfs to enforce use of fractional bpp, while choosing an
appropriate compressed bpp.

Ankit Nautiyal (6):
  drm/display/dp: Fix the DP DSC Receiver cap size
  drm/i915/display: Store compressed bpp in U6.4 format
  drm/i915/display: Consider fractional vdsc bpp while computing m_n
    values
  drm/i915/audio : Consider fractional vdsc bpp while computing tu_data
  drm/display/dp: Add helper function to get DSC bpp prescision
  drm/i915/dp: Iterate over output bpp with fractional step size

Swati Sharma (2):
  drm/i915/dsc: Add debugfs entry to validate DSC fractional bpp
  drm/i915/dsc: Allow DSC only with fractional bpp when forced from
    debugfs

Vandita Kulkarni (1):
  drm/i915/dsc/mtl: Add support for fractional bpp

 drivers/gpu/drm/display/drm_dp_helper.c       | 27 ++++++
 drivers/gpu/drm/i915/display/icl_dsi.c        | 10 +--
 drivers/gpu/drm/i915/display/intel_audio.c    | 14 ++--
 drivers/gpu/drm/i915/display/intel_bios.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  6 +-
 drivers/gpu/drm/i915/display/intel_display.h  |  2 +-
 .../drm/i915/display/intel_display_debugfs.c  | 82 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    | 17 +++-
 drivers/gpu/drm/i915/display/intel_dp.c       | 68 +++++++++------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  6 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |  2 +-
 .../gpu/drm/i915/display/intel_qp_tables.c    |  3 -
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 27 ++++--
 include/drm/display/drm_dp.h                  |  2 +-
 include/drm/display/drm_dp_helper.h           |  1 +
 15 files changed, 216 insertions(+), 53 deletions(-)

-- 
2.40.1

