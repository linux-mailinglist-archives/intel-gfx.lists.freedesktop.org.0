Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DE288D582
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 05:47:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F19F10F7ED;
	Wed, 27 Mar 2024 04:47:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A+iQRMeC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F8DB10F7ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 04:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711514819; x=1743050819;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3dCnR6ozrI18c8F7jq50/PpTDFaRifUhcpgz5topLiw=;
 b=A+iQRMeCx9GkguKX2IKGT/JkFkq+eQxaHkrK/7AlO8RrbkMoyezv23Z2
 f5ObQnOA0zdiU4knHlEDAFineN1xr4fQSGWy6AtsUK3cHBJueRtdMHbAj
 CCbYzqx7sYEXCd/iMqNvwZdtTSTeCi5xVJt4gn05fvgnbN/L/AaniIN/Y
 VgBXw9F8hmbpbXkynA0YA2m657OmiT7T8uPYzS1VHkdOKQY5NysAzaxcU
 LPIgzpKjSqG/83OrXSRXdlI/NgsG5LGVmfh8i5Lvo9ezaHbP1tE7tafij
 YQhjc6Il8/yEcil40o2RNvqYNkKBvnfTD9xjtN7bENPsKvX8icbHwhoW4 g==;
X-CSE-ConnectionGUID: L5E1zbiETnG3NyKFM1vMGQ==
X-CSE-MsgGUID: qvLK6SnIRuO0Rd7DVeXc7w==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="29072750"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="29072750"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 21:46:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="47363374"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa001.fm.intel.com with ESMTP; 26 Mar 2024 21:46:58 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] Fix UBSAN warning in hdcp_info
Date: Wed, 27 Mar 2024 10:14:21 +0530
Message-ID: <20240327044422.240398-2-suraj.kandpal@intel.com>
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

This patch series fixes the UBSAN warning which gets called
when hdcp_info is invoked accompanied by some other logical fixes
required in the hdcp capability function.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/display: Initialize capability variables
  drm/i915/hdcp: Fix get remote hdcp capability function

 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c         | 9 ++++-----
 2 files changed, 5 insertions(+), 6 deletions(-)

-- 
2.43.2

