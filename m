Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6016A5EA7
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 19:19:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C90310E4EF;
	Tue, 28 Feb 2023 18:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DBDD10E4EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 18:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677608377; x=1709144377;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Fxex/LMp0wC3XWjhe5C7nHWKPwTjJ9uPJfSvAwqRke8=;
 b=hEQQZAFIU1aMSWs0GrLIDzjUPABB7Pp9qW4uyHvfC/aNlsiZN04zIEaR
 Hgq/KMiVOofCvQ4FE0IZGz91oe1/NPld/T8NBaiUGausDSVkTrAPSrI4O
 StU1frE/Bnvosina567zdW7xsc4to2QzwI+vdZegrAzrHSkz8Qs1hSVQb
 fG5KlYb2MnnIIlcos9y7rBB16VVquLxbtjlJkgjz6etI2RUWVFpFRQy0+
 Zp1gtNsG6KVh1ZDmlS8VCBShkPcWamRxODXYLy+bdFgJX7XGfk1K0Rj3p
 qhwdf+pXL4qPD8ms5Et1kbUH6mUouTEIPDJZWd7ehnm6TPmZ0GkgMHrrY Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="361779741"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="361779741"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 10:19:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="919866482"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="919866482"
Received: from barumuga-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.26])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 10:19:35 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230221230227.6244-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
 <20230221230227.6244-4-ville.syrjala@linux.intel.com>
Date: Tue, 28 Feb 2023 20:19:33 +0200
Message-ID: <875ybly7nu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 03/22] drm/i915: Get rid of the gm45 HPD
 live state nonsense
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

On Wed, 22 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The idea that ctg uses different HPD live state bits is
> total nonsense, at least on my machine (Dell Latitude
> E5400).
>
> The only reason DP-B even works on my ctg is that DP-D
> live state is stuck high, even though there is no physical
> DP-D port. So when the detect checks DP-B live state it
> sees the stuck live state of DP-D instead. If I hack
> the driver to not register DP-D at all, and thus we never
> enabe DP-D HPD, DP-B stops working as well.
>
> Just to put some conclusive evidence into this mess,
> here are the actual hotplug register values for each port:
>  Everything disconnected:
>                     PORT_HOTPLUG_EN (0x00061110): 0x00000000
>                   PORT_HOTPLUG_STAT (0x00061114): 0x00000000
>                     PORT_HOTPLUG_EN (0x00061110): 0x08000000
>                   PORT_HOTPLUG_STAT (0x00061114): 0x08000000
>                     PORT_HOTPLUG_EN (0x00061110): 0x10000000
>                   PORT_HOTPLUG_STAT (0x00061114): 0x00000000
>                     PORT_HOTPLUG_EN (0x00061110): 0x20000000
>                   PORT_HOTPLUG_STAT (0x00061114): 0x00000000
>  Only port B connected:
>                     PORT_HOTPLUG_EN (0x00061110): 0x00000000
>                   PORT_HOTPLUG_STAT (0x00061114): 0x00000000
>                     PORT_HOTPLUG_EN (0x00061110): 0x08000000
>                   PORT_HOTPLUG_STAT (0x00061114): 0x08000000
>                     PORT_HOTPLUG_EN (0x00061110): 0x10000000
>                   PORT_HOTPLUG_STAT (0x00061114): 0x00000000
>                     PORT_HOTPLUG_EN (0x00061110): 0x20000000
>                   PORT_HOTPLUG_STAT (0x00061114): 0x20000000
>  Only port C connected:
>                     PORT_HOTPLUG_EN (0x00061110): 0x00000000
>                   PORT_HOTPLUG_STAT (0x00061114): 0x00000000
>                     PORT_HOTPLUG_EN (0x00061110): 0x08000000
>                   PORT_HOTPLUG_STAT (0x00061114): 0x08000000
>                     PORT_HOTPLUG_EN (0x00061110): 0x10000000
>                   PORT_HOTPLUG_STAT (0x00061114): 0x10000000
>                     PORT_HOTPLUG_EN (0x00061110): 0x20000000
>                   PORT_HOTPLUG_STAT (0x00061114): 0x00000000
>
> So the enable bit and live state bit always match 1:1.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I'll take your word for it.

