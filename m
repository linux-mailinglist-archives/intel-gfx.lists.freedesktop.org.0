Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EC979A2B2
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 07:11:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BECBC10E10C;
	Mon, 11 Sep 2023 05:11:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 396DA10E104
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 05:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694409096; x=1725945096;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qyGe3Nycg17DWOWxaPq4vpWijBRrVNCVZiUtns3Oz5U=;
 b=Kc8NY7iPj5mh+eR6t+zU6iWZtnmFCZkljZcNPVo7kTdaOOfAGtSBF44p
 qoNM0yYrkmsyqmMf5Se8MglHtIT+/RtRNo1K+O/WfzjUrIqkBaKNtiK3D
 u/NT3ypBOgrPpq9a5jhvQ9qJOZe1qL6Yj6fcF4uacgM0VMLPM5Qwj3mQx
 RZKvkfNs2MWCl6qI3Q02lE7m1VfoV4Nq+lGUdfiaYcYRbETCus/kHhB5h
 Dp95iYFXy2QuNKPI3V9OxQDo+Tj1GDgeuVCThZEZgvKLs6AlFV+5FZAz6
 2j/suPBaSBYckJKMZov6r8P/I181E4AoBrwzMh/cpFiUu2pgy9sPxXD9i w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="377911986"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="377911986"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 22:11:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="808692811"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="808692811"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga008.fm.intel.com with ESMTP; 10 Sep 2023 22:11:10 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 10:35:41 +0530
Message-Id: <20230911050549.763538-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/8] Add DSC fractional bpp support
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

This patch series adds support for DSC fractional compressed bpp
for MTL+. The series starts with some fixes, followed by patches that
lay groundwork to iterate over valid compressed bpps to select the
'best' compressed bpp with optimal link configuration (taken from
upstream series: https://patchwork.freedesktop.org/series/105200/).

The later patches, add changes to accommodate compressed bpp with
fractional part, including changes to QP calculations.
To get the 'best' compressed bpp, we iterate over the valid compressed
bpp values, but with fractional step size 1/16, 1/8, 1/4 or 1/2 as per
sink support.

The last 2 patches add support to depict DSC sink's fractional support,
and debugfs to enforce use of fractional bpp, while choosing an
appropriate compressed bpp.

Ankit Nautiyal (5):
  drm/display/dp: Add helper function to get DSC bpp prescision
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

 drivers/gpu/drm/display/drm_dp_helper.c       | 27 ++++++
 drivers/gpu/drm/i915/display/icl_dsi.c        | 10 +--
 drivers/gpu/drm/i915/display/intel_audio.c    | 14 ++--
 drivers/gpu/drm/i915/display/intel_bios.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  8 +-
 drivers/gpu/drm/i915/display/intel_display.h  |  2 +-
 .../drm/i915/display/intel_display_debugfs.c  | 82 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    | 19 ++++-
 drivers/gpu/drm/i915/display/intel_dp.c       | 74 +++++++++++------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 24 +++---
 drivers/gpu/drm/i915/display/intel_fdi.c      |  2 +-
 .../gpu/drm/i915/display/intel_qp_tables.c    |  3 -
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 29 +++++--
 include/drm/display/drm_dp_helper.h           |  1 +
 15 files changed, 233 insertions(+), 68 deletions(-)

-- 
2.25.1

