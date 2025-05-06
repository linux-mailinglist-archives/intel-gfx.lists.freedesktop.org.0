Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23200AAC06A
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 11:53:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9838410E638;
	Tue,  6 May 2025 09:53:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 838 seconds by postgrey-1.36 at gabe;
 Tue, 06 May 2025 09:53:41 UTC
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54BE510E339;
 Tue,  6 May 2025 09:53:41 +0000 (UTC)
Received: from 91-155-254-19.elisa-laajakaista.fi ([91.155.254.19]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uCEzb-000000076Ub-1GOP; Tue, 06 May 2025 12:53:39 +0300
Message-ID: <321515eafe481321e943c1535c49bf9d2f9acf3e.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Date: Tue, 06 May 2025 12:53:37 +0300
In-Reply-To: <20250428133135.3396080-3-imre.deak@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-3-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH v2 02/12] drm/i915/dp_mst: Simplify handling the
 single-bpp case during state computation
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

On Mon, 2025-04-28 at 16:31 +0300, Imre Deak wrote:
> A follow-up change wants to skip invalid bpps in the bpp select loop of
> a stream state computation. To allow for that, using the usual
> 'continue' statement in the loop, change the way the sinlge-bpp range is
> handled.
>=20
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 49b836cd8816c..d8033e55dc093 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -283,6 +283,12 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *=
intel_dp,
>  					   fxp_q4_to_frac(max_bpp_x16) ||
>  					   fxp_q4_to_frac(bpp_step_x16)));
> =20
> +	if (!bpp_step_x16) {
> +		/* Allow using zero step only to indicate single try for a given bpp. =
*/
> +		drm_WARN_ON(display->drm, min_bpp_x16 !=3D max_bpp_x16);
> +		bpp_step_x16 =3D 1;
> +	}
> +
>  	if (is_mst) {
>  		mst_state =3D drm_atomic_get_mst_topology_state(state, &intel_dp->mst.=
mgr);
>  		if (IS_ERR(mst_state))
> @@ -408,10 +414,6 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *=
intel_dp,
> =20
>  			break;
>  		}
> -
> -		/* Allow using zero step to indicate one try */
> -		if (!bpp_step_x16)
> -			break;
>  	}
> =20
>  	if (slots < 0) {

Looks good.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
