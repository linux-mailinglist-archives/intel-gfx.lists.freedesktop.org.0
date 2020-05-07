Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDA81C8912
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 13:59:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00C436E97B;
	Thu,  7 May 2020 11:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63E816E97B
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 11:59:38 +0000 (UTC)
IronPort-SDR: syluNOuTXKdb3dQHxHvbXVcT52vKQtb+lKgRS7UYsY5tibL7P0sI/yojJLWOUcoc+Ps3yqMIjf
 GYGx+5SwYY6Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 04:59:37 -0700
IronPort-SDR: E/Ai6nVvtnR9S2pvzw6rOtc2IK4oEzXCVWWXyMlLDJ76koojodS8oo4/94qbJfrWkZkOdk6eaE
 HTQGyU7Ow2fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,363,1583222400"; d="scan'208";a="370096108"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 07 May 2020 04:59:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 May 2020 14:59:34 +0300
Date: Thu, 7 May 2020 14:59:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200507115934.GC6112@intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
 <20200504225227.464666-13-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504225227.464666-13-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 12/22] drm/i915/rkl: Check proper SDEISR
 bits for TC1 and TC2 outputs
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

On Mon, May 04, 2020 at 03:52:17PM -0700, Matt Roper wrote:
> When Rocket Lake is paired with a TGP PCH, the last two outputs utilize
> the TC1 and TC2 hpd pins, even though these are combo outputs.
> =

> Bspec: 49181
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 6952b0295096..d32bbcd99b8a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6172,8 +6172,12 @@ static bool bxt_digital_port_connected(struct inte=
l_encoder *encoder)
>  static bool intel_combo_phy_connected(struct drm_i915_private *dev_priv,
>  				      enum phy phy)
>  {
> -	if (HAS_PCH_MCC(dev_priv) && phy =3D=3D PHY_C)
> -		return intel_de_read(dev_priv, SDEISR) & SDE_TC_HOTPLUG_ICP(PORT_TC1);
> +	if (IS_ROCKETLAKE(dev_priv) && phy >=3D PHY_C)
> +		return intel_de_read(dev_priv, SDEISR) &
> +			SDE_TC_HOTPLUG_ICP(phy - PHY_C);
> +	else if (HAS_PCH_MCC(dev_priv) && phy =3D=3D PHY_C)
> +		return intel_de_read(dev_priv, SDEISR) &
> +			SDE_TC_HOTPLUG_ICP(PORT_TC1);

Most of this mess is going to disappear as soon as I can land
https://patchwork.freedesktop.org/series/72348/

So assuming the hpd[] thing gets correctly populated we no longer
need any hack like these.

>  =

>  	return intel_de_read(dev_priv, SDEISR) & SDE_DDI_HOTPLUG_ICP(phy);
>  }
> -- =

> 2.24.1
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
