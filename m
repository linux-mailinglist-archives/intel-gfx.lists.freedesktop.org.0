Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 963DB43E772
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 19:43:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C186B6E99F;
	Thu, 28 Oct 2021 17:43:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 767626E99F
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 17:43:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="291305843"
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="291305843"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 10:43:08 -0700
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="498501900"
Received: from ralfseng-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.214.156])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 10:43:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211006204937.30774-17-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-17-ville.syrjala@linux.intel.com>
Date: Thu, 28 Oct 2021 20:43:04 +0300
Message-ID: <877ddxf3kn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 16/16] drm/i915: Fix icl+ combo phy static
 lane power down setup
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

On Wed, 06 Oct 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Our lane power down defines already include the necessary shift,
> don't shit them a second time.

*chuckle*

>
> Fortunately we masked off the correct bits, so we accidentally
> left all lanes powered up all the time.
>
> Bits 8-11 where we end up writing our misdirected lane mask are
> documented as MBZ, but looks like you can actually write there
> so they're not read only bits. No idea what side effect the
> bogus register write might have.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4151
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_combo_phy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu=
/drm/i915/display/intel_combo_phy.c
> index 634e8d449457..f628e0542933 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -301,7 +301,7 @@ void intel_combo_phy_power_up_lanes(struct drm_i915_p=
rivate *dev_priv,
>=20=20
>  	val =3D intel_de_read(dev_priv, ICL_PORT_CL_DW10(phy));
>  	val &=3D ~PWR_DOWN_LN_MASK;
> -	val |=3D lane_mask << PWR_DOWN_LN_SHIFT;
> +	val |=3D lane_mask;
>  	intel_de_write(dev_priv, ICL_PORT_CL_DW10(phy), val);
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
