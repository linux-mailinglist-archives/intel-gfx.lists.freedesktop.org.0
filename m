Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E5E4334A8
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 13:27:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17B8E6E10C;
	Tue, 19 Oct 2021 11:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81D036E10C
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 11:27:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="289334260"
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="289334260"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 04:27:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="483182710"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga007.jf.intel.com with ESMTP; 19 Oct 2021 04:27:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 19 Oct 2021 04:27:40 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 19 Oct 2021 04:27:38 -0700
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.012;
 Tue, 19 Oct 2021 16:57:36 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/4] drm/i915/dsi/xelpd: Fix the bit mask for
 wakeup GB
Thread-Index: AQHXw+ybPdgZh+oVgE28b6SsKXmQkKvZvZgAgAACvQCAAAOlAIAAA9EAgAAChYCAAGTcYA==
Date: Tue, 19 Oct 2021 11:27:36 +0000
Message-ID: <9bc8ee232ac14332822a7f89cfa47f17@intel.com>
References: <20211018065207.30587-1-vandita.kulkarni@intel.com>
 <20211018065207.30587-2-vandita.kulkarni@intel.com>
 <875ytts527.fsf@intel.com> <YW6arFCYguwWoQm3@intel.com>
 <87r1chqpfp.fsf@intel.com> <YW6g7rTv9bw50lIE@intel.com>
 <YW6jC9MjyUQic0qa@intel.com>
In-Reply-To: <YW6jC9MjyUQic0qa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/dsi/xelpd: Fix the bit mask
 for wakeup GB
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

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, October 19, 2021 4:21 PM
> To: Nikula, Jani <jani.nikula@intel.com>
> Cc: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
> gfx@lists.freedesktop.org; Deak, Imre <imre.deak@intel.com>; Roper,
> Matthew D <matthew.d.roper@intel.com>
> Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/dsi/xelpd: Fix the bit mask=
 for
> wakeup GB
>=20
> On Tue, Oct 19, 2021 at 01:41:50PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Tue, Oct 19, 2021 at 01:28:10PM +0300, Jani Nikula wrote:
> > > On Tue, 19 Oct 2021, Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com=
> wrote:
> > > > On Tue, Oct 19, 2021 at 01:05:20PM +0300, Jani Nikula wrote:
> > > >> On Mon, 18 Oct 2021, Vandita Kulkarni <vandita.kulkarni@intel.com>
> wrote:
> > > >>
> > > >> Commit message goes here.
> > > >>
> > > >> > Fixes: f87c46c43175 ("drm/i915/dsi/xelpd: Add WA to program LP
> > > >> > to HS wakeup guardband")
> > > >> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > > >> > ---
> > > >> >  drivers/gpu/drm/i915/display/icl_dsi.c | 2 +-
> > > >> >  drivers/gpu/drm/i915/i915_reg.h        | 3 ++-
> > > >> >  2 files changed, 3 insertions(+), 2 deletions(-)
> > > >> >
> > > >> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > > >> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > > >> > index 9ee62707ec72..8c166f92f8bd 100644
> > > >> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > > >> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > > >> > @@ -1271,7 +1271,7 @@ static void
> adlp_set_lp_hs_wakeup_gb(struct intel_encoder *encoder)
> > > >> >  	if (DISPLAY_VER(i915) =3D=3D 13) {
> > > >> >  		for_each_dsi_port(port, intel_dsi->ports)
> > > >> >  			intel_de_rmw(i915,
> TGL_DSI_CHKN_REG(port),
> > > >> > -				     TGL_DSI_CHKN_LSHS_GB, 0x4);
> > > >> > +				     TGL_DSI_CHKN_LSHS_GB_MASK,
> > > >> > +TGL_DSI_CHKN_LSHS_GB_MASK);
> > > >>
> > > >> I think you mean the value should be TGL_DSI_CHKN_LSHS_GB.
Yes, my bad.
> > > >
> > > > IMO the value should never be named that. It should be
> > > > TGL_DSI_CHKN_LSHS_GB_<something>.
> > >
> > > Alternatively,
> > >
> > > #define TGL_DSI_CHKN_LSHS_GB(byte_clocks)
> 	REG_FIELD_PREP(TGL_DSI_CHKN_LSHS_GB_MASK, (byte_clocks))
> > >
> > > and
> > >
> > > intel_de_rmw(i915, TGL_DSI_CHKN_REG(port),
> > > 	     TGL_DSI_CHKN_LSHS_GB_MASK, TGL_DSI_CHKN_LSHS_GB(4));
> > >
> > > ?
> > >
> > > We're using the value in a specific place that references a w/a, so
> > > the magic 4 isn't too bad.

This seems more appropriate will make this change.
Thanks.
> >
> > Yeah, for parametrized defines I think the "_<something>" is not
> > needed. Probably not even desired. The argument passed in is the
> > "_<something>" essentially.
>=20
> Oh and, yes, I think having the magic number in the code is fine for case=
s like
> this. I'd say I probably even prefer it that way.
> As long as the whole register value isn't a single magic hex constant tha=
t I
> have to decode by hand to see what bitfields are getting what values.

Thanks, will use the hardcoding in icl_dsi.
>=20
> --
> Ville Syrj=E4l=E4
> Intel
