Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8994976862
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 13:56:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5B4D10EB58;
	Thu, 12 Sep 2024 11:56:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZFnG1gA7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F185410EB56;
 Thu, 12 Sep 2024 11:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726142200; x=1757678200;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=xpWAN3Hqr0yIlRB4sMkILNQk7fR5lUxBT4uTPZf4tjs=;
 b=ZFnG1gA7Obdnu7ym67Ch3jtKYrDlvMwXIjd+iXtzLh7lb6Af2uEPkoGQ
 vgfz75wTMDFMkItshVjy8/vmfIqnutyd+NJdHy1ws3MeJUKZntpJMXCen
 +/JnifJ7u+5t35wbnMIZGkXfDmyvpphHL1gRnFpg34RswS19rG3R3k9jn
 6Kx9HAqd3WElIBjFKz9FIvkRmumvGhflr1+GV+Nm48uMdF9MmyVip50OS
 gcZp9GMh0B8dVGy4htc0UNjn5mfSW2fpQXgyz8M4v/glhuPyFECER7cuV
 B4NBJk5aspY+SWWO2zp/UfhJpJIXJ4kug3KGTUyxAIE2xaUoly5KI42P2 Q==;
X-CSE-ConnectionGUID: RRHLVUAuSFClI+gjXHKn5A==
X-CSE-MsgGUID: S0TJbkcNRey6ENcC5tp34Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="13492674"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="13492674"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 04:56:40 -0700
X-CSE-ConnectionGUID: QGhs3hffTweyaTWUZvYC/A==
X-CSE-MsgGUID: r/EfvFQ7TqmBdd1ujWV7cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="67403027"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 04:56:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/5] drm/i915/bios: Add some size checks to SPI VBT read
In-Reply-To: <20240910134219.28479-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240910134219.28479-1-ville.syrjala@linux.intel.com>
 <20240910134219.28479-2-ville.syrjala@linux.intel.com>
Date: Thu, 12 Sep 2024 14:56:35 +0300
Message-ID: <877cbhgk5o.fsf@intel.com>
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
> Unify the SPI vs. PCI ROM VBT read codepaths a bit by
> pulling some size overflow checks from the PCI side
> into the SPI side.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index cd32c9cd38a9..86b81fd23f58 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3088,11 +3088,22 @@ static struct vbt_header *spi_oprom_get_vbt(struc=
t intel_display *display,
>  	if (count >=3D oprom_size)
>  		goto err_not_found;
>=20=20
> +	if (sizeof(struct vbt_header) > oprom_size - count) {
> +		drm_dbg(display->drm, "VBT header incomplete\n");
> +		goto err_not_found;
> +	}
> +
>  	/* Get VBT size and allocate space for the VBT */
>  	vbt_size =3D intel_spi_read(&i915->uncore,
>  				  found + offsetof(struct vbt_header, vbt_size));
>  	vbt_size &=3D 0xffff;
>=20=20
> +	if (vbt_size > oprom_size - count) {
> +		drm_dbg(display->drm,
> +			"VBT incomplete (vbt_size overflows)\n");
> +		goto err_not_found;
> +	}
> +
>  	vbt =3D kzalloc(round_up(vbt_size, 4), GFP_KERNEL);
>  	if (!vbt)
>  		goto err_not_found;

--=20
Jani Nikula, Intel
