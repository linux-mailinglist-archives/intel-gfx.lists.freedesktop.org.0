Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D7384481E
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 20:41:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A84410E041;
	Wed, 31 Jan 2024 19:41:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CD0E10E041
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 19:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706730091; x=1738266091;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WtiMHhlGcgjj+oKt9muWPZkcm+9C1iUcKVbfHvPU5kI=;
 b=nfvo9CKukyr6zOxIxsx0/zDp3P+92YfCpcdWmZG3cAWKUeQLj+FVZQkk
 IKfKvc6sokxmOvBJ1MY8Y0Y7HkE7UJbU9KHJ5y2bMk5atY6UYUWwJUAsq
 elOEX2SI6nNpLmv0wp13gb1I3RHqliKzhwkhui0qlMffrOgoZbMeMs1Qi
 mVuh0ypCnd89MxcUC9vr54VZz10ZO0u5M5SP1N+lqeLA3pp7MmlVdF0Bw
 ULL4T2qUn8YMQayvPvoEje13ZGjtf/u3s5LqWq9hl8qatETxq+gbxTQqH
 sx+ZgirFD5nniUOD9VBGZ+YCcFJB48U59hHkhAB56vByWbOL8V+kE9z6w A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="402549761"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="402549761"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 11:41:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="788694631"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="788694631"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 31 Jan 2024 11:41:27 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/10] HDCP Type1 MST fixes
Date: Thu,  1 Feb 2024 01:09:19 +0530
Message-Id: <20240131193929.938748-1-suraj.kandpal@intel.com>
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

