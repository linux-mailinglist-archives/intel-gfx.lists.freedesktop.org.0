Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4274E6201
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 11:56:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF40610E882;
	Thu, 24 Mar 2022 10:56:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9C2E10E886
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 10:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648119364; x=1679655364;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SHtGugqjcKS8hnR3ZzZPEmDvCkyEiwLnRFkie2sDDFo=;
 b=EuWuxvMR0vNEwxzUo9gjGFe0HEVbiV78LYXjvcG2MjpjqbQNmNZDe999
 co5VBXwuErbLMdik6M6okoPwdNAwNJDWpxpuXgURhdtTTBllueaD7vGz1
 ZhijrAOYnuu7qy5PK1SxyErdxoGlfbn3irvSOAwHqORbRbSzFnyIoir8D
 vtexvCmN6fRIT/ppifyhSofiIxOYlUHbrvdsz4jqDV/eRdu53bi2KqdtC
 PU4v72p9rhnuL7JOPkVluboSlD9E+gA1aqC4GNRVAE9nPR4VrJyPH97Gx
 Zp+oS1pnCMTFKBG9SEORun30avuVpLqA0IjTqN94pQik3mMMrBXAd7joM A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="319055449"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="319055449"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 03:56:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="561324123"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 24 Mar 2022 03:55:59 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 24 Mar 2022 03:55:58 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 24 Mar 2022 16:25:56 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.021;
 Thu, 24 Mar 2022 16:25:56 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v2] drm/i915/display: Extend DP HDR support to hsw+
Thread-Index: AQHYP18MW17kHaqY4UmI0TBJv/TvS6zN690AgABwijA=
Date: Thu, 24 Mar 2022 10:55:55 +0000
Message-ID: <77ff3aa1b7c641c096b357a8533d707e@intel.com>
References: <20220324091215.1784426-1-uma.shankar@intel.com>
 <Yjw85i48eTsRZk1C@intel.com>
In-Reply-To: <Yjw85i48eTsRZk1C@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2] drm/i915/display: Extend DP HDR support to hsw+
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
> Sent: Thursday, March 24, 2022 3:12 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [v2] drm/i915/display: Extend DP HDR support to hsw+
>=20
> On Thu, Mar 24, 2022 at 02:42:15PM +0530, Uma Shankar wrote:
> > HSW+ platforms are able to send out HDR Metadata SDP DIP
> > packet as GMP. Hence, extending the support for HDR on DP encoders for
> > the same.
> >
> > v2: Limited to non eDP ports on hsw/bdw and removed it for lspcon as
> > it is done separately (suggested by Ville)
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5389
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++----
> >  1 file changed, 6 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 9e19165fd175..09382b6133bc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4939,10 +4939,12 @@ intel_dp_add_properties(struct intel_dp *intel_=
dp,
> struct drm_connector *connect
> >  		intel_attach_dp_colorspace_property(connector);
> >  	}
> >
> > -	if (IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >=3D 11)
> > -		drm_object_attach_property(&connector->base,
> > -					   connector->dev-
> >mode_config.hdr_output_metadata_property,
> > -					   0);
> > +	if (!intel_bios_is_lspcon_present(dev_priv, port))
> > +		if (((IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) &&
> > +		     !intel_dp_is_edp(intel_dp)) || DISPLAY_VER(dev_priv) >=3D 9)
>=20
> s/is_edp/port=3D=3DA/

Yeah missed to limit only for port A, will fix it.

> I would put all of that into a helper (has_gamut_metadata_dip() or
> something) to make it actually legible.

Sure, will add a helper.

Regards,
Uma Shankar
>=20
> > +			drm_object_attach_property(&connector->base,
> > +					connector->dev-
> >mode_config.hdr_output_metadata_property,
> > +					0);
> >
> >  	if (intel_dp_is_edp(intel_dp)) {
> >  		u32 allowed_scalers;
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
