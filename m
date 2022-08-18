Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81415598CA9
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Aug 2022 21:37:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 748E610E2BD;
	Thu, 18 Aug 2022 19:37:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1EE510E198
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Aug 2022 19:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660851427; x=1692387427;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QRGfzkTxRhIIbzu38QpJYEX3mHcenSc9QgM8R+0E1dc=;
 b=jEqHbNl6qWblL3pMXXCNnK63Dc+OUo0fQTAwO/eqYUnyl1x/YIgZjWca
 JfECIHgHKbGCpxYBAaaAszuOUUKFHZGok8s9gZZe63OF1FEzCOS1NLnq4
 iHOIlGK43AIgdr5w+7pmxgFFvcOIYuXsxJ85ejI0SRXXRP//mKG0q6iN4
 4vmktj1CMhUhn4BtIO09PZ4Hijv1m09lZVY5Ed91see/PCI8B5tXUoUY/
 dgA+RXaHBTo1ijUtalAttGxEqrBgsgMyDONAx1OXO0LI6JAPPNBUByKvJ
 0Stm/2LPVEETsUR5VYeBZSDWQX6QPqq/Z8VqCNwrRgaNaAdkCuuEQrZeU Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="379149505"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="379149505"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 12:37:07 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="604364635"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 12:37:04 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Aug 2022 01:08:54 +0530
Message-Id: <20220818193901.2974625-1-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] drm/i915: Add HWMON support
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
Cc: linux-hwmon@vger.kernel.org, linux@roeck-us.net
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series adds the HWMON support for DGFX

v2:
  - Reorganized series. Created first patch as infrastructure patch
    followed by feature patches. (Ashutosh)
  - Fixed review comments (Jani)
  - Fixed review comments (Ashutosh)

v3:
  - Fixed review comments from Guenter
  - Exposed energy inferface as standard hwmon interface (Ashutosh)
  - For power interface added entries for critical power and maintained
    standard interface for all the entries except 
    power1_max_interval
  - Extended support for XEHPSDV (Ashutosh)

v4:
  - Fixed review comment from Guenter
  - Cleaned up unused code

Ashutosh Dixit (2):
  drm/i915/hwmon: Expose card reactive critical power
  drm/i915/hwmon: Expose power1_max_interval

Dale B Stimson (4):
  drm/i915/hwmon: Add HWMON infrastructure
  drm/i915/hwmon: Power PL1 limit and TDP setting
  drm/i915/hwmon: Show device level energy usage
  drm/i915/hwmon: Extend power/energy for XEHPSDV

Riana Tauro (1):
  drm/i915/hwmon: Add HWMON current voltage support

 .../ABI/testing/sysfs-driver-intel-i915-hwmon |  75 ++
 drivers/gpu/drm/i915/Makefile                 |   3 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   8 +
 drivers/gpu/drm/i915/i915_driver.c            |   7 +
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_hwmon.c             | 787 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_hwmon.h             |  21 +
 drivers/gpu/drm/i915/i915_reg.h               |  22 +
 drivers/gpu/drm/i915/intel_mchbar_regs.h      |  13 +
 9 files changed, 938 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
 create mode 100644 drivers/gpu/drm/i915/i915_hwmon.c
 create mode 100644 drivers/gpu/drm/i915/i915_hwmon.h

-- 
2.25.1

