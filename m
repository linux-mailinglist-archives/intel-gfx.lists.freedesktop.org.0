Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC5585607D
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 12:01:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2159910E14F;
	Thu, 15 Feb 2024 11:01:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mo8ExhQZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80FE410E14F
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 11:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707994882; x=1739530882;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GVWsYHXM+OKcPzF6CBtq+y4jkZg0qkmys1j9zGlyl6s=;
 b=Mo8ExhQZCoiAlyLT6GHxJmOS8sN7flwTq63UUsCDrbOXfpgdi44Kg+51
 LEok/HG/DitIZbV62T+tT9k1Wiu4ttphaG1J4lBqOL8noed7dvxGoXutN
 t7JaNDcVXa9CT4Ox9b8bb0fY/82jqi4x7U6HVT2in6crWCxaQSvzonDkr
 1BknDKJfoNNt1JwlL6VzLQaiay5W5t7qCr/K7xXYgLcQ1AYpHJ4oM1WHO
 vrrOZMPSqSJkWWb5bDZDOYH4rImnfNQmAItvUSln399PeaSVqaLJENLxP
 M9XFZxouMBAbhFPNmWHRLTwKhVdbXEblJVqRLbGEpTrthZMdylltjKL7D A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="19494270"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; d="scan'208";a="19494270"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 03:01:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="3820853"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa007.jf.intel.com with ESMTP; 15 Feb 2024 03:01:20 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 00/13] HDCP MST Type1 fixes
Date: Thu, 15 Feb 2024 16:29:06 +0530
Message-Id: <20240215105919.1439549-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
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

Suraj Kandpal (13):
  drm/i915/hdcp: Move to direct reads for HDCP
  drm/i915/hdcp: Move source hdcp2 checks into its own function
  drm/i915/hdcp: Refactor intel_dp_hdcp2_capable
  drm/i915/hdcp: Pass drm_dp_aux to read_bcaps function
  drm/i915/hdcp: Rename hdcp capable functions
  drm/i915/hdcp: Add new remote capability check shim function
  drm/i915/hdcp: HDCP Capability for the downstream device
  drm/i915/hdcp: Remove additional timing for reading mst hdcp message
  drm/i915/hdcp: Extract hdcp structure from correct connector
  drm/i915/hdcp: Don't enable HDCP2.2 directly from check_link
  drm/i915/hdcp: Don't enable HDCP1.4 directly from check_link
  drm/i915/hdcp: Allocate stream id after HDCP AKE stage
  drm/i915/hdcp: Read Rxcaps for robustibility

 .../drm/i915/display/intel_display_debugfs.c  |  21 +-
 .../drm/i915/display/intel_display_types.h    |  12 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 137 +++++++----
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 227 +++++++++---------
 drivers/gpu/drm/i915/display/intel_hdcp.h     |   7 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   6 +-
 6 files changed, 229 insertions(+), 181 deletions(-)

-- 
2.25.1

