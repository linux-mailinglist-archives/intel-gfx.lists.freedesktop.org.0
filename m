Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C88D5C0EF13
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 16:25:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E0F210E4CD;
	Mon, 27 Oct 2025 15:25:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F74310E4CD;
 Mon, 27 Oct 2025 15:25:34 +0000 (UTC)
Received: from mobile-access-b04841-44.dhcp.inet.fi ([176.72.65.44]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vDP6A-00000001rr2-0Emg; Mon, 27 Oct 2025 17:25:31 +0200
Message-ID: <0bcd89faf72397237bc391db1b88d8950d1ce137.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Mon, 27 Oct 2025 17:25:28 +0200
In-Reply-To: <20251017161417.4399-9-ville.syrjala@linux.intel.com>
References: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
 <20251017161417.4399-9-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-5 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 8/9] drm/i915/cdclk: Use a more optimal min_cdclk for
 vblank length check
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

On Fri, 2025-10-17 at 19:14 +0300, Ville Syrjala wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> Adjust intel_cdclk_prefill_adjustment() to give out a potentially more
> optimal value, purely based on the final minimum CDCLK (also considering
> planes/pfit/etc.) for the current pipe. We can't actually check against
> the current CDCLK frequency as that might be much higher due to some
> other pipe, and said other pipe might later reduce the CDCLK below
> what the current pipe would find acceptable (given which WM levels
> are enabled). Ie. we don't consider any global constraints (other
> pipes, dbuf bandwidth, etc) on the mimimum CDCLK frequency here.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.



>  drivers/gpu/drm/i915/display/intel_cdclk.c | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index e92e7fd9fd13..838834c49a90 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -4092,8 +4092,21 @@ static unsigned int _intel_cdclk_prefill_adj(const=
 struct intel_crtc_state *crtc
> =20
>  unsigned int intel_cdclk_prefill_adjustment(const struct intel_crtc_stat=
e *crtc_state)
>  {
> -	/* FIXME use the actual min_cdclk for the pipe here */
> -	return intel_cdclk_prefill_adjustment_worst(crtc_state);
> +	int clock =3D crtc_state->hw.pipe_mode.crtc_clock;
> +	int min_cdclk;
> +
> +	/*
> +	 * Only consider the current pipe's minimum cdclk here as a safe
> +	 * lower bound. This must *not* be based on the actual/logical cdclk
> +	 * frequency here as that may get reduced later due to eg. a modeset
> +	 * on a different pipe, and that would completely invalidate the
> +	 * guardband length checks we did on this pipe previously. That
> +	 * could lead to prefill exceeding the guardband which would result
> +	 * in underruns.
> +	 */
> +	min_cdclk =3D crtc_state->min_cdclk;
> +
> +	return _intel_cdclk_prefill_adj(crtc_state, clock, min_cdclk);
>  }
> =20
>  unsigned int intel_cdclk_prefill_adjustment_worst(const struct intel_crt=
c_state *crtc_state)
