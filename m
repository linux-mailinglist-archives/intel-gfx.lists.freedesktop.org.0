Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6138799E4F
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Sep 2023 14:44:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 859D910E02B;
	Sun, 10 Sep 2023 12:44:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76CB510E02B
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Sep 2023 12:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694349866; x=1725885866;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CpTUXi17WIRqweC0f6oVujAzXfsCeus7646Tdx194rA=;
 b=k0M3EJx5BkzgUhDgm1oPyC4Ylcd5UVoJYLnJaZLnZu6kzZPOWaM4Izch
 j0fD12NEa2F6Q5thtTAS2dwNjy1f5EA3vSDEoaUNCqmSkgdfA+csAo3OJ
 +/+xImG4Cm3xbPH88AfAeSU5gq9OQJ0cYlg1DpwMosIYs2qPb0fVtFzfC
 VbmcTBA412bLk6RVxTYICi7BfqrbGBkmcNGQ7I+32RCMDFMwhtrKVpGoe
 K0OJ3XoCi1gDDcGq2sAMyPeQZshaqorBVA9eP4WRtkvRMRQZgiHB+3E8M
 3VkiEpTHz3Azs2OJEl1yFIMQkG+wl2Z/cesQsvwRs5PGSgyOic5CGcTBH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="441907076"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="441907076"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 05:44:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="1073814973"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="1073814973"
Received: from sannilnx-dsk.jer.intel.com ([10.12.231.107])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 05:44:22 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Sun, 10 Sep 2023 15:39:39 +0300
Message-Id: <20230910123949.1251964-1-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/10] drm/i915/spi: spi access for discrete
 graphics
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
Cc: linux-mtd@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add driver for access to the discrete graphics card
internal SPI device.
Expose device on auxiliary bus and provide driver to register
this device with MTD framework.
This series is intended to be upstreamed through drm tree.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>


Alexander Usyskin (3):
  drm/i915/spi: align 64bit read and write
  drm/i915/spi: wake card on operations
  drm/i915/spi: add support for access mode

Jani Nikula (1):
  drm/i915/spi: add spi device for discrete graphics

Tomas Winkler (6):
  drm/i915/spi: add intel_spi_region map
  drm/i915/spi: add driver for on-die spi device
  drm/i915/spi: implement region enumeration
  drm/i915/spi: implement spi access functions
  drm/i915/spi: spi register with mtd
  drm/i915/spi: mtd: implement access handlers

 drivers/gpu/drm/i915/Kconfig             |   1 +
 drivers/gpu/drm/i915/Makefile            |   6 +
 drivers/gpu/drm/i915/i915_driver.c       |   7 +
 drivers/gpu/drm/i915/i915_drv.h          |   4 +
 drivers/gpu/drm/i915/i915_reg.h          |   1 +
 drivers/gpu/drm/i915/spi/intel_spi.c     | 101 +++
 drivers/gpu/drm/i915/spi/intel_spi.h     |  33 +
 drivers/gpu/drm/i915/spi/intel_spi_drv.c | 865 +++++++++++++++++++++++
 8 files changed, 1018 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.c
 create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.h
 create mode 100644 drivers/gpu/drm/i915/spi/intel_spi_drv.c

-- 
2.34.1

