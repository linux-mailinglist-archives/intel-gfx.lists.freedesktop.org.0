Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 734DE4E9CB1
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 18:51:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3376D10E059;
	Mon, 28 Mar 2022 16:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6B4D10E059
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 16:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648486293; x=1680022293;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CNeD3o0LN+UZq8Mq9liWWbAUhy0zZ6awPZavrzHnL78=;
 b=CYY2rZvpj3StDYlcB6r46CUDSlblpVXIunK6jIM77dJkPudapB0bdMA6
 CwYwCKlSTBqKfR3jz2Hok/kZfj9JcgEIY+MEI0GO7MWRFuegx27aCMj4L
 kTskPfi/zOvs/7kADTy/lhkPtJSX0u2cuUVCzPjFrV+GFIb77PNi55j2L
 leAQIrPTM+xyDFXwksazu5TYl9ff5B/Eh9e+cpyWwZ5TDEMSy5NAoV4id
 ff31uWEZqr7PeAB8Yxi7jZv1rVF3nEWAw41DTNMksP2K1qhGacRG8XEHf
 fSelmC8oKuzgLeokjXK3KQHAvnhss0rebdcJiSfthx7gmVsrpYeg8q2UT w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="322236699"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="322236699"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 09:51:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="831652049"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga005.fm.intel.com with ESMTP; 28 Mar 2022 09:51:28 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 28 Mar 2022 09:51:27 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 28 Mar 2022 22:21:25 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.021;
 Mon, 28 Mar 2022 22:21:25 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v4] drm/i915/display: Extend DP HDR support to hsw+
Thread-Index: AQHYP3citakFJvNs50WDC7mQ3DD32KzOI2oAgAblgjA=
Date: Mon, 28 Mar 2022 16:51:25 +0000
Message-ID: <3f82c0fce66543819e027b2b217e0f65@intel.com>
References: <20220324120438.1876445-1-uma.shankar@intel.com>
 <YjxrqLrsggg5sw0K@intel.com>
In-Reply-To: <YjxrqLrsggg5sw0K@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v4] drm/i915/display: Extend DP HDR support to hsw+
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, March 24, 2022 6:31 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [v4] drm/i915/display: Extend DP HDR support to hsw+
>=20
> On Thu, Mar 24, 2022 at 05:34:38PM +0530, Uma Shankar wrote:
> > HSW+ platforms are able to send out HDR Metadata SDP DIP
> > packet as GMP. Hence, extending the support for HDR on DP encoders for
> > the same.
> >
> > v2: Limited to non eDP ports on hsw/bdw and removed it for lspcon as
> > it is done separately (suggested by Ville)
> >
> > v3: Added helper and limited eDP restriction to port A (Ville)
> >
> > v4: Dropped some redundant checks (Ville)
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5389
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
>=20
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Change pushed to drm-intel-next. Thanks Ville for the review and feedback.

Regards,
Uma Shankar

> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 21 ++++++++++++++++++++-
> >  1 file changed, 20 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 9e19165fd175..fdcb169adb54 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4913,6 +4913,25 @@ bool intel_dp_is_port_edp(struct drm_i915_privat=
e
> *dev_priv, enum port port)
> >  	return intel_bios_is_port_edp(dev_priv, port);  }
> >
> > +static bool
> > +has_gamut_metadata_dip(struct drm_i915_private *i915, enum port port)
> > +{
> > +	if (intel_bios_is_lspcon_present(i915, port))
> > +		return false;
> > +
> > +	if (DISPLAY_VER(i915) >=3D 11)
> > +		return true;
> > +
> > +	if (port =3D=3D PORT_A)
> > +		return false;
> > +
> > +	if (IS_HASWELL(i915) || IS_BROADWELL(i915) ||
> > +	    DISPLAY_VER(i915) >=3D 9)
> > +		return true;
> > +
> > +	return false;
> > +}
> > +
> >  static void
> >  intel_dp_add_properties(struct intel_dp *intel_dp, struct
> > drm_connector *connector)  { @@ -4939,7 +4958,7 @@
> > intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector=
 *connect
> >  		intel_attach_dp_colorspace_property(connector);
> >  	}
> >
> > -	if (IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >=3D 11)
> > +	if (has_gamut_metadata_dip(dev_priv, port))
> >  		drm_object_attach_property(&connector->base,
> >  					   connector->dev-
> >mode_config.hdr_output_metadata_property,
> >  					   0);
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
