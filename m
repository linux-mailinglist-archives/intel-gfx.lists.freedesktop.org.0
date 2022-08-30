Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 167D25A5E0D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 10:27:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5443810EC48;
	Tue, 30 Aug 2022 08:27:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E684710EC48
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 08:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661848065; x=1693384065;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=97HEzabJSGeV78mcHWkuDXfM2OXyv5A7RT29pUq8p5M=;
 b=idDNvJnqgkahE8AZMr5BYsN9pjQWTGuU3CMiY9ojUippzniYoWg2vueo
 VRDHhhjE6FGFaq1GSmq8TtwKWW5pgsfPmVfJZGhXTw+oK8xAsZSX9oa2N
 XHx/rm6N4lPSZI9ysv/HlWqFJRbnnVY5BIfO/TiPURG2iNPkLov/Fm6JN
 +ZHqD2kFiD1hPXGFYWTVifmxkhmiX5GEYNrLb9DWGbtMHI2aiTsOqfTLC
 8qZIhk1MGX4DHnFMOh/PbZER4mZ1giHCW0jvfmQ+/+SAU9+bPQtxlwijD
 0Ejh8q2gBzhVIwpvm0yiJ1szAu+k3tLZoaq5lo9M55D3tksph5XsF2xiw w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="356833300"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="356833300"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 01:27:45 -0700
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="672753013"
Received: from amrabet-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.211])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 01:27:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220829135834.8585-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220829135834.8585-1-ville.syrjala@linux.intel.com>
Date: Tue, 30 Aug 2022 11:27:27 +0300
Message-ID: <87o7w2dtlc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: Copy the whole MIPI sequence
 block
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 29 Aug 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Turns out the MIPI sequence block version number and
> new block size fields are considered part of the block
> header and are not included in the reported new block size
> field itself. Bump up the block size appropriately so that
> we'll copy over the last five bytes of the block as well.
>
> For this particular machine those last five bytes included
> parts of the GPIO op for the backlight on sequence, causing
> the backlight no longer to turn back on:
>
>  		Sequence 6 - MIPI_SEQ_BACKLIGHT_ON
>  			Delay: 20000 us
> -			GPIO index 0, number 0, set 0 (0x00)
> +			GPIO index 1, number 70, set 1 (0x01)
>
> Cc: stable@vger.kernel.org
> Fixes: e163cfb4c96d ("drm/i915/bios: Make copies of VBT data blocks")
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6652
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 81d6cfbd2615..d493d04f4049 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -479,6 +479,13 @@ init_bdb_block(struct drm_i915_private *i915,
>=20=20
>  	block_size =3D get_blocksize(block);
>=20=20
> +	/*
> +	 * Version number and new block size are considered
> +	 * part of the header for MIPI sequenece block v3+.
> +	 */

Quoth Bspec, "This field specifies the size of this entire data
structure excluding this header." Okay.

> +	if (section_id =3D=3D BDB_MIPI_SEQUENCE && *(const u8 *)block >=3D 3)
> +		block_size +=3D 5;
> +

Since we need to look at the header later, we can't just use data +
5. Okay.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

I just don't get the whole sequence block u32 size thing, because the
vbt header and bdb header still have u16, and they're supposed to cover
the entire vbt and all bdb data blocks. And this is what we check
anyway.

>  	entry =3D kzalloc(struct_size(entry, data, max(min_size, block_size) + =
3),
>  			GFP_KERNEL);
>  	if (!entry) {

--=20
Jani Nikula, Intel Open Source Graphics Center
