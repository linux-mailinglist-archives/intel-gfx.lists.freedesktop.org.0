Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FE05525F1
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 22:47:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92ADD10E270;
	Mon, 20 Jun 2022 20:47:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 993B610E391
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 20:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655758019; x=1687294019;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D8lXaLHE0CpjESkrnINdjT7RVBNH+F5q4NPxHFuTqo4=;
 b=j17Xe3RsJm9aPhnzYRx2Vc0jopounZCYPKHfl9IuR/bNJO+nGlxNUZRg
 6VEr5Vbuda9De2YEoVM68Fv1cgCc+FUuA+TqCYuedkX/5TnfDXXVszPYL
 hYeHvTutj7oaG25+18pdlZaJLJHxovUi38McfDYlbv98jaJtfRUygVDUB
 rZGU1IodguLItMxagmW2aWdFJi2BtVo4jF8KHfdI9QsFxMuC+SuOZsLJM
 4JevLo6CpnH8TfqrR6lTwo+Ptnq+/73n3h+QPVJpXX56K2KK7LT173llP
 W1gZ10kXVvFqzOOcgoengs0XiLIjTp6vstBGIACoVOGjTFtwzvfrC0rCP Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="259792749"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="259792749"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 13:46:59 -0700
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="620226936"
Received: from bnilawar-desk.iind.intel.com ([10.145.162.36])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 13:46:56 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jun 2022 02:16:45 +0530
Message-Id: <20220620204649.894703-1-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: Add HWMON support
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
Cc: linux-hwmon@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v2:
  - Reorganized series. Created first patch as infrastructure patch
    followed by feature patches. (Ashutosh)
  - Fixed review comments (Jani)
  - Fixed review comments (Ashutosh)

Dale B Stimson (3):
  drm/i915/hwmon: Add HWMON infrastructure patch
  drm/i915/hwmon: Add HWMON power sensor support
  drm/i915/hwmon: Add HWMON energy support

Riana Tauro (1):
  drm/i915/hwmon: Add HWMON current voltage support

 .../ABI/testing/sysfs-driver-intel-i915-hwmon |  43 ++
 drivers/gpu/drm/i915/Makefile                 |   3 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   3 +
 drivers/gpu/drm/i915/i915_driver.c            |   7 +
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_hwmon.c             | 608 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_hwmon.h             |  22 +
 drivers/gpu/drm/i915/i915_reg.h               |  15 +
 drivers/gpu/drm/i915/intel_mchbar_regs.h      |   9 +
 9 files changed, 712 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
 create mode 100644 drivers/gpu/drm/i915/i915_hwmon.c
 create mode 100644 drivers/gpu/drm/i915/i915_hwmon.h

-- 
2.25.1

