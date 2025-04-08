Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63392A7F8D2
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 11:01:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5E4910E61A;
	Tue,  8 Apr 2025 09:01:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HyIgAXdM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08F0010E61A;
 Tue,  8 Apr 2025 09:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744102908; x=1775638908;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=yv71aqWD6hCGd9kFn09YM4ArqvHQRZ9Uf+VcVp38/ks=;
 b=HyIgAXdMneb3llI3fKV4Kk5VpOiD73ePX+ZJm6+LxumUu9QHGvuNJJ+y
 y3DqMI6NaHJQYvIWmzPFU0YN1r4jCjL4jWQqlEDKSKHr5VkWG8aVJQjYs
 2z0tX6dfx8JN7rZcpMRTaOTwFPmr9AleNp3DpFFkeuVsSqYvDrDcuaGwv
 NtBJfM6YoZ3JxM2vc3gph6ZqHwzQNC+pBa4W2CWmVt6opERvGoQjztC9d
 Z5xUKmHTIMBSzgjoIniRK1ecRIxERehNtV80IUS/g+DKFjxzXXYMyJmea
 v4DncOka+wKo1swwCnL8IzOLJJdru27OVIKNTwTunU2BQCN3Edf9deBcd Q==;
X-CSE-ConnectionGUID: UcaKowqAS4C1CW9ljDndXQ==
X-CSE-MsgGUID: +dqCH22sQgakCh1l3+7O8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45643134"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="45643134"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 02:01:39 -0700
X-CSE-ConnectionGUID: zzjzS3ILSdWFFB7flapNfA==
X-CSE-MsgGUID: tu4dEtKvRL6RUdvIOqedxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="129155478"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.137])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 02:01:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [core-for-CI] Revert "panel/auo-a030jtn01: Use refcounted
 allocation in place of devm_kzalloc()"
In-Reply-To: <20250408062524.1825048-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250408062524.1825048-1-chaitanya.kumar.borah@intel.com>
Date: Tue, 08 Apr 2025 12:01:34 +0300
Message-ID: <87y0wbxc0h.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 08 Apr 2025, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com=
> wrote:
> This reverts commit 9d7d7c3c9a191864367b28e05b312ab3ac34ef0a.
>
> The patch causes build errors in our CI. Revert it till a fix is found.

There are at least three other patches in the same series that don't
build. I expect them to be handled fairly quickly, and would rather we
not merge this, because it hides the problem from all the drm-tip users
that are the folks who would actually fix the issue.

I'd be totally fine sending this as a revert to dri-devel to be merged
for real instead of core-for-CI.

BR,
Jani.


>
>   CC [M]  drivers/gpu/drm/solomon/ssd130x-spi.o
>   CC [M]  drivers/gpu/drm/panel/panel-auo-a030jtn01.o
> drivers/gpu/drm/panel/panel-auo-a030jtn01.c: In function =E2=80=98a030jtn=
01_probe=E2=80=99:
> drivers/gpu/drm/panel/panel-auo-a030jtn01.c:203:9: error: =E2=80=98panel=
=E2=80=99 undeclared (first use in this function)
>   203 |         panel =3D devm_drm_panel_alloc(dev, struct a030jtn01, pan=
el,
>       |         ^~~~~
> drivers/gpu/drm/panel/panel-auo-a030jtn01.c:203:9: note: each undeclared =
identifier is reported only once for each function it appears in
> make[6]: *** [scripts/Makefile.build:203: drivers/gpu/drm/panel/panel-auo=
-a030jtn01.o] Error 1
> make[5]: *** [scripts/Makefile.build:461: drivers/gpu/drm/panel] Error 2
> make[4]: *** [scripts/Makefile.build:461: drivers/gpu/drm] Error 2
> make[3]: *** [scripts/Makefile.build:461: drivers/gpu] Error 2
> make[2]: *** [scripts/Makefile.build:461: drivers] Error 2
> make[1]: *** [/home/kbuild2/kernel/Makefile:2006: .] Error 2
> make: *** [Makefile:248: __sub-make] Error 2
>
> Link: https://lore.kernel.org/all/Z_P0A9lxWD0aAdjp@ideak-desk.fi.intel.co=
m/
> References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14039
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/panel/panel-auo-a030jtn01.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/panel/panel-auo-a030jtn01.c b/drivers/gpu/dr=
m/panel/panel-auo-a030jtn01.c
> index 83529b1c2bac..77604d6a4e72 100644
> --- a/drivers/gpu/drm/panel/panel-auo-a030jtn01.c
> +++ b/drivers/gpu/drm/panel/panel-auo-a030jtn01.c
> @@ -200,10 +200,9 @@ static int a030jtn01_probe(struct spi_device *spi)
>=20=20
>  	spi->mode |=3D SPI_MODE_3 | SPI_3WIRE;
>=20=20
> -	panel =3D devm_drm_panel_alloc(dev, struct a030jtn01, panel,
> -				     &a030jtn01_funcs, DRM_MODE_CONNECTOR_DPI);
> -	if (IS_ERR(panel))
> -		return PTR_ERR(panel);
> +	priv =3D devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
>=20=20
>  	priv->spi =3D spi;
>  	spi_set_drvdata(spi, priv);
> @@ -224,6 +223,9 @@ static int a030jtn01_probe(struct spi_device *spi)
>  	if (IS_ERR(priv->reset_gpio))
>  		return dev_err_probe(dev, PTR_ERR(priv->reset_gpio), "Failed to get re=
set GPIO");
>=20=20
> +	drm_panel_init(&priv->panel, dev, &a030jtn01_funcs,
> +		       DRM_MODE_CONNECTOR_DPI);
> +
>  	err =3D drm_panel_of_backlight(&priv->panel);
>  	if (err)
>  		return err;

--=20
Jani Nikula, Intel
