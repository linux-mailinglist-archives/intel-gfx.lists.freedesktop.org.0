Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE08B846869
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 07:48:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4DD310E9A8;
	Fri,  2 Feb 2024 06:48:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CDJzlXrV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Fri, 02 Feb 2024 06:48:02 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6464D10E7AE
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 06:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706856482; x=1738392482;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fANxu2aCXsFa1wQRiWZiED7phMeirjbn0fi3WxDEy+8=;
 b=CDJzlXrVU0Ce4MDqyHGHDWLfT3xWwHj9G+9XJM4/wzfBeXqhGSi4m31s
 WBbp9c6dBnfTEoW+dkFyKkV3GJPgKc/u6geeV9+5D581QZgxD1P6sTmq3
 UncvjBKeEn+EwAun7Pum5fmjAzo+eh4pv9Fk4NSCR/Rst5YA46wWcNV0/
 HLcMV8PLBio3yvmJ4l2VRyQWvSEPlZlu6rsjLYfn0A7eA6habHVl5RboQ
 4FUKiRG1e1/Ml18C2de2ipY8MXmhCFxxEW0e1eEUYNTWt+lsn9sNf53Z6
 gHCUWfoqy8Xc4aZkeDIxIeWteNaeXISafi5gRCCLWm8rjnMdBkNAtodLO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="263545"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="263545"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 22:40:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="31084813"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa001.fm.intel.com with ESMTP; 01 Feb 2024 22:40:53 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 00/11] HDCP Type1 MST fixes
Date: Fri,  2 Feb 2024 12:08:41 +0530
Message-Id: <20240202063852.1076862-1-suraj.kandpal@intel.com>
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

Suraj Kandpal (11):
  drm/i915/hdcp: Move to direct reads for HDCP
  drm/i915/hdcp: Move source hdcp2 checks into its own function
  drm/i915/hdcp: Refactor intel_dp_hdcp2_capable
  drm/i915/hdcp: Pass drm_dp_aux to read_bcaps function
  drm/i915/hdcp: Add new remote capability check shim function
  drm/i915/hdcp: HDCP Capability for the downstream device
  drm/i915/hdcp: Remove additional timing for reading mst hdcp message
  drm/i915/hdcp: Extract hdcp structure from correct connector
  drm/i915/hdcp: Save acquire_ctx in intel_hdcp
  drm/i915/hdcp: Allocate stream id after HDCP AKE stage
  drm/i915/hdcp: Read Rxcaps for robustibility

 .../drm/i915/display/intel_display_debugfs.c  |  26 ++-
 .../drm/i915/display/intel_display_types.h    |   5 +
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 116 ++++++++-----
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 160 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_hdcp.h     |   3 +
 5 files changed, 191 insertions(+), 119 deletions(-)

-- 
2.25.1

