Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B51F844803
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 20:34:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8327910EC4F;
	Wed, 31 Jan 2024 19:34:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A508A10FC13
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 19:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706729681; x=1738265681;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WtiMHhlGcgjj+oKt9muWPZkcm+9C1iUcKVbfHvPU5kI=;
 b=ARmdkAhbzs1LzlPvxSa+d6RVKg2h3trR8Eh50XUd/9XkdMBT0Ix+Peix
 /zNMa1+n4I6mogxVJ2b2ziy9xCJHKWZnvlpMa2sxkFfdGoM1qavTiiqAb
 q6pIXDeJvc7gb3l4sC0ZtBO4yGQ1iZMMZvMUXPuzzO3NUMB8qpqfDj+nU
 UfQZOVccM7GaoF1J8czs5qm0EcQ0EIHM5fadX/gWgLPyyVfISMu//Eci/
 42SaoNYmygV+KUaXBCTKmmpwk19MR6M+Tw4yEf1j4W5JYAq5j+bg6H+zB
 sPwsDJRxs/yt4MHLAoZZuu6WTJCSKc0bi3/gmPOxig6znkCexHb0qotZT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="467936109"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="467936109"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 11:34:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="822686243"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="822686243"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga001.jf.intel.com with ESMTP; 31 Jan 2024 11:34:39 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/10] HDCP Type1 MST fixes
Date: Thu,  1 Feb 2024 01:02:31 +0530
Message-Id: <20240131193240.938405-1-suraj.kandpal@intel.com>
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

Suraj Kandpal (10):
  drm/i915/hdcp: Move to direct reads for HDCP
  drm/i915/hdcp: Move source hdcp2 checks into its own function
  drm/i915/hdcp: Refactor intel_dp_hdcp2_capable
  drm/i915/hdcp: Pass drm_dp_aux to read_bcaps function
  drm/i915/hdcp: Add new remote capability check shim function
  drm/i915/hdcp: HDCP Capability for the downstream device
  drm/i915/hdcp: Remove additional timing for reading mst hdcp message
  drm/i915/hdcp: Extract hdcp structure from correct connector
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

