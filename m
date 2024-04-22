Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD65B8AC834
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 10:58:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 542391128EC;
	Mon, 22 Apr 2024 08:58:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BbPhfXQ6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D879E1128EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 08:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713776326; x=1745312326;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=nZykS+kuV5GHTLR4a066EgaUCnZ4xk+CGLXhyEQsh0I=;
 b=BbPhfXQ6JWGR3u6mGG4IqFn6bso2zgL6ZyfmHpOPwDUKxW2jnvfeOqer
 L44RdUOa/gOlHv8wCIh24vm4Jpxy0+d16qVv0Zcpd6TfQSeOqc3PlQnmm
 xr0EkBnGo2oDN/h2oSWe7+Lv8J278kO+0gIQrY5migBMZaCSOnxu0cMMB
 fngOHbgfszQLg3s7C2XqgkZMdgYU7FaFHk8Fldqe4CgNBHFj1i3QSJ5qJ
 DUxNa/kAs1olT2Ia4BKqyp4Y+z2S7Uxt4iPdMv0CFdI7NGjdJvX3DRlBz
 Sw0TEmKCrIwhvm/1ILwkmA3YZkUhmy34/A0gup3QEITLtgtbXvRaAra1m w==;
X-CSE-ConnectionGUID: ODsDna4KSnaYJlEaKwkxkA==
X-CSE-MsgGUID: VTkh5Rs3TBuKfOtJdBjhVg==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="19909781"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="19909781"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:58:45 -0700
X-CSE-ConnectionGUID: v02UyWgKSDmiNGiNh/IzfQ==
X-CSE-MsgGUID: nsWv48pdRtW8NHFlOCqlEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="28620626"
Received: from ralbanes-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.128])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:58:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 01/14] drm/i915/dpio: Remove pointless VLV_PCS01_DW8 read
In-Reply-To: <20240422083457.23815-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
 <20240422083457.23815-2-ville.syrjala@linux.intel.com>
Date: Mon, 22 Apr 2024 11:58:41 +0300
Message-ID: <87le55vkn2.fsf@intel.com>
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

On Mon, 22 Apr 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We don't use the result of the VLV_PCS01_DW8 read at all,
> so don't read.

Mmmh, maybe the intention was to be a rmw? Since this appears to have
worked, okay.

This part becomes a bit pointless:

	else
		val &=3D ~(1<<21);

but it was already there and you seem to clean this up in patch 13 so
*shrug*.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/=
drm/i915/display/intel_dpio_phy.c
> index c72b76b61dff..6cbee88e608f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> @@ -1134,7 +1134,6 @@ void vlv_phy_pre_encoder_enable(struct intel_encode=
r *encoder,
>  	vlv_dpio_get(dev_priv);
>=20=20
>  	/* Enable clock channels for this port */
> -	val =3D vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW8(port));
>  	val =3D 0;
>  	if (pipe)
>  		val |=3D (1<<21);

--=20
Jani Nikula, Intel
