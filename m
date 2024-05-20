Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1468C9DF6
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 15:16:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBCBD10E675;
	Mon, 20 May 2024 13:16:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d7TwN2kB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EB7510E6DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 13:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716210982; x=1747746982;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=46cUDcbx9v5zccfah0atCw0kDqkvzASChqMITFeUAy0=;
 b=d7TwN2kBQ+JgpAJdCRnKtSdHpgmiVcBX81ZloZMrjZU7LB2fIp/hSAP3
 dtmz0mkjjqINzWTPqWFmr7otFdRxtteqgwcsHCFZqrAz21C5MCUrvKSAT
 YZdWJosSaTOKjD9EkHcL23yl5ipgyS76I/W7HMbyS/ktAeSk0QPH6gwxx
 AbyXhRYrh0857G3b/Dj7ICwKRgrQxF627wKfm3b0695Mh4fQdLFQfi7+p
 kvo6X2Lc6pLrEw9A9jd1G3yOYu73jLUgOQtNWE3ey0Ouq3d4SQoSJUb3r
 F2r25+NHJqYEaavNn6zmKFd1xu232YRwuqN7RF6R1u6KhKwyLHSUBD3Yr w==;
X-CSE-ConnectionGUID: pKBfuCnsQxmagXjgq9GgdQ==
X-CSE-MsgGUID: I86yPZX9SG+GvjHln+2CyQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="15285167"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="15285167"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 06:16:22 -0700
X-CSE-ConnectionGUID: x22So7LZRhuOMtP0Bukv4A==
X-CSE-MsgGUID: D1r5HOH2TciNXZLux3+Jvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="32518767"
Received: from unknown (HELO localhost) ([10.245.246.99])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 06:16:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 11/13] drm/i915: Document a few pre-skl primary plane
 platform dependencies
In-Reply-To: <20240516135622.3498-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
 <20240516135622.3498-12-ville.syrjala@linux.intel.com>
Date: Mon, 20 May 2024 16:16:17 +0300
Message-ID: <87jzjosjxa.fsf@intel.com>
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
> Add some notes indicatign which plane registers/bits are

*indicating

> valid for which platforms.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

because I'm not going to chase through all the specs for these. ;)

> ---
>  .../gpu/drm/i915/display/i9xx_plane_regs.h    | 22 +++++++++----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu=
/drm/i915/display/i9xx_plane_regs.h
> index 929b26faf31e..d74a74d1f29a 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
> @@ -37,53 +37,53 @@
>  #define   DISP_LINE_DOUBLE		REG_BIT(20)
>  #define   DISP_STEREO_POLARITY_SECOND	REG_BIT(18)
>  #define   DISP_ALPHA_PREMULTIPLY	REG_BIT(16) /* CHV pipe B */
> -#define   DISP_ROTATE_180		REG_BIT(15)
> +#define   DISP_ROTATE_180		REG_BIT(15) /* i965+ */
>  #define   DISP_TRICKLE_FEED_DISABLE	REG_BIT(14) /* g4x+ */
> -#define   DISP_TILED			REG_BIT(10)
> +#define   DISP_TILED			REG_BIT(10) /* i965+ */
>  #define   DISP_ASYNC_FLIP		REG_BIT(9) /* g4x+ */
>  #define   DISP_MIRROR			REG_BIT(8) /* CHV pipe B */
>=20=20
> -#define _DSPAADDR				0x70184
> +#define _DSPAADDR				0x70184 /* pre-i965 */
>  #define DSPADDR(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPAADDR)
>=20=20
> -#define _DSPALINOFF				0x70184
> +#define _DSPALINOFF				0x70184 /* i965+ */
>  #define DSPLINOFF(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPALINOFF)
>=20=20
>  #define _DSPASTRIDE				0x70188
>  #define DSPSTRIDE(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPASTRIDE)
>=20=20
> -#define _DSPAPOS				0x7018C /* reserved */
> +#define _DSPAPOS				0x7018C /* pre-g4x */
>  #define DSPPOS(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPAPOS)
>  #define   DISP_POS_Y_MASK		REG_GENMASK(31, 16)
>  #define   DISP_POS_Y(y)			REG_FIELD_PREP(DISP_POS_Y_MASK, (y))
>  #define   DISP_POS_X_MASK		REG_GENMASK(15, 0)
>  #define   DISP_POS_X(x)			REG_FIELD_PREP(DISP_POS_X_MASK, (x))
>=20=20
> -#define _DSPASIZE				0x70190
> +#define _DSPASIZE				0x70190 /* pre-g4x */
>  #define DSPSIZE(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPASIZE)
>  #define   DISP_HEIGHT_MASK		REG_GENMASK(31, 16)
>  #define   DISP_HEIGHT(h)		REG_FIELD_PREP(DISP_HEIGHT_MASK, (h))
>  #define   DISP_WIDTH_MASK		REG_GENMASK(15, 0)
>  #define   DISP_WIDTH(w)			REG_FIELD_PREP(DISP_WIDTH_MASK, (w))
>=20=20
> -#define _DSPASURF				0x7019C /* 965+ only */
> +#define _DSPASURF				0x7019C /* i965+ */
>  #define DSPSURF(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPASURF)
>  #define   DISP_ADDR_MASK		REG_GENMASK(31, 12)
>=20=20
> -#define _DSPATILEOFF				0x701A4 /* 965+ only */
> +#define _DSPATILEOFF				0x701A4 /* i965+ */
>  #define DSPTILEOFF(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPATILEOFF)
>  #define   DISP_OFFSET_Y_MASK		REG_GENMASK(31, 16)
>  #define   DISP_OFFSET_Y(y)		REG_FIELD_PREP(DISP_OFFSET_Y_MASK, (y))
>  #define   DISP_OFFSET_X_MASK		REG_GENMASK(15, 0)
>  #define   DISP_OFFSET_X(x)		REG_FIELD_PREP(DISP_OFFSET_X_MASK, (x))
>=20=20
> -#define _DSPAOFFSET				0x701A4 /* HSW */
> +#define _DSPAOFFSET				0x701A4 /* hsw+ */
>  #define DSPOFFSET(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPAOFFSET)
>=20=20
> -#define _DSPASURFLIVE				0x701AC
> +#define _DSPASURFLIVE				0x701AC /* g4x+ */
>  #define DSPSURFLIVE(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPASURFLIVE)
>=20=20
> -#define _DSPAGAMC				0x701E0
> +#define _DSPAGAMC				0x701E0 /* pre-g4x */
>  #define DSPGAMC(plane, i)			_MMIO_PIPE2(dev_priv, plane, _DSPAGAMC + (5 =
- (i)) * 4) /* plane C only, 6 x u0.8 */
>=20=20
>  /* CHV pipe B primary plane */

--=20
Jani Nikula, Intel
