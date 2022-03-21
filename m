Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E63F34E26E3
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 13:49:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDE9D10E2CF;
	Mon, 21 Mar 2022 12:49:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFCCE10E2C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 12:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647866941; x=1679402941;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ZlqkBJEOPJOxsaGZeOhcg/H6YDsvm7DtYaHLACZW8Fg=;
 b=gPlfLdGX7a0E+NdgJywyTJN0pxN1fHIR2ccWMK37cdcM6iFogbk6mPuS
 IuCUl8In4cfp3anewhP2Mdu8fn99lQJybNqMH8SMMYJD0hK8Zh7zx/Z3y
 P7HYXfQRZDMe6v+oEwcBWn6csAT24ZJ4kwxC2ZRbePIJ8ViYZwAMyoijV
 Q8BSQBpj+63JzcFvb7lGRTQJNn5ge2zbAPvaIbdhfwPVPOaQeMQRUfQmU
 YuwDPB+GHS08gr9NTMh/V9UaDs2K0uikkhsudTH4ayJT/dTuqwrj9rGER
 tH51ZED0tvAt7a4OTlUELd2acCn4CSVl4alHtyFCxoLMZ5SEoHSNqChAX w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="282367156"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="282367156"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 05:48:53 -0700
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="559855456"
Received: from abhijitc-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.34.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 05:48:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220318195522.456180-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220318195522.456180-1-jose.souza@intel.com>
Date: Mon, 21 Mar 2022 14:48:44 +0200
Message-ID: <874k3rlbdf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display: Program
 PIPE_MBUS_DBOX_CTL with adl-p values
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

On Fri, 18 Mar 2022, Jos=C3=A9 Roberto de Souza <jose.souza@intel.com> wrot=
e:
> From: Caz Yokoyama <caz.yokoyama@intel.com>
>
> B credits set by IFWI do not match with specification default, so here
> programming the right value.
>
> Also while at it, taking the oportunity to do a read-modify-write to
> all other bit in this register that specification don't ask us to
> change.
>
> BSpec: 49213
> BSpec: 50343
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 7cd586d280883..2e85ae575423a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1825,15 +1825,20 @@ static void icl_pipe_mbus_enable(struct intel_crt=
c *crtc, bool joined_mbus)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum pipe pipe =3D crtc->pipe;
> -	u32 val;
> +	u32 val =3D intel_de_read(dev_priv, PIPE_MBUS_DBOX_CTL(pipe));

Please don't do functional stuff in variable initialization.

BR,
Jani.

>=20=20
> +	val &=3D ~MBUS_DBOX_A_CREDIT_MASK;
>  	/* Wa_22010947358:adl-p */
>  	if (IS_ALDERLAKE_P(dev_priv))
> -		val =3D joined_mbus ? MBUS_DBOX_A_CREDIT(6) : MBUS_DBOX_A_CREDIT(4);
> +		val |=3D joined_mbus ? MBUS_DBOX_A_CREDIT(6) : MBUS_DBOX_A_CREDIT(4);
>  	else
> -		val =3D MBUS_DBOX_A_CREDIT(2);
> +		val |=3D MBUS_DBOX_A_CREDIT(2);
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 12) {
> +	val &=3D ~(MBUS_DBOX_BW_CREDIT_MASK | MBUS_DBOX_B_CREDIT_MASK);
> +	if (IS_ALDERLAKE_P(dev_priv)) {
> +		val |=3D MBUS_DBOX_BW_CREDIT(2);
> +		val |=3D MBUS_DBOX_B_CREDIT(8);
> +	} else if (DISPLAY_VER(dev_priv) >=3D 12) {
>  		val |=3D MBUS_DBOX_BW_CREDIT(2);
>  		val |=3D MBUS_DBOX_B_CREDIT(12);
>  	} else {

--=20
Jani Nikula, Intel Open Source Graphics Center
