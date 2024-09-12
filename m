Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE7D9768E2
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 14:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC37210EB68;
	Thu, 12 Sep 2024 12:15:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b0mWNjrO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B15010EB68;
 Thu, 12 Sep 2024 12:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726143356; x=1757679356;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=dkXbE0V2XUPBdXQ0CPd28jecEyo2WBrv17CENlfSlzo=;
 b=b0mWNjrOtmznMOc/ZlpPpFKkR12n+4elGRqDFQZZmJZMIJbFfb3vVRwe
 QFq14CT3hHMYmoAx0oJjyNHZ0gbs9hVx0MJ1EJ4tfZm7E949YeW8Mcsms
 OdyLgzEKXa/EReH2bg12ms+g1L2liIwba6GaLFUUYNJt2a4/P3Wx41Guu
 hhJF1VM5yU3NlJqhFe//GKyYG+w3tvSgmqf6IKenGqp9vIjffH424j4yN
 FJU/HG7D75dtGX6UM2t/CH4Q+IQ1Xzz/XAOkzO+H/JbQR1AzPzG+Rxw8/
 aSe3KeKf9AmCyydm72xxzNMtPyVkDRYmpbL8/AcHCY6Ir5ERZLO0NTy74 w==;
X-CSE-ConnectionGUID: JWFnb56cTB+vGwraLxcKRA==
X-CSE-MsgGUID: GN/Zb0njSnyYAxovHKdmbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="42505787"
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="42505787"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 05:15:56 -0700
X-CSE-ConnectionGUID: EY8J7mzfQ8CWlTw7TRSm9w==
X-CSE-MsgGUID: heJqZZwvRMeLkMFCfEjBWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="67309476"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 05:15:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/i915/bios: Extract vbt_signature[]
In-Reply-To: <20240910134219.28479-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240910134219.28479-1-ville.syrjala@linux.intel.com>
 <20240910134219.28479-5-ville.syrjala@linux.intel.com>
Date: Thu, 12 Sep 2024 15:15:52 +0300
Message-ID: <87y13xf4p3.fsf@intel.com>
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
> Replace the three hand rolled "$VBT"s with a vbt_signature[]
> to avoid accidents.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index cbbda94c3dab..0b92b494117f 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2964,6 +2964,8 @@ static const struct bdb_header *get_bdb_header(cons=
t struct vbt_header *vbt)
>  	return _vbt + vbt->bdb_offset;
>  }
>=20=20
> +static const char vbt_signature[4] =3D "$VBT";

Always a bit scary to add strings without termination, but I guess it's
justified here.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +
>  /**
>   * intel_bios_is_valid_vbt - does the given buffer contain a valid VBT
>   * @display:	display device
> @@ -2986,7 +2988,7 @@ bool intel_bios_is_valid_vbt(struct intel_display *=
display,
>  		return false;
>  	}
>=20=20
> -	if (memcmp(vbt->signature, "$VBT", 4)) {
> +	if (memcmp(vbt->signature, vbt_signature, sizeof(vbt_signature))) {
>  		drm_dbg_kms(display->drm, "VBT invalid signature\n");
>  		return false;
>  	}
> @@ -3082,9 +3084,11 @@ static struct vbt_header *spi_oprom_get_vbt(struct=
 intel_display *display,
>  	oprom_offset =3D intel_uncore_read(&i915->uncore, OROM_OFFSET);
>  	oprom_offset &=3D OROM_OFFSET_MASK;
>=20=20
> +	BUILD_BUG_ON(sizeof(vbt_signature) !=3D sizeof(u32));
> +
>  	for (count =3D 0; count < oprom_size; count +=3D 4) {
>  		data =3D intel_spi_read32(&i915->uncore, oprom_offset + count);
> -		if (data =3D=3D *((const u32 *)"$VBT")) {
> +		if (data =3D=3D *((const u32 *)vbt_signature)) {
>  			found =3D oprom_offset + count;
>  			break;
>  		}
> @@ -3144,9 +3148,11 @@ static struct vbt_header *oprom_get_vbt(struct int=
el_display *display,
>  	if (!oprom)
>  		return NULL;
>=20=20
> +	BUILD_BUG_ON(sizeof(vbt_signature) !=3D sizeof(u32));
> +
>  	/* Scour memory looking for the VBT signature. */
>  	for (i =3D 0; i + 4 < size; i +=3D 4) {
> -		if (ioread32(oprom + i) !=3D *((const u32 *)"$VBT"))
> +		if (ioread32(oprom + i) !=3D *((const u32 *)vbt_signature))
>  			continue;
>=20=20
>  		p =3D oprom + i;

--=20
Jani Nikula, Intel
