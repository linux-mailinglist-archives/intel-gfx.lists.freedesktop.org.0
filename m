Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A8C31D01A
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Feb 2021 19:19:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8FE989CD9;
	Tue, 16 Feb 2021 18:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37DE889CD9
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Feb 2021 18:19:43 +0000 (UTC)
IronPort-SDR: yM7Q3eZ6NqXRt1OXVnWjxJns5T7PttGqUoCayG1Ax3sBJjSenRZr7JrnLvKov0n5i2gAT+vfLc
 viMKyXZWS88g==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="202169342"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="202169342"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2021 10:19:42 -0800
IronPort-SDR: kVRW30FBHl6jQ07M4Kli/gFcqT8uIQvnQd5fLDWpcvd67pFC4oc7NYHGGbTwH7n/WfSc41kukB
 L9jBb9dAMW2g==
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="399608957"
Received: from twinkler-lnx.jer.intel.com ([10.12.91.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2021 10:19:39 -0800
From: Tomas Winkler <tomas.winkler@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Tue, 16 Feb 2021 20:19:16 +0200
Message-Id: <20210216181925.650082-1-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 0/9] drm/i915/spi: discrete graphics
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

Tomas Winkler (9):
  drm/i915/spi: add spi device for discrete graphics
  drm/i915/spi: intel_spi_region map
  drm/i915/spi: add driver for on-die spi device
  drm/i915/spi: implement region enumeration
  drm/i915/spi: implement spi access functions
  drm/i915/spi: spi register with mtd
  drm/i915/spi: mtd: implement access handlers
  drm/i915/spi: serialize spi access
  mtd: use refcount to prevent corruption

 drivers/gpu/drm/i915/Kconfig             |   3 +
 drivers/gpu/drm/i915/Makefile            |   6 +
 drivers/gpu/drm/i915/i915_drv.c          |   9 +
 drivers/gpu/drm/i915/i915_drv.h          |   4 +
 drivers/gpu/drm/i915/i915_reg.h          |   1 +
 drivers/gpu/drm/i915/spi/intel_spi.c     |  62 +++
 drivers/gpu/drm/i915/spi/intel_spi.h     |  24 +
 drivers/gpu/drm/i915/spi/intel_spi_drv.c | 675 +++++++++++++++++++++++
 drivers/mtd/mtdcore.c                    |  63 ++-
 drivers/mtd/mtdcore.h                    |   1 +
 drivers/mtd/mtdpart.c                    |  13 +-
 include/linux/mtd/mtd.h                  |   2 +-
 12 files changed, 831 insertions(+), 32 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.c
 create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.h
 create mode 100644 drivers/gpu/drm/i915/spi/intel_spi_drv.c

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
