Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57946530E83
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 13:08:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9360610EEE9;
	Mon, 23 May 2022 11:08:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B7E710E460
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 May 2022 11:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653304100; x=1684840100;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aPWG9iSTwmyryy6bC+1LBKZm/vzLt/NMrT8bAk1a4PU=;
 b=i0Iga/J3SYrxAZD3JWU0/TC/9m9WSYIoIRHedvP99EXhCZi/YymymDSS
 WSJ5PvOnO4oIDX31LfoYwmXvFDwnwAJebZvx+WZRfCns6W3Ms2tEFG70x
 xZg5ofUEJNnGEYogtG8ESRGABTFA4p0h5p4oARDnZWnfetJ0OReh0CsWK
 ve0oFZXMzV6muuVO0cVPWjtuJ4W4k+bV0v2ru9hzyuwnBID4VgTosM9ZW
 luGf2w3SyIn6WNqKF692gxuaAFT9KNHYArP8fR4tDQGwgUDCms/wA1jeX
 6ONJesBSiwjEaTNnJI2xXv19ok1wnvBr9QYGQU5ewaah+CLjro1mS/+QW g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10355"; a="359579379"
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="359579379"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 04:08:19 -0700
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="600589629"
Received: from bnilawar-desk.iind.intel.com ([10.145.162.36])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 04:08:17 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 May 2022 16:38:38 +0530
Message-Id: <20220523110841.1151431-1-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: Add HWMON support
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

This series adds the HWMON support for DG1, DG2

Dale B Stimson (2):
  drm/i915/hwmon: Add HWMON power sensor support
  drm/i915/hwmon: Add HWMON energy support

Riana Tauro (1):
  drm/i915/hwmon: Add HWMON current voltage support

 .../ABI/testing/sysfs-driver-intel-i915-hwmon |  43 ++
 drivers/gpu/drm/i915/Kconfig                  |   1 +
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   4 +
 drivers/gpu/drm/i915/i915_driver.c            |   5 +
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_hwmon.c             | 620 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_hwmon.h             |  56 ++
 drivers/gpu/drm/i915/i915_reg.h               |  15 +
 drivers/gpu/drm/i915/intel_mchbar_regs.h      |  11 +
 10 files changed, 758 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
 create mode 100644 drivers/gpu/drm/i915/i915_hwmon.c
 create mode 100644 drivers/gpu/drm/i915/i915_hwmon.h

-- 
2.25.1

