Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 694984E6400
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 14:19:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5C3310E2A2;
	Thu, 24 Mar 2022 13:19:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 740FD10E2A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 13:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648127991; x=1679663991;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QI3ZR/EqznmYEkWpIM0yJImJCEmd+0qlY+91C6AqDYQ=;
 b=ERmX9iPce+T4tz6nF5xPYWb41jYTMe0pHr1CIMJmnrR+A63cKN1g0QH7
 1xap01IWV1ZtPLUFY8sU6ZPPCnGhAVZUWdvmjCwxzg3hPzCs9P8yjKdbi
 0O1uOlWLwR/erWeAhrCYPYyJMlWjhHGyowaQMnkqEPk2GfNkCep+t3vKw
 CqJbmiNDviH+UvtjqwC+vnOiIYSGwTdXtlgfitRV0d5g7LoeqImuD5kXX
 z1cRKvOvmd/pkUK+EsHaKGoMk6sJGqZcAommyZG3H7+8t46T/gcTNMcSn
 /2gWdpkF83YbSNetVmsuEG3nn+RGjxZobpFQ/zl/bUuOZ3KDwasGiR0bk Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="344805838"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="344805838"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 06:19:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="786161891"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga006.fm.intel.com with ESMTP; 24 Mar 2022 06:19:51 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 24 Mar 2022 06:19:50 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 24 Mar 2022 18:49:48 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.021;
 Thu, 24 Mar 2022 18:49:48 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v3] drm/i915/display: Extend DP HDR support to hsw+
Thread-Index: AQHYP29/l9x76mQpG0CSVtLJuFJ4yqzODUgAgABePFD//7eDAIAAYUyA
Date: Thu, 24 Mar 2022 13:19:48 +0000
Message-ID: <9f25a9bfcefc4f8bab48573c9899b825@intel.com>
References: <20220324110959.1857869-1-uma.shankar@intel.com>
 <YjxZCqrQ9Rxw4CJx@intel.com> <c64a4e50252543319fc638e63fffffa5@intel.com>
 <YjxrSMhea/d7BHKs@intel.com>
In-Reply-To: <YjxrSMhea/d7BHKs@intel.com>
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
Subject: Re: [Intel-gfx] [v3] drm/i915/display: Extend DP HDR support to hsw+
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
> Sent: Thursday, March 24, 2022 6:30 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [v3] drm/i915/display: Extend DP HDR support to hsw+
>=20
> On Thu, Mar 24, 2022 at 11:58:15AM +0000, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: Thursday, March 24, 2022 5:12 PM
> > > To: Shankar, Uma <uma.shankar@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Subject: Re: [v3] drm/i915/display: Extend DP HDR support to hsw+
> > >
> > > On Thu, Mar 24, 2022 at 04:39:59PM +0530, Uma Shankar wrote:
> > > > HSW+ platforms are able to send out HDR Metadata SDP DIP
> > > > packet as GMP. Hence, extending the support for HDR on DP encoders
> > > > for the same.
> > > >
> > > > v2: Limited to non eDP ports on hsw/bdw and removed it for lspcon
> > > > as it is done separately (suggested by Ville)
> > > >
> > > > v3: Added helper and limited eDP restriction to port A (Ville)
> > > >
> > > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5389
> > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp.c | 22
> > > > +++++++++++++++++++++-
> > > >  1 file changed, 21 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index 9e19165fd175..c993d82c7ec9 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -4913,6 +4913,26 @@ bool intel_dp_is_port_edp(struct
> > > > drm_i915_private
> > > *dev_priv, enum port port)
> > > >  	return intel_bios_is_port_edp(dev_priv, port);  }
> > > >
> > > > +static bool
> > > > +has_gamut_metadata_dip(struct drm_i915_private *dev_priv,
> > >
> > > s/dev_priv/i915/ for modern style
> >
> > Ok, will update
> >
> > >
> > > > +		       struct intel_dp *intel_dp, enum port port) {
> > > > +	if (intel_bios_is_lspcon_present(dev_priv, port))
> > > > +		return false;
> > > > +
> > > > +	if (DISPLAY_VER(dev_priv) >=3D 10 && !IS_GEMINILAKE(dev_priv))
> > > > +		return true;
> > >
> > > DISPLAY_VER >=3D 11
> > >
> > > > +
> > > > +	if (port =3D=3D PORT_A && intel_dp_is_edp(intel_dp))
> > >
> > > The is_edp check is still wrong. Should be just port=3D=3DA.
> > > Also allows you to drop the intel_dp argument to the function.
> >
> > In the register description for VIDEO_DIP_CTL, (Bspec:7748)
> > BitField: VDIP Enable GMP
> > [BDW, SKL, BXT, KBL, KBLH, GLK, GLV, CFL, WHL, AML, CML, CNL, LKFR]
> > GMP is not supported on transcoder EDP going to DDI A.
> >
> > That's why was checking for eDP. But port A check should be good enough=
.
>=20
> Transcoder EDP is hardwired to DDI A. Despite the name it has nothing to =
do with
> eDP vs. DP.
>=20
> Having the eDP check would be just wrong because it would then attach the=
 property
> to DDI A when it is used as an external DP port. And yes, such machines d=
o in fact
> exist.

Yeah got the point. Thanks Ville for the review and valuable comments.

Regards,
Uma Shankar
>=20
> > Will drop it.
> >
> > > > +		return false;
> > > > +
> > > > +	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv) ||
> > > > +	    IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >=3D 9)
> > > > +		return true;
> > >
> > > The IS_GLK check is redundant.
> >
> > Yeah will drop it.
> >
> > > > +
> > > > +	return false;
> > > > +}
> > > > +
> > > >  static void
> > > >  intel_dp_add_properties(struct intel_dp *intel_dp, struct
> > > > drm_connector *connector)  { @@ -4939,7 +4959,7 @@
> > > > intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_conne=
ctor
> *connect
> > > >  		intel_attach_dp_colorspace_property(connector);
> > > >  	}
> > > >
> > > > -	if (IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >=3D 11)
> > > > +	if (has_gamut_metadata_dip(dev_priv, intel_dp, port))
> > > >  		drm_object_attach_property(&connector->base,
> > > >  					   connector->dev-
> > > >mode_config.hdr_output_metadata_property,
> > > >  					   0);
> > > > --
> > > > 2.25.1
> > >
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
>=20
> --
> Ville Syrj=E4l=E4
> Intel
