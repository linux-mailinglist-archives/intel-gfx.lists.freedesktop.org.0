Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CDC88FEED
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 13:26:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C094310EB98;
	Thu, 28 Mar 2024 12:26:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A6Gb1PAr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C32CE10EB98
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 12:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711628778; x=1743164778;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ytuL6nijnEtsmbOuiFbmt070AZ7CBXvjNNko4leDU6E=;
 b=A6Gb1PAr48LsVSRC/g6d4LBJYKSlQG6mJ4sf/CXUWD0Z8KDHphlDIPG2
 sHyLmS3wat1ljf2M3q3mGT3whyoRl7ElkSmJEFSr86tkBgWQIm1jId1RT
 DEYJv/9tnkaCKCn9gmRVvH6DJ7r9DyhLDueQzpbnGd1Tibo94jaZBndmE
 Zb6Jpiz0+6Rckjsr57FP0FSOSYNJmGngmI3JGEWRyZxjNeTPWL6qxEjsC
 rth9SfAe4+6uNgf8SV10x8BRNzl/CEV0ZL2rZYLiUlrmbolBAkHF4Fiof
 G7fdiPNxGWH8MbdZC72p8b9asKH9si/twXgwfA4S19i3kGOPfhUsEzjnw Q==;
X-CSE-ConnectionGUID: wrN+rSl9Temg2vex9s8YbQ==
X-CSE-MsgGUID: uE3VXGIATN6veH1qnrVf/g==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="17505434"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="17505434"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 05:26:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="16657560"
Received: from sannilnx-dsk.jer.intel.com ([10.12.231.107])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 05:26:14 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, linux-mtd@lists.infradead.org,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/13] spi: add driver for Intel discrete graphics
Date: Thu, 28 Mar 2024 14:22:23 +0200
Message-Id: <20240328122236.1718111-1-alexander.usyskin@intel.com>
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

Add driver for access to Intel discrete graphics card
internal SPI device.
Expose device on auxiliary bus by i915 and Xe drivers and
provide spi driver to register this device with MTD framework.

This is a rewrite of "drm/i915/spi: spi access for discrete graphics"
series with connection to the Xe driver and splitting
the spi driver part to separate module in spi subsystem.

Alexander Usyskin (13):
  spi: add auxiliary device for intel dg spi
  drm/i915/spi: add spi device for discrete graphics
  drm/i915/spi: add intel_spi_region map
  drm/i915/spi: add support for access mode
  spi: add driver for intel graphics on-die spi device
  spi: intel-dg: implement region enumeration
  spi: intel-dg: implement spi access functions
  spi: intel-dg: spi register with mtd
  spi: intel-dg: implement mtd access handlers
  spi: intel-dg: align 64bit read and write
  spi: intel-dg: wake card on operations
  drm/xe/spi: add on-die spi device
  drm/xe/spi: add support for access mode

 drivers/gpu/drm/i915/Makefile         |   4 +
 drivers/gpu/drm/i915/i915_driver.c    |   6 +
 drivers/gpu/drm/i915/i915_drv.h       |   4 +
 drivers/gpu/drm/i915/i915_reg.h       |   1 +
 drivers/gpu/drm/i915/spi/intel_spi.c  |  97 +++
 drivers/gpu/drm/i915/spi/intel_spi.h  |  15 +
 drivers/gpu/drm/xe/Makefile           |   1 +
 drivers/gpu/drm/xe/regs/xe_gsc_regs.h |   5 +
 drivers/gpu/drm/xe/xe_device.c        |   3 +
 drivers/gpu/drm/xe/xe_device_types.h  |   5 +
 drivers/gpu/drm/xe/xe_heci_gsc.c      |   5 +-
 drivers/gpu/drm/xe/xe_spi.c           | 107 ++++
 drivers/gpu/drm/xe/xe_spi.h           |  15 +
 drivers/spi/Kconfig                   |  11 +
 drivers/spi/Makefile                  |   1 +
 drivers/spi/spi-intel-dg.c            | 867 ++++++++++++++++++++++++++
 include/linux/intel_dg_spi_aux.h      |  27 +
 17 files changed, 1170 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.c
 create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.h
 create mode 100644 drivers/gpu/drm/xe/xe_spi.c
 create mode 100644 drivers/gpu/drm/xe/xe_spi.h
 create mode 100644 drivers/spi/spi-intel-dg.c
 create mode 100644 include/linux/intel_dg_spi_aux.h

-- 
2.34.1

