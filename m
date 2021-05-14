Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E573813FC
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 00:57:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14C926E2E1;
	Fri, 14 May 2021 22:57:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47C966E2E1
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 22:57:41 +0000 (UTC)
IronPort-SDR: pcUK1/KuvKFikNgn1S0PPTxUT8h4VXqujglR+m+Xu7aSIW+hX/4eZoWmQMAaj5NG2R+Xip7BEu
 GZ1FIjref8Rg==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="198292157"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="198292157"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 15:57:40 -0700
IronPort-SDR: hjctzFGobJhMfzc6fRX+xhH23DnKam+1r6f725z9nXekLPPZPYiVJL6HUcaiTOEQYlzRNTCbtE
 SsniWWgN6GzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="402509859"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga007.fm.intel.com with ESMTP; 14 May 2021 15:57:40 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 15:57:34 -0700
Message-Id: <20210514225739.24201-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] Rename all CSR references to DMC
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently in our driver we use both CSR and DMC interchangeably.
Even though the spec mentions both, we do not follow that convention
in the driver.

Renaming all references of CSR to just be DMC. This hopefully makes
the driver of this part a litlle less confusing.

Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@linux.intel.com>

Anusha Srivatsa (5):
  drm/i915/dmc: s/intel_csr/intel_dmc
  drm/i915/dmc: s/HAS_CSR/HAS_DMC
  drm/i915/dmc: Rename macro names containing csr
  drm/i915/dmc: Rename functions names having "csr"
  drm/i915/dmc: s/intel_csr.c/intel_dmc.c and s/intel_csr.h/intel_dmc.h

 Documentation/gpu/i915.rst                    |   6 +-
 drivers/gpu/drm/i915/Makefile                 |   2 +-
 drivers/gpu/drm/i915/display/intel_csr.h      |  21 --
 drivers/gpu/drm/i915/display/intel_display.c  |  16 +-
 .../drm/i915/display/intel_display_debugfs.c  |  30 +-
 .../drm/i915/display/intel_display_power.c    |  82 ++---
 .../i915/display/{intel_csr.c => intel_dmc.c} | 333 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dmc.h      |  21 ++
 drivers/gpu/drm/i915/display/intel_psr.c      |   2 +-
 drivers/gpu/drm/i915/i915_drv.c               |   8 +-
 drivers/gpu/drm/i915/i915_drv.h               |   6 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  12 +-
 drivers/gpu/drm/i915/i915_pci.c               |   4 +-
 drivers/gpu/drm/i915/i915_reg.h               |  28 +-
 drivers/gpu/drm/i915/intel_device_info.c      |   2 +-
 drivers/gpu/drm/i915/intel_device_info.h      |   2 +-
 16 files changed, 287 insertions(+), 288 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/display/intel_csr.h
 rename drivers/gpu/drm/i915/display/{intel_csr.c => intel_dmc.c} (66%)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc.h

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
