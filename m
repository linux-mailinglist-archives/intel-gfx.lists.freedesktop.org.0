Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D71A175C1F
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 14:50:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91B6F6E2A0;
	Mon,  2 Mar 2020 13:50:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A9BF6E2A0
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 13:50:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 05:50:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="273727202"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 02 Mar 2020 05:50:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Mar 2020 15:50:35 +0200
Date: Mon, 2 Mar 2020 15:50:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Message-ID: <20200302135035.GJ13686@intel.com>
References: <87y2to7yu0.fsf@intel.com>
 <20200229004806.11753-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200229004806.11753-1-vivek.kasireddy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hotplug: Use phy to get the
 hpd_pin instead of the port (v4)
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 28, 2020 at 04:48:06PM -0800, Vivek Kasireddy wrote:
> On some platforms such as Elkhart Lake, although we may use DDI D
> to drive a connector, we have to use PHY A (Combo Phy PORT A) to
> detect the hotplug interrupts as per the spec because there is no
> one-to-one mapping between DDIs and PHYs. Therefore, use the
> function intel_port_to_phy() which contains the logic for such
> mapping(s) to find the correct hpd_pin.
> =

> This change should not affect other platforms as there is always
> a one-to-one mapping between DDIs and PHYs.
> =

> v2:
> - Convert the case statements to use PHYs instead of PORTs (Jani)
> =

> v3:
> - Refactor the function to reduce the number of return statements by
>   lumping all the case statements together except PHY_F which needs
>   special handling (Jose)
> =

> v4:
> - Add a comment describing how the HPD pin value associated with any
>   port can be retrieved using port or phy enum value. (Jani)
> =

> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hotplug.c | 37 ++++++++------------
>  drivers/gpu/drm/i915/i915_drv.h              |  6 ++++
>  2 files changed, 21 insertions(+), 22 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/d=
rm/i915/display/intel_hotplug.c
> index 4a6208857488..e1ddccc2ce97 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -87,29 +87,22 @@
>  enum hpd_pin intel_hpd_pin_default(struct drm_i915_private *dev_priv,
>  				   enum port port)
>  {
> -	switch (port) {
> -	case PORT_A:
> -		return HPD_PORT_A;
> -	case PORT_B:
> -		return HPD_PORT_B;
> -	case PORT_C:
> -		return HPD_PORT_C;
> -	case PORT_D:
> -		return HPD_PORT_D;
> -	case PORT_E:
> -		return HPD_PORT_E;
> -	case PORT_F:
> -		if (IS_CNL_WITH_PORT_F(dev_priv))
> -			return HPD_PORT_E;
> -		return HPD_PORT_F;
> -	case PORT_G:
> -		return HPD_PORT_G;
> -	case PORT_H:
> -		return HPD_PORT_H;
> -	case PORT_I:
> -		return HPD_PORT_I;
> +	enum phy phy =3D intel_port_to_phy(dev_priv, port);
> +
> +	switch (phy) {
> +	case PHY_F:
> +		return IS_CNL_WITH_PORT_F(dev_priv) ? HPD_PORT_E : HPD_PORT_F;
> +	case PHY_A:
> +	case PHY_B:
> +	case PHY_C:
> +	case PHY_D:
> +	case PHY_E:
> +	case PHY_G:
> +	case PHY_H:
> +	case PHY_I:
> +		return HPD_PORT_A + phy;

case PHY_A ... PHY_E:
case PHY_G ... PHY_I:
	return HPD_PORT_A + phy - PHY_A;

would at least eliminate some of the problematic assumptions.

>  	default:
> -		MISSING_CASE(port);
> +		MISSING_CASE(phy);
>  		return HPD_NONE;
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index b621df933212..c9d7b9127b6e 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -117,6 +117,12 @@
>  =

>  struct drm_i915_gem_object;
>  =

> +/*
> + * The code assumes that the hpd_pins below have consecutive values and
> + * starting with HPD_PORT_A, the HPD pin associated with any port can be
> + * retrieved by adding the corresponding port (or phy) enum value to
> + * HPD_PORT_A. For example, HPD_PORT_C =3D HPD_PORT_A + PORT_C/PHY_C.
> + */
>  enum hpd_pin {
>  	HPD_NONE =3D 0,
>  	HPD_TV =3D HPD_NONE,     /* TV is known to be unreliable */
> -- =

> 2.21.1
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
