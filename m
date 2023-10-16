Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3827CA1D2
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 10:39:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32F1E10E142;
	Mon, 16 Oct 2023 08:39:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
 [IPv6:2001:4b98:dc4:8::225])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84F9210E142
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 08:39:50 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4C8141C000C;
 Mon, 16 Oct 2023 08:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1697445586;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vC3xNrtIntlMiyJnUWOHJsV65ucq25DkqdsLxZQyYMk=;
 b=VLrzZ3jlSMJzDBTAo/POIHPXpsyP4rdM1ckkpzAI/911d4VFeVvL0Km8LYFNjzMbyI/NQ6
 0hl7bu9Vrk+MiLqkZyp65bW3FurU8RMBSLz73GM/49psy3HW6NohyPJ4j5Y/K1JNbbkHlV
 rrbHTBFS8hD+mSi9jpwINc6cuVzgACKZaSNSFgeRgdSfu3Netyp/LnHfokrUTqn3XS1GVo
 O5V7UZPJuJwWP4G3j0HyDjSTNWiiJJtKl19y5iWKw/FSirMKMTMrr7mnhQrMwctop+84XF
 fsU5geqUMlexprG4Uk9HXZqQWvAK1VFA9q7j/ADSq0F/bKuPkJknlMs/NF4DuA==
Date: Mon, 16 Oct 2023 10:39:39 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <20231016103939.67445bee@xps-13>
In-Reply-To: <20230910123949.1251964-7-alexander.usyskin@intel.com>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
 <20230910123949.1251964-7-alexander.usyskin@intel.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: miquel.raynal@bootlin.com
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915/spi: spi register with mtd
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
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 linux-mtd@lists.infradead.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Alexander,

> +static int i915_spi_init_mtd(struct i915_spi *spi, struct device *device,
> +			     unsigned int nparts)
> +{
> +	unsigned int i;
> +	unsigned int n;
> +	struct mtd_partition *parts =3D NULL;
> +	int ret;
> +
> +	dev_dbg(device, "registering with mtd\n");
> +
> +	spi->mtd.owner =3D THIS_MODULE;
> +	spi->mtd.dev.parent =3D device;
> +	spi->mtd.flags =3D MTD_CAP_NORFLASH | MTD_WRITEABLE;
> +	spi->mtd.type =3D MTD_DATAFLASH;
> +	spi->mtd.priv =3D spi;
> +	spi->mtd._write =3D i915_spi_write;
> +	spi->mtd._read =3D i915_spi_read;
> +	spi->mtd._erase =3D i915_spi_erase;
> +	spi->mtd._get_device =3D i915_spi_get_device;
> +	spi->mtd._put_device =3D i915_spi_put_device;
> +	spi->mtd.writesize =3D SZ_1; /* 1 byte granularity */

You say writesize should be aligned with 4 in your next patch?

> +	spi->mtd.erasesize =3D SZ_4K; /* 4K bytes granularity */
> +	spi->mtd.size =3D spi->size;
> +
> +	parts =3D kcalloc(spi->nregions, sizeof(*parts), GFP_KERNEL);
> +	if (!parts)
> +		return -ENOMEM;
> +
> +	for (i =3D 0, n =3D 0; i < spi->nregions && n < nparts; i++) {
> +		if (!spi->regions[i].is_readable)
> +			continue;
> +		parts[n].name =3D spi->regions[i].name;
> +		parts[n].offset  =3D spi->regions[i].offset;
> +		parts[n].size =3D spi->regions[i].size;
> +		if (!spi->regions[i].is_writable)
> +			parts[n].mask_flags =3D MTD_WRITEABLE;
> +		n++;
> +	}
> +
> +	ret =3D mtd_device_register(&spi->mtd, parts, n);
> +
> +	kfree(parts);
> +
> +	return ret;
> +}
> +

Thanks,
Miqu=C3=A8l
