Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC9631D7C9
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 12:02:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14ABE6E4DE;
	Wed, 17 Feb 2021 11:02:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B12B66E0D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 11:02:32 +0000 (UTC)
IronPort-SDR: RROVixc3Ym2hJqo6FoJbkobJU7d//dNo6lHk2A6ALDgCeI/aVwa3+lHhBlTgqQPhGPZrTlem4i
 fC6HkkbQOPBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="170298848"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="170298848"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 03:02:23 -0800
IronPort-SDR: ndU67Uz7VyDRZElHJE3LBsbDJqlkKLcu6bTYZ1s2JZ6m9e8K5Tukk1Xe1t1p5Qyt6ocenwyRrA
 bQEpp1sNaLWA==
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="399912624"
Received: from mvalka-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.39.140])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 03:02:19 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tomas Winkler <tomas.winkler@intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <20210216181925.650082-1-tomas.winkler@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210216181925.650082-1-tomas.winkler@intel.com>
Date: Wed, 17 Feb 2021 13:02:16 +0200
Message-ID: <878s7narev.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH 0/9] drm/i915/spi: discrete graphics
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

On Tue, 16 Feb 2021, Tomas Winkler <tomas.winkler@intel.com> wrote:
> Intel discrete graphic devices have internal spi storage, that holds
> firmware and oprom images. The spi device is exposed to the user space
> via mtd framework to be accessed during manufacturing.
> The device is hardware locked after manufacturing and only read access
> is provided.
>
> The i915 plays role of a multi function device (mfd) and spi device
> is exposed as its child device. i915_spi platform driver binds to 
> this device.
>
> Because the graphic card may undergo reset at any time and basically hot
> unplug all its child devices, this series also provides a fix to the mtd
> framework to make the reset graceful.
>
> Tomas Winkler (9):
>   drm/i915/spi: add spi device for discrete graphics
>   drm/i915/spi: intel_spi_region map
>   drm/i915/spi: add driver for on-die spi device
>   drm/i915/spi: implement region enumeration
>   drm/i915/spi: implement spi access functions
>   drm/i915/spi: spi register with mtd
>   drm/i915/spi: mtd: implement access handlers
>   drm/i915/spi: serialize spi access
>   mtd: use refcount to prevent corruption
>
>  drivers/gpu/drm/i915/Kconfig             |   3 +
>  drivers/gpu/drm/i915/Makefile            |   6 +
>  drivers/gpu/drm/i915/i915_drv.c          |   9 +
>  drivers/gpu/drm/i915/i915_drv.h          |   4 +
>  drivers/gpu/drm/i915/i915_reg.h          |   1 +
>  drivers/gpu/drm/i915/spi/intel_spi.c     |  62 +++
>  drivers/gpu/drm/i915/spi/intel_spi.h     |  24 +

I'm open to discussion, but after glancing through the series I've got a
gut feeling spi/ subdir should be purely about the separate module, and
the above two files should be in i915/ directory instead.

As it is, I think it's a bit confusing that spi/ is both about the spi
kernel module and a singly .c file that's really part of
i915.ko. Perhaps that messes up the conventional descending to subdirs
in the kernel build too?

BR,
Jani.

>  drivers/gpu/drm/i915/spi/intel_spi_drv.c | 675 +++++++++++++++++++++++
>  drivers/mtd/mtdcore.c                    |  63 ++-
>  drivers/mtd/mtdcore.h                    |   1 +
>  drivers/mtd/mtdpart.c                    |  13 +-
>  include/linux/mtd/mtd.h                  |   2 +-
>  12 files changed, 831 insertions(+), 32 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.c
>  create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.h
>  create mode 100644 drivers/gpu/drm/i915/spi/intel_spi_drv.c

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
