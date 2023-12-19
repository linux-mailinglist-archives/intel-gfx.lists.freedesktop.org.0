Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E486C819243
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 22:28:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E81A10E1F6;
	Tue, 19 Dec 2023 21:28:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C134F10E1DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 21:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703021283; x=1734557283;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4fA3M7XreCdsRG9ceedVL3qGS3v2FuSWRt0A4ivbtDE=;
 b=ciEqxwRISQa4hg7g3SbFKny73emHuGxWaYca0VgzwHAgww/dqO2mC4K6
 Q9dJPc8WpINWRpBqTmmjMpkXPh6q2Ct9zg/j3S3xsYPcOxBuT7HncG9n4
 CwhJvPIqzK6RNQ4frm6BefVSsOpu2/oQ4Pz9t2Skcf6V+M44WjRU0bDEE
 S5K++e1qIyyPnZ9SQLFF7phsTnKx7vO3S5T56idb0B2AqNaK4ZRupwAXO
 2go4AhjAxZy+MifS9GX6H6wnCnXwo1cHrGJ1m+vheDm9I7NLmx+wRtj0r
 OuSO1R7X5QAKMSlKEALtM/RBnVMSj5YobFZDPk9Sfd/ClK42Aek04lSn8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="14413715"
X-IronPort-AV: E=Sophos;i="6.04,289,1695711600"; d="scan'208";a="14413715"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 13:28:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="949308575"
X-IronPort-AV: E=Sophos;i="6.04,289,1695711600"; d="scan'208";a="949308575"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 13:28:03 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/3] TC phy check cleanup
Date: Tue, 19 Dec 2023 13:26:26 -0800
Message-Id: <20231219212629.136868-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We are relying on end-less if-else ladders for a type-c phy
capabilities check. Though it made sense when platforms supported
legacy type-c support, modern platforms rely on the information
passed by vbt. This cleanup restricts the if-else ladder to the
platforms supporting legacy type-c phys and relies on vbt info
for modern client and discrete platforms.

Radhakrishna Sripada (3):
  drm/i915: Rename intel_bios_encoder_data_lookup as a port variant
  drm/i915: Introduce intel_encoder_phy_data_lookup
  drm/i915: Separate tc check for legacy and non legacy tc phys

 drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 15 +++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h     |  5 +++-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 29 ++++++++++++-------
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 8 files changed, 42 insertions(+), 16 deletions(-)

-- 
2.34.1

