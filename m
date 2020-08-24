Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F262509AC
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 21:59:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE4836E558;
	Mon, 24 Aug 2020 19:59:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 479AF6E558
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 19:59:01 +0000 (UTC)
IronPort-SDR: wTVfPgisagsk/aS32eBq+pQ+GVbTSZvSsu+ltorli2cwAiiR/hOIDyNm6p8HDQYBhVMGjqxOgE
 bnbfwVJTibxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="136044582"
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="136044582"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 12:59:00 -0700
IronPort-SDR: bhNh5yNCT1fM6fWuIoSOhuzzXhu5cIMOPRTf4cNpo+z4a1Sdeei3Jg33ziaHEsCJN5cvQFjbEb
 X5z0f7b0UwlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="298836372"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 24 Aug 2020 12:58:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Aug 2020 22:58:57 +0300
Date: Mon, 24 Aug 2020 22:58:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nischal Varide <nischal.varide@intel.com>
Message-ID: <20200824195857.GK6112@intel.com>
References: <20200824034556.26626-1-nischal.varide@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200824034556.26626-1-nischal.varide@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/5] Fixing Possible Null Pointer Dereference
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 24, 2020 at 09:15:52AM +0530, Nischal Varide wrote:
> There is a possble Null Pointer dereference in intel_atomic.c and this
> patch fixes the same by introducting a check to old_state, new_state
> old_conn_state and new_conn_state variables.

Not possible. In fact none of the supposed null ptrs in the series
seem possible to me.

> =

> Signed-off-by: Nischal Varide <nischal.varide@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c | 5 +++++
>  1 file changed, 5 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index 630f49b7aa01..ab58f061c8a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -132,6 +132,9 @@ int intel_digital_connector_atomic_check(struct drm_c=
onnector *conn,
>  		to_intel_digital_connector_state(old_state);
>  	struct drm_crtc_state *crtc_state;
>  =

> +	if (!(new_state && new_conn_state && old_state && old_conn_state))
> +		return 0;
> +
>  	intel_hdcp_atomic_check(conn, old_state, new_state);
>  	intel_psr_atomic_check(conn, old_state, new_state);
>  =

> @@ -192,6 +195,8 @@ intel_connector_needs_modeset(struct intel_atomic_sta=
te *state,
>  =

>  	old_conn_state =3D drm_atomic_get_old_connector_state(&state->base, con=
nector);
>  	new_conn_state =3D drm_atomic_get_new_connector_state(&state->base, con=
nector);
> +	if (!(old_conn_state && new_conn_state))
> +		return 0;
>  =

>  	return old_conn_state->crtc !=3D new_conn_state->crtc ||
>  	       (new_conn_state->crtc &&
> -- =

> 2.26.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
