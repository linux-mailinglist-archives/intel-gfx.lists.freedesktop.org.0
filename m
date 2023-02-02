Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 558D56879C3
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 11:06:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D07E10E4C7;
	Thu,  2 Feb 2023 10:06:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 457F310E4C7
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 10:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675332360; x=1706868360;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=VOFzLTPYwhqGqt6NDNuB8e2PbwmM51mmhkiEVKMuegk=;
 b=S0JT5kWZUeC87/lXszxwqaeA1Gmp/UpiyUH2y3wmqcRpsZBCt9guN865
 2U3ybA85b5BLTDMivd8eGT6JMe0BsJDjKerFy9e8sM7is8EFrPpz45ei/
 FgbJTd1cfLCpHv8JFrdTiROGh5Y+cJb8jnb2KkFmeLRrIubBMXo6YyWwU
 4Yv9AW1YsnaSpCchU3WKiVo78WR0mjfv4FiVqYIgMPXJ/V0IOyoXYUU0y
 Vv6dIBkwzlmavEMKXNCsjehcZ7lHEjb17tE6hTf2z0OyKXpGvcW/BJ5KC
 up69oCGycwwCpajSDpmL8MZdIksY2LmMlXTJRqyj/67E2N0I1Dets4IsO A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="308747933"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="308747933"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 02:05:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="733883635"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="733883635"
Received: from skopplex-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.34.132])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 02:05:58 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230202094726.6435-3-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230202094726.6435-1-stanislav.lisovskiy@intel.com>
 <20230202094726.6435-3-stanislav.lisovskiy@intel.com>
Date: Thu, 02 Feb 2023 12:05:56 +0200
Message-ID: <87o7qc1iwr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Implement UHBR bandwidth check
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

On Thu, 02 Feb 2023, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wr=
ote:
> According to spec, we should check if output_bpp * pixel_rate is less
> than DDI clock * 72, if UHBR is used.
>
> HSDES: 1406899791
> BSPEC: 49259
>
> v2: - Removed wrong comment(Rodrigo Vivi)
>     - Added HSDES to the commit msg(Rodrigo Vivi)
>     - Moved UHBR check to the MST specific code
>
> v3: - Changed commit subject(Rodrigo Vivi)
>     - Fixed the error message if check fails(Rodrigo Vivi)
>
> v4: - Move UHBR check to new helper function
>     - Now both for non-DSC/DSC we use that new check as
>       one of the constraints, when figuring out output bpp
>       to be used(Ville Syrj=C3=A4l=C3=A4)
>
> v5: - Use symbol clock (32 bit per lane for DP2) instead of port
>       clock in the formula(Ville Syrj=C3=A4l=C3=A4)
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index e3e7c305fece..e63132557690 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -47,8 +47,21 @@
>=20=20
>  static int intel_dp_mst_check_constraints(struct drm_i915_private *i915,=
 int bpp,
>  					  const struct drm_display_mode *adjusted_mode,
> -					  struct intel_crtc_state *crtc_state)
> +					  struct intel_crtc_state *pipe_config)

Stick to crtc_state naming.

>  {
> +	if (intel_dp_is_uhbr(pipe_config)) {
> +		int output_bpp =3D bpp;
> +		/* DisplayPort 2 128b/132b, bits per lane is always 32 */
> +		int symbol_clock =3D pipe_config->port_clock / 32;
> +
> +		if (output_bpp * adjusted_mode->crtc_clock >=3D
> +		    symbol_clock * 72) {
> +			drm_dbg_kms(&i915->drm, "UHBR check failed(required bw %d available %=
d)\n",
> +				    output_bpp * adjusted_mode->crtc_clock, symbol_clock * 72);
> +			return -EINVAL;
> +		}
> +	}
> +
>  	return 0;
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
