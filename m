Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA37A21FBF
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 15:54:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9247D10E837;
	Wed, 29 Jan 2025 14:54:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AL45Vqsr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8FC010E832;
 Wed, 29 Jan 2025 14:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738162478; x=1769698478;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wrnx96VMLPKgRLx098IhvFYjtNFQea2FXNzvmQdmQls=;
 b=AL45Vqsr6kRJee5FBO8GVTvtkoaKz0Z4YcJsyFtEpyFP5UWusbcfxdNv
 OIIdtpAUArU4xwdcTj6AGAz+H6ZhZqZ8VDTRmxhRj/ZOIV+RJw2b+dNqV
 TizZxAf9qvKPC8PMSt0lerRcsu8HrHN/JId+6GtYB+COSPbEuJvuC1tLh
 TAeXvnfwS11EzB9yvEHRmO4UT9CfJdL6z39vWgRM1Dupho8kWhiAmkNNk
 0lOUa4NvgHgVL4KNTh5F5Ly0VJpfsegMvNH0Bl5ULglkhAkFJ420TDmKh
 NnDV4RBFUji6OEjZ39FUEH6SL0vrJj+QM4SEX71M+YF/ZuDMaouA8g0// A==;
X-CSE-ConnectionGUID: 392/kq6FQfCGw5MM49gQ6Q==
X-CSE-MsgGUID: jX8J/r7NS/qxLgOpBfie1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="61149213"
X-IronPort-AV: E=Sophos;i="6.13,243,1732608000"; d="scan'208";a="61149213"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 06:46:46 -0800
X-CSE-ConnectionGUID: Vx3SkyYVTCG+DFqbz7EM7A==
X-CSE-MsgGUID: i+eQ9FsYQfWIIVidgbe88A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108913862"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.235])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 06:46:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 0/6] drm/i915: DP and DP MST cleanups
Date: Wed, 29 Jan 2025 16:46:32 +0200
Message-Id: <cover.1738161945.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Just some cleanup prep work to make future changes easier to manage.

Jani Nikula (6):
  drm/i915/dp: constify struct link_config_limits pointers
  drm/i915/dp: change the order of intel_dp_mtp_tu_compute_config()
    params
  drm/i915/mst: change where lane_count and port_clock are set
  drm/i915/mst: handle mst pbn_div in intel_dp_mtp_tu_compute_config()
  drm/i915/mst: remove unnecessary mst_stream_find_vcpi_slots_for_bpp()
  drm/i915/mst: use min_array() and max_array() instead of hand-rolling

 drivers/gpu/drm/i915/display/intel_dp.c     | 20 ++---
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 86 ++++++++-------------
 drivers/gpu/drm/i915/display/intel_dp_mst.h |  3 +-
 4 files changed, 44 insertions(+), 67 deletions(-)

-- 
2.39.5

