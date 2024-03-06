Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31429872CE6
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 03:45:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F23F2112E28;
	Wed,  6 Mar 2024 02:45:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V3aB+Yk+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FFBB112E25;
 Wed,  6 Mar 2024 02:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709693103; x=1741229103;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=U4PCyC5AiV544XLpxQ1e7LSM8ODypSjVk7RLqotfg3w=;
 b=V3aB+Yk+IHuR6niJyB5bH7oyZEO9EEDyqA3+YCGXqISfe4pF/cbhvS2Q
 iKLNC2uY+gx76zgpu4gw52qrszEO0C4lLA4dA7Ue2IIbUhX4A+nTmEr73
 qSaBF4ElRBL6MUOGrdPqA7HxgohHbS+RQAuHhJKae+Rw8/IbUMuRr/M7e
 HvbWHz2cyEIvkw+Lk8jIpW3C6ul+Bvn+lwpogsOjt5sxguzLR5T1AQKg5
 M/tpOgIGyqyC6y/vHHHWrknNL9rdhpHUleqCBx4bCq2r0qtvBTdgllgFr
 9gUMef1og+9nC7VOWNBZQpsl9GNK/BFoB1gwEZomNop/GfUesg9gMCFH1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="8049984"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; 
   d="scan'208";a="8049984"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 18:45:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="10175823"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa008.jf.intel.com with ESMTP; 05 Mar 2024 18:45:00 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 0/4] XE HDCP Enablement
Date: Wed,  6 Mar 2024 08:12:44 +0530
Message-ID: <20240306024247.1857881-2-suraj.kandpal@intel.com>
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

This patch series enables HDCP on XE.
Mainly includes rewriting functions that were responsible for
sending hdcp messages via gsc cs.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

Suraj Kandpal (4):
  drm/i915/hdcp: Move intel_hdcp_gsc_message def away from header file
  drm/xe/hdcp: Use xe_device struct
  drm/xe: Use gsc_proxy_init_done to check proxy status
  drm/xe/hdcp: Enable HDCP for XE

 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |   6 +
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |   7 +-
 drivers/gpu/drm/xe/Makefile                   |   1 +
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 240 +++++++++++++++++-
 drivers/gpu/drm/xe/xe_gsc_proxy.c             |   4 +-
 drivers/gpu/drm/xe/xe_gsc_proxy.h             |   1 +
 drivers/gpu/drm/xe/xe_gsc_submit.c            |  15 ++
 drivers/gpu/drm/xe/xe_gsc_submit.h            |   1 +
 8 files changed, 257 insertions(+), 18 deletions(-)

-- 
2.43.2

