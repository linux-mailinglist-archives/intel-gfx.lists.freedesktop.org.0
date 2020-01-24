Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B32148AD3
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 15:59:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 004C372AD9;
	Fri, 24 Jan 2020 14:59:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3FFD72AD9
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 14:59:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 06:55:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,358,1574150400"; d="scan'208";a="260263537"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 24 Jan 2020 06:55:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2020 16:55:20 +0200
Date: Fri, 24 Jan 2020 16:55:20 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200124145520.GZ13686@intel.com>
References: <20200124144216.4045-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124144216.4045-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix inconsistance between
 pfit.enable and scaler freeing
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

On Fri, Jan 24, 2020 at 04:42:16PM +0200, Stanislav Lisovskiy wrote:
> Despite that during hw readout we seem to have scalers assigned
> to pipes, then call atomic_setup_scalers, at the commit stage in
> skl_update_scaler there is a check, that if we have fb src and
> dest of same size, we stage freeing of that scaler.
> =

> However we don't update pfit.enabled flag then, which makes
> the state inconsistent, which in turn triggers a WARN_ON
> in skl_pfit_enable, because we have pfit enabled,
> but no assigned scaler.
> =

> To me this looks weird that we kind of do the decision
> to use or not use the scaler at skl_update_scaler stage
> but not in intel_atomic_setup_scalers, moreover
> not updating the whole state consistently.
> =

> This fix is to not free the scaler if we have pfit.enabled
> flag set, so that the state is now consistent
> and the warnings are gone.
> =

> Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/577
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 5768cfcf71c4..23221b8d244d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5953,7 +5953,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_sta=
te, bool force_detach,
>  	 * the 90/270 degree plane rotation cases (to match the
>  	 * GTT mapping), hence no need to account for rotation here.
>  	 */
> -	if (src_w !=3D dst_w || src_h !=3D dst_h)
> +	if (src_w !=3D dst_w || src_h !=3D dst_h || crtc_state->pch_pfit.enable=
d)

This is called for both pfit and planes. So you need to put
that pfit check into the pfit specific function.

>  		need_scaler =3D true;
>  =

>  	/*
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
