Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C429B65FB
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 15:34:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0833C10E7BB;
	Wed, 30 Oct 2024 14:34:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IhsnUz4D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A98210E7A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 14:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730298889; x=1761834889;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2ZhDEziXzvaGknHPRw5F5W0u85OPO1MEngasYFPdRYg=;
 b=IhsnUz4Dmvishol2Id4MzeNB/OzirqErzM6QKjXsho4shrijWcXdWIa4
 VQtgEBktq1BcWYKraC/JXpwOfiETbtIvhtlc+7wRryeLkcYSTvpofpC77
 ZkkBUrzIuE58wDjyxHrN4cVMOvKWe9ATlby8SzfFM4ybxsgHDjgGYkdVb
 9y0qOYKF0j4jSJdUtVnLT10m8y+o7JtE+nHvPzpJTjYeMsRX/cK1MF1Af
 KdTnGJDonLtoxeUSiE/bYEzOxWBH+fARicozCyvkBEZ0uq1nOm8x0IrXi
 Gy34i6RWNFENDqdBZhFlWJwFMQDOmkAmJUThjcdBjw+jlA1sTSI1q90j9 Q==;
X-CSE-ConnectionGUID: kUVlyLynSKObngC1dB9eWg==
X-CSE-MsgGUID: bsUmkksaQGamxt41MUeSog==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="55407435"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="55407435"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 07:34:48 -0700
X-CSE-ConnectionGUID: n30n++VXQ32H2pPUX6uP0A==
X-CSE-MsgGUID: 5yokU1RAQXCC6buxFA2p6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="113180408"
Received: from jraag-nuc8i7beh.iind.intel.com ([10.145.169.79])
 by fmviesa001.fm.intel.com with ESMTP; 30 Oct 2024 07:34:45 -0700
From: Raag Jadav <raag.jadav@intel.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 Raag Jadav <raag.jadav@intel.com>
Subject: [PATCH v3 0/4] Implement Wa_14022698537
Date: Wed, 30 Oct 2024 20:04:14 +0530
Message-Id: <20241030143418.410406-1-raag.jadav@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series implements Wa_14022698537 for DG2 along with its prerequisites
in i915. Now that we have a common pciids.h in place, this can be extended
to xe as well. Detailed description in commit message.

v1: https://patchwork.freedesktop.org/series/139628/

v2: Introduce DG2_WA subplatform for workaround (Jani)
    Fix Wa_ID and include it in subject (Badal)
    Rephrase commit message (Jani)
    Move CPU whitelist to intel_wa_cpu.c

v3: Rework subplatform naming (Jani)
    Move CPU file out of gt directory (Riana)
    Rephrase CPU file description (Jani)
    Add kernel doc, re-order macro (Riana)
    Move workaround to i915_pcode_init() (Badal, Anshuman)

Raag Jadav (4):
  drm/intel/pciids: Refactor DG2 PCI IDs into segment ranges
  drm/i915/dg2: Introduce DG2_D subplatform
  drm/i915: Introduce intel_cpu_info.c for CPU IDs
  drm/i915/dg2: Implement Wa_14022698537

 drivers/gpu/drm/i915/Makefile            |  1 +
 drivers/gpu/drm/i915/i915_driver.c       | 15 +++++++
 drivers/gpu/drm/i915/i915_drv.h          |  2 +
 drivers/gpu/drm/i915/i915_reg.h          |  1 +
 drivers/gpu/drm/i915/intel_cpu_info.c    | 42 ++++++++++++++++++
 drivers/gpu/drm/i915/intel_cpu_info.h    | 13 ++++++
 drivers/gpu/drm/i915/intel_device_info.c |  9 ++++
 drivers/gpu/drm/i915/intel_device_info.h |  5 ++-
 include/drm/intel/pciids.h               | 55 ++++++++++++++++++------
 9 files changed, 129 insertions(+), 14 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/intel_cpu_info.c
 create mode 100644 drivers/gpu/drm/i915/intel_cpu_info.h

-- 
2.34.1

