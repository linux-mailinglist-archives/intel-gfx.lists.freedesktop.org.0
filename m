Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED30881852
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 21:11:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B397910E3FB;
	Wed, 20 Mar 2024 20:11:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IQTTY1y+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4603410E3C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 20:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710965484; x=1742501484;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dhFH0STUxXb3MFXEZCGiDWoW3ws/1Oa6fPOU1p+beVY=;
 b=IQTTY1y+QtgfZv6ySN2VRBc2PSPHZaurZp9maBaZHA7RRTjlGUxJnplb
 5Mi/u1Cw+/S90Utci9SilzQZ1XMsYkArK18f5omwTk+cxCsuXnxIrpY3a
 Wu7FFYuZfh6vyA/tv3P3EpZI/Rk6F+wvtp1G4NwghxrptR4WvIlIIOThp
 bEo6jzkNuTgQGgFgmdOfYTdzAsxZm3G/t8TRJ2GKVzx8skxxNRMJDirMe
 HVDm+/Lo+Sk4Fh0paMZuHuOsvcACvZjsU105CX5rghEe2kIZt3igeLTfO
 Ib8O02DyRCqEvA+b6Gz0lRBYtzF3bnv9iBtD6RTj/Noz0tLZ82CkkUI4P w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="31352327"
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="31352327"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 13:11:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="14246453"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 13:11:23 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/11] drm/i915/dp: Few MTL/DSC and a UHBR monitor fix
Date: Wed, 20 Mar 2024 22:11:40 +0200
Message-ID: <20240320201152.3487892-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
MIME-Version: 1.0
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

This patchset fixes a few MTL/DSC 1.2 related issues and adds a
workaround for the native 5k@60Hz uncompressed mode on a MediaTek/Dell
UHBR monitor, force-enabling DSC on it as required, similarly to the
existing HBLANK expansion quirk for Synaptics hubs.

Imre Deak (11):
  drm/i915/dp: Fix DSC line buffer depth programming
  drm/i915/dp_mst: Fix symbol clock when calculating the DSC DPT bpp
    limit
  drm/i915/dp_mst: Fix BW limit check when calculating DSC DPT bpp
  drm/i915/dp_mst: Account for channel coding efficiency in the DSC DPT
    bpp limit
  drm/i915/dp_mst: Account with the DSC DPT bpp limit on MTL
  drm/i915/dp_mst: Sanitize calculating the DSC DPT bpp limit
  drm/dp: Add drm_dp_uhbr_channel_coding_supported()
  drm/dp_mst: Factor out drm_dp_mst_port_is_logical()
  drm/dp_mst: Add drm_dp_mst_aux_for_parent()
  drm/i915/dp_mst: Make HBLANK expansion quirk work for logical ports
  drm/i915/dp_mst: Enable HBLANK expansion quirk for UHBR rates

 drivers/gpu/drm/display/drm_dp_helper.c       |  2 +
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 22 ++++-
 drivers/gpu/drm/i915/display/intel_dp.c       | 18 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 87 ++++++++++++-------
 include/drm/display/drm_dp_helper.h           |  6 ++
 include/drm/display/drm_dp_mst_helper.h       |  7 ++
 include/drm/display/drm_dsc.h                 |  3 -
 7 files changed, 98 insertions(+), 47 deletions(-)

-- 
2.43.3

