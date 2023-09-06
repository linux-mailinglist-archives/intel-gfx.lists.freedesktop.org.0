Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01009796DAF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 01:47:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40B2210E35B;
	Wed,  6 Sep 2023 23:47:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0262F10E35B
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Sep 2023 23:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694044061; x=1725580061;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iNfz6FhTbkHjXDv6HYN360q6MjIKCILIJRGIuL0ncek=;
 b=A9sC6RGPwzkM+mLbDpDBbZDLrWa7MbIuvvZGdYQW90uYocTIgaeIm7NM
 OxfvJw+BQS0+kpLUube2XR6hH2Ux46sBD88U7bBFXHAkclRQdy0x25gM6
 +NqRv/pMrwZQpR/OZ2Qk/GzHargM/ec5LIX4tLY9A9tVirGeQxmnAzn3U
 6CME2oFu1FV8m5oGVq1oWTF2G5gnGcvZARESS+SaoileIu52ixQ2VSNER
 pKCbzC8VOmXrI0UmAmFIMeIv8K5clP/IWm0FbO0esAhofIoi8gMMFYLGh
 ksAdxwkKI2AyzFcJ2rACUwT5nMWdOxDoY0tfowu8Lr/YaJOmmPGT1Ab9O A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="357526292"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="357526292"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 16:47:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="865363198"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="865363198"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 16:47:39 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Sep 2023 16:47:33 -0700
Message-ID: <20230906234732.3728630-6-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Separate display workarounds from clock
 gating
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The clock gating init hooks in i915 are a bit jumbled.  The current
implementation includes a mix of GT workarounds (which really should
have been in the GT workaround file instead), SoC/sgunit clock gating
workarounds, and display workarounds (some of which are entirely
unrelated to clock gating).  Some of this confusion originates from
really old platforms where the boundaries between GT/display/other IP
blocks weren't as clear as they are today, but at least on modern
platforms we should be able to do a better job of placing this
programming now.

Let's separate the display workarounds for gen11 and newer platforms
into a dedicated file and apply the workarounds during actual display
initialization, rather than having them applied indirectly during GEM
init.  This will help keep the clock gating hooks focused on actual
SoC/sgunit clock gating going forward and avoid making them a dumping
ground for assorted register programming.  It will also ensure that when
i915's display code is built into the Xe driver these workarounds will
still get applied during device probe rather than being missed as they
are today.

Matt Roper (4):
  drm/i915: Stop forcing clock gating init for future platforms
  drm/i915/adlp: Stop calling gen12lp_init_clock_gating()
  drm/i915/display: Extract display workarounds from clock gating init
  drm/i915/display: Apply workarounds during display init

 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../drm/i915/display/intel_display_driver.c   |  2 +
 .../gpu/drm/i915/display/intel_display_wa.c   | 47 ++++++++++++++++
 .../gpu/drm/i915/display/intel_display_wa.h   | 13 +++++
 drivers/gpu/drm/i915/intel_clock_gating.c     | 53 ++-----------------
 5 files changed, 66 insertions(+), 50 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_wa.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_wa.h

-- 
2.41.0

