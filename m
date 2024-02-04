Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4918848E66
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Feb 2024 15:27:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CE1A1121CE;
	Sun,  4 Feb 2024 14:27:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jao7ZIoF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EEE1112042
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Feb 2024 14:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707056824; x=1738592824;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tN3xodVvmL92zEh7RUDPe1BRT9r8yov5kTG2MqxYq/A=;
 b=Jao7ZIoFKiOohicNkmyeh9kbUjIq2p46Pcwokb5Ry6vVxJdOIIMcwhxN
 0m0pmCdbhDCROKwMwZVOqFzt6kDYGJ7ZFhnDW/tST8XUNv/4lAlYwpRox
 ho9Vyj72N0E0gyp87AN4ZPuj4LfMmsxjteYRzEGyFF2yyQxH6ZEp3NNMy
 beG+3xcySZK5Bv/XTHLerTgDD/CS0e4hfaxzfvxuJgFsPoyypa+Sgewfm
 QHLQ4vNPMbJ0ewEqW3oAOn/QNC+XQZM1jL3ARF0dBWeqwSJyw4MKSv/Hn
 viyeB/u/lzB6Y2e6i13kBeWFr4UXszhmxr40luxXBWaPfWZs2kuWZUU6m g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10973"; a="17920756"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; d="scan'208";a="17920756"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2024 06:27:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; d="scan'208";a="31605252"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa001.fm.intel.com with ESMTP; 04 Feb 2024 06:27:02 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 00/11] HDCP Type1 MST fixes
Date: Sun,  4 Feb 2024 19:54:54 +0530
Message-Id: <20240204142505.1157146-1-suraj.kandpal@intel.com>
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

 .../drm/i915/display/intel_display_debugfs.c  |  24 ++-
 .../drm/i915/display/intel_display_types.h    |   5 +
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 122 ++++++++-----
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 160 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_hdcp.h     |   3 +
 5 files changed, 195 insertions(+), 119 deletions(-)

-- 
2.25.1

