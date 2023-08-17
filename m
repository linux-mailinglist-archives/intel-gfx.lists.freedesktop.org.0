Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6368B77FBC0
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 18:16:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 578E610E510;
	Thu, 17 Aug 2023 16:16:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2203810E4FE
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 16:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692288963; x=1723824963;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pch+dQktkHxWagN7MYdzfq0qTsA4M7lemMU6vjhe+Sw=;
 b=hQDFXcJbEs5oOIT48GOQezh3ESnumK4iUF7vvAme4dOrljDWpgcLf2zv
 OQZYdJDMmekZr3xr0jMncabzkfP3G/bZnf3ZwyJcWeQPFvK8+Nv245BAw
 v2bLlr5tbQIujGCFSIjnpJOOP/O+BHhoRnkyAh2YNwnX86kvEldCXAnF5
 NrwF5RR5Y7bH5jUOX1QXZICWXI7uuoGbsbqHIECAL4QhDOa6fPwotcFWb
 cjttSuVxBEl4se6bBB2W/hdruNQtGShsDlM0bP8zZa2JdKI/Z+HwzMA5q
 eEzXqXVAURUwD5MpSrLhN+VPbPKRRfK1m0uFCmL9Ellf7b9qTMWBGMcSr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="357826558"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="357826558"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:14:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="711601346"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="711601346"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:14:41 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 19:14:39 +0300
Message-Id: <20230817161456.3857111-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/17] drm/i915: Improve BW management on shared
 display links
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

This patchset improves the BW management of display output links shared
by multiple streams (pipes). At the moment each stream tries to reduce
its own BW in case of a limitation (by reducing the output pixel color
depth or enabling compression), however this may not reduce the BW
sufficiently resulting in the given modeset to fail.

Instead of the above this patchset will try to resolve the BW limitation
by reducing the BW of each stream on the same link in turn (reducing the
color depth and then turning on compression if possible as above), until
the total BW is within limits. Atm links where streams share the BW and
this change applies to are the PCH FDI bus and the DP MST link.

Imre Deak (17):
  drm/i915/dp: Factor out helpers to compute the link limits
  drm/i915/dp: Track the pipe and link bpp limits separately
  drm/i915/dp: Skip computing a non-DSC link config if DSC is needed
  drm/i915/dp: Update the link bpp limits for DSC mode
  drm/i915/dp: Limit the output link bpp in DSC mode
  drm/i915: Add helper to modeset a set of pipes
  drm/i915: Factor out a helper to check/compute all the CRTC states
  drm/i915/fdi: Improve FDI BW sharing between pipe B and C
  drm/dp_mst: Fix fractional bpp scaling in drm_dp_calc_pbn_mode()
  drm/dp_mst: Add a way to calculate PBN values with FEC overhead
  drm/dp_mst: Add helper to determine if an MST port is downstream of
    another port
  drm/dp_mst: Factor out a helper to check the atomic state of a
    topology manager
  drm/dp_mst: Swap the order of checking root vs. non-root port BW
    limitations
  drm/i915/dp_mst: Fix PBN calculation with FEC overhead
  drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
  drm/i915/dp_mst: Improve BW sharing between MST streams
  drm/i915/dp_mst: Check BW limitations only when all streams are
    computed

 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |   2 +-
 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |   2 +-
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 172 ++++++++++---
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   5 +-
 drivers/gpu/drm/i915/display/intel_atomic.c   | 215 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_atomic.h   |   8 +
 drivers/gpu/drm/i915/display/intel_crt.c      |   7 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  | 129 ++++++----
 drivers/gpu/drm/i915/display/intel_display.h  |   6 +
 .../drm/i915/display/intel_display_types.h    |  10 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 177 +++++++++++---
 drivers/gpu/drm/i915/display/intel_dp.h       |  17 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 227 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp_mst.h   |   3 +
 drivers/gpu/drm/i915/display/intel_fdi.c      |  66 +++--
 drivers/gpu/drm/i915/display/intel_fdi.h      |   4 +
 drivers/gpu/drm/i915/display/intel_lvds.c     |   9 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   9 +-
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |   2 +-
 .../gpu/drm/tests/drm_dp_mst_helper_test.c    |  31 ++-
 include/drm/display/drm_dp_mst_helper.h       |   9 +-
 22 files changed, 910 insertions(+), 201 deletions(-)

-- 
2.37.2

