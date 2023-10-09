Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 877507BE4FD
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 17:36:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C58C110E106;
	Mon,  9 Oct 2023 15:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5735A10E106
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 15:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696865795; x=1728401795;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=aNrecnzXOfl4vTD2QtvJStSUWC2HU2mv+9+8O64JCyo=;
 b=kmYE/ThcdPecEa+wFfOXZZ1S1Ql0YgwID6FnXTzNH5tsaieT7GQkHZOs
 FYNn7SvUW5NTjXUUs+XDSu5PNzW8Chx2hHPnC69ks7RbQgovavC2Hcc51
 8ioTlirRx49Bj6mRuZLYcnfcP2NEZodtanthuHLWfVsf5mDR8POXIWLUe
 VXyJ24snGh5loNet9lQ77v+B0MLekZNk5t/BM2pb4XjDm+NyZfhK3OVYd
 BF/BYvYaWrTyuNmdcawEx5ATx7HQ648B34wqFSmP2Lt6EOTlSzX0C0o2b
 dNvjhZuBJLvFROozQ7HEsG6sTkdKhGfPGEs/y0owr138wc/ssDSGn9K3h g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="470435558"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="470435558"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 08:36:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="823380347"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="823380347"
Received: from oelagadx-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.42.47])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 08:36:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231009145828.12960-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231009145828.12960-1-ville.syrjala@linux.intel.com>
Date: Mon, 09 Oct 2023 18:36:30 +0300
Message-ID: <87wmvv6c5d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix VLV color state readout
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

On Mon, 09 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> VLV was missed when the color.get_config() hook was added.
> Remedy that.

Oops, how did I manage that?! Thanks for the fix,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> Not really sure what the final plan here was since a bunch of
> color related readout was left in intel_display.c anyway,
> but that's for anothr day to figure out...

I guess I just wanted to start somewhere, and the cutoff was mostly by
the registers where the data is read from, e.g. ->gamma_mode and
->wgc_enable coming from TRANSCONF I left in place.

BR,
Jani.

>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Fixes: 9af09dfcdfa1 ("drm/i915/color: move pre-SKL gamma and CSC enable r=
ead to intel_color")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index 4f92fc31059f..2a2a163ea652 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -3702,6 +3702,7 @@ static const struct intel_color_funcs vlv_color_fun=
cs =3D {
>  	.read_luts =3D i965_read_luts,
>  	.lut_equal =3D i965_lut_equal,
>  	.read_csc =3D vlv_read_csc,
> +	.get_config =3D i9xx_get_config,
>  };
>=20=20
>  static const struct intel_color_funcs i965_color_funcs =3D {

--=20
Jani Nikula, Intel
