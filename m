Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC53714855
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 13:09:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07F3010E279;
	Mon, 29 May 2023 11:09:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D7E610E277
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 11:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685358552; x=1716894552;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zmg9fzEv1REEM6ffEmwVbsel6Dxe49tbZHkx0Q9v2To=;
 b=JVD2qqW9ePPt5nnAxR1aGsw5YVZ6HNNpZvO/A3SA2FK5icPio2L97+5H
 8xsI5Je9buIQWTHJrfe1GZti2b67z+3SZD+dS5oONQ1u5me/DzWNRvH4F
 SwGO0tfxDME5lrCOCmPkG03d8zAee9vmhXmlVlGA+xdq4PpvuyR4S4jEa
 VqjyGXq03GoILVomvONT5KqHOOzS0MRk8nl4TSRmf8zNGs69/zKX3txMo
 TfOpTDY93yfRCi729YfJoFtQFppOrFZll316CWauB8j282DSfpkoBq/8s
 2k378qMUNh+NBVx1ZJzSfR5Xm+gRFj3NekSKxZAl1Ln/bqyhPibzG9404 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="382936194"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="382936194"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 04:09:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="709233372"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="709233372"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 29 May 2023 04:09:10 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 May 2023 16:37:37 +0530
Message-Id: <20230529110740.1522985-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/3] HDCP Cleanup
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

Some basic cleanup of hdcp code.
Consists of 
-rename dev_priv to i915.
-move away from master naming rename it to arbiter.
-rename comp_mutex to hdcp_mutex.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Suraj Kandpal (3):
  drm/i915/hdcp: Rename dev_priv to i915
  drm/i915/hdcp: Move away from master naming to arbiter
  drm/i915/hdcp: Rename comp_mutex to hdcp_mutex

 .../gpu/drm/i915/display/intel_display_core.h |   8 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 652 +++++++++---------
 drivers/gpu/drm/i915/display/intel_hdcp.h     |   6 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |  16 +-
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 drivers/misc/mei/hdcp/mei_hdcp.c              |  26 +-
 include/drm/i915_hdcp_interface.h             |   4 +-
 7 files changed, 357 insertions(+), 357 deletions(-)

-- 
2.25.1

