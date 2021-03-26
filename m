Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B56F734AC89
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 17:31:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0368C6F400;
	Fri, 26 Mar 2021 16:31:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 002556F400
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 16:31:25 +0000 (UTC)
IronPort-SDR: VdvT/2Hn1WOYZ4R2NHSoPaTKWp2CIXYA83Qxhi5alJO4D2KtB4q4DQUkEUdG8k027/T2J6QBXQ
 o6rVwv0rGjyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="188906677"
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="188906677"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 09:31:14 -0700
IronPort-SDR: BZO7/Qwu/JKdWQzQml4Bvq+owfuLTufFwEtZjNdSKxId6514/oehjg4kxwmNTl7SffG0YjZuJW
 Z0FoA57i9K4g==
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="416602352"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 09:31:12 -0700
Date: Fri, 26 Mar 2021 18:31:09 +0200
From: Imre Deak <imre.deak@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210326163109.GN2237616@ideak-desk.fi.intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
 <20210325180720.401410-30-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325180720.401410-30-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 29/50] drm/i915/adl_p: Enable modular fia
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, me@freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 25, 2021 at 11:06:59AM -0700, Matt Roper wrote:
> From: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> Alderlake P have modular FIA like TGL but it is always modular in all
> skus, not like TGL that we had to read a register to check if it is
> monolithic or modular.
> =

> BSpec: 55480
> BSpec: 50572
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 4 ++++
>  drivers/gpu/drm/i915/i915_pci.c         | 1 +
>  2 files changed, 5 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index 7bae0193aa0f..8f60a94852f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -734,6 +734,10 @@ tc_has_modular_fia(struct drm_i915_private *i915, st=
ruct intel_digital_port *dig
>  	if (!INTEL_INFO(i915)->display.has_modular_fia)
>  		return false;
>  =

> +	/* TODO: check if in real HW MODULAR_FIA_MASK is set, if so remove this=
 block */
> +	if (IS_ALDERLAKE_P(i915))
> +		return true;
> +
>  	wakeref =3D tc_cold_block(dig_port);
>  	val =3D intel_uncore_read(&i915->uncore, PORT_TX_DFLEXDPSP(FIA1));
>  	tc_cold_unblock(dig_port, wakeref);
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 1ceb3cd4068d..39cbfdf7c50e 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -951,6 +951,7 @@ static const struct intel_device_info adl_p_info =3D {
>  	XE_LPD_FEATURES,
>  	PLATFORM(INTEL_ALDERLAKE_P),
>  	.require_force_probe =3D 1,
> +	.display.has_modular_fia =3D 1,
>  	.platform_engine_mask =3D
>  		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
>  	.ppgtt_size =3D 48,
> -- =

> 2.25.4
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
