Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 543185E5D2D
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 10:16:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BD2810EA7A;
	Thu, 22 Sep 2022 08:16:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6814210EA79
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 08:15:59 +0000 (UTC)
Received: from 91-155-255-44.elisa-laajakaista.fi ([91.155.255.44]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1obHNE-003Vx8-1e;
 Thu, 22 Sep 2022 11:15:57 +0300
Message-ID: <349a7ac69178a52d135148326d671fc0fc878f74.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 11:15:55 +0300
In-Reply-To: <20220916165206.1499-2-ville.syrjala@linux.intel.com>
References: <20220916165206.1499-1-ville.syrjala@linux.intel.com>
 <20220916165206.1499-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.0-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/fbc: Remove stale FIXME
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

On Fri, 2022-09-16 at 19:52 +0300, Ville Syrjala wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> Remove the old tales about 90/270 degree rotation
> effectively preventing FBC. That hasn't been true since
> we stopped demanding the fence is present in
> commit 691f7ba58d52 ("drm/i915/display/fbc: Make fences
> a nice-to-have for GEN9+")
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---

Reviewed-by: Luca Coeho <luciano.coelho@intel.com>

>  drivers/gpu/drm/i915/display/intel_fbc.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index f38175304928..e97083ea1059 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1009,7 +1009,8 @@ static bool intel_fbc_is_fence_ok(const struct inte=
l_plane_state *plane_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(plane_state->uapi.plane->dev)=
;
> =20
> -	/* The use of a CPU fence is one of two ways to detect writes by the
> +	/*
> +	 * The use of a CPU fence is one of two ways to detect writes by the

I would have mentioned this side-change in the commit message, but
that's just due to my extremely nitpicky nature. =F0=9F=98=89

--
Cheers,
Luca.
