Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0A3976886
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 14:02:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5078E10E0C1;
	Thu, 12 Sep 2024 12:02:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hOr3Qd4M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C1F310E0C1;
 Thu, 12 Sep 2024 12:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726142528; x=1757678528;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=duX9fzDkS4nMgDbrfgI48Fe5bL+nx6UP1D6ynJlDP1s=;
 b=hOr3Qd4M5JubM6Nq24liaanu6JDLZmopQaI/VBF/N+Qsvs3Wnmq6pEhv
 gFB3PfKOZdkEDh95mZ3UIfrzcAop7k/WXnqA8rrCwyGNrjk53RL0uRfdJ
 f6togEWADHKgV91U9uwqSi8Ub9qeFzjxO1KFqjAniSVAGjg5B33kqbSyg
 Brd3Tkh9wnEmtQ7KDaFqdQu+ju23PIn4RqqnenBcd/mN/s0cNmNXonNdO
 GnHnOH5U8S9ANdYHpfhIoLDFaQShh5G33IWsHFrJ9J/ZHmYxypMZk3MJN
 RyXetICw7w3RwNs/ystzuYIlz9Q94bUErsJn3YLvnTSvbQEiqS/cKidw5 g==;
X-CSE-ConnectionGUID: vWBpMziTSBa/m74LF+ti2Q==
X-CSE-MsgGUID: QmbS8+GdTAS7f6KxOlEj6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="35558681"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="35558681"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 05:02:08 -0700
X-CSE-ConnectionGUID: SW9Ulw0WSEWaWNlDw0txJg==
X-CSE-MsgGUID: JTdTfLNYQ4S6jhfwyCGmSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="67610324"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 05:02:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/5] drm/i915/bios: Extract intel_spi_read16()
In-Reply-To: <20240910134219.28479-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240910134219.28479-1-ville.syrjala@linux.intel.com>
 <20240910134219.28479-4-ville.syrjala@linux.intel.com>
Date: Thu, 12 Sep 2024 15:02:03 +0300
Message-ID: <871q1pgjwk.fsf@intel.com>
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

On Tue, 10 Sep 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The SPI VBT codepath only knows how to read 4 bytes at a time.
> So to read the 2 byte vbt_size it masks out the unwanted msbs.
> Hide that little implementation detail inside a new intel_spi_read16()
> helper. Alse rename the existing intel_spi_read() to intel_spi_read32()
> to make it clear what it does.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index cc4a4cc2bf3e..cbbda94c3dab 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3053,13 +3053,18 @@ static struct vbt_header *firmware_get_vbt(struct=
 intel_display *display,
>  	return vbt;
>  }
>=20=20
> -static u32 intel_spi_read(struct intel_uncore *uncore, u32 offset)
> +static u32 intel_spi_read32(struct intel_uncore *uncore, u32 offset)
>  {
>  	intel_uncore_write(uncore, PRIMARY_SPI_ADDRESS, offset);
>=20=20
>  	return intel_uncore_read(uncore, PRIMARY_SPI_TRIGGER);
>  }
>=20=20
> +static u16 intel_spi_read16(struct intel_uncore *uncore, u32 offset)
> +{
> +	return intel_spi_read32(uncore, offset) & 0xffff;
> +}
> +
>  static struct vbt_header *spi_oprom_get_vbt(struct intel_display *displa=
y,
>  					    size_t *size)
>  {
> @@ -3078,7 +3083,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct =
intel_display *display,
>  	oprom_offset &=3D OROM_OFFSET_MASK;
>=20=20
>  	for (count =3D 0; count < oprom_size; count +=3D 4) {
> -		data =3D intel_spi_read(&i915->uncore, oprom_offset + count);
> +		data =3D intel_spi_read32(&i915->uncore, oprom_offset + count);
>  		if (data =3D=3D *((const u32 *)"$VBT")) {
>  			found =3D oprom_offset + count;
>  			break;
> @@ -3094,9 +3099,8 @@ static struct vbt_header *spi_oprom_get_vbt(struct =
intel_display *display,
>  	}
>=20=20
>  	/* Get VBT size and allocate space for the VBT */
> -	vbt_size =3D intel_spi_read(&i915->uncore,
> -				  found + offsetof(struct vbt_header, vbt_size));
> -	vbt_size &=3D 0xffff;
> +	vbt_size =3D intel_spi_read16(&i915->uncore,
> +				    found + offsetof(struct vbt_header, vbt_size));

Pedantically if vbt_size was the last member of struct vbt_header this
could read past the checked size, but it's not and meh. Also nothing to
do with this change, apart from this hiding the detail. Still meh.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>=20=20
>  	if (vbt_size > oprom_size - count) {
>  		drm_dbg(display->drm,
> @@ -3109,7 +3113,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct =
intel_display *display,
>  		goto err_not_found;
>=20=20
>  	for (count =3D 0; count < vbt_size; count +=3D 4)
> -		*(vbt + store++) =3D intel_spi_read(&i915->uncore, found + count);
> +		*(vbt + store++) =3D intel_spi_read32(&i915->uncore, found + count);
>=20=20
>  	if (!intel_bios_is_valid_vbt(display, vbt, vbt_size))
>  		goto err_free_vbt;

--=20
Jani Nikula, Intel
