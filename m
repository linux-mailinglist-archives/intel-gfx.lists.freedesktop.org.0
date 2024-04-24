Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0828B1409
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 22:05:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99FD911205D;
	Wed, 24 Apr 2024 20:05:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b803Uqof";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0E6C112052;
 Wed, 24 Apr 2024 20:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713989148; x=1745525148;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hj2LkqStrUz6qVVkQth/kx5wE5T6m+uEarzs+8fjSpA=;
 b=b803Uqofnb+95UghzUWcYmmRtvwORFsF5LFEPpbiELFrDrcLPalDy3bB
 M/YxAOjSIAuYFr9dBRrO5q3Y3V7Ngn24zxVL8oBCLVnOD9ufFbMDqHUYK
 GsLfhHlKaaRMoa2GuWLkBm4D8sCtr+7FKk4BNAOP/3DNiDmkTBDHnENNJ
 6X/1ncycoHh9qwd84Lttn0KHgjp4vTxU4EFP6Gee6KjoiESfSF9i6BZDu
 VT5kbcvJ6clgqRHluF8G3xkaWHVf7aknaLWHmPEKV2F+/Z2izrDD3eaV4
 aiLK2z//jEt7zSxFkbIkzNAqMQ4kHX5773mpoY2BUFD2r/DPRu8Fo/poi A==;
X-CSE-ConnectionGUID: BP2POAd9RjGmAlGDM1taWw==
X-CSE-MsgGUID: kW9GgbBHRoGaRereGqHfsA==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="20194721"
X-IronPort-AV: E=Sophos;i="6.07,227,1708416000"; d="scan'208";a="20194721"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 13:05:47 -0700
X-CSE-ConnectionGUID: U6qnsvc4RT2MFPd6qGQ7Fg==
X-CSE-MsgGUID: 33q1YjXWTWm2oqHvTV/47w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,227,1708416000"; d="scan'208";a="25251965"
Received: from unknown (HELO gjsousa-mobl2.intel.com) ([10.124.220.146])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 13:05:46 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: linux-firmware@kernel.org
Cc: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: PR for Xe2LPD DMC v2.20
Date: Wed, 24 Apr 2024 17:05:16 -0300
Message-ID: <20240424200515.281478-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.44.0
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

The following changes since commit 93f329774542b9b7d57abb18ea8b6542f2d8feac:

  Merge branch 'robot/pr-0-1709214990' into 'main' (2024-02-29 14:10:53 +0000)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/firmware.git tags/intel-2024-04-24

for you to fetch changes up to 8a52a94db5502d797864f5209c28739d2d9449d0:

  i915: Update Xe2LPD DMC to v2.20 (2024-04-22 23:31:42 +0530)

----------------------------------------------------------------
Intel DRM firmware intel-2024-04-24

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: Add DG2 HuC 7.10.15

Dnyaneshwar Bhadane (1):
      i915: Update Xe2LPD DMC to v2.20

 WHENCE               |   4 ++--
 i915/dg2_huc_gsc.bin | Bin 622592 -> 630784 bytes
 i915/xe2lpd_dmc.bin  | Bin 61208 -> 59284 bytes
 3 files changed, 2 insertions(+), 2 deletions(-)
 mode change 100755 => 100644 i915/dg2_huc_gsc.bin
