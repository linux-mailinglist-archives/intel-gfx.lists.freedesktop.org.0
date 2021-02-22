Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9C1321EEC
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 19:16:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07C2789CC4;
	Mon, 22 Feb 2021 18:16:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EB7189CC4
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 18:16:35 +0000 (UTC)
IronPort-SDR: jlMa4uk688Edy3+Cg0A7GZwOcrFIAlewu+Q+GyZ7arV3od/F/WZ5vltcpvAhktBgCvL2Mxcq8q
 4PvoUf646d/w==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="171679274"
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; d="scan'208";a="171679274"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 10:16:34 -0800
IronPort-SDR: WOIwXYjCMyWrla/H14nis7LFyj6OfZ/0glzHxRdktBvujwHzIg10hyWEcnX0/wgz8qpo3yvJWF
 FoOdQMVgSzkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; d="scan'208";a="403156405"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 22 Feb 2021 10:16:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Feb 2021 20:16:31 +0200
Date: Mon, 22 Feb 2021 20:16:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YDP0/9fkJECZu8Nb@intel.com>
References: <cover.1613580193.git.jani.nikula@intel.com>
 <61fb7c20fcc7b11fb5a82a5dedeb8180ada78a99.1613580193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <61fb7c20fcc7b11fb5a82a5dedeb8180ada78a99.1613580193.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 03/12] drm/i915/bios: limit default outputs
 by platform on missing VBT
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 17, 2021 at 07:03:33PM +0200, Jani Nikula wrote:
> Pre-DDI and non-CHV aren't using the information created here anyway, so
> don't bother setting the defaults for them. This should be a
> non-functional change, but is separated here to catch any regressions in
> a single commit.
> =

> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 3 +++
>  1 file changed, 3 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index a8712fe8bf3e..e9cb15aa2f5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2058,6 +2058,9 @@ init_vbt_missing_defaults(struct drm_i915_private *=
i915)
>  {
>  	enum port port;
>  =

> +	if (!HAS_DDI(i915) && !IS_CHERRYVIEW(i915))
> +		return;
> +
>  	for_each_port(port) {
>  		struct ddi_vbt_port_info *info =3D
>  			&i915->vbt.ddi_port_info[port];
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
