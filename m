Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE1DB5460D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 10:55:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9670810E464;
	Fri, 12 Sep 2025 08:55:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J47ZAyp/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81CF310E464
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Sep 2025 08:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757667351; x=1789203351;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=mN22g3N6c7/+PNvrFYKH38pDHN+3ERgRIeAWnzHu3tM=;
 b=J47ZAyp/ovxJb2nBAc+Qr17W4nv9qo5oH2vIFNbZAoLY5bUEsPDlOk4M
 y7mEEJhWDX0cNMh7jWDCGnSamGuVcIBymxrCs+zhoARjzIelUMhRlLa4K
 RweGO9QKKfGSmnBZLz167ZOemxHHtAI2qoSAPkIN7ZiDj6N2jABmI7VZ1
 Wn4ZJLyaqNpgdWcuNyIlzvAfKYQbAoGKR+86oShZYJOTQSZxhVB6+nZ06
 rSqS3qtw26oSH+b23gv8MOBilLDe58CoXchsf4ABIGMJPLovPVg99iMTW
 f6HNu4Ykk4NnRJU+1Mrwb6DCjm9BVwDTXqhnACkFhQB3oqmyWxupd9bR1 Q==;
X-CSE-ConnectionGUID: 7J1vzjZmTDeHega1uy6bkA==
X-CSE-MsgGUID: aR+gkpg+RnKt4QpxhzSTxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11550"; a="59239840"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="59239840"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 01:55:50 -0700
X-CSE-ConnectionGUID: PAcLKn0yQBuqU22d9hKFZA==
X-CSE-MsgGUID: +/mV40ySRPu+UTcPKQXlPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="174697183"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.177])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 01:55:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 ville.syrjala@linux.intel.com, animesh.manna@intel.com
Subject: Re: [PATCH] drm/i915/display: Simplify modular operations with vtotal
In-Reply-To: <20250911153921.9038-2-jonathan.cavitt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250911153921.9038-2-jonathan.cavitt@intel.com>
Date: Fri, 12 Sep 2025 11:55:44 +0300
Message-ID: <e696008aa8675e2ff33f478b3ff47032c8c7ae36@intel.com>
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

On Thu, 11 Sep 2025, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> There are a couple of modulus operations in the i915 display code with
> vtotal as the divisor that add vtotal to the dividend.  In modular
> arithmetic, adding the divisor to the dividend is equivalent to adding
> zero to the dividend, so this addition can be dropped.

The result might become negative with this?

BR,
Jani.

>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
>  drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i=
915/display/intel_dsb.c
> index dee44d45b668..67315116839b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -173,7 +173,7 @@ static int dsb_scanline_to_hw(struct intel_atomic_sta=
te *state,
>  		intel_pre_commit_crtc_state(state, crtc);
>  	int vtotal =3D dsb_vtotal(state, crtc);
>=20=20
> -	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % v=
total;
> +	return (scanline - intel_crtc_scanline_offset(crtc_state)) % vtotal;
>  }
>=20=20
>  /*
> @@ -482,7 +482,7 @@ static void assert_dsl_ok(struct intel_atomic_state *=
state,
>  	 * Waiting for the entire frame doesn't make sense,
>  	 * (IN=3D=3Ddon't wait, OUT=3Dwait forever).
>  	 */
> -	drm_WARN(crtc->base.dev, (end - start + vtotal) % vtotal =3D=3D vtotal =
- 1,
> +	drm_WARN(crtc->base.dev, (end - start) % vtotal =3D=3D vtotal - 1,
>  		 "[CRTC:%d:%s] DSB %d bad scanline window wait: %d-%d (vt=3D%d)\n",
>  		 crtc->base.base.id, crtc->base.name, dsb->id,
>  		 start, end, vtotal);
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/dr=
m/i915/display/intel_vblank.c
> index c15234c1d96e..bcfca2fcef3c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -288,7 +288,7 @@ static int __intel_get_crtc_scanline(struct intel_crt=
c *crtc)
>  	 * See update_scanline_offset() for the details on the
>  	 * scanline_offset adjustment.
>  	 */
> -	return (position + vtotal + crtc->scanline_offset) % vtotal;
> +	return (position + crtc->scanline_offset) % vtotal;
>  }
>=20=20
>  /*

--=20
Jani Nikula, Intel
