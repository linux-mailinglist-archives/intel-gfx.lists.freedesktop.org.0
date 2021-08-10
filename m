Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CC73E5AF4
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 15:20:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE40589F5B;
	Tue, 10 Aug 2021 13:20:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 475D389F5B
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 13:20:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="214628146"
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="214628146"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 06:20:00 -0700
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="515841095"
Received: from aktiwary-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.249.40.8])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 06:19:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210714223414.9849-1-manasi.d.navare@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210714223414.9849-1-manasi.d.navare@intel.com>
Date: Tue, 10 Aug 2021 16:19:54 +0300
Message-ID: <87czqlo2rp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix shared dpll mismatch
 for bigjoiner slave
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

On Wed, 14 Jul 2021, Manasi Navare <manasi.d.navare@intel.com> wrote:
> Currently when we do the HW state readout, we dont set the shared dpll to=
 NULL
> for the bigjoiner slave which should not have a DPLL assigned. So it has
> some garbage while the HW state readout is NULL. So explicitly reset
> the shared dpll for bigjoiner slave pipe.
>
> Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/3465
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Tested-By: Swati Sharma <swati2.sharma@intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 65ddb6ca16e6..c274bfb8e549 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9006,6 +9006,10 @@ verify_crtc_state(struct intel_crtc *crtc,
>  	if (!new_crtc_state->hw.active)
>  		return;
>=20=20
> +	if (new_crtc_state->bigjoiner_slave)
> +		/* No PLLs set for slave */
> +		pipe_config->shared_dpll =3D NULL;
> +

I know it's been merged already, but feels wrong to have this in
verify_crtc_state(). Kind of out of place.

BR,
Jani.

>  	intel_pipe_config_sanity_check(dev_priv, pipe_config);
>=20=20
>  	if (!intel_pipe_config_compare(new_crtc_state,

--=20
Jani Nikula, Intel Open Source Graphics Center
