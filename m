Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 937ED98E1A0
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 19:30:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9421710E77B;
	Wed,  2 Oct 2024 17:30:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HwG2i24M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6947110E0F0
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2024 17:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727890252; x=1759426252;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kO5SFFtz/TQyCJj0kNciqr4xmoWTnlu56GAEu4dkMAM=;
 b=HwG2i24McCbY03xLuX+LTeFG9Wf5DUt2/zNukCnHCjBt3IiqeI2yQk4t
 UvMOK6ULPAD3iXBaAGPWPDcbuhZcowQlA2N2zFwiRtW337xU2WSES9ht2
 ZE6VV5xGG9ob26akw7toSj1sfYNIULUyBD5ibyVrtsQJE+WiBqkn3wF3B
 5ABIsVbOv5g5RrPdqG7V6CITy5NyAAhQzbUDhRClTAFJ5XD9bAYZ4b8R1
 lm8HX7lguOHsiq82d8FVQgP1GtqrqzQxzJfSH9xv6JQyOTG6c9BzD4D1x
 6DrHktOUvMzxie0I/OylQ9E0pELyVpiarMDs3eDVLvaXZ1EPf2pgBdOlI w==;
X-CSE-ConnectionGUID: QgGGGVcwSCSq3zanpM6Rng==
X-CSE-MsgGUID: tnx2lg/ORO65Te/301WHFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="30860113"
X-IronPort-AV: E=Sophos;i="6.11,172,1725346800"; d="scan'208";a="30860113"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 10:30:45 -0700
X-CSE-ConnectionGUID: ENTo3OzZS6eWzKRfawTAeQ==
X-CSE-MsgGUID: pvu+uW6wRFO4AsEALSCRcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,172,1725346800"; d="scan'208";a="74493501"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 10:30:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/4] drm/i915: add dedicated lock for each sideband
Date: Wed,  2 Oct 2024 20:30:27 +0300
Message-Id: <cover.1727890136.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

It's misleading to use the same sideband mutex for LPT/WPT IOSF, VLV/CHV
IOSF, and punit. Add dedicated locks for clarity.

Jani Nikula (4):
  drm/i915/sbi: add intel_sbi_{lock,unlock}()
  drm/i915/sbi: add a dedicated mutex for LPT/WPT IOSF sideband
  drm/i915: add a dedicated mutex for VLV/CHV IOSF sideband
  drm/i915: hide VLV PUNIT IOSF sideband qos handling better

 .../gpu/drm/i915/display/intel_pch_refclk.c   | 26 ++++++++---------
 drivers/gpu/drm/i915/i915_driver.c            |  8 ++++--
 drivers/gpu/drm/i915/i915_drv.h               | 10 ++++++-
 drivers/gpu/drm/i915/intel_sbi.c              | 22 ++++++++++++++-
 drivers/gpu/drm/i915/intel_sbi.h              |  4 +++
 drivers/gpu/drm/i915/vlv_sideband.c           | 28 +++++++++++++++----
 drivers/gpu/drm/i915/vlv_sideband.h           |  3 ++
 7 files changed, 79 insertions(+), 22 deletions(-)

-- 
2.39.5