Acked-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c | 28 +--------------------------
>  drivers/gpu/drm/i915/i915_reg.h       | 13 +------------
>  2 files changed, 2 insertions(+), 39 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index a50ad0fff57c..920d570f7594 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -1196,31 +1196,8 @@ static bool g4x_digital_port_connected(struct inte=
l_encoder *encoder)
>=20=20
>  	return intel_de_read(dev_priv, PORT_HOTPLUG_STAT) & bit;
>  }
>=20=20
> -static bool gm45_digital_port_connected(struct intel_encoder *encoder)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	u32 bit;
> -
> -	switch (encoder->hpd_pin) {
> -	case HPD_PORT_B:
> -		bit =3D PORTB_HOTPLUG_LIVE_STATUS_GM45;
> -		break;
> -	case HPD_PORT_C:
> -		bit =3D PORTC_HOTPLUG_LIVE_STATUS_GM45;
> -		break;
> -	case HPD_PORT_D:
> -		bit =3D PORTD_HOTPLUG_LIVE_STATUS_GM45;
> -		break;
> -	default:
> -		MISSING_CASE(encoder->hpd_pin);
> -		return false;
> -	}
> -
> -	return intel_de_read(dev_priv, PORT_HOTPLUG_STAT) & bit;
> -}
> -
>  static bool ilk_digital_port_connected(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	u32 bit =3D dev_priv->display.hotplug.hpd[encoder->hpd_pin];
> @@ -1383,12 +1360,9 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
>=20=20
>  	dig_port->hpd_pulse =3D intel_dp_hpd_pulse;
>=20=20
>  	if (HAS_GMCH(dev_priv)) {
> -		if (IS_GM45(dev_priv))
> -			dig_port->connected =3D gm45_digital_port_connected;
> -		else
> -			dig_port->connected =3D g4x_digital_port_connected;
> +		dig_port->connected =3D g4x_digital_port_connected;
>  	} else {
>  		if (port =3D=3D PORT_A)
>  			dig_port->connected =3D ilk_digital_port_connected;
>  		else
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index c1efa655fb68..de58695ad1c0 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2482,20 +2482,9 @@
>  #define CRT_HOTPLUG_DETECT_VOLTAGE_325MV	(0 << 2)
>  #define CRT_HOTPLUG_DETECT_VOLTAGE_475MV	(1 << 2)
>=20=20
>  #define PORT_HOTPLUG_STAT	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61114)
> -/*
> - * HDMI/DP bits are g4x+
> - *
> - * WARNING: Bspec for hpd status bits on gen4 seems to be completely con=
fused.
> - * Please check the detailed lore in the commit message for for experime=
ntal
> - * evidence.
> - */
> -/* Bspec says GM45 should match G4X/VLV/CHV, but reality disagrees */
> -#define   PORTD_HOTPLUG_LIVE_STATUS_GM45	(1 << 29)
> -#define   PORTC_HOTPLUG_LIVE_STATUS_GM45	(1 << 28)
> -#define   PORTB_HOTPLUG_LIVE_STATUS_GM45	(1 << 27)
> -/* G4X/VLV/CHV DP/HDMI bits again match Bspec */
> +/* HDMI/DP bits are g4x+ */
>  #define   PORTD_HOTPLUG_LIVE_STATUS_G4X		(1 << 27)
>  #define   PORTC_HOTPLUG_LIVE_STATUS_G4X		(1 << 28)
>  #define   PORTB_HOTPLUG_LIVE_STATUS_G4X		(1 << 29)
>  #define   PORTD_HOTPLUG_INT_STATUS		(3 << 21)

--=20
Jani Nikula, Intel Open Source Graphics Center
