Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5820482BBE8
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 08:43:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A40EF10E030;
	Fri, 12 Jan 2024 07:43:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53EC410E030
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 07:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705045405; x=1736581405;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=m1rcwCl0BhYZzPnSOFuP3+GfksESfgT2Hry2FHoFp90=;
 b=MOye1z6XPaEq/kpZb5Epwyr2I9mb8jt4BokReK1pmOvIKsbIZ2FvI1R3
 EaPnQxZOdsfrIIk25bmp/kfj5gwogRPD50AEv/owmxHzJxJT4tqRnfBBD
 sCYCoRPu5RrHsUBYDdYUzoYHsbSlNFwVFTYLCxkaC+tz9OoA7Sna/CoQ3
 +JagjCglSnxsVgdpfCylToNzW42nmswCuNn+VuM1VpdRFSQ3yVn7ILq0D
 B21ifK/s35eZCR6bVkJ0+n/g3OvFjF5xMFHEUj9kqd2hdVYKEqaMNiFkU
 xiyckq5LncpnF+pRdOX/3BEYTY8R3Wb6fyn3HbVSSKOpKIX2K2qQ28feZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="5866957"
X-IronPort-AV: E=Sophos;i="6.04,188,1695711600"; 
   d="scan'208";a="5866957"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 23:43:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,188,1695711600"; d="scan'208";a="17317572"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa002.fm.intel.com with ESMTP; 11 Jan 2024 23:43:22 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/7] HDCP Type1 MST fixes
Date: Fri, 12 Jan 2024 13:11:13 +0530
Message-Id: <20240112074120.159797-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

We were seeing a blank screen whenever Type1 content was played.
This was due to extra timing which was taken as we had moved to
remote read and writes previously for MST scenario, which in turn
was done as we were not able to do direct read and writes to the
immediate downstream device.
The correct flow should be that we talk only to the immediate
downstream device and the rest needs to be taken care by that device.
With this patch series we move back to direct reads and writes,
fix the fastset setting because of which direct reads and writes to
HDCP related DPCD register stopped working, derive hdcp structure
correctly and increase robustability if rxcaps HDCP capability
reporting.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (6):
  drm/i915/hdcp: Move to direct reads for HDCP
  drm/i915/hdcp: HDCP Capability for the downstream device
  drm/i915/hdcp: Remove additional timing for reading mst hdcp message
  drm/i915/hdcp: Extract hdcp structure from correct connector
  drm/i915/hdcp: Allocate stream id after HDCP AKE stage
  drm/i915/hdcp: Read Rxcaps for robustibility

Ville Syrjälä (1):
  drm/i915/display: fastset tbt pll thing

 .../drm/i915/display/intel_display_debugfs.c  |  19 ++-
 .../drm/i915/display/intel_display_types.h    |   3 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  54 ++++----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   8 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 130 ++++++++----------
 drivers/gpu/drm/i915/display/intel_hdcp.h     |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
 7 files changed, 115 insertions(+), 103 deletions(-)

-- 
2.25.1

