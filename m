Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBE679A7F3
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 14:34:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCB3B10E1A3;
	Mon, 11 Sep 2023 12:34:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mslow1.mail.gandi.net (mslow1.mail.gandi.net [217.70.178.240])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BCCD10E128
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 07:50:43 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (unknown [IPv6:2001:4b98:dc4:8::229])
 by mslow1.mail.gandi.net (Postfix) with ESMTP id 9B86CCDE9A
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 07:42:43 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 36C64FF804;
 Mon, 11 Sep 2023 07:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1694418158;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xIpV2c0DDqubgpsw65ctLWF4dneEjKQtJ62BTRMBd/M=;
 b=nKHM6xpBmr0Fv13Fl3ZLqkkTx+umlwJZFnFUjJxEMpyBV3jH2DGh2cUg/5GeXPzB9d7tVf
 PaDvgOo/lqtv6lJ2CcsKmTxnK491pvne/OzcTZoT2r5ZBiBB8oDslzGMjGs8R+Pu30KP/W
 ajFlNhe1iKdSabEhxvCQ2oWxx/tzUGqTfLmNjdWILUVSBtRlP/wV/3cXOU9AyzIflR/pzX
 5MYK2K0tZCbbthK+wRJNDwyfigxLrIyH0Rkrv9ibxzcp6hsNwwpmwl4APpmgjv2O0bSS5f
 7LEVo7yqrGat4q5IFArQDxFt0rqg/VAN6tm5jmf7RrpeVbjdpL2oRWrceU20Sw==
Date: Mon, 11 Sep 2023 09:42:33 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <20230911094233.326fd936@xps-13>
In-Reply-To: <20230910123949.1251964-1-alexander.usyskin@intel.com>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: miquel.raynal@bootlin.com
X-Mailman-Approved-At: Mon, 11 Sep 2023 12:34:22 +0000
Subject: Re: [Intel-gfx] [PATCH 00/10] drm/i915/spi: spi access for discrete
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 intel-gfx@lists.freedesktop.org, Michael Walle <michael@walle.cc>,
 linux-spi@vger.kernel.org, Tudor Ambarus <tudor.ambarus@linaro.org>,
 Mark Brown <broonie@kernel.org>, linux-mtd@lists.infradead.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Vitaly Lubart <vitaly.lubart@intel.com>,
 Pratyush Yadav <pratyush@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Alexander,

+ Mark Brown + spi list
+ spi-nor maintainers

alexander.usyskin@intel.com wrote on Sun, 10 Sep 2023 15:39:39 +0300:

> Add driver for access to the discrete graphics card
> internal SPI device.
> Expose device on auxiliary bus and provide driver to register
> this device with MTD framework.

Maybe you can explain why you think auxiliary bus is relevant here? The
cover letter might maybe be a bit more verbose to give us more context?

I've looked at the series, it looks like you try to expose a spi
memory connected to a spi controller on your hardware. We usually
expect the spi controller driver to register in the spi core and
provide spi-mem operations for that.

I don't know if this memory is supposed to be used as general purpose,
but if it's not I would advise to use some kind of firmware mechanism
instead. Also, what is the purpose of exposing this content in this
case?

Well, I'm partially convinced here, I would like to hear from the other
maintainers, maybe your choices are legitimate and I'm off topic.

Thanks,
Miqu=C3=A8l

> This series is intended to be upstreamed through drm tree.
>
> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
>=20
>=20
> Alexander Usyskin (3):
>   drm/i915/spi: align 64bit read and write
>   drm/i915/spi: wake card on operations
>   drm/i915/spi: add support for access mode
>=20
> Jani Nikula (1):
>   drm/i915/spi: add spi device for discrete graphics
>=20
> Tomas Winkler (6):
>   drm/i915/spi: add intel_spi_region map
>   drm/i915/spi: add driver for on-die spi device
>   drm/i915/spi: implement region enumeration
>   drm/i915/spi: implement spi access functions
>   drm/i915/spi: spi register with mtd
>   drm/i915/spi: mtd: implement access handlers
>=20
>  drivers/gpu/drm/i915/Kconfig             |   1 +
>  drivers/gpu/drm/i915/Makefile            |   6 +
>  drivers/gpu/drm/i915/i915_driver.c       |   7 +
>  drivers/gpu/drm/i915/i915_drv.h          |   4 +
>  drivers/gpu/drm/i915/i915_reg.h          |   1 +
>  drivers/gpu/drm/i915/spi/intel_spi.c     | 101 +++
>  drivers/gpu/drm/i915/spi/intel_spi.h     |  33 +
>  drivers/gpu/drm/i915/spi/intel_spi_drv.c | 865 +++++++++++++++++++++++
>  8 files changed, 1018 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.c
>  create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.h
>  create mode 100644 drivers/gpu/drm/i915/spi/intel_spi_drv.c

Thanks,
Miqu=C3=A8l
