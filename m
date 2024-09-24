Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE4B984714
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 15:53:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC93910E8BC;
	Tue, 24 Sep 2024 13:53:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nWtKk7Tq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 869CF10E8BC;
 Tue, 24 Sep 2024 13:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727185983; x=1758721983;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=3/qxEuUOYuy0HMHP5pedtVYJgs87U7h8MVo7NLM+ZYA=;
 b=nWtKk7TqFhWo4+grIrGFJLKyOvD+GQBx144bglS7mXFZjZifOpYFA86Y
 TY2wUEdjUVB2+CXSRsPuCAkJlt5LsmqS9EEe++wnX3JQfVwOWtoHlb61y
 rBsh9gqxBgZQ6YS5xKyQgFh3GQdBGInlby40iT/5+RUiRsihgxQns/kCE
 XocVBHN7dSOFeBUfzaJAk1AWt3LZ/N2wpTAYEX5NUadLMJkhLWz/mrwsC
 4sfgeO65JC7qooY6PMqcyNjWdvxUzvTDd4ZMsjshk74hxDxdYm23zR53d
 qi7IEre3IbzzAJ0N96eidfkk8TpwoE27pKtDXTs0mC62Yp/aRTZiGtXfa A==;
X-CSE-ConnectionGUID: o7/JgbGnRlOzGKTlHep9HA==
X-CSE-MsgGUID: PQyPYWJTS1uXxn1+gmpCxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26276802"
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="26276802"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 06:53:02 -0700
X-CSE-ConnectionGUID: zz9XCxrxRLWRILRfO8x4zA==
X-CSE-MsgGUID: zowenWmoQgym/MRMFeYdkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="71715090"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.183])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 06:53:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 1/6] drm/i915/bios: Use drm_dbg_kms() consistently
In-Reply-To: <20240923152453.11230-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240923152453.11230-1-ville.syrjala@linux.intel.com>
 <20240923152453.11230-2-ville.syrjala@linux.intel.com>
Date: Tue, 24 Sep 2024 16:52:57 +0300
Message-ID: <87ikul40qu.fsf@intel.com>
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

On Mon, 23 Sep 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Replace the few oddball drm_dbg() calls in VBT related code
> with drm_dbg_kms() as that is what we generally use for all
> display code.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index daa4b9535123..b00aad23d6c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1706,8 +1706,8 @@ parse_mipi_config(struct intel_display *display,
>  		return;
>  	}
>=20=20
> -	drm_dbg(display->drm, "Found MIPI Config block, panel index =3D %d\n",
> -		panel_type);
> +	drm_dbg_kms(display->drm, "Found MIPI Config block, panel index =3D %d\=
n",
> +		    panel_type);
>=20=20
>  	/*
>  	 * get hold of the correct configuration block and pps data as per
> @@ -2067,8 +2067,8 @@ parse_mipi_sequence(struct intel_display *display,
>  		return;
>  	}
>=20=20
> -	drm_dbg(display->drm, "Found MIPI sequence block v%u\n",
> -		sequence->version);
> +	drm_dbg_kms(display->drm, "Found MIPI sequence block v%u\n",
> +		    sequence->version);
>=20=20
>  	seq_data =3D find_panel_sequence_block(display, sequence, panel_type, &=
seq_size);
>  	if (!seq_data)
> @@ -2114,7 +2114,7 @@ parse_mipi_sequence(struct intel_display *display,
>=20=20
>  	fixup_mipi_sequences(display, panel);
>=20=20
> -	drm_dbg(display->drm, "MIPI related VBT parsing complete\n");
> +	drm_dbg_kms(display->drm, "MIPI related VBT parsing complete\n");
>  	return;
>=20=20
>  err:
> @@ -2771,9 +2771,9 @@ static bool child_device_size_valid(struct intel_di=
splay *display, int size)
>  	expected_size =3D child_device_expected_size(display->vbt.version);
>  	if (expected_size < 0) {
>  		expected_size =3D sizeof(struct child_device_config);
> -		drm_dbg(display->drm,
> -			"Expected child device config size for VBT version %u not known; assu=
ming %d\n",
> -			display->vbt.version, expected_size);
> +		drm_dbg_kms(display->drm,
> +			    "Expected child device config size for VBT version %u not known; =
assuming %d\n",
> +			    display->vbt.version, expected_size);
>  	}
>=20=20
>  	/* Flag an error for unexpected size, but continue anyway. */
> @@ -3143,14 +3143,14 @@ static struct vbt_header *oprom_get_vbt(struct in=
tel_display *display,
>  		goto err_unmap_oprom;
>=20=20
>  	if (sizeof(struct vbt_header) > size) {
> -		drm_dbg(display->drm, "VBT header incomplete\n");
> +		drm_dbg_kms(display->drm, "VBT header incomplete\n");
>  		goto err_unmap_oprom;
>  	}
>=20=20
>  	vbt_size =3D ioread16(p + offsetof(struct vbt_header, vbt_size));
>  	if (vbt_size > size) {
> -		drm_dbg(display->drm,
> -			"VBT incomplete (vbt_size overflows)\n");
> +		drm_dbg_kms(display->drm,
> +			    "VBT incomplete (vbt_size overflows)\n");
>  		goto err_unmap_oprom;
>  	}

--=20
Jani Nikula, Intel
