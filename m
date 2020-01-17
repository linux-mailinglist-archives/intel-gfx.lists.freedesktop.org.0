Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90016140D94
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 16:15:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81B206F5DE;
	Fri, 17 Jan 2020 15:15:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A84A6F5DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 15:15:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 07:14:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="274408573"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 17 Jan 2020 07:14:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jan 2020 17:14:48 +0200
Date: Fri, 17 Jan 2020 17:14:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200117151448.GR13686@intel.com>
References: <cover.1579270868.git.jani.nikula@intel.com>
 <42544944ce505826335bab30cc76e135581229be.1579270868.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <42544944ce505826335bab30cc76e135581229be.1579270868.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915: use
 intel_bios_is_port_present()
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

On Fri, Jan 17, 2020 at 04:29:29PM +0200, Jani Nikula wrote:
> Don't access i915->vbt.ddi_port_info[] directly.
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_combo_phy.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu=
/drm/i915/display/intel_combo_phy.c
> index 44bbc7e74fc3..5f54aca7c36f 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -265,8 +265,8 @@ void intel_combo_phy_power_up_lanes(struct drm_i915_p=
rivate *dev_priv,
>  =

>  static u32 ehl_combo_phy_a_mux(struct drm_i915_private *i915, u32 val)
>  {
> -	bool ddi_a_present =3D i915->vbt.ddi_port_info[PORT_A].child !=3D NULL;
> -	bool ddi_d_present =3D i915->vbt.ddi_port_info[PORT_D].child !=3D NULL;
> +	bool ddi_a_present =3D intel_bios_is_port_present(i915, PORT_A);
> +	bool ddi_d_present =3D intel_bios_is_port_present(i915, PORT_D);
>  	bool dsi_present =3D intel_bios_is_dsi_present(i915, NULL);
>  =

>  	/*
> -- =

> 2.20.1
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
