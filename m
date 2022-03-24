Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6341E4E62D6
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 12:58:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98CDC10E8A5;
	Thu, 24 Mar 2022 11:58:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66AD610E8A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 11:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648123099; x=1679659099;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3douMhFj3ZJ7D0N6kRg8MdEuIeB7mrSI3+UCXg0DfFw=;
 b=eLSt9gfhyfNwr4DX8BbYbnCS/TQOZOxYfbpnpGdGnuPIQ1ECU46nr5XY
 0SIBJZGOPKa0BGhPRiK640jQ9lipHGz5m6d7fkT7zNv6oqwCoP5dCMrZf
 7jx50w2swGwXzCDjKvBtDEbAFEtwsxMnsxypQpyXObF7BsAgrKV7CL6hH
 GgbGk1w1mS4zE34vAZAZt7fqB2nh74ABrXe3Y58WHoTexZYlZCjtMU7CB
 cJBJdlHlcYCykX5ewn7P4vZsE3Q15A5wtR36e7+1gP+O36ZWfXv+aYWds
 PFkxDWcS9nMZ3gHuFQX/S8Puub0pcCHg8fnAbyowD8NvQmhI+reKaqCL7 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="319066334"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="319066334"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 04:58:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="544612689"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga007.jf.intel.com with ESMTP; 24 Mar 2022 04:58:18 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 24 Mar 2022 04:58:17 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 24 Mar 2022 17:28:15 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.021;
 Thu, 24 Mar 2022 17:28:15 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v3] drm/i915/display: Extend DP HDR support to hsw+
Thread-Index: AQHYP29/l9x76mQpG0CSVtLJuFJ4yqzODUgAgABePFA=
Date: Thu, 24 Mar 2022 11:58:15 +0000
Message-ID: <c64a4e50252543319fc638e63fffffa5@intel.com>
References: <20220324110959.1857869-1-uma.shankar@intel.com>
 <YjxZCqrQ9Rxw4CJx@intel.com>
In-Reply-To: <YjxZCqrQ9Rxw4CJx@intel.com>
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
> Sent: Thursday, March 24, 2022 5:12 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [v3] drm/i915/display: Extend DP HDR support to hsw+
>=20
> On Thu, Mar 24, 2022 at 04:39:59PM +0530, Uma Shankar wrote:
> > HSW+ platforms are able to send out HDR Metadata SDP DIP
> > packet as GMP. Hence, extending the support for HDR on DP encoders for
> > the same.
> >
> > v2: Limited to non eDP ports on hsw/bdw and removed it for lspcon as
> > it is done separately (suggested by Ville)
> >
> > v3: Added helper and limited eDP restriction to port A (Ville)
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5389
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 22 +++++++++++++++++++++-
> >  1 file changed, 21 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 9e19165fd175..c993d82c7ec9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4913,6 +4913,26 @@ bool intel_dp_is_port_edp(struct drm_i915_privat=
e
> *dev_priv, enum port port)
> >  	return intel_bios_is_port_edp(dev_priv, port);  }
> >
> > +static bool
> > +has_gamut_metadata_dip(struct drm_i915_private *dev_priv,
>=20
> s/dev_priv/i915/ for modern style

Ok, will update

>=20
> > +		       struct intel_dp *intel_dp, enum port port) {
> > +	if (intel_bios_is_lspcon_present(dev_priv, port))
> > +		return false;
> > +
> > +	if (DISPLAY_VER(dev_priv) >=3D 10 && !IS_GEMINILAKE(dev_priv))
> > +		return true;
>=20
> DISPLAY_VER >=3D 11
>=20
> > +
> > +	if (port =3D=3D PORT_A && intel_dp_is_edp(intel_dp))
>=20
> The is_edp check is still wrong. Should be just port=3D=3DA.
> Also allows you to drop the intel_dp argument to the function.

In the register description for VIDEO_DIP_CTL, (Bspec:7748)
BitField: VDIP Enable GMP
[BDW, SKL, BXT, KBL, KBLH, GLK, GLV, CFL, WHL, AML, CML, CNL, LKFR]
GMP is not supported on transcoder EDP going to DDI A.

That's why was checking for eDP. But port A check should be good enough.
Will drop it.

> > +		return false;
> > +
> > +	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv) ||
> > +	    IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >=3D 9)
> > +		return true;
>=20
> The IS_GLK check is redundant.

Yeah will drop it.

> > +
> > +	return false;
> > +}
> > +
> >  static void
> >  intel_dp_add_properties(struct intel_dp *intel_dp, struct
> > drm_connector *connector)  { @@ -4939,7 +4959,7 @@
> > intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector=
 *connect
> >  		intel_attach_dp_colorspace_property(connector);
> >  	}
> >
> > -	if (IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >=3D 11)
> > +	if (has_gamut_metadata_dip(dev_priv, intel_dp, port))
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
