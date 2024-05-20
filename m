Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B5B8C9DFE
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 15:18:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD9CD10E06E;
	Mon, 20 May 2024 13:18:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jLDF/yY+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81C1110E06E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 13:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716211121; x=1747747121;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=dnoQcfP+TFFnJbl5rEr/Ivb2sxEedkE5G+rqbiKVobg=;
 b=jLDF/yY+oOKiltNXfk7wN6OLjmqBom4UgBOi+gNcde0CuMj1nQ3ooV9J
 UWlWsX9kpX6jEFNyqEQoK050qza1lybeNFvFVmF3y3EYt3MnB3RGGdigJ
 NGvIRj3bPUZFxlUXB+ArA2BJgJ3cjmfQdnuCfUKnnOyan+dbKDbJ1TYsd
 FjtojvwuD7iZ/b8W0zarBCaXylup3YZBcOZyYcWisUiA81wKpz0T4TdxT
 8MqVO7Gtpul76uhctBtvGSw77lYWbSGQ48wrLLEAqMsuCmBs/bcj0V3RA
 IplE+c7u7TOqnu72JwliWC44B4zc6QQi6nAzjk6a4nG916s8qWdrcPnB0 Q==;
X-CSE-ConnectionGUID: F8+HO1q9TTaegZOIep3LxA==
X-CSE-MsgGUID: caXQvDjiRVKKZ0xd/BRnmw==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12212130"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="12212130"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 06:18:41 -0700
X-CSE-ConnectionGUID: eA6gQ8HhQACOFLDoGBUTgw==
X-CSE-MsgGUID: viKKyHIwRnCbhzBQkq8fYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37357851"
Received: from unknown (HELO localhost) ([10.245.246.99])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 06:18:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 13/13] drm/i915: Document which platforms use which
 sprite registers
In-Reply-To: <20240516135622.3498-14-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
 <20240516135622.3498-14-ville.syrjala@linux.intel.com>
Date: Mon, 20 May 2024 16:18:36 +0300
Message-ID: <87bk50sjtf.fsf@intel.com>
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

On Thu, 16 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Note which sprite registers are valid for which platforms.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_sprite_regs.h  | 19 +++++++++++--------
>  1 file changed, 11 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite_regs.h b/drivers/g=
pu/drm/i915/display/intel_sprite_regs.h
> index c27adbaf0f00..73021e3ced6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_sprite_regs.h
> @@ -6,6 +6,7 @@
>=20=20
>  #include "intel_display_reg_defs.h"
>=20=20
> +/* g4x/ilk/snb video sprite */
>  #define _DVSACNTR		0x72180
>  #define _DVSBCNTR		0x73180
>  #define DVSCNTR(pipe) _MMIO_PIPE(pipe, _DVSACNTR, _DVSBCNTR)
> @@ -111,6 +112,7 @@
>  #define _DVSBGAMCMAX_ILK	0x73340 /* ilk/snb */
>  #define DVSGAMCMAX_ILK(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMCMAX_ILK, _DVS=
BGAMCMAX_ILK) + (i) * 4) /* 3 x u1.10 */
>=20=20
> +/* ivb/hsw/bdw sprite */
>  #define _SPRA_CTL		0x70280
>  #define _SPRB_CTL		0x71280
>  #define SPRCTL(pipe) _MMIO_PIPE(pipe, _SPRA_CTL, _SPRB_CTL)
> @@ -140,8 +142,8 @@
>  #define   SPRITE_TILED				REG_BIT(10)
>  #define   SPRITE_DEST_KEY			REG_BIT(2)
>=20=20
> -#define _SPRA_LINOFF		0x70284
> -#define _SPRB_LINOFF		0x71284
> +#define _SPRA_LINOFF		0x70284 /* ivb */
> +#define _SPRB_LINOFF		0x71284 /* ivb */
>  #define SPRLINOFF(pipe) _MMIO_PIPE(pipe, _SPRA_LINOFF, _SPRB_LINOFF)
>=20=20
>  #define _SPRA_STRIDE		0x70288
> @@ -181,24 +183,24 @@
>  #define _SPRB_KEYMAX		0x712a0
>  #define SPRKEYMAX(pipe) _MMIO_PIPE(pipe, _SPRA_KEYMAX, _SPRB_KEYMAX)
>=20=20
> -#define _SPRA_TILEOFF		0x702a4
> -#define _SPRB_TILEOFF		0x712a4
> +#define _SPRA_TILEOFF		0x702a4 /* ivb */
> +#define _SPRB_TILEOFF		0x712a4 /* ivb */
>  #define SPRTILEOFF(pipe) _MMIO_PIPE(pipe, _SPRA_TILEOFF, _SPRB_TILEOFF)
>  #define   SPRITE_OFFSET_Y_MASK	REG_GENMASK(31, 16)
>  #define   SPRITE_OFFSET_Y(y)	REG_FIELD_PREP(SPRITE_OFFSET_Y_MASK, (y))
>  #define   SPRITE_OFFSET_X_MASK	REG_GENMASK(15, 0)
>  #define   SPRITE_OFFSET_X(x)	REG_FIELD_PREP(SPRITE_OFFSET_X_MASK, (x))
>=20=20
> -#define _SPRA_OFFSET		0x702a4
> -#define _SPRB_OFFSET		0x712a4
> +#define _SPRA_OFFSET		0x702a4 /* hsw/bdw */
> +#define _SPRB_OFFSET		0x712a4 /* hsw/bdw */
>  #define SPROFFSET(pipe) _MMIO_PIPE(pipe, _SPRA_OFFSET, _SPRB_OFFSET)
>=20=20
>  #define _SPRA_SURFLIVE		0x702ac
>  #define _SPRB_SURFLIVE		0x712ac
>  #define SPRSURFLIVE(pipe) _MMIO_PIPE(pipe, _SPRA_SURFLIVE, _SPRB_SURFLIV=
E)
>=20=20
> -#define _SPRA_SCALE		0x70304
> -#define _SPRB_SCALE		0x71304
> +#define _SPRA_SCALE		0x70304 /* ivb */
> +#define _SPRB_SCALE		0x71304 /* ivb */
>  #define SPRSCALE(pipe) _MMIO_PIPE(pipe, _SPRA_SCALE, _SPRB_SCALE)
>  #define   SPRITE_SCALE_ENABLE			REG_BIT(31)
>  #define   SPRITE_FILTER_MASK			REG_GENMASK(30, 29)
> @@ -224,6 +226,7 @@
>  #define _SPRB_GAMC17		0x7144c
>  #define SPRGAMC17(pipe, i) _MMIO(_PIPE(pipe, _SPRA_GAMC17, _SPRB_GAMC17)=
 + (i) * 4) /* 3 x u2.10 */
>=20=20
> +/* vlv/chv sprite */
>  #define _VLV_SPR(pipe, plane_id, reg_a, reg_b) \
>  	_PIPE((pipe) * 2 + (plane_id) - PLANE_SPRITE0, (reg_a), (reg_b))
>  #define _MMIO_VLV_SPR(pipe, plane_id, reg_a, reg_b) \

--=20
Jani Nikula, Intel
