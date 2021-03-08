Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC58833080D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 07:28:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A553F6E423;
	Mon,  8 Mar 2021 06:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 788A36E423
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Mar 2021 06:28:02 +0000 (UTC)
IronPort-SDR: GNc6tonhc2OIQ+GqkGdDbGNR3XLwuLcVaCmvZyjSqdOmaLNsNAxoZ+jiVrReU0r8KjDS2Mb1S5
 /PhtOTeGzC6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="249354800"
X-IronPort-AV: E=Sophos;i="5.81,231,1610438400"; d="scan'208";a="249354800"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2021 22:28:01 -0800
IronPort-SDR: CWvx1z7gpnU9AgJ39vLXpWvqpox+5VXZ31mE3yfxyUQzofwQRQWc2embaa46PFetO2Kp/wtHA2
 f/0D1awsROUg==
X-IronPort-AV: E=Sophos;i="5.81,231,1610438400"; d="scan'208";a="409181879"
Received: from twinkler-lnx.jer.intel.com ([10.12.91.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2021 22:27:58 -0800
From: Tomas Winkler <tomas.winkler@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Mon,  8 Mar 2021 08:27:38 +0200
Message-Id: <20210308062748.208017-1-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 00/10 v2] drm/i915/spi: discrete graphics
 internal spi
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
 Tomas Winkler <tomas.winkler@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Intel discrete graphic devices have internal spi storage, that holds
firmware and oprom images. The spi device is exposed to the user space
via mtd framework to be accessed during manufacturing.
The device is hardware locked after manufacturing and only read access
is provided.

The i915 plays role of a multi function device (mfd) and spi device
is exposed as its child device. i915_spi platform driver binds to 
this device.

Because the graphic card may undergo reset at any time and basically hot
unplug all its child devices, this series also provides a fix to the mtd
framework to make the reset graceful.

V2: 
1. Adding separate Makefile for i915_spi module
2. Adding MAINTAINERS entry
3. Addressing other small comments
4. Haven't got comments from the MTD maintainers so just resending the
patch.



Tomas Winkler (10):
  drm/i915/spi: add spi device for discrete graphics
  drm/i915/spi: intel_spi_region map
  drm/i915/spi: add driver for on-die spi device
  drm/i915/spi: implement regions enumeration
  drm/i915/spi: implement spi access functions
  drm/i915/spi: spi register with mtd
  drm/i915/spi: mtd: implement access handlers
  drm/i915/spi: serialize spi access
  MAINTAINERS: add Intel i915 spi driver entry
  mtd: use refcount to prevent corruption

 MAINTAINERS                          |  11 +
 drivers/gpu/drm/i915/Kconfig         |   3 +
 drivers/gpu/drm/i915/Makefile        |   4 +
 drivers/gpu/drm/i915/i915_drv.c      |   7 +
 drivers/gpu/drm/i915/i915_drv.h      |   4 +
 drivers/gpu/drm/i915/i915_reg.h      |   1 +
 drivers/gpu/drm/i915/spi/Kconfig     |  17 +
 drivers/gpu/drm/i915/spi/Makefile    |   7 +
 drivers/gpu/drm/i915/spi/i915_spi.c  | 675 +++++++++++++++++++++++++++
 drivers/gpu/drm/i915/spi/intel_spi.c |  49 ++
 drivers/gpu/drm/i915/spi/intel_spi.h |  22 +
 drivers/mtd/mtdcore.c                |  64 ++-
 drivers/mtd/mtdcore.h                |   1 +
 drivers/mtd/mtdpart.c                |  13 +-
 include/linux/mtd/mtd.h              |   2 +-
 15 files changed, 848 insertions(+), 32 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/spi/Kconfig
 create mode 100644 drivers/gpu/drm/i915/spi/Makefile
 create mode 100644 drivers/gpu/drm/i915/spi/i915_spi.c
 create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.c
 create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.h

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
