Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 824D785F20B
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 08:46:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF62310E892;
	Thu, 22 Feb 2024 07:45:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S8GSNFVQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99EA210E892
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 07:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708587957; x=1740123957;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UavXwdJmwudySItglSYoYO4uA5boXOAsJFZZ/A7/xf4=;
 b=S8GSNFVQ+Acdy6GmAySCiwJEftPO7tHT7OGW4dURXPpsEkB/CnwbuMSl
 rDcwsdUxXLR8m+y7dXELluV3xRuToUeaAJS5N6hyIXM5uZ5kfOrFGN0y+
 4CWWay7ozG+7s/u796CitLqjBcoylOAqNVSM74YZRhIkZElLBqQlAuNkb
 thSMCgLsdtKrgoDzaKiNYOc9XSSwkHBOmnsXnR90y/JpIj3JCINfRTDWQ
 etelGE0fhx6skE94wQeo7YyWdFjknGg0Lx0qZTzkSUFW0FZ6MlBfVh4nK
 BoRie4Ctg+uhqAMpUM7DwnftgfHr31IOrZm1Szc+LvsTEciSoBqFK6MNW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2906003"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2906003"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 23:45:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5354111"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 21 Feb 2024 23:45:54 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 00/13] HDCP MST Type1 fixes
Date: Thu, 22 Feb 2024 13:13:41 +0530
Message-ID: <20240222074353.1568904-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 226 +++++++++---------
 drivers/gpu/drm/i915/display/intel_hdcp.h     |   7 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   6 +-
 6 files changed, 228 insertions(+), 181 deletions(-)

-- 
2.43.2

